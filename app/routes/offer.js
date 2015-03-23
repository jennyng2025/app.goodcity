import AuthorizeRoute from './authorize';

export default AuthorizeRoute.extend({
  model: function(params) {
    var offer = this.store.getById('offer', params.offer_id);
    if(!offer) { this.send("error"); }
    return offer;
  },
});
