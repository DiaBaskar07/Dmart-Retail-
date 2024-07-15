import { LightningElement,track } from 'lwc';
import getMerchandiseData from '@salesforce/apex/SearchMerchandise.getAllMerchandise';
// import getMerchandiseDataByStock from '@salesforce/apex/SearchMerchandise.getAllMerchandise';
 
export default class SearchMerchandise extends LightningElement {
 
    //we have defined two variable to track the changes whatever user is going to do on component page
    //using @track decorator we have made this variable as private and reactive
    @track merchName;
    @track merchStock;
 
    //we have defined two methods to track the input of field
 
    handlechangeMerchName(event){ 
        this.merchName = event.target.value;
        // alert("call from merch name");
    }
    handlechangeMerchStock(event){
        this.merchStock = event.target.value;
        // alert("call from merch stock");
    }
 
    // we have defined this method to handle click of button after clicking on button handleMerchandiseSearch
    // method will get called  and using custom event getmerchandisedata data will be forwarded to parent component
    handleMerchandiseSearch(event){
        getMerchandiseData({mName:this.merchName}).
        then(results=>{this.dispatchEvent(new CustomEvent('getmerchandisedata',{detail:results}))}).
        catch(error=>{console.log(error);});
 
        // getMerchandiseDataByStock({mStock:this.merchStock}).
        // then(results=>{this.dispatchEvent(new CustomEvent('getmerchandisedatabystock',{detail:results}))}).
        // catch(error=>{console.log(error);});
 
    }
}