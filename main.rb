class ScreenMode
    def draw_button(label_text, x, y, foreground_color)
        raise "draw_button() cannot be called from parent class"
    end

    def dark()
        DarkMode.new
    end

    def light()
        LightMode.new
    end
end

class DarkMode < ScreenMode
    def draw_button(label_text, x, y, foreground_color)
        paint(label_text, x, y, foreground_color - 10, '#111111')
    end
end

class LightMode < ScreenMode
    def draw_button(label_text, x, y, foreground_color)
        paint(label_text, x, y, foreground_color + 10, '#E0E0E0')
    end
end