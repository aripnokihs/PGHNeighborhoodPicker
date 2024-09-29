import React, {useState, useEffect} from 'react'
import '../App.css';
import '../assets/style.css';


function Page2 (){

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
       {(typeof data.members === 'undefined') ? (
        <p>Loading...</p>
        ): (
          data.members.map((member, i) => (
          <p key={i}>{member}</p>
          ))
        )}
      <h1>This is the New Path Page</h1>
      <p>Welcome to the new path!</p>
    </div>
  );
}

export default Page2;
