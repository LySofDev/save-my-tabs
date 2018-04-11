document.addEventListener(
  'turbolinks:load',
  () => Array.map(
    document.getElementsByClassName('alert'),
    alert => alert.addEventListener(
      'click',
      event => event.target.classList.remove('show')
    )
  )
);
