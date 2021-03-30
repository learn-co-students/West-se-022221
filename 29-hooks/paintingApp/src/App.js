import React, {useState, useEffect} from 'react'
import {Route, Switch} from 'react-router-dom'
import 'semantic-ui-css/semantic.min.css'
import NavBar from './NavBar'
import PaintingsList from './PaintingsList'
import PaintingForm from './PaintingForm'
import Painting from './Painting'
import About from './About'
import NotFound from './NotFound'

const App = () => {
 const [color, setColor] = useState("red")
 const [paintings, setPaintings] = useState([])


 useEffect(() => {
    fetch("http://localhost:3000/paintings")
    .then(res => res.json())
    .then(paintings => setPaintings(paintings)) 
  },[])

  const changeColor = () => {
    setColor("yellow")
  }


  const addPainting = (info) => {

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

    let newPaintings = [...paintings, newPainting]

    setPaintings(newPaintings)

  }

  return (
    <div>

      <NavBar
        color={color}
        title="Paintr"
        icon="paint brush"
        description="an app we made"
        changeColor={changeColor}
      />

      <Switch>
      <Route exact path="/" component={About}/>
      <Route path="/paintings/new" component={PaintingForm} />
      <Route path="/paintings/:id" render={(routerProps)=>{
          console.log(routerProps)
          let painting = paintings.find(painting => routerProps.match.params.id == painting.id)
          return <Painting painting={painting}/>
      }}/>
      <Route path="/paintings" render={()=> {
        return <PaintingsList paintings={paintings}/>
      }} />
      <Route component={NotFound} />
      </Switch>
    
    </div>
  )
}

export default App;
