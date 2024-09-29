import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Frontpage from './pages/Frontpage';
import Page2 from './pages/Page2';
import './assets/style.css';

export default function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Frontpage />} />
        <Route path="/page2" element={<Page2 />} />
      </Routes>
    </Router>
  );
}
