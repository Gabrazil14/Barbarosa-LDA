trigger AccountTrigger on SOBJECT (before insert) {
    System.debug(' is a test!');
}