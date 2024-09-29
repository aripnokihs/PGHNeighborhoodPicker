import React from 'react';
import { useLocation } from 'react-router-dom';
import '../App.css';
import '../assets/style.css';

function Page2 (){
  const location = useLocation();
  const { input1, input2 } = location;
  console.log('Location State:', location.state);
  return (
    <div>
      <div className="bg-image"></div>
      <div>
        <h1>Heatmap</h1>
          <p>Salary: ${input1}</p>
          <p>Neighborhood: {input2}</p>
      </div>
    </div>
  );
}

export default Page2;