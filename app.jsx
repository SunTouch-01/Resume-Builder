// App.js
import React from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import { ResumeProvider } from "./context/ResumeContext";
import Header from "./AllComponents"; // Adjust imports if you split components into separate files
import Footer from "./AllComponents";
import LandingPage from "./AllComponents";
import ResumeBuilderPage from "./AllComponents";
import Template1 from "./AllComponents";
import Template2 from "./AllComponents";
import Template3 from "./AllComponents";
import Template4 from "./AllComponents";
import { templatesMeta } from "./templates/templatesArray";

function App() {
  // Map template IDs to their components
  const getTemplateComponent = (templateId) => {
    switch (templateId) {
      case "template1":
        return Template1;
      case "template2":
        return Template2;
      case "template3":
        return Template3;
      case "template4":
        return Template4;
      default:
        return null;
    }
  };

  return (
    <ResumeProvider>
      <BrowserRouter>
        <Header />
        <Routes>
          <Route path="/" element={<LandingPage templates={templatesMeta} />} />
          <Route
            path="/builder"
            element={
              <ResumeBuilderPage
                getTemplateComponent={getTemplateComponent}
                templates={templatesMeta}
              />
            }
          />
          <Route
            path="/builder/:templateId"
            element={
              <ResumeBuilderPage
                getTemplateComponent={getTemplateComponent}
                templates={templatesMeta}
              />
            }
          />
        </Routes>
        <Footer />
      </BrowserRouter>
    </ResumeProvider>
  );
}

export default App;
