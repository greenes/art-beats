var GalleryView = function(gallery) {
  var newPieceButton = $('#new-piece-button')
  this.model= gallery;
  newPieceButton.addEventListener('click', this.submitNewPiece.bind(this));
}

GalleryView.prototype = {

  submitNewPiece: function(){
    var newPieceButton = $('#new-piece-button').value;


  }


}
