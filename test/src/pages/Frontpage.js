import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import '../assets/style.css';

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
    navigate('/page2'); // Navigate to new path on submit
  };

  return (
    <div>
      <div className="bg-image"></div>
      <header className="App-header">
        {typeof data.members === 'undefined' ? (
          <p style={{ color: '', fontSize: '50px' }}>LocaleLens</p>
        ) : (
          data.members.map((member, i) => (
            <p key={i}>{member}</p>
          ))
        )}
      </header>

      <br/>

      <form className="new-item-form" onSubmit={handleRedirect}>
  <div className="container">
    <div className="row">
      <label htmlFor="salary">Salary</label>
      <input type="text" id="salary" className="textbox" />
    </div>
    <div className="row">
      <label htmlFor="job_loc">Job Location</label>
      <input type="text" id="job_loc" className="textbox" />
    </div>
    <div className="row">
      <button type="submit" className="button">Submit</button>
    </div>
  </div>
</form>  
    </div>         
  );
}

export default Frontpage;
