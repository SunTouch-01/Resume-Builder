import React from 'react';
import ReactDOM from 'react-dom/client';
import './styles/global.css';
import { App, getTemplateComponent, templates } from './AllComponents';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <App getTemplateComponent={getTemplateComponent} templates={templates} />
  </React.StrictMode>
);
