const initialState = {
  sushis: [],
  index: 0,
  eaten: [],
  money: 100
}

const sushiReducer = (state = initialState,action) => {
  switch (action.type) {
    case 'GET_SUSHIS':
        return {
          ...state,
          sushis: action.sushis
        }

    case 'MORE_SUSHI':
        let index = state.index + 4 >= state.sushis.length ? 0 : state.index + 4

        return {
          ...state,
          index: index
        }

    case 'EAT_SUSHI':
      const sushi = action.sushi

        if (!state.eaten.includes(sushi)) {
          if(state.money >= sushi.price){
            return {
              ...state,
              eaten: [...state.eaten, sushi],
              money: state.money - sushi.price
            };
          } else {
            alert('You cannot afford this sushi!')
          }
        }

    default:
        return state
  }
}

export default sushiReducer;
