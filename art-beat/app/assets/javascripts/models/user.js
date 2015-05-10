var User = function(id, name, bio, prof_pic, contact_info){
  this.galleries =[];
  this.id = id;
  this.user = user_id;
  this.name = name;
  this.bio = bio;
  this.prof_pic = prof_pic;
  this.contact_info = contact_info;
}

User.prototype = {

  fetchGalleries: function(){
    $.ajax({
      type: 'GET',
      dataType: 'json',
      url: 'http://localhost:3000/users/' + this.id + '/galleries'
    }).done(function(response){
      userModel.loadGalleries();
      userView.render();
    }).fail(function(){
      console.log('js failed to load')
    })
  },

  loadGalleries: function(){
    this.galleries = [];
      for(var i = 0; i < response.length; i++){
        var gallery = new Gallery(response[i].id, response[i].user_id, response[i].gallery_name, response[i].gallery_description);
        this.galleries.push(gallery);
      }
  }
}
