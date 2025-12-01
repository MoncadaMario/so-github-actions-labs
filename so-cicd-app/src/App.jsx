function App() {
  return (
    <div>
      <h1>SO CI/CD App</h1>
      <p>Modo: {import.meta.env.MODE}</p>
      <p>Versión app: {import.meta.env.VITE_APP_VERSION}</p>
    </div>
  );
}

export default App;
