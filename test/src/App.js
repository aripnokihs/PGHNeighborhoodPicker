import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Frontpage from './Frontpage'; // Adjust the import based on your file structure
import NewPathComponent from './NewPathComponent'; // Your new path component

const App = () => {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Frontpage />} />
        <Route path="/new-path" element={<NewPathComponent />} /> {/* New Path Component */}
      </Routes>
    </Router>
  );
};

export default App;
