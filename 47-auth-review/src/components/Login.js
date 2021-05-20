import { Link } from 'react-router-dom'
import { login } from '../services/auth'
import { useState } from 'react'

const submit = (e, body, history) => {
    e.preventDefault()
    login(e, body).then(resp => {
        console.log('submit form response', resp)
        if (resp.jwt) {
            localStorage.setItem('jwt', resp.jwt)
            history.push("home")
        } else if (resp.error) {
            alert("Invalid Login!")
        }
    })
}

export default function Login({ history }) {

    const [username, setUser] = useState("")
    const [password, setPass] = useState("")

    const body = JSON.stringify({ auth: {username, password}})
    return (
        <div className="cool">
            <form onSubmit={e => submit(e, body, history)}>
                <div>
                    <input name="username"
                        onChange={e => setUser(e.target.value)}/>Username
                </div>
                <div>
                    <input name="password" type="password"
                        onChange={e => setPass(e.target.value)}/>Password
                </div>
                <div style={{display: 'flex','justifyContent': 'center'}}>
                    <input type="submit" value="GO"/>
                </div>
                <div style={{display: 'flex','justifyContent': 'center'}}>
                    Or <Link to="/signup">sign up</Link>?
                </div>
            </form>
        </div>
    )
    
}
