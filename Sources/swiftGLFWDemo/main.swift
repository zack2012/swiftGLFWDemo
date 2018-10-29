import CGLFW

// brew install glfw3
// brew install pkg-config glfw3
// pkg-config glfw3 --libs --cflags

glfwInit();

glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);

let window = glfwCreateWindow(800, 600, "Vulkan window", nil, nil)

while(glfwWindowShouldClose(window) == 0) {
    glfwPollEvents();
}

glfwDestroyWindow(window);

glfwTerminate();

print("Hello, world!")
