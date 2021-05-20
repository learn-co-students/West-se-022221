import './App.css';
import { BrowserRouter as Router, Route } from 'react-router-dom'
import Main from '../components/Main'
import About from '../components/About'
import Home from '../components/Home'
import Login from '../components/Login'
import Navbar from '../components/Navbar'
import Signup from '../components/Signup'

export default function App() {
	return (
		<Router>
			<Route path="/" render={rP => <Navbar {...rP} />} />
			<Route exact path="/" component={Main} />
			<Route exact path="/home" render={rP => <Home {...rP}/>} />
			<Route exact path="/about" component={About} />
			<Route exact path="/login" render={rP => <Login {...rP}/>} />
			<Route exact path="/signup" render={rP => <Signup {...rP}/>} />
		</Router>
	)
}
