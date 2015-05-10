var Piece = function(id, user_id, gallery_id, piece_name, piece_date, piece_description){
  this.id = id;
  this.user = user_id;
  this.gallery = gallery_id;
  this.piece_name = piece_name;
  this.date = piece_date;
  this.piece_description = piece_description;
}

Piece.prototype = {

  save: function(){
    $.ajax({
      type: 'POST',
      data: { piece: {user_id: this.uer, gallery_id: this.gallery, piece_name: this.piece_name, piece_date: this.date, piece_description: this.piece_description}},
      dataType: 'json',
      url: 'http://localhost:3000/users/' + this.user + '/galleries/' + this.gallery + '/pieces'
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
      url: 'http://localhost:3000/users/' + this.user + '/galleries/' + this.gallery + '/pieces' + this.id
    }).done(function(response) {
      console.log("ajax request complete, piece updated?");
      //artBeatModel.getPieces();
    }).fail(function(){
      console.log("failed to save");
    })
  }
}
