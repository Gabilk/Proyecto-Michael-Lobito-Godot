# GUÍA COMPLETA: Crear Sprites 2D para Michael y Lobito

## 🎨 HERRAMIENTAS RECOMENDADAS

### Opción 1: Gratuitas (Recomendadas)
- **Krita** (dibujo/pixel art): https://krita.org/
- **Aseprite** (sprite sheet): https://www.aseprite.org/
- **Piskel App** (online): https://www.piskelapp.com/
- **LibreSprite** (fork de Aseprite, gratis): https://libresprite.github.io/

### Opción 2: Procedimental
- **Blender** (3D → exportar a 2D): https://www.blender.org/
- **MagicaVoxel** (voxel → sprite): https://ephtracy.github.io/

## 📐 DIMENSIONES RECOMENDADAS

### Personaje Principal (Michael)
- **Idle**: 64x96px (1-2 frames)
- **Walk**: 128x96px (4 frames) o 256x96px (8 frames)
- **Run**: 192x96px (6 frames) o 256x96px (8 frames)
- **Jump**: 64x96px (1-2 frames)
- **Sit**: 64x80px (1 frame)

### Compañero (Lobito Negro)
- **Idle**: 96x96px (1-2 frames)
- **Walk**: 192x96px (4 frames) o 320x96px (8 frames)
- **Sit**: 96x96px (1 frame)

## 🖼️ PASOS PARA CREAR SPRITES

### 1. Dibujar en Krita
```
Archivo → Nuevo → Dimensiones: 256x96 (para 4 frames de walk)
Imagen → Modos → Convertir a RGB
Crear capas para cada frame
```

### 2. Exportar como Sprite Sheet
```
Archivo → Exportar → Formato PNG
Asegúrate que sea PNG-32 con transparencia (RGBA)
Nombre: michael_walk.png
```

### 3. Importar a Godot
```
1. Copia el archivo a res://assets/sprites/michael/
2. En Godot, selecciona la imagen
3. Ve a "Import" en la parte superior
4. Cambia "Texture" → "Sprite Sheet"
5. Columns: 4 (si tienes 4 frames)
6. Rows: 1
7. Reimporta
```

### 4. Configurar en AnimatedSprite2D
```
En la escena del personaje:
- AnimatedSprite2D → Sprite Frames → Nueva
- Agregar animación "walk"
- Seleccionar los frames del sprite sheet
- Animation Speed Scale: 0.8 (ajusta según necesites)
```

## 🎬 SECUENCIAS DE ANIMACIÓN RECOMENDADAS

### MICHAEL - Idle (Respiración)
```
Frame 1: Posición normal, ojos abiertos
Frame 2: Pecho ligeramente expandido, expresión relajada
Velocidad: 2 FPS (parece natural)
Loop: Infinito
```

### MICHAEL - Walk
```
Frame 1: Pierna izquierda adelante
Frame 2: Piernas juntas
Frame 3: Pierna derecha adelante
Frame 4: Piernas juntas (posición inicial)
Velocidad: 8 FPS
Loop: Infinito
```

### MICHAEL - Run
```
6-8 frames de corrida fluida
Frame 1: Salto con pierna izquierda adelante
Frame 2: Pico del salto
Frame 3: Aterrizaje
Frame 4: Impulso
Velocidad: 12 FPS
Loop: Infinito
```

### LOBITO - Idle (Alerta amistosa)
```
Frame 1: Sentado, atento
Frame 2: Parpadeo ligero
Velocidad: 3 FPS
Loop: Infinito
```

### LOBITO - Walk
```
4-6 frames de trote natural
Velocidad: 8 FPS
Loop: Infinito
```

## 💾 PREPARAR ARCHIVOS

```
res://assets/sprites/
├── michael/
│   ├── michael_idle.png
│   ├── michael_walk.png
│   ├── michael_run.png
│   ├── michael_jump.png
│   ├── michael_sit.png
│   └── michael_interact.png
├── lobito/
│   ├── lobito_idle.png
│   ├── lobito_walk.png
│   ├── lobito_sit.png
│   └── lobito_interact.png
└── ui/
    └── (menúes, controles, etc.)
```

## ⚙️ CONFIGURACIÓN EN GODOT (Inspector)

### Sprite Sheet Settings
```
AnimatedSprite2D:
  Sprite Frames:
    Animations: idle, walk, run, jump, sit
    
    idle:
      Frames: [0, 1] (2 frames)
      Speed: 2.0 FPS
      Loop: true
    
    walk:
      Frames: [0, 1, 2, 3] (4 frames)
      Speed: 8.0 FPS
      Loop: true
    
    run:
      Frames: [0, 1, 2, 3, 4, 5] (6 frames)
      Speed: 12.0 FPS
      Loop: true
```

## 🎮 TAMAÑOS FINALES (En Godot)

Michael: 2x scale (128px visible en pantalla)
Lobito: 1.5x scale (144px visible en pantalla)

Ajusta según sea necesario en el inspector de cada nodo.

## 📸 CONSEJOS DE PIXEL ART

1. **Consistencia**: Mantén el mismo estilo en todos los frames
2. **Proporciones**: Mantén la cabeza en la misma posición (evita "pop")
3. **Antialiasing**: Úsalo con moderación en pixel art
4. **Sombras**: Agrega sombras simples para dar profundidad
5. **Expresiones**: En idle, cambia expresión facial levemente
6. **Timing**: Los ojos abiertos/cerrados debe sincronizarse con la respiración

## 🚀 PRÓXIMAS FASES

1. ✅ Crear sprites base (idle + walk)
2. ⏳ Agregar interacciones (click → animar)
3. ⏳ Efectos de partículas (pasos, saltos)
4. ⏳ Dialogos o reacciones
5. ⏳ Escenarios interactivos

---
**Duración estimada**: 2-4 horas por personaje completo (8 animaciones)
**Dificultad**: Media (sin experiencia previa en animación)
