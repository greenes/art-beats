var ArtBeatView = function(artBeat) {
  var viewArtistsButton = document.querySelector('#artists');
  var viewGalleriesButton = document.querySelector('#galleries');
  var viewPiecesButton = document.querySelector('#pieces');
  this.welcomeGallery = document.querySelector('#welcome-gallery');
  this.model= artBeat;
  viewArtistsButton.addEventListener('click', this.model.getAllArtists.bind(this));
  viewGalleriesButton.addEventListener('click', this.model.getAllGalleries.bind(this));
  viewPiecesButton.addEventListener('click', this.model.getAllPieces.bind(this));

}

ArtBeatView.prototype = {

  renderGalleries: function() {
    console.log('rendering galleries');
    for (var i = 0; i < this.model.allGalleries.length; i++) {
        var div = document.getElementById("welcome-gallery");
        var subdiv = document.createElement("div");
        subdiv.appendChild(document.createTextNode(''+ this.model.allGalleries[i].gallery_name + ' : ' + this.model.allGalleries[i].description + ''));
        div.appendChild(subdiv);
    }

  },

  renderPieces: function() {
    console.log('rendering galleries');
    for (var i = 0; i < this.model.allPieces.length; i++) {
        var div = document.getElementById("welcome-gallery");
        var subdiv = document.createElement("div");
        subdiv.appendChild(document.createTextNode(this.model.allPieces[i].piece_name));
        div.appendChild(subdiv);

    }

  },

  renderArtists: function() {
    console.log('rendering galleries');
    for (var i = 0; i < this.model.allArtists.length; i++) {
        var div = document.getElementById("welcome-gallery");
        var subdiv = document.createElement("div");
        subdiv.appendChild(document.createTextNode(this.model.allArtists[i].name));
        div.appendChild(subdiv);

    }

  }

}
