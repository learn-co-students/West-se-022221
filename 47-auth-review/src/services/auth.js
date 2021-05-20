const rootURL = 'http://localhost:3000'
const secretsURL = `${rootURL}/secrets`
const loginURL = `${rootURL}/login`
const signupURL = `${rootURL}/signup`

const token = () => localStorage.getItem('jwt')

const headers = {
    'Content-Type': 'application/json',
    Accept: 'application/json',
}

const authHeaders = {
    ...headers, Authorization: `Bearer ${token()}`
}

export function newUser(e, body) {
    e.preventDefault()
    return fetch(signupURL, {
        method: 'POST', headers, body
    }).then(r => r.json())
}

export function login(e, body) {
    return fetch(loginURL, {
        method: 'POST', headers, body
    }).then(r => r.json())
}

export function getSecrets() {
    return fetch(secretsURL, {
        method: 'GET', headers: authHeaders
    }).then(r => {
        return r.json()
    })
}

