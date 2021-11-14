
const itemKey = 'Item'
let itemsList = []
const finalList = []

window.onload = () => {
    // addCheckout = 
    checkoutClicked = document.getElementById("add-up-checkout-total").addEventListener("click", checkoutButtonClicked)
    document.getElementById("add-to-cart-button").addEventListener("click", onItemClicked)

  
}



const onItemClicked = (e) => {

    // Put the object into storage
    let inputItem = document.getElementById('select-item');
    let itemValue = inputItem.options[inputItem.selectedIndex].value;
    if (itemValue != 'choose') {
    itemsList.push(itemValue)
    localStorage.setItem('itemsList', JSON.stringify(itemsList));
    // Retrieve the object from storage
    var chosenItem = localStorage.getItem('itemsList');

    console.log('chosenItem: ', JSON.parse(chosenItem));
    // itemValue.appendChild(chosenItem)
        
    }
}



const checkoutButtonClicked = () => {
    let checkoutTable = document.getElementById('checkout-calculation')
for (let i = 0; i < itemsList.length; i++) {
    let newElem = document.createElement('p')
        newElem.innerHTML =itemsList[i]
        checkoutTable.appendChild(newElem)
}
}



































































const itemKey = 'Item'
let itemsList = []


window.onload = () => {
    // addCheckout = 
    checkoutClicked = document.getElementById("add-up-checkout-total").addEventListener("click", checkoutButtonClicked)
    // addToCart = 
    homeItem = document.getElementById("add-to-cart-button-home").addEventListener("click", onHomeClicked)

    kitchenItem = document.getElementById("add-to-cart-button-kitchen").addEventListener("click", onKitchenClicked)

    bedBathItem = document.getElementById("add-to-cart-button-bedbath").addEventListener("click", onBedBathClicked)
}



const onHomeClicked = (e) => {

    // Put the object into storage
    let homeInputItem = document.getElementById('select-item-home');
    let homeItemValue = homeInputItem.options[homeInputItem.selectedIndex].value;
    if (homeItemValue != 'choose') {
    homeItemsList.push(homeItemValue)
    localStorage.setItem('homeItemsList', JSON.stringify(homeItemsList));
    // Retrieve the object from storage
    var homeChosenItem = localStorage.getItem('homeItemsList');

    console.log('homeChosenItem: ', JSON.parse(homeChosenItem));
    homeItemValue.appendChild()

    }
}



const checkoutButtonClicked = () => {
    let checkoutTable = document.getElementById('checkout-calculation')
for (let i = 0; i < itemsList.length; i++) {
    let newElem = document.createElement('p')
        newElem.innerHTML =itemsList[i]
        // newElem.id = `itemID${i}` 
        checkoutTable.appendChild(newElem)
}
}













































const itemKey = 'Item'
let homeItemsList = []
let kitchenItemsList = []
let bedbathItemsList = []


window.onload = () => {
    // addCheckout = 
    checkoutClicked = document.getElementById("add-up-checkout-total").addEventListener("click", checkoutButtonClicked)
    // addToCart = 
    // homeItem = 
    document.getElementById("add-to-cart-button-home").addEventListener("click", onHomeClicked)

    // kitchenItem = 
    document.getElementById("add-to-cart-button-kitchen").addEventListener("click", onKitchenClicked)

    // bedBathItem = 
    document.getElementById("add-to-cart-button-bedbath").addEventListener("click", onBedBathClicked)
}



const onHomeClicked = (e) => {

    // Put the object into storage
    let homeInputItem = document.getElementById('select-item-home');
    let homeItemValue = homeInputItem.options[homeInputItem.selectedIndex].value;
    if (homeItemValue != 'choose') {
    homeItemsList.push(homeItemValue)
    localStorage.setItem('homeItemsList', JSON.stringify(homeItemsList));
    // Retrieve the object from storage
    var homeChosenItem = localStorage.getItem('homeItemsList');

    console.log('homeChosenItem: ', JSON.parse(homeChosenItem));
    homeItemValue.appendChild(homeChosenItem)

    }
}


