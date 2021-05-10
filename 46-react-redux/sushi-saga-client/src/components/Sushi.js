import React from 'react'

import { connect } from 'react-redux';

const Sushi = ({sushi, eaten, eat_sushi}) => {
  return (
    <div className="sushi">
      <div className="plate"
           onClick={() => eat_sushi(sushi)}>
        {
          eaten.includes(sushi) ?
            null
          :
            <img src={sushi.img_url} alt={sushi.name} width="100%" />
        }
      </div>
      <h4 className="sushi-details">
        {sushi.name} - ${sushi.price}
      </h4>
    </div>
  )
}

const mapStateToProps = (state) => {
  return {
    eaten: state.sushi.eaten
  }
}

const mapDispatchToProps = (dispatch) => {
  return {
    eat_sushi: (sushi) => dispatch({ type: 'EAT_SUSHI', sushi })
  }
}

export default connect(mapStateToProps,mapDispatchToProps)(Sushi)
