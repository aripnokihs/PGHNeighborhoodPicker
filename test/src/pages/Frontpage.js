import React, {useState} from 'react';
import { useNavigate } from 'react-router-dom';
import '../assets/style.css';

function Frontpage() {
  const navigate = useNavigate();
  const [input1, setInput1] = useState(0);
  const [input2, setInput2] = useState('');
  const [error, setError] = useState('');

  const handleSubmit = async (e) => {
    if(!input1 || !input2){
      setError('No field must be empty.');
    }

    setError('');

    e.preventDefault();
    console.log("Input 1:", input1);
    console.log("Input 2:", input2);
  

    const data = { input1, input2 };

    try{
      const response = await fetch('http://localhost:5000/submit-data', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(data),
      });

      if(response.ok){
        console.log('Data successfully sent to Flask');
        navigate('/page2');
      } else{
        console.log('Failed to send');
      }
    } catch (error){
      console.error('Error:', error);
    }
  }

  return (
    <div>
      <div className="bg1"></div>
      <header className="App-header">
          <p style={{ color: '', fontSize: '50px' }}>LocaleLens</p>
      </header>

      <br/>

      <form className="new-item-form" onSubmit={handleSubmit}>
  <div className="container">
    <div className="row">
      <label htmlFor="salary">Salary ($)</label>
      <input type="text" id="input1" value={input1} onChange={(e) => setInput1(e.target.value)} className="textbox" />
    </div>
    <div className="row">
      <label htmlFor="job_loc">Neighborhood (Address)</label>
      <input type="text" id="input2" value = {input2} onChange={(e) => setInput2(e.target.value)} className="textbox" />
    </div>
    <div className="row">
      {error && <p style={{ color: 'red' }}>{error}</p>} {/* Display error message */}
      <button type="submit" className="button">Submit</button>
    </div>
  </div>
</form>  
    </div>         
  );
}

export default Frontpage;