# 🚀 GUÍA DE INSTALACIÓN Y CONFIGURACIÓN RÁPIDA

## Paso 1: Descargar Godot
1. Ve a https://godotengine.org/download
2. Descarga **Godot 4.1 o superior** (versión estándar, totalmente gratis)
3. Descomprime y ejecuta el archivo

## Paso 2: Clonar el Proyecto
```bash
git clone https://github.com/Gabilk/Proyecto-Michael-Lobito-Godot.git
cd Proyecto-Michael-Lobito-Godot
```

O descárgalo como ZIP desde GitHub.

## Paso 3: Abrir en Godot
1. Abre Godot
2. Selecciona "Importar" → Busca la carpeta del proyecto
3. Haz clic en "project.godot"
4. Clic en "Abrir"

## Paso 4: Crear Sprites (LO MÁS IMPORTANTE)
📌 **Sin sprites, el proyecto no funcionará. Necesitas crear las imágenes.**

### Opción Rápida (30 minutos):
1. Descarga **Krita** (gratis): https://krita.org/
2. Crea 2 imágenes PNG simples (64x96px cada una)
   - Frame 1: Michael con expresión normal
   - Frame 2: Michael parpadeando
3. Guarda como:
   - `res://assets/sprites/michael/michael_idle.png`
   - `res://assets/sprites/lobito/lobito_idle.png`

### Opción Completa (2-4 horas):
Sigue la guía en `SPRITE_CREATION_GUIDE.md` para crear todas las animaciones

## Paso 5: Importar Sprites en Godot
1. Copia tus imágenes PNG a `res://assets/sprites/`
2. En el Inspector de Godot, selecciona la imagen
3. Ve a la pestaña "Import"
4. Cambia "Texture" → "Sprite Sheet"
5. Ajusta "Columns" según cuántos frames tengas
6. Haz clic en "Reimport"

## Paso 6: Configurar AnimatedSprite2D
1. En la escena `michael.tscn`, selecciona el nodo `AnimatedSprite2D`
2. En el Inspector → Crea un nuevo `SpriteFrames`
3. Agrega animaciones:
   - idle
   - walk
   - run
   - jump

## Paso 7: ¡Ejecutar!
1. Haz clic en el botón ▶️ en la esquina superior derecha
2. O presiona **F5**
3. ¡Disfruta tu acompañante animado! 🎮

---

## ⌨️ Controles Listos
- **Flechas** o **WASD**: Mover a Michael
- **Espacio**: Saltar
- **Lobito** te seguirá automáticamente

## 📁 Estructura Esperada
```
res://
├── assets/
│   └── sprites/
│       ├── michael/
│       │   ├── michael_idle.png ← NECESARIO
│       │   ├── michael_walk.png
│       │   ├── michael_run.png
│       │   └── michael_jump.png
│       └── lobito/
│           ├── lobito_idle.png ← NECESARIO
│           └── lobito_walk.png
└── scripts/
    ├── michael_player.gd
    └── lobito_companion.gd
```

## 🎨 Herramientas Recomendadas
- **Krita** (dibujo 2D): https://krita.org/
- **Aseprite** (sprite sheets): https://www.aseprite.org/
- **LibreSprite** (gratis, similar a Aseprite): https://libresprite.github.io/
- **Piskel** (online, no instalar): https://www.piskelapp.com/

## 🐛 Solucionar Errores Comunes

### "Error: AnimatedSprite2D no tiene animaciones"
**Solución**: Asegúrate de que los PNG están importados correctamente como Sprite Sheets en Godot

### "Michael no se mueve"
**Solución**: 
1. Verifica que `michael.tscn` tenga un `CollisionShape2D`
2. Que el CollisionShape2D tenga una forma asignada (RectangleShape2D)

### "No veo los personajes"
**Solución**:
1. En el Inspector, expande "Transform" → "Scale"
2. Aumenta los valores de X e Y (ejemplo: 2, 2)
3. Asegúrate de que el pixmap no sea nulo (revisa la consola)

## 📚 Próximos Pasos Avanzados
1. ✅ Animaciones básicas (idle, walk)
2. ⏳ Agregar más animaciones (run, jump, sit)
3. ⏳ Efectos de partículas
4. ⏳ Sonidos y música
5. ⏳ Interactividad con clicks
6. ⏳ Dialógos dinámicos
7. ⏳ Escenarios interactivos

## 💡 Tips Profesionales
- Mantén la consistencia entre frames (mismo tamaño, posición de cabeza)
- Usa **antialiasing mínimo** en pixel art
- Prueba diferentes velocidades de animación (2-12 FPS generalmente)
- Agrega variedad: idle alternando entre parpadeo y expresiones

## 🎮 Controles Personalizables
Para cambiar controles, edita `michael_player.gd`:
```gdscript
var input_vector = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
```

## ❓ ¿Preguntas?
- Consulta la documentación oficial: https://docs.godotengine.org/
- Tutoriales 2D: https://godotengine.org/learn
- Comunidad: https://discord.gg/godotengine

---

**¡Ahora eres listo para animar a Michael y Lobito! 🐺✨**