const toTop = () => {
  window.scroll({ top: 0, behavior: 'smooth' });
}

const scroll = () => {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    document.getElementById("scrollUp").style.display = "block";
  } else {
    document.getElementById("scrollUp").style.display = "none";
  }
}

window.onscroll = function () { scroll() }