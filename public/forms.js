var urlField = document.getElementById('url_field');

urlField.addEventListener('input', function (event) {
  if (urlField.validity.typeMismatch) {
    urlField.setCustomValidity('Must start with "http"');
  } else {
    urlField.setCustomValidity('');
  }
});
