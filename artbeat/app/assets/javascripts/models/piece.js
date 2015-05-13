var Piece = function(id, gallery_id, piece_name, picture, piece_description){
  this.id = id;
  this.gallery = gallery_id;
  this.piece_name = piece_name;
  this.picture = picture;
  this.piece_description = piece_description;
}

Piece.prototype = {

  save: function(){
    $.ajax({
      type: 'POST',
      data: { piece: {gallery_id: this.gallery, piece_name: this.piece_name, picture: this.picture, piece_description: this.piece_description}},
      dataType: 'json',
      url: 'http://localhost:3000/galleries/' + this.gallery + '/pieces'
    }).done(function(response) {
      console.log("ajax request complete, piece saved?");
      //artBeatModel.getPieces();
    }).fail(function(){
      console.log("failed to save");
    })
  },

  update: function(){
    $.ajax({
      type: 'PATCH',
      data: { piece: {data}},
      dataType: 'json',
      url: 'http://localhost:3000/artists/' + this.artist + '/galleries/' + this.gallery + '/pieces' + this.id
    }).done(function(response) {
      console.log("ajax request complete, piece updated?");
      //artBeatModel.getPieces();
    }).fail(function(){
      console.log("failed to save");
    })
  }
}
