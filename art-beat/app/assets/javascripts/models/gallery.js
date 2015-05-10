var Gallery = function(id, user_id, gallery_name, description) {
  this.pieces = [];
  this.id = id;
  this.user = user_id;
  this.gallery_name = gallery_name;
  this.description = description;
}

Gallery.prototype = {

  save: function() {
    $.ajax({
      type: 'POST',
      data: { gallery: {user_id: this.user, gallery_name: this.gallery_name, description: this.description}},
      dataType: 'json',
      url: 'http://localhost:3000/galleries'
    }).done(function(response) {
      console.log("ajax request complete, model saved?");
      //artBeatModel.getGalleries();
    }).fail(function(){
      console.log("failed to save");
    })
  },

  update: function(){
    $.ajax({
      type: 'PUT',
      data: {gallery: data},
      dataType: 'json',
      url: 'http://localhost:3000/users/' + this.user + '/galleries/' + this.id
    }).done(function(response){
      console.log("gallery updated");
      //artBeatModel.getGalleries();
    }).fail(function(){
      console.log('gallery failed to update');
    })
  },

  fetchPieces: function(){
    $.ajax({
      type: 'GET',
      dataType: 'json',
      url: 'http://localhost:3000/users/' + this.user + '/galleries/' + this.id + '/pieces'
    }).done(function(response){
      galleryModel.loadPieces();
      galleryView.render();
    }).fail(function(){
      console.log('js failed to load')
    })
  },

  loadPieces: function(){
    this.pieces = [];
      for(var i = 0; i < response.length; i++){
        var piece = new Piece(response[i].id, response[i].user_id, response[i].gallery_id, response[i].piece_name, response[i].piece_medium, response[i].piece_date, response[i].piece_description);
        this.pieces.push(piece);
      }
  }

}
