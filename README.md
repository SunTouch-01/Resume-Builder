# Resume Builder

A modern, professional resume builder built with React and Tailwind CSS. Create stunning resumes with customizable templates and export them as PDF files.

## Features

- 🎨 **Multiple Templates**: Choose from professionally designed resume templates
- ⚡ **Real-time Preview**: See your changes instantly as you type
- 📱 **Responsive Design**: Works perfectly on desktop, tablet, and mobile
- 📄 **PDF Export**: Download your resume as a high-quality PDF
- 💾 **Auto-save**: Your progress is automatically saved locally
- 🎯 **ATS Friendly**: Templates optimized for Applicant Tracking Systems
- 🔧 **Customizable**: Easy to extend with new templates and features

## Getting Started

### Prerequisites

- Node.js (version 16 or higher)
- npm or yarn

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd resume-builder
```

2. Install dependencies:
```bash
npm install
```

3. Start the development server:
```bash
npm start
```

4. Open [http://localhost:3000](http://localhost:3000) in your browser

## Available Scripts

- `npm start` - Runs the app in development mode
- `npm run build` - Builds the app for production
- `npm test` - Launches the test runner
- `npm run lint` - Runs ESLint to check code quality
- `npm run format` - Formats code using Prettier

## Project Structure

```
resume-builder/
├── public/
│   ├── templates/          # Template preview images
│   └── index.html
├── src/
│   ├── components/         # Reusable UI components
│   ├── templates/          # Resume templates
│   ├── pages/             # Page components
│   ├── context/           # React context for state management
│   ├── data/              # Data schemas and constants
│   ├── utils/             # Utility functions
│   ├── styles/            # Global styles
│   ├── App.jsx           # Main app component
│   └── index.jsx         # App entry point
├── package.json
├── tailwind.config.js
└── README.md
```

## Adding New Templates

1. Create a new template component in `src/templates/`
2. Export it from `src/templates/index.js`
3. Add template metadata to the templates array
4. Add a preview image to `public/templates/`

Example:
```jsx
// src/templates/Template3.jsx
import React from 'react';

const Template3 = ({ data }) => {
  // Your template JSX here
  return <div>...</div>;
};

export default Template3;
```

## Customization

### Colors and Styling
- Modify `tailwind.config.js` to customize the color palette
- Update `src/styles/global.css` for global styles

### Form Fields
- Edit `src/data/resumeSchema.js` to add new data fields
- Update `src/components/ResumeForm.jsx` to include new form inputs

### PDF Generation
- The app uses `html2pdf.js` for PDF generation
- Customize PDF options in `src/utils/downloadPDF.js`

## Technologies Used

- **React 18** - UI library
- **React Router** - Client-side routing
- **Tailwind CSS** - Utility-first CSS framework
- **html2pdf.js** - PDF generation
- **Yup** - Form validation (optional)

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Support

If you encounter any issues or have questions, please open an issue on GitHub.

## Roadmap

- [ ] Additional template designs
- [ ] Import/export resume data
- [ ] Cover letter templates
- [ ] Integration with job boards
- [ ] Advanced form validation
- [ ] Multiple language support
- [ ] Theme customization
