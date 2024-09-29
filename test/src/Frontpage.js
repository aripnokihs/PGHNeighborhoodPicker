import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import './App.css';
import './style.css';

function Frontpage() {
  const [data, setData] = useState([{}]);
  const navigate = useNavigate();

  useEffect(() => {
    fetch("/members")
      .then(res => res.json())
      .then(data => {
        setData(data);
        console.log(data);
      });
  }, []);

  const handleRedirect = (e) => {
    e.preventDefault();
    navigate('/new-path'); // Navigate to new path on submit
  };

  return (
    <div>
      <header className="App-header">
        {typeof data.members === 'undefined' ? (
          <p>Loading...</p>
        ) : (
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
        <form className="new-item-form" onSubmit={handleRedirect}>
          <label htmlFor="salary"> Salary: </label>
          <input type="text" id="salary" />
          <br />
          <label htmlFor="job_loc"> Job Location: </label>
          <input type="text" id="job_loc" />
          <br />
          <button type="submit">Submit</button>
        </form>
      </header>
    </div>
  );
}

export default Frontpage;
