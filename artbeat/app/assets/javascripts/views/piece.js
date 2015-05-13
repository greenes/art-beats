var PieceView = function(piece){

  $('#piece-view').on('click', this.addHeart.bind(this));
}

PieceView.prototype = {

  addHeart: function(){
      this.model = new Piece();
      this.model.get();
      this.model.star();
      this.model.update();
      $('#num-of-artbeats').text(this.model.star);
  }
}
