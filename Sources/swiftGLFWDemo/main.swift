import CGLFW
import CVulkan

// brew install glfw3
// brew install pkg-config glfw3
// pkg-config glfw3 --libs --cflags

glfwInit();

glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);

let window = glfwCreateWindow(800, 600, "glfw window", nil, nil)

while(glfwWindowShouldClose(window) == 0) {
    glfwPollEvents();
}

glfwDestroyWindow(window);

glfwTerminate();

var appInfo = VkApplicationInfo(sType: VK_STRUCTURE_TYPE_APPLICATION_INFO,
                                pNext: nil, pApplicationName: "Hello Triangle",
                                applicationVersion: 0,
                                pEngineName: "No Engine",
                                engineVersion: 0,
                                apiVersion: UInt32(VK_VERSION_1_0))


var instance: VkInstance?

var createInfo = VkInstanceCreateInfo()
createInfo.sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
createInfo.pApplicationInfo = withUnsafePointer(to: &appInfo) { $0 }

let result = vkCreateInstance(&createInfo, nil, &instance)

if result == VK_SUCCESS {
    print("created instance result success")
}
vkDestroyInstance(instance, nil)

var extensionCount: UInt32 = 0
vkEnumerateInstanceExtensionProperties(nil, &extensionCount, nil)

print(extensionCount)

print("Hello, world!")
