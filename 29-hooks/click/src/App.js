import React, {useState, useEffect} from 'react'


function App() {
  const [clicks, setClicks] = useState(0)
  const [paintings, setPaintings] = useState([])

  const handleClick = () => setClicks(clicks+1)

  useEffect(() => {
    console.log(clicks)
    fetch("http://localhost:3000/paintings")
    .then(res => res.json())
    .then(paintings => setPaintings(paintings))
  },[clicks])

  return (
    <div className="App">
      <header className="App-header">
        <button onClick={handleClick}>Click Me {clicks} </button>
      {paintings.map(painting => <div>{painting.title}</div>)}
      </header>
    </div>
  );
}

export default App;
