import { Component } from 'react'
import  { getSecrets } from '../services/auth'

export default class Home extends Component {
    state = { secrets: [] }
    componentDidMount() {
        const jwt = localStorage.getItem('jwt')
        console.log('homeDidMount:', jwt)
        
        if (jwt) {
            getSecrets().then(secrets => {
                console.log('resp from secrets#index:', secrets)
                this.setState({ secrets })
                
            })
        } else {
            this.props.history.push('login')
        }
    }
    
    render() {
        const { secrets } = this.state
        return (
            <div className="cool">
                <h1>HOME</h1>
                { secrets.length > 0 && secrets.map(s => {
                    return <h3 key={s.id}>{s.content}</h3>
                })}
            </div>
        )
    }
}
