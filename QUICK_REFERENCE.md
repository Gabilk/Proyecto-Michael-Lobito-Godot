# 📊 HOJA DE REFERENCIA RÁPIDA - Godot 4 + Animaciones 2D

## 🎯 Lo que Necesitas Saber

### 1. Estructura de Proyecto
```
Proyecto/
├── scenes/           ← Escenas (.tscn)
│   ├── main.tscn
│   ├── michael.tscn
│   └── lobito.tscn
├── scripts/          ← Código (.gd)
│   ├── michael_player.gd
│   └── lobito_companion.gd
├── assets/
│   └── sprites/      ← Imágenes PNG
│       ├── michael/
│       └── lobito/
└── project.godot     ← Config
```

### 2. Tipos de Nodos Esenciales
| Nodo | Propósito |
|------|----------|
| **CharacterBody2D** | Personajes (con movimiento) |
| **AnimatedSprite2D** | Anima sprites en 2D |
| **CollisionShape2D** | Físicas de colisión |
| **Camera2D** | Cámara que sigue el personaje |
| **Node2D** | Contenedor básico |

### 3. Workflow de Animación
```
1. Dibujar frames en Krita
2. Exportar como PNG (con transparencia)
3. Importar a Godot → Sprite Sheet
4. Crear SpriteFrames en AnimatedSprite2D
5. Agregar animaciones (idle, walk, run, etc.)
6. Reproducir con: $AnimatedSprite2D.play("nombre")
```

### 4. Velocidades de Animación (FPS)
```
Idle (respiración)   → 2-3 FPS  (lento, relajado)
Walk                 → 8 FPS    (natural)
Run                  → 12 FPS   (rápido)
Jump                 → 1 FPS    (casi parado)
```

### 5. Código GDScript Útil
```gdscript
# Reproducir animación
$AnimatedSprite2D.play("walk")

# Voltear sprite
$AnimatedSprite2D.flip_h = true  # horizontal
$AnimatedSprite2D.flip_v = false # vertical

# Verificar si está jugando
if $AnimatedSprite2D.is_playing():
    print("Animación en curso")

# Obtener entrada
var direction = Input.get_vector("ui_left", "ui_right", 
                                  "ui_up", "ui_down")

# Movimiento físico
velocity.x = direction.x * speed
velocity.y += gravity * delta
move_and_slide()

# Comprobar si está en el piso
if is_on_floor():
    can_jump = true
```

### 6. Parámetros Exportables
```gdscript
@export var speed = 200          # Velocidad en píxeles/seg
@export var gravity = 800        # Fuerza gravitatoria
@export var jump_force = -400    # Potencia del salto (negativo)
```

Modifica estos valores en el Inspector sin editar código.

## 🎬 Estados Comunes de Personajes
```
idle      → De pie, en reposo
walk      → Movimiento lento
run       → Movimiento rápido
jump      → Saltando
fall      → Cayendo
land      → Aterrizando
sit       → Sentado
interact  → Interactuando
hurt      → Golpeado
```

## 🚀 Shortcuts Godot
| Atajo | Acción |
|-------|--------|
| **F5** | Ejecutar proyecto |
| **F6** | Ejecutar escena actual |
| **Ctrl+S** | Guardar |
| **Ctrl+D** | Duplicar nodo |
| **Ctrl+A** | Seleccionar todo |
| **V** | Herramienta de selección |

## 🎨 Consejos de Diseño
- ✅ Mantén consistencia visual entre frames
- ✅ Usa sombras sutiles para profundidad
- ✅ Haz que los ojos se cierren/abran con la respiración
- ✅ Agrega movimiento pequeño en idle (no static)
- ✅ Varía la velocidad según la emoción
- ❌ No uses demasiados colores en pixel art
- ❌ No hagas cambios abruptos entre frames

## 📈 Optimización Básica
```gdscript
# En lugar de crear nuevos objetos cada frame
if not has_node("Sprite"):
    var sprite = Sprite2D.new()
    add_child(sprite)

# Caché referencias a nodos
@onready var sprite = $AnimatedSprite2D
@onready var collision = $CollisionShape2D
```

## 🐛 Debug en Godot
```gdscript
print("Posición:", position)
print("Velocidad:", velocity)
push_error("¡Error!")      # Error visible en consola
push_warning("Advertencia") # Advertencia
```

Ver output → Mostrar la salida en consola (abajo a la izquierda)

## 📚 Documentación Rápida
- **Nodos**: https://docs.godotengine.org/es_ES/stable/getting_started/introduction/first_look/nodes_and_scenes.html
- **Física**: https://docs.godotengine.org/es_ES/stable/tutorials/physics/
- **Animación**: https://docs.godotengine.org/es_ES/stable/tutorials/animation/index.html
- **GDScript**: https://docs.godotengine.org/es_ES/stable/tutorials/scripting/gdscript/index.html

---
**Guardá esta hoja, te servirá constantemente 📌**