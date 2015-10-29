import SessionRoute from './session';

export default SessionRoute.extend({
  model() {
    return this.store.peekAll('territory');
  }
});
