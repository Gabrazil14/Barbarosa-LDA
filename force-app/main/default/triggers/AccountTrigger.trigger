trigger AccountTrigger on SOBJECT (before insert) {
    System.debug('there is a test!');
}