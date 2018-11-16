#include <vulkan/vulkan.h>

static inline  int vk_make_version(int major, int minor, int patch) {
    return VK_MAKE_VERSION(major, minor, patch);
}
