import {createSlice} from '@reduxjs/toolkit'

export const cartSlice=createSlice({
    name:'cart',
    initialState:{
        items: localStorage.getItem('cart')?JSON.parse(localStorage.getItem('cart')).items:[]
    },
    reducers:{
        addToCart:(state, action)=>{
           if(state.items.find((item)=>{ return action.payload.item.id==item.id}) ==undefined)
            state.items=[...state.items, action.payload.item];
            else
            state.items=state.items.map((item)=>{
                if(item.id===action.payload.item.id){
                    item.count++;
                }
                return item;
            });
            //luu thong tin gio hang vao localStorage
            localStorage.setItem('cart', JSON.stringify(state))
        },
        removeFromCart:(state, action)=>{
            state.items=state.items.filter((item)=>item.id !== action.payload.id);
            localStorage.setItem('cart', JSON.stringify(state))
        },
        increaseCount: (state, action)=>{
            state.items=state.items.map((item)=>{
                if(item.id===action.payload.id){
                    item.count++;
                }
                return item;
            });
            localStorage.setItem('cart', JSON.stringify(state))
        },
        decreaseCount:(state, action)=>{
            state.items=state.items.map((item)=>{
                if(item.id === action.payload.id && item.count>1){
                    item.count--;
                }
                return item;
            });
            localStorage.setItem('cart', JSON.stringify(state))
        },
    }
})
//action creatos are generated for each case reducer function
export const{
    addToCart,
    removeFromCart,
    increaseCount,
    decreaseCount,
}=cartSlice.actions;
export default cartSlice.reducer