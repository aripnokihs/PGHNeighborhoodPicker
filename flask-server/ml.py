from flask import Flask, request, jsonify
import pandas as pd
from sklearn.neighbors import NearestNeighbors
from sklearn.preprocessing import StandardScaler

app=Flask(__name__)

@app.route('/read-csv', methods=['POST'])
def read_csv():
    salpath = '../pittsburgh_rental_prices.csv'
    coordpath = '../neighborhoodzipcodes.csv'
    statpath = '../neighborhood.csv'
    crimepath = '../neighborhoodcrime.csv'

    salaries_data = pd.read_csv(salpath)
    coordinates_data = pd.read_csv(coordpath)
    stations_data = pd.read_csv(statpath)
    crime_data = pd.read_csv(crimepath)

    merged_data = pd.merge(salaries_data, coordinates_data, on='zipcode')
    merged_data = pd.merge(merged_data, stations_data, on='neighborhood')
    merged_data = pd.merge(merged_data, crime_data, on='neighborhood')
    
    json_data = merged_data.to_dict(orient='records')  # Convert to a list of dictionaries

    include_stations = False 
    if include_stations == True:
        stations = 4
    if include_stations:
        merged_data['TotalStations'] = merged_data['GasStations'] + merged_data['ChargingStations']
        knn_data = merged_data[['Price', 'x_coordinate', 'y_coordinate', 'TotalStations', 'crimerate']]
    else:
        knn_data = merged_data[['Price', 'x_coordinate', 'y_coordinate', 'crimerate']]
    # Extract relevant columns for KNN: 'Salary', 'Latitude', 'Longitude', 'GasStations', 'ChargingStations'


    # Standardize the features for better KNN performance
    scaler = StandardScaler()
    knn_data_scaled = scaler.fit_transform(knn_data)

    # Initialize and fit KNN model using the features
    knn = NearestNeighbors(n_neighbors=len(knn_data))  # Set n_neighbors to include all neighborhoods
    knn.fit(knn_data_scaled)

    def get_coordinates(neighborhood_name):
    # Search for the neighborhood in the DataFrame
        neighborhood_info = coordinates_data[coordinates_data['neighborhood'] == neighborhood_name]
    
        if not neighborhood_info.empty:
            # Extract latitude and longitude
            latitude = neighborhood_info['x_coordinate'].values[0]
            longitude = neighborhood_info['y_coordinate'].values[0]
            return (latitude, longitude)
        else:
            return None  # Neighborhood not found

    
    data = request.get_json()

    input1 = data.get('input1')
    input2 = data.get('input2')
    Salary = input1
    crime = 10
    rent = Salary/4
    coordinates = get_coordinates(input2)
    coord = []
    for i in coordinates:
        coord.append(i)

    new_neighborhood = [[rent, coord[0], coord[1], crime]]  # Total of gas and charging stations
    new_neighborhood_scaled = scaler.transform(new_neighborhood)

    # Compute the similarity (distance) between the new neighborhood and all others
    distances, indices = knn.kneighbors(new_neighborhood_scaled, n_neighbors=len(knn_data))

    # Create a dictionary for neighborhoods with their similarity (distance) values
    similarity_dict = {}

    for i in range(len(indices[0])):
        neighborhood = merged_data.iloc[indices[0][i]]['neighborhood']
        similarity_score = distances[0][i]  # Lower values indicate more similar
        similarity_dict[neighborhood] = similarity_score

    # Normalize the similarity scores using Min-Max normalization
    min_score = min(similarity_dict.values())
    max_score = max(similarity_dict.values())

    normalized_similarity_dict = {neighborhood: (score - min_score) / (max_score - min_score) 
                                for neighborhood, score in similarity_dict.items()}

    # Sort the dictionary by normalized similarity score
    normalized_similarity_dict_sorted = dict(sorted(normalized_similarity_dict.items(), key=lambda item: item[1]))

    # Display the results as a normalized dictionary
    return jsonify({'message': normalized_similarity_dict_sorted})

if __name__ == '__main__':
    app.run(debug=True)