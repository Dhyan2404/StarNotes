package org.apache.poi.latex;

import java.awt.Color;
import java.awt.Insets;

/* loaded from: classes12.dex */
public class Latex {
    public static final String LATEX_TYPE = "image/latex";
    public String content;
    public float fontSize;
    public Color foreground;
    public Insets insets;

    public Latex() {
    }

    public static Insets defaultInsets() {
        return new Insets(2, 1, 2, 1);
    }

    public Latex(String str, float f) {
        this.content = str;
        this.fontSize = f;
        this.insets = defaultInsets();
    }

    public Latex(String str, Insets insets, float f) {
        this.content = str;
        this.insets = insets;
        this.fontSize = f;
    }

    public Latex(String str, Insets insets, float f, Color color) {
        this.content = str;
        this.insets = insets;
        this.fontSize = f;
        this.foreground = color;
    }
}
