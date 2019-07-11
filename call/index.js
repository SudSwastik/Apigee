// var request = require('request');
// request('http://httpbin.org/get', function (error, response, body) {
//   console.log('error:', error); // Print the error if one occurred
//   console.log('statusCode:', response && response.statusCode); // Print the response status code if a response was received
//   console.log('body:', body); // Print the HTML for the Google homepage.
// });


var request = require('request');
 
var options = {
  url: 'https://api.enterprise.apigee.com/v1/organizations/sudarshan4309-eval/userroles/User/users',
  headers: {
    'Authorization':'Basic c3VkYXJzaGFuNDMwOUBnbWFpbC5jb206U3VkdTQzMDlA'
  }
};
 
function callback(error, response, body) {
  if (!error && response.statusCode == 200) {
    var info = JSON.parse(body);
    console.log(info);
    console.log(info.stargazers_count + " Stars");
    console.log(info.forks_count + " Forks");
  }
}
 
request(options, callback);