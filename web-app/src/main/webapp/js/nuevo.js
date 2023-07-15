(() => {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  const forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {
      if (!form.checkValidity()) {
        event.preventDefault();
        event.stopPropagation()
      }

      form.classList.add('was-validated')
    }, false)
  })
})()
document.getElementById("precio").addEventListener("input", function () {
  var value = this.value;

  // Remover cualquier carácter que no sea un número o un punto decimal
  value = value.replace(/[^0-9.]/g, '');

  // Dividir el valor en parte entera y parte decimal
  var parts = value.split('.');
  var integerPart = parts[0];
  var decimalPart = parts[1];

  // Limitar la parte decimal a dos dígitos
  if (decimalPart && decimalPart.length > 2) {
      decimalPart = decimalPart.slice(0, 2);
  }

  // Construir el valor final y establecerlo en el campo de entrada
  var newValue = integerPart + (decimalPart ? '.' + decimalPart : '');
  this.value = newValue;
});
