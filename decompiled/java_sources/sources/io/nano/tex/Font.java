package io.nano.tex;

import android.graphics.Typeface;

/* loaded from: classes10.dex */
public final class Font {
    private float size;
    private Typeface typeface;

    private Font(Typeface typeface, float f) {
        this.typeface = typeface;
        this.size = f;
    }

    public static Font create(String str, int i, float f) {
        return new Font(Typeface.create(str, i), f);
    }

    public Font deriveFont(int i) {
        return this.typeface.getStyle() == i ? this : new Font(Typeface.create(this.typeface, i), this.size);
    }

    public float getSize() {
        return this.size;
    }

    public Typeface getTypeface() {
        return this.typeface;
    }

    public static Font create(String str, float f) {
        return new Font(Typeface.createFromFile(str), f);
    }
}
