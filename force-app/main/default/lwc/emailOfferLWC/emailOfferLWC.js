import { LightningElement,track } from 'lwc';
import labelTest from '@salesforce/label/c.TestLabel';
import updateLanguage from '@salesforce/apex/EmailOfferLWCController.updateLanguage';
import retrieveLabels from '@salesforce/apex/EmailOfferLWCController.retrieveLabels';
export default class EmailOfferLWC extends LightningElement {
    value = 'inProgress';
    @track label = labelTest

    get options() {
        return [
            { label: 'English', value: 'en_US' },
            { label: 'Portugues', value: 'pt_BR' }
        ];
    }

    handleChange(event) {
        this.value = event.detail.value;
        updateLanguage({pLanguageISOCode: this.value})
        .then(result =>{
            console.log('Success');
            retrieveLabels().then(value => {
                console.log(value);
                this.label = value;
            })
        })
        .catch(error =>{
            console.log(error);
        })
    }  
}