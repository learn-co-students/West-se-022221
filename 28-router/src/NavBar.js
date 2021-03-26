import {Link} from 'react-router-dom'
const NavBar = props => {
  return (
    <div className={`ui inverted ${props.color} menu`}>
       <Link to="/" className="ui button" >
        About
      </Link>
      <Link to="/paintings" className="ui button" >
        All Paintings
      </Link>
      <Link to="/paintings/new" className="ui button" >
        New Painting
      </Link>
      <a className="item">
        <h2 className="ui header">
          <i className={`${props.icon} icon`} />
          <div className="content">{props.title}</div>
          <div className="sub header">{props.description}</div>
        </h2>
      </a>
      <button onClick={props.changeColor}>Change color</button>

    </div>
  );
};

export default NavBar;
