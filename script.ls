/* --- script.js --- */

// Función para cambiar de archivo en la página CONFIGS
function showFile(fileId, btnElement) {
    // 1. Ocultar todos los bloques de código
    document.querySelectorAll('.code-block').forEach(el => el.classList.remove('active'));
    
    // 2. Desactivar estilo visual de todos los botones de la lista
    document.querySelectorAll('.file-btn').forEach(el => el.classList.remove('active'));

    // 3. Mostrar el bloque seleccionado
    const target = document.getElementById(fileId);
    if(target) target.classList.add('active');

    // 4. Activar el botón que se pulsó
    if (btnElement) btnElement.classList.add('active');
}

// Función para copiar código al portapapeles
function copyCode(elementId) {
    const text = document.getElementById(elementId).innerText;
    navigator.clipboard.writeText(text).then(() => {
        alert(">> SISTEMA: Código copiado al portapapeles.");
    }).catch(err => {
        console.error('Error:', err);
    });
}