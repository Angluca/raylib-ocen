## Raylib-ocen :    raylib  +  raygui
Install glfw and copy raylib 5 ```include|lib``` to ```./c/include|lib```
```zsh
ocen -o win ./examples/ocre/basic_window.oc && ./win

make run
make clean
```
```go
import raylib as rl

const screen_width: i32 = 800
const screen_height: i32 = 450

def main() {
    rl::SetExitKey(rl::KEY_ESCAPE)
    rl::InitWindow(screen_width, screen_height, "base_window")
    defer rl::CloseWindow()
    rl::SetTargetFPS(60)

    //loops --
    let dt: f32 = 0.0
    while(not rl::WindowShouldClose()) {
        //update --
        dt = rl::GetFrameTime()
        let key = rl::GetKeyPressed()
        match key {
            0 => {}
            else => {
                println("Input key: %c", key)
            }
        }

        //draw --
        rl::BeginDrawing()
            rl::ClearBackground(rl::DARKGRAY)
            if(rl::GuiButton(rl::Rectangle(10.0, 10.0, 100.0, 30.0), "I'm btn") != 0) {
                println("Hello btn!!")
            }

        rl::EndDrawing()
    }
}
```
You can use tool parse ```raylib.h, raymath.h``` gen ocen code :)
```zsh
./raylib_parser -i raylib.h -o raylib.oc -f CODE
./raylib_parser -i raymath.h -o raymath.oc -t RMAPI -f CODE
```
