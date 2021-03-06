module.exports = {
	get: function (tag) {
		var errors = {
			MISSING_INVALID_PARAMS: {
				status: 400,
				error: {
					code: -1,
					message: 'Missing/invalid parameters.',
					params: []
				}
			},
			INTERNAL_SERVER_ERROR: {
				status: 500,
				error: {
					code: -2,
					message: 'Internal server error.'
				}
			},
			INVALID_CREDENTIALS: {
				status: 403,
				error: {
					code: -3,
					message: 'Username or Password is incorrect.'
				}
			},
			UNAUTHORIZED: {
				status: 401,
				error: {
					code: -5,
					message: 'Unauthorized'
				}
			},			
			NOT_FOUND: {
				status: 404,
				error: {
					code: -6,
					message: 'Not Found'
				}
			},
			WATSON_SEND_MSG_ERROR: {
				status: 400,
				error: {
					code: -7,
					message: 'There is problem in fetching data in conversation.'
				}
			},
			GOOGLE_NO_GEOCODE: {
				status: 400,
				error: {
					code: -8,
					message: 'We can\'t geocode the location you provide.'
				}
			},
			STATUS_PROBLEM: {
				status: 400,
				error: {
					code: -9,
					message: 'There is no atm location to add status to.'
				}
			}
		};
		return errors[tag];
	},
	raise: function (e) {
		var error = JSON.parse(JSON.stringify(this.get(e)));
		return error;
	}
};