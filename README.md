## raylib  +  raygui
https://github.com/raysan5/raylib  
https://www.raylib.com/examples.html

* Install ```glfw``` and build-copy ```raylib 5``` ```include|lib``` to ```./c/include|lib```

* ```raylib-template``` or ```raylib-examples``` set ```makefile``` ```-I include_path```  ```-L lib_path``` build it

```zsh
cd raylib-examples

make run
make clean
```
```go
import oc::raylib::*

const screen_width: i32 = 800
const screen_height: i32 = 450

def main() {
    SetExitKey(KEY_ESCAPE)
    InitWindow(screen_width, screen_height, "base_window")
    defer CloseWindow()
    SetTargetFPS(60)

    //loops --
    let dt: f32 = 0.0
    while(not WindowShouldClose()) {
        //update --
        dt = GetFrameTime()
        let key = GetKeyPressed()
        match key {
            0 => {}
            else => {
                println("Input key: %c", key)
            }
        }

        //draw --
        BeginDrawing()
            ClearBackground(DARKGRAY)

        EndDrawing()
    }
}
```
* Use tool parse ```raylib.h, raymath.h``` gen ocen code if you want :)
```zsh
./raylib_parser -i ./include/raylib.h -o raylib.oc -f CODE
./raylib_parser -i ./include/raymath.h -o raymath.oc -t RMAPI -f CODE
```
