import React from 'react'
import {Route, Switch} from 'react-router-dom'
import 'semantic-ui-css/semantic.min.css'
import NavBar from './NavBar'
import PaintingsList from './PaintingsList'
import PaintingForm from './PaintingForm'
import Painting from './Painting'
import About from './About'
import NotFound from './NotFound'

class App extends React.Component{

  constructor(){
    super()
    this.state = {
      color: "red",
      paintings: [],
      formView: false
    }
  }

  componentDidMount(){
    fetch("http://localhost:3000/paintings")
    .then(res => res.json())
    .then(paintings => this.setState({ paintings })) 
  }

  changeColor = () => {
    this.setState({color: "yellow"})
  }

  toggleForm = () => {
    this.setState({
      formView: !this.state.formView
    })
  }

  addPainting = (info) => {

    const newPainting = {
      image: info.image,
      title: info.title,
      artist: {
        name: info.artist
      },
      date: info.date,
      dimensions: {
        width: info.width,
        height: info.height
      },
      votes: 0 
    } 

    this.setState({
      paintings: [...this.state.paintings, newPainting], 
      formView: !this.state.formView 
    })


  }

  render(){
  return (
    <div>

      <NavBar
        color={this.state.color}
        title="Paintr"
        icon="paint brush"
        description="an app we made"
        changeColor={this.changeColor}
      />

      <Switch>
      <Route exact path="/" component={About}/>
      <Route path="/paintings/new" component={PaintingForm} />
      <Route path="/paintings/:id" render={(routerProps)=>{
          console.log(routerProps)
          let painting = this.state.paintings.find(painting => routerProps.match.params.id == painting.id)
          return <Painting painting={painting}/>
      }}/>
      <Route path="/paintings" render={()=> {
        return <PaintingsList paintings={this.state.paintings}/>
      }} />
      <Route component={NotFound} />
      </Switch>
    
    </div>
  )
  }
}

export default App;
