var fs = require('fs');
const { faker } = require('@faker-js/faker');

var dict = {
    "USERNAMEVACIO": "",
    "PASSWORDVACIO": "",
    "USERNAMEINCORRECTO": faker.internet.email(),
    "PASSWORDINCORRECTO": faker.person.lastName(),
    "USERNAME1": "joandavidcolina@hotmail.com",
    "PASSWORD1": "onepiece1234",
    "POSTTITLE": faker.person.fullName(),
    "POSTTITLE252": faker.string.fromCharacters('c', 256),
    "POSTTITLE250": faker.string.fromCharacters('c', 254),
    "BODYTITLE": faker.person.fullName(),
    "TAGNAMEincorrect": " ",
    "TAGNAME": faker.person.fullName(),
    "TAGNAME190": faker.string.fromCharacters('c', 190),
    "TAGNAME192": faker.string.fromCharacters('c', 192),
    "TAGDESCRIPTION": faker.name.jobTitle(),
    "TAGDESCRIPTION501":  faker.string.fromCharacters('c', 501),
    "TAGDESCRIPTION499":  faker.string.fromCharacters('c', 499),
    "TAGCOLOR": faker.color.human(),
    "TAGCOLORIncorrect": faker.person.fullName(),
    "pageTest1": faker.person.fullName(),
    "pageTest1251": faker.string.fromCharacters('c', 251),
    "pageTest1250": faker.string.fromCharacters('c', 249),
    "NAME": faker.person.fullName(),
    "USERNAME1UPDATE": "joandavidcolina@hotmail.com",
    "slug": faker.person.firstName(),
    "slug192": faker.string.fromCharacters('c', 192),
    "slug191": faker.string.fromCharacters('c', 190),
}


var dictstring = JSON.stringify(dict);
fs.writeFile("propertiesDataPol.json", dictstring, function(err, result) {
    if(err) console.log('error', err);
});
