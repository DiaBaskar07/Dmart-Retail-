import { LightningElement,api } from 'lwc';
const columns = [
    // { label: 'Merchandise ID', fieldName: 'id' },
    { label: 'Merchandise Name', fieldName: 'name'},
    { label: 'Merchandise Description', fieldName: 'desc'},
    { label: 'Merchandise Stock', fieldName: 'stock' },
    { label: 'Merchandise Price', fieldName: 'price'}
];
 
export default class DisplayMerchandise extends LightningElement {
    @api
    searchmer = [];
    columns = columns;
}