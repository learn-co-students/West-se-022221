import React from 'react';
import { Form, Button, Segment } from 'semantic-ui-react';

import { withRouter } from 'react-router';

class Signup extends React.Component {

  state = {
    username: '',
    password: ''
  }

  handleInputChange = (e) => {
    this.setState({
      [e.target.name]: e.target.value
    })
  }

  handleSubmit = () => {
    //
    // Should pass in user_id once we get response from our API
    //
    this.props.handleLogin(1)
    this.props.history.push('/')
  }

  render(){
    return (
      <Segment className={'form-container'}>
        <Form onSubmit={this.handleSubmit} autocomplete={"off"}>
          <Form.Field>
            <label>Username</label>
            <input name='username' placeholder='Username' onChange={this.handleInputChange} />
          </Form.Field>

          <Form.Field>
            <label>Password</label>
            <input type='password' name='password' placeholder='Password' onChange={this.handleInputChange} />
          </Form.Field>

          <Button type='submit' positive>
            Signup
          </Button>

          <Button as={'a'} href={'/login'} color={'teal'}>
            Login
          </Button>
        </Form>
      </Segment>
    )
  }
}

export default withRouter(Signup);