const onKitchenClicked = (e) => {

    // Put the object into storage
    let kitchenInputItem = document.getElementById('select-item-kitchen');
    let kitchenItemValue = kitchenInputItem.options[kitchenInputItem.selectedIndex].value;
    if (kitchenItemValue != 'choose') {
    kitchenItemsList.push(kitchenItemValue)
    localStorage.setItem('kitchenItemsList', JSON.stringify(kitchenItemsList));
    // Retrieve the object from storage
    var kitchenChosenItem = localStorage.getItem('kitchenItemsList');

    console.log('kitchenChosenItem: ', JSON.parse(kitchenChosenItem));
    kitchenItemValue.appendChild(kitchenChosenItem)

    }
}



const onBedBathClicked = (e) => {

    // Put the object into storage
    let bedbathInputItem = document.getElementById('select-item-bedbath');
    let bedbathItemValue = bedbathInputItem.options[bedbathInputItem.selectedIndex].value;
    if (bedbathItemValue != 'choose') {
    bedbathItemsList.push(bedbathItemValue)
    localStorage.setItem('bedbathItemsList', JSON.stringify(bedbathItemsList));
    // Retrieve the object from storage
    var bedbathChosenItem = localStorage.getItem('bedbathItemsList');

    console.log('bedbathChosenItem: ', JSON.parse(bedbathChosenItem));
    bedbathItemValue.appendChild()

    }
}

const checkoutButtonClicked = () => {
    let checkoutTable = document.getElementById('checkout-calculation')
for (let i = 0; i < itemsList.length; i++) {
    let newElem = document.createElement('p')
        newElem.innerHTML =itemsList[i]
        // newElem.id = `itemID${i}` 
        checkoutTable.appendChild(newElem)
}
}



//     for (let i = 0; i < 3; i++) {
//         let newItem = document.createElement('li')
//         newItem.id = `new-${i+1}`
//         newItem.innerHTML = `new item ${i+1}`
//         newItem.addEventListener('click', onItemClicked)
//         addToCart.appendChild(newItem)
//     }
// }

// const doSomething = () => {
//     let bodyMain = document.getElementById('body-main')
//     for (let i = 0; i < 5; i++) {
//         let newElem = document.createElement('p')
//         newElem.innerHTML = `This is paragraph ${i+1}`
//         newElem.id = `elemID${i}`
//         bodyMain.appendChild(newElem)
//     }
// }


// let myListElem = document.getElementById('my-list')

// // var testObject = { 'one': 1, 'two': 2, 'three': 3 };
// let testObject = 'monkey'
// // Put the object into storage
// localStorage.setItem('testObject', JSON.stringify(testObject));

// // Retrieve the object from storage
// var retrievedObject = localStorage.getItem('testObject');
// console.log('retrievedObject: ', JSON.parse(retrievedObject));




// const onItemClicked = (selectedItem) => {
//     // item_info = 'INSERT INTO purchases(id, item_name, price'
//     // client.query(item_info)



//     // Put the object into storage
//     let inputItem = document.getElementById('select-item');
//     let itemValue = inputItem.options[inputItem.selectedIndex].value;
//     if (itemValue != 'choose') {
//     itemsList.push(itemValue)
//     localStorage.setItem('itemsList', JSON.stringify(itemsList));
//     // Retrieve the object from storage
//     var chosenItem = localStorage.getItem('itemsList');

//     console.log('chosenItem: ', JSON.parse(chosenItem));
//     itemValue.appendChild()

//     let checkoutTable = document.getElementById('checkout-calculation')
// for (let i = 0; i < itemsList.length; i++) {
//     let newElem = document.createElement('p')
//         newElem.innerHTML =itemsList[i]
//         // newElem.id = `itemID${i}` 
//         checkoutTable.appendChild(newElem)
// }
//     }
// }