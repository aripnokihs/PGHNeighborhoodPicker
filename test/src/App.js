import React, {useState, useEffect} from 'react'
import './App.css';

function App() {

  const [data, setData] = useState([{}])

  useEffect(() => {
    fetch("/members").then(
      res => res.json()
    ).then(
      data => {
        setData(data)
        console.log(data)
      }
    )
  }, [])

  return (
    <div>
      
      <header className="App-header">

        {(typeof data.members === 'undefined') ? (
          <p>Loading...</p>
        ): (
          data.members.map((member, i) => (
            <p key={i}>{member}</p>
          ))
        )}
        <a
            className="App-link"
            href="https://github.com/aripnokihs/PGHNeighborhoodPicker"
            target="_blank"
            rel="noopener noreferrer"
          >
            Repo Link
          </a>
          <form action = "/next">
            <label for = "fname">Monthly Salary: </label>
            <input type="text" id="fname" name="fname"></input><br></br>
            <label for = "fname">Working Neighborhood: </label>
            <input type="text" id="lname" name="lname"></input><br></br>
            <input type="submit" value="Submit"></input>
          </form>
      </header>


    </div>
  )
}

export default App;
