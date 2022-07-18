trigger AccountTrigger on SOBJECT (before insert) {
    System.debug('This is a test');
}