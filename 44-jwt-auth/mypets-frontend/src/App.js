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
    user_id: null
  }

  handleLogin = (user_id) => {
    this.setState({ logged_in: true, user_id })
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
                ? <Profile /> : <Redirect to='/login' />
            }} />

            <Route path='/login' component={() => (
              <Login handleLogin={this.handleLogin} />
            )} />

            <Route path='/signup' component={() => (
              <Signup handleLogin={this.handleLogin} />
            )} />

            <Route path='/logout' component={() => {
              this.setState({ logged_in: false, user_id: null })
              return <Redirect to='/' />
            }} />

          </Switch>
        </Router>
      </div>
    );
  }
}

export default App;
