class Api {
  static headers() {
    return {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    }
  }

  static get(route) {
    return this.xhr(route, null, 'GET');
  }

  static put(route, params) {
    return this.xhr(route, params, 'PUT')
  }

  static post(route, params) {
    return this.xhr(route, params, 'POST')
  }

  static delete(route, params) {
    return this.xhr(route, params, 'DELETE')
  }

  static xhr(route, params, verb) {
    const url = `${window.location.origin}${route}`
    let options = Object.assign({ method: verb }, params ? { body: JSON.stringify(params) } : null );
    options.credentials = 'same-origin';
    options.headers = Api.headers();
    return fetch(url, options).then( resp => {
      let json = resp.json();
      if (!resp.error) {
        return json;
      }
      return json.then(err => {return err});
    });
  }
}
export default Api