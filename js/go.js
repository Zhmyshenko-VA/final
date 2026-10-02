(function () {
  var URL = 'https://b5utterfl7.com/3pMzsz';

  function handler(e) {
    var link = e.target.closest && e.target.closest('[data-go="go"]');
    if (!link) return;
    if (e.type === 'auxclick' && e.button !== 1) return;
    e.preventDefault();
    e.stopPropagation();
    if (e.type === 'auxclick' || e.ctrlKey || e.metaKey || e.shiftKey) {
      window.open(URL, '_blank', 'noopener');
    } else {
      window.location.href = URL;
    }
  }

  document.addEventListener('click', handler, true);
  document.addEventListener('auxclick', handler, true);
})();
