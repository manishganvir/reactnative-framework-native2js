'use strict';

export default class someapi {
    constructor() {
        console.log('constructor called')
    }
  
    hello() {
        console.log("someapi hello function called");
        return "world";
    }
}