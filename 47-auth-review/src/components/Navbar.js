import { Fragment } from 'react'
import { NavLink } from 'react-router-dom'
export default function Navbar({ history }) {
    const pStyle = {
        margin: '12px',
        background: 'blue',
        padding: '12px',
        color: 'white'
    }
    const aStyle = {
        background: 'darkblue'
    }
    return (
        <Fragment>
            <NavLink to="/home"
                style={pStyle} activeStyle={aStyle}>Home</NavLink>
            <NavLink to="/about"
                style={pStyle} activeStyle={aStyle}>About</NavLink>
            <NavLink to="/login"
                style={pStyle} activeStyle={aStyle}>Login</NavLink>
            <button onClick={() => {
                localStorage.removeItem('jwt')
                history.push('login')
            }}>LOG OUT</button>
        </Fragment>
    )
}
