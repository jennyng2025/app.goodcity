import transportDetails from 'shared.goodcity/controllers/offer/transport_details';

var transportDetail = transportDetails.extend({
  needs: ['offers/index'],

  actions: {
    newOffer: function(){
      var offers = this.store.all('offer');
      this.get('controllers.offers/index').send('newOffer', offers);
    }
  }
});

export default transportDetail;
