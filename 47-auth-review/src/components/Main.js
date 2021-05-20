import logo from '../logo.svg';
export default function Main() {
    return (
        <div className="App">
            <header className="cool">
                <img src={logo} className="App-logo" alt="logo" />
                <p>
                    Edit <code>src/App.js</code> and save to reload.
                </p>
                <a href="https://reactjs.org" 
                    className="App-link"
                    target="_blank"
                    rel="noopener noreferrer"
                >
                    Learn React
                </a>
            </header>
        </div>
    );
}
