import React from 'react';

import Nav from './components/Nav'
import Profile from './components/Profile'
import Home from './components/Home'
import Login from './components/Login'
import Signup from './components/Signup'

import './App.css'
import {
  BrowserRouter as Router,
  Route,
  Redirect,
  Switch
} from 'react-router-dom';

class App extends React.Component {

  state = {
    logged_in: false,
    token: null
  }

  handleLogin = (token) => {
    this.setState({ logged_in: true, token })
  }

  componentDidMount(){
    const authToken = localStorage.getItem('token')
    if(authToken){
      this.setState({ logged_in: true, token: authToken })
    }
  }

  render(){
    return (
      <div className="App">
        <Router>
          <Nav logged_in={this.state.logged_in} />
          <Switch>

            <Route exact path='/' component={Home} />

            <Route path='/profile' component={() => {
              return this.state.logged_in
                ? <Profile {...this.state} /> : <Redirect to='/login' />
            }} />

            <Route path='/login' component={() => (
              <Login handleLogin={this.handleLogin} />
            )} />

            <Route path='/signup' component={() => (
              <Signup handleLogin={this.handleLogin} />
            )} />

            <Route path='/logout' component={() => {
              localStorage.clear()
              this.setState({ logged_in: false, token: null })
              return <Redirect to='/' />
            }} />

          </Switch>
        </Router>
      </div>
    );
  }
}

export default App;
