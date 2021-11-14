const itemKey = 'Item'
let itemsList = []
let inputItem;
let itemValue;
let chosenItem;


const cowch = document.querySelector('cowch')
const spongebob = document.querySelector('spongebob')
const tiger_couch = document.querySelector('tiger_couch')
const shoe = document.querySelector('shoe')
const chicken = document.querySelector('chicken')
const toaster = document.querySelector('toaster')
const tacosaurus = document.querySelector('tacosaurus')
const squirrel = document.querySelector('squirrel')
const jesus_brush = document.querySelector('jesus_brush')
const tp_hat = document.querySelector('tp_hat')



window.onload = () => {
    
    document.getElementById("add-up-checkout-total").addEventListener("click", checkoutButtonClicked)
    document.getElementById("add-to-cart-button").addEventListener("click", onAddItem)  
  
    let storedData = JSON.parse(localStorage.getItem(itemKey))
    // console.log(storedData)
    if (storedData) {
        for (let i = 0; i < storedData.length; i++) {
            addItem(storedData[i])
        }
        itemsList = storedData
        checkoutButtonClicked(storedData[i])
    }
}





const onAddItem = (e) => {
    // Put the object into storage
    let inputItem = document.getElementById('select-item');
    let itemValue = inputItem.options[inputItem.selectedIndex].value;
    if (itemValue != 'choose') {
        itemsList.push(itemValue)
    localStorage.setItem('itemsList', JSON.stringify(itemsList));

        // addItemToStorage(itemValue)
        /////////////
    
    // Retrieve the object from storage
    var chosenItem = localStorage.getItem('itemsList');

    console.log(itemKey, JSON.parse(chosenItem));
    // itemValue.appendChild(chosenItem)
    
}
}

const addItem = () => {
    let newItem = document.createElement('li');
let itemElem = document.getElementById('select-item')
itemElem.appendChild(newItem)
}


const addItemToStorage = (itemValue) => {
    itemsList.push(itemValue)
    localStorage.setItem(itemKey, JSON.stringify(itemsList));
}



const checkoutButtonClicked = () => {
    let checkoutTable = document.getElementById('checkout-calculation')
    console.log(itemsList.length)
for (let i = 0; i < itemsList.length; i++) {
    let newElem = document.createElement('p')
        newElem.innerHTML =itemsList[i]
        checkoutTable.appendChild(newElem)
}
}