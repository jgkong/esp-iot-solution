#
# "main" pseudo-component makefile.
#
# (Uses default behaviour of compiling all source files in directory, adding 'include' to include path.)

ifdef CONFIG_UGFX_GUI_ENABLE

    ifndef CONFIG_UGFX_USE_CUSTOM_DRIVER
        COMPONENT_SRCDIRS := 
        COMPONENT_ADD_INCLUDEDIRS := . \
            ./include \

        #Display driver mode
        ifdef CONFIG_UGFX_LCD_DRIVER_FRAMEBUFFER_MODE
        COMPONENT_SRCDIRS += ./gdisp/framebuffer 
        COMPONENT_ADD_INCLUDEDIRS += ./gdisp/framebuffer
        endif

        #Display driver
        ifdef CONFIG_UGFX_DRIVER_ILI9341
        COMPONENT_SRCDIRS += ./gdisp/ILI9341
        COMPONENT_ADD_INCLUDEDIRS += ./gdisp/ILI9341
        endif

        ifdef CONFIG_UGFX_DRIVER_ST7789
        COMPONENT_SRCDIRS += ./gdisp/ST7789
        COMPONENT_ADD_INCLUDEDIRS += ./gdisp/ST7789
        endif

        ifdef CONFIG_UGFX_DRIVER_SSD1306
        COMPONENT_SRCDIRS += ./gdisp/SSD1306
        COMPONENT_ADD_INCLUDEDIRS += ./gdisp/SSD1306
        endif

        ifdef CONFIG_UGFX_DRIVER_NT35510
        COMPONENT_SRCDIRS += ./gdisp/NT35510
        COMPONENT_ADD_INCLUDEDIRS += ./gdisp/NT35510
        endif

        #Input driver 
        ifdef CONFIG_UGFX_DRIVER_TOUCH_SCREEN_ENABLE

            ifdef CONFIG_UGFX_DRIVER_TOUCH_XPT2046
            COMPONENT_SRCDIRS += ./ginput/XPT2046
            COMPONENT_ADD_INCLUDEDIRS += ./ginput/XPT2046
            endif

            ifdef CONFIG_UGFX_DRIVER_TOUCH_FT5X06
            COMPONENT_SRCDIRS += ./ginput/FT5X06
            COMPONENT_ADD_INCLUDEDIRS += ./ginput/FT5X06
            endif
            
        endif
            
    endif

else

    ifdef CONFIG_LVGL_GUI_ENABLE

        ifndef CONFIG_LVGL_USE_CUSTOM_DRIVER
            COMPONENT_SRCDIRS := 
            COMPONENT_ADD_INCLUDEDIRS := . \
                ./include \

            #Display driver
            ifdef CONFIG_LVGL_DRIVER_ILI9341
            COMPONENT_SRCDIRS += ./gdisp/ILI9341
            COMPONENT_ADD_INCLUDEDIRS += ./gdisp/ILI9341
            endif

            ifdef CONFIG_LVGL_DRIVER_ST7789
            COMPONENT_SRCDIRS += ./gdisp/ST7789
            COMPONENT_ADD_INCLUDEDIRS += ./gdisp/ST7789
            endif

            ifdef CONFIG_LVGL_DRIVER_SSD1306
            COMPONENT_SRCDIRS += ./gdisp/SSD1306
            COMPONENT_ADD_INCLUDEDIRS += ./gdisp/SSD1306
            endif

            ifdef CONFIG_LVGL_DRIVER_NT35510
            COMPONENT_SRCDIRS += ./gdisp/NT35510
            COMPONENT_ADD_INCLUDEDIRS += ./gdisp/NT35510
            endif

            #Input driver 
            ifdef CONFIG_LVGL_DRIVER_TOUCH_SCREEN_ENABLE

                ifdef CONFIG_LVGL_DRIVER_TOUCH_XPT2046
                COMPONENT_SRCDIRS += ./ginput/XPT2046
                COMPONENT_ADD_INCLUDEDIRS += ./ginput/XPT2046
                endif

                ifdef CONFIG_LVGL_DRIVER_TOUCH_FT5X06
                COMPONENT_SRCDIRS += ./ginput/FT5X06
                COMPONENT_ADD_INCLUDEDIRS += ./ginput/FT5X06
                endif
                
            endif
                
        endif

    else
        COMPONENT_SRCDIRS := 
        COMPONENT_ADD_INCLUDEDIRS := 
    endif 

endif 
