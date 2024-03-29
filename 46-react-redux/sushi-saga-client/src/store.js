import { createStore } from 'redux';
import { combineReducers } from 'redux';

import sushiReducer from './reducers/sushiReducer'
import userReducer from './reducers/userReducer'

const rootReducer = combineReducers({
  sushi: sushiReducer,
  user: userReducer
})

export default createStore(
  rootReducer,
  window.__REDUX_DEVTOOLS_EXTENSION__ && window.__REDUX_DEVTOOLS_EXTENSION__()
)
