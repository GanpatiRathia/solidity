// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AmazonShipping {
    enum ShippingStatus {Pending, Shipped, Accepted, Rejected, Canceled}
    
    ShippingStatus public currentStatus;
    
    constructor() {
        currentStatus = ShippingStatus.Pending;
    }
    
    function updateStatus(uint _newStatus) public {
        require(_newStatus<5 && _newStatus>=0,"Wrong Input");
            if(_newStatus == 0) 
                currentStatus = ShippingStatus.Pending;
            else if(_newStatus == 1) 
                currentStatus = ShippingStatus.Shipped;
            else if(_newStatus == 2) 
                currentStatus = ShippingStatus.Accepted;
            else if(_newStatus == 3) 
                currentStatus = ShippingStatus.Rejected;
            else if(_newStatus == 4) 
                currentStatus = ShippingStatus.Canceled;
    }
    
    function getStatus() public view returns (ShippingStatus) {
        return currentStatus;
    }
}