var UserView = function(user) {
  this.user = user;
  this.container = document.createElement('div');
  this.container.className = "artist";
  this.name = document.createElement('label');
  this.name.innerHTML = User.description;
  this.container.appendChild(this.name);

  this.bio = document.createElement('label');
  this.bio.innerHTML = User.name;
  this.container.appendChild(this.bio);

  this.prof_pic = document.createElement('label');
  this.prof_pic.innerHTML = User.prof_pic;
  this.container.appendChild(this.prof_pic);

  this.contact_info = document.createElement('label');
  this.contact_info.innerHTML = User.contact_info;
  this.container.appendChild(this.contact_info);
}
