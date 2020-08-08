'use stricts'

let chai = require('chai');
let chaiHttp = require('chai-http');
const expect = require('chai').expect;

chai.use(chaiHttp);
const url= 'http://localhost:3000';


describe('Insert a country: ',()=>{

	it('should insert a country', (done) => {
		chai.request(url)
			.post('/country')
			.send({id:0, country: "Croacia", year: 2017, days: 10})
			.end( function(err,res){
				console.log(res.body)
				expect(res).to.have.status(200);
				done();
			});
	});
});

describe('Insert a country with error: ',()=>{

	it('should receive an error', (done) => {
		chai.request(url)
			.post('/country')
			.send({id:1, country: "Madrid", year: 2010, days: 10})
			.end( function(err,res){
				console.log(res.body)
				expect(res).to.have.status(500);
				done();
			});
	});

});

describe('get all countries: ',()=>{

	it('should get all countries', (done) => {
		chai.request(url)
			.get('/countries')
			.end( function(err,res){
				console.log(res.body)
				expect(res).to.have.status(200);
				done();
			});
	});

});

describe('get the country with id 1: ',()=>{

	it('should get the country with id 1', (done) => {
		chai.request(url)
			.get('/country/1')
			.end( function(err,res){
				console.log(res.body)
				expect(res.body).to.have.property('id').to.be.equal(1);
				expect(res).to.have.status(200);
				done();
			});
	});

});

describe('update the days of country with id 1: ',()=>{

	it('should update the number of days', (done) => {
		chai.request(url)
			.put('/country/1/days/20')
			.end( function(err,res){
				console.log(res.body)
				expect(res.body).to.have.property('days').to.be.equal(20);
				expect(res).to.have.status(200);
				done();
			});
	});

});

describe('delete the country with id 1: ',()=>{

	it('should delete the country with id 1', (done) => {
		chai.request(url)
			.get('/countries')
			.end( function(err,res){
				console.log(res.body)
				expect(res.body).to.have.lengthOf(2);
				expect(res).to.have.status(200);
				chai.request(url)
					.del('/country/1')
					.end( function(err,res){
						console.log(res.body)
						expect(res).to.have.status(200);
						chai.request(url)
							.get('/countries')
							.end( function(err,res){
								console.log(res.body)
								expect(res.body).to.have.lengthOf(1);
								expect(res.body[0]).to.have.property('id').to.be.equal(0);
								expect(res).to.have.status(200);
								done();
						});
					});
			});
	});

});

describe('Insert a country with a form: ',()=>{

	it('should recieve an error because we send the country in form format', (done) => {
		chai.request(url)
			.post('/country')
			.type('form')
			.send({id:0, country: "Croacia", year: 2017, days: 10})
			.end( function(err,res){
				console.log(res.body)
				expect(res).to.have.status(500);
				done();
			});
	});
});
// The `agent` now has the sessionid cookie saved, and will send it
// back to the server in the next request:
var agent = chai.request.agent(url)
describe('Authenticate a user: ',()=>{

	it('should receive an OK and a cookie with the authentication token', (done) => {
		agent
			.get('/authentication')
  			.auth('user', 'password')
			.end( function(err,res){
				console.log(res.body)
				expect(res).to.have.cookie('authToken');
				expect(res).to.have.status(200);
				return agent.get('/personalData/user')
      			.then(function (res) {
         			expect(res).to.have.status(200);
         			console.log(res.body)
         			done();
      			});
				done();
			});
	});

});

describe('Obtain personal data without authToken: ',()=>{

	it('should receive an error because we need authToken', (done) => {
		agent
			.get('/personalData/user')
      		.then(function (res) {
         		expect(res).to.have.status(500);
         		console.log(res.body)
      	});
		done();
	});

});
