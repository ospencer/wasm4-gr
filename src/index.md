---
title: Wasm4
---

## Values

Functions and constants included in the Wasm4 module.

### Wasm4.**_SCREEN_SIZE**

```grain
_SCREEN_SIZE : Uint8
```

### Wasm4.**_BUTTON_1**

```grain
_BUTTON_1 : Uint8
```

### Wasm4.**_BUTTON_2**

```grain
_BUTTON_2 : Uint8
```

### Wasm4.**_BUTTON_LEFT**

```grain
_BUTTON_LEFT : Uint8
```

### Wasm4.**_BUTTON_RIGHT**

```grain
_BUTTON_RIGHT : Uint8
```

### Wasm4.**_BUTTON_UP**

```grain
_BUTTON_UP : Uint8
```

### Wasm4.**_BUTTON_DOWN**

```grain
_BUTTON_DOWN : Uint8
```

### Wasm4.**_MOUSE_LEFT**

```grain
_MOUSE_LEFT : Uint16
```

### Wasm4.**_MOUSE_RIGHT**

```grain
_MOUSE_RIGHT : Uint16
```

### Wasm4.**_MOUSE_MIDDLE**

```grain
_MOUSE_MIDDLE : Uint16
```

### Wasm4.**_SYSTEM_PRESERVE_FRAMEBUFFER**

```grain
_SYSTEM_PRESERVE_FRAMEBUFFER : Uint8
```

### Wasm4.**_SYSTEM_HIDE_GAMEPAD_OVERLAY**

```grain
_SYSTEM_HIDE_GAMEPAD_OVERLAY : Uint8
```

### Wasm4.**_BLIT_1BPP**

```grain
_BLIT_1BPP : Uint8
```

### Wasm4.**_BLIT_2BPP**

```grain
_BLIT_2BPP : Uint8
```

### Wasm4.**_BLIT_FLIP_X**

```grain
_BLIT_FLIP_X : Uint8
```

### Wasm4.**_BLIT_FLIP_Y**

```grain
_BLIT_FLIP_Y : Uint8
```

### Wasm4.**_BLIT_ROTATE**

```grain
_BLIT_ROTATE : Uint8
```

### Wasm4.**_TONE_PULSE1**

```grain
_TONE_PULSE1 : Uint8
```

### Wasm4.**_TONE_PULSE2**

```grain
_TONE_PULSE2 : Uint8
```

### Wasm4.**_TONE_TRIANGLE**

```grain
_TONE_TRIANGLE : Uint8
```

### Wasm4.**_TONE_NOISE**

```grain
_TONE_NOISE : Uint8
```

### Wasm4.**_TONE_MODE1**

```grain
_TONE_MODE1 : Uint8
```

### Wasm4.**_TONE_MODE2**

```grain
_TONE_MODE2 : Uint8
```

### Wasm4.**_TONE_MODE3**

```grain
_TONE_MODE3 : Uint8
```

### Wasm4.**_TONE_MODE4**

```grain
_TONE_MODE4 : Uint8
```

### Wasm4.**loadi32**

```grain
loadi32 : (n: Uint32) => WasmI32
```

### Wasm4.**gamepad1**

```grain
gamepad1 : () => Uint8
```

### Wasm4.**drawColors**

```grain
drawColors : (color: Uint8) => Void
```

### Wasm4.**setPalette**

```grain
setPalette :
  (color1: Uint32, color2: Uint32, color3: Uint32, color4: Uint32) => Void
```

### Wasm4.**blit**

```grain
blit :
  (sprite: Bytes, x: Uint8, y: Uint8, width: Uint8, height: Uint8,
   flags: Uint8) => Void
```

### Wasm4.**blitSub**

```grain
blitSub :
  (sprite: Bytes, x: Uint8, y: Uint8, width: Uint8, height: Uint8,
   srcX: Uint16, srcY: Uint16, stride: Uint8, flags: Uint8) => Void
```

### Wasm4.**line**

```grain
line : (x1: Uint8, y1: Uint8, x2: Uint8, y2: Uint8) => Void
```

### Wasm4.**hline**

```grain
hline : (x: Uint8, y: Uint8, len: Uint8) => Void
```

### Wasm4.**vline**

```grain
vline : (x: Uint8, y: Uint8, len: Uint8) => Void
```

### Wasm4.**oval**

```grain
oval : (x: Uint8, y: Uint8, width: Uint8, height: Uint8) => Void
```

### Wasm4.**rect**

```grain
rect : (x: Uint8, y: Uint8, width: Uint8, height: Uint8) => Void
```

### Wasm4.**text**

```grain
text : (string: String, x: Uint8, y: Uint8) => Void
```

### Wasm4.**tone**

```grain
tone :
  (frequency1: Uint16, frequency2: Uint16, duration: Uint16, volume: 
   Uint8, flags: Uint8) => Void
```

### Wasm4.**diskr**

```grain
diskr : (size: Uint16) => Bytes
```

### Wasm4.**diskw**

```grain
diskw : (bytes: Bytes) => Uint16
```

### Wasm4.**trace**

```grain
trace : (msg: String) => Void
```

