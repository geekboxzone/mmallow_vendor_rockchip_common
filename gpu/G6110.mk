# lib
PRODUCT_COPY_FILES += \
    vendor/rockchip/common/gpu/libG6110/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    vendor/rockchip/common/gpu/libG6110/lib/modules/dc_fbdev.ko:system/lib/modules/dc_fbdev.ko \
    vendor/rockchip/common/gpu/libG6110/lib/modules/pvrsrvkm.ko:system/lib/modules/pvrsrvkm.ko 

# vendor/bin
PRODUCT_COPY_FILES += \
    vendor/rockchip/common/gpu/libG6110/vendor/bin/pvrsrvctl:system/vendor/bin/pvrsrvctl \
    vendor/rockchip/common/gpu/libG6110/vendor/bin/framebuffer_test:system/vendor/bin/framebuffer_test \
    vendor/rockchip/common/gpu/libG6110/vendor/bin/hwperfbin2jsont:system/vendor/bin/hwperfbin2jsont \
    vendor/rockchip/common/gpu/libG6110/vendor/bin/pvrdebug:system/vendor/bin/pvrdebug \
    vendor/rockchip/common/gpu/libG6110/vendor/bin/pvrhwperf:system/vendor/bin/pvrhwperf \
    vendor/rockchip/common/gpu/libG6110/vendor/bin/pvrlogdump:system/vendor/bin/pvrlogdump \
    vendor/rockchip/common/gpu/libG611/vendor/bin/pvrtld:system/vendor/bin/pvrtld \
    vendor/rockchip/common/gpu/libG6110/vendor/bin/rgx_blit_test:system/vendor/bin/rgx_blit_test \
    vendor/rockchip/common/gpu/libG6110/vendor/bin/rgx_blitsize_test:system/vendor/bin/rgx_blitsize_test \
    vendor/rockchip/common/gpu/libG6110/vendor/bin/rgx_compute_test:system/vendor/bin/rgx_compute_test \
    vendor/rockchip/common/gpu/libG6110/vendor/bin/rgx_triangle_test:system/vendor/bin/rgx_triangle_test \
    vendor/rockchip/common/gpu/libG6110/vendor/bin/rgx_twiddling_test:system/vendor/bin/rgx_twiddling_test \
    vendor/rockchip/common/gpu/libG6110/vendor/bin/testwrap:system/vendor/bin/testwrap \
    vendor/rockchip/common/gpu/libG6110/vendor/bin/testwrap32:system/vendor/bin/testwrap32

# vendor/lib
PRODUCT_COPY_FILES += \
    vendor/rockchip/common/gpu/libG6110/vendor/lib/egl/libEGL_POWERVR_ROGUE.so:system/vendor/lib/egl/libEGL_POWERVR_ROGUE.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib/egl/libGLESv1_CM_POWERVR_ROGUE.so:system/vendor/lib/egl/libGLESv1_CM_POWERVR_ROGUE.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib/egl/libGLESv2_POWERVR_ROGUE.so:system/vendor/lib/egl/libGLESv2_POWERVR_ROGUE.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib/hw/gralloc.rk3368.so:system/vendor/lib/hw/gralloc.rk3368.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib/hw/hwcomposer.rk3368.so:system/vendor/lib/hw/hwcomposer.rk3368.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib/libcreatesurface.so:system/vendor/lib/libcreatesurface.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib/libglslcompiler.so:system/vendor/lib/libglslcompiler.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib/libIMGegl.so:system/vendor/lib/libIMGegl.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib/libpvrANDROID_WSEGL.so:system/vendor/lib/libpvrANDROID_WSEGL.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib/libPVRScopeServices.so:system/vendor/lib/libPVRScopeServices.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib/libsrv_um.so:system/vendor/lib/libsrv_um.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib/libusc.so:system/vendor/lib/libusc.so

# vendor/lib64
PRODUCT_COPY_FILES += \
    vendor/rockchip/common/gpu/libG6110/vendor/lib64/egl/libEGL_POWERVR_ROGUE.so:system/vendor/lib64/egl/libEGL_POWERVR_ROGUE.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib64/egl/libGLESv1_CM_POWERVR_ROGUE.so:system/vendor/lib64/egl/libGLESv1_CM_POWERVR_ROGUE.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib64/egl/libGLESv2_POWERVR_ROGUE.so:system/vendor/lib64/egl/libGLESv2_POWERVR_ROGUE.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib64/hw/gralloc.rk3368.so:system/vendor/lib64/hw/gralloc.rk3368.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib64/hw/hwcomposer.rk3368.so:system/vendor/lib64/hw/hwcomposer.rk3368.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib64/libcreatesurface.so:system/vendor/lib64/libcreatesurface.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib64/libglslcompiler.so:system/vendor/lib64/libglslcompiler.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib64/libIMGegl.so:system/vendor/lib64/libIMGegl.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib64/libpvrANDROID_WSEGL.so:system/vendor/lib64/libpvrANDROID_WSEGL.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib64/libPVRScopeServices.so:system/vendor/lib64/libPVRScopeServices.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib64/libsrv_init.so:system/vendor/lib64/libsrv_init.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib64/libsrv_um.so:system/vendor/lib64/libsrv_um.so \
    vendor/rockchip/common/gpu/libG6110/vendor/lib64/libusc.so:system/vendor/lib64/libusc.so 
