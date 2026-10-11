package java.awt.im;

import java.awt.font.TextAttribute;
import java.util.Map;

/* loaded from: classes5.dex */
public class InputMethodHighlight {
    public static final int CONVERTED_TEXT = 1;
    public static final int RAW_TEXT = 0;
    private boolean selected;
    private int state;
    private Map<TextAttribute, ?> style;
    private int variation;
    public static final InputMethodHighlight UNSELECTED_RAW_TEXT_HIGHLIGHT = new InputMethodHighlight(false, 0);
    public static final InputMethodHighlight SELECTED_RAW_TEXT_HIGHLIGHT = new InputMethodHighlight(true, 0);
    public static final InputMethodHighlight UNSELECTED_CONVERTED_TEXT_HIGHLIGHT = new InputMethodHighlight(false, 1);
    public static final InputMethodHighlight SELECTED_CONVERTED_TEXT_HIGHLIGHT = new InputMethodHighlight(true, 1);

    public InputMethodHighlight(boolean z, int i) {
        this(z, i, 0, null);
    }

    public int getState() {
        return this.state;
    }

    public Map<TextAttribute, ?> getStyle() {
        return this.style;
    }

    public int getVariation() {
        return this.variation;
    }

    public boolean isSelected() {
        return this.selected;
    }

    public InputMethodHighlight(boolean z, int i, int i2) {
        this(z, i, i2, null);
    }

    public InputMethodHighlight(boolean z, int i, int i2, Map<TextAttribute, ?> map) {
        this.selected = z;
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("unknown input method highlight state");
        }
        this.state = i;
        this.variation = i2;
        this.style = map;
    }
}
