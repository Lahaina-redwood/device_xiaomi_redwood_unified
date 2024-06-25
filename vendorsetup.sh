# Vendor Source
git clone https://github.com/Lahaina-redwood/vendor_xiaomi_redwood_unified.git vendor/xiaomi/redwood

# Kernel Source
git clone https://github.com/Thereache/kernel_xiaomi_redwood-atomx.git -b su kernel/xiaomi/redwood

# Ksu Sync
cd kernel/xiaomi/redwood && git submodule init && git submodule update KernelSU && cd ../../../

# redwood-firmware
git clone https://codeberg.org/reche/android_vendor_xiaomi_redwood-firmware.git vendor/xiaomi/redwood-firmware

# MIUI Camera
git clone https://codeberg.org/reche/proprietary_vendor_xiaomi_camera.git vendor/xiaomi/camera
