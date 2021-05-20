import { useState } from 'react'
import { newUser } from '../services/auth'
export default function Signup() {
    const [username, setUser] = useState("")
    const [password, setPass] = useState("")
    const [bio, setBio] = useState("")
    const body = JSON.stringify({ user: {username, password, bio} })
    return (
        <div className="cool">
            <form onSubmit={e => newUser(e, body).then(json => {
                console.log('users#create response:', json)
                localStorage.setItem('jwt', json.jwt)
            })}>
                <div>
                    <input onChange={e => setUser(e.target.value)} 
                        name="username" />Username
                </div>
                <div>
                    <input onChange={e => setPass(e.target.value)}
                        name="password" />Password
                </div>
                <div>
                    <input onChange={e => setBio(e.target.value)} 
                        name="bio" />Bio
                </div>
                <input type="submit"/>
            </form>
        </div>
    )
}