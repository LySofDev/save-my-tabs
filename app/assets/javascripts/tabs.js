document.addEventListener(
  'turbolinks:load',
  () => {
    Array.map(
      [ document.getElementById('new-tab-button') ],
      button => button.addEventListener(
        'click',
        event => {
          event.preventDefault();
          button.classList.add('hidden');
          Array.map(
            [ document.getElementById('new-tab-form') ],
            form => form.classList.remove('hidden')
          );
        }
      )
    );
    Array.map(
      [ document.getElementById('close-new-tab') ],
      button => button.addEventListener(
        'click',
        event => {
          event.preventDefault();
          Array.map(
            [ document.getElementById('new-tab-button') ],
            button => button.classList.remove('hidden')
          );
          Array.map(
            [ document.getElementById('new-tab-form') ],
            form => form.classList.add('hidden')
          );
        }
      )
    );
  }
);
