package com.onyx.harfbuzz.graphics;

import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes9.dex */
public abstract class GlyphKey {
    public int pixelHeight;
    public int pixelWidth;
    public int skewX;
    public HBTypeface typeface;
    public int strength = 0;
    public boolean antiAlias = true;
    public int threshold = 0;

    /* loaded from: classes9.dex */
    public static final class Color extends GlyphKey {

        @ColorInt
        public int foregroundColor;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Color.class != obj.getClass()) {
                return false;
            }
            Color color = (Color) obj;
            return super.equals((GlyphKey) color) && this.foregroundColor == color.foregroundColor;
        }

        @Override // com.onyx.harfbuzz.graphics.GlyphKey
        public int hashCode() {
            return (super.hashCode() * 31) + this.foregroundColor;
        }

        public void set(Data data) {
            super.set((GlyphKey) data);
        }

        @Override // com.onyx.harfbuzz.graphics.GlyphKey
        @NonNull
        public Color copy() {
            Color color = new Color();
            color.set(this);
            color.foregroundColor = this.foregroundColor;
            return color;
        }
    }

    /* loaded from: classes9.dex */
    public static final class Data extends GlyphKey {
        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Data.class != obj.getClass()) {
                return false;
            }
            return super.equals((GlyphKey) obj);
        }

        @Override // com.onyx.harfbuzz.graphics.GlyphKey
        public /* bridge */ /* synthetic */ int hashCode() {
            return super.hashCode();
        }

        @Override // com.onyx.harfbuzz.graphics.GlyphKey
        @NonNull
        public Data copy() {
            Data data = new Data();
            data.set(this);
            return data;
        }
    }

    /* loaded from: classes9.dex */
    public static final class Stroke extends GlyphKey {
        public int lineCap;
        public int lineJoin;
        public int lineRadius;
        public int miterLimit;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Stroke.class != obj.getClass()) {
                return false;
            }
            Stroke stroke = (Stroke) obj;
            return super.equals((GlyphKey) stroke) && this.lineRadius == stroke.lineRadius && this.lineCap == stroke.lineCap && this.lineJoin == stroke.lineJoin && this.miterLimit == stroke.miterLimit;
        }

        @Override // com.onyx.harfbuzz.graphics.GlyphKey
        public int hashCode() {
            return (((((((super.hashCode() * 31) + this.lineRadius) * 31) + this.lineCap) * 31) + this.lineJoin) * 31) + this.miterLimit;
        }

        public void set(Data data) {
            super.set((GlyphKey) data);
        }

        @Override // com.onyx.harfbuzz.graphics.GlyphKey
        @NonNull
        public Stroke copy() {
            Stroke stroke = new Stroke();
            stroke.set(this);
            stroke.lineRadius = this.lineRadius;
            stroke.lineCap = this.lineCap;
            stroke.lineJoin = this.lineJoin;
            stroke.miterLimit = this.miterLimit;
            return stroke;
        }
    }

    public abstract GlyphKey copy();

    public boolean equals(@NonNull GlyphKey glyphKey) {
        HBTypeface hBTypeface = this.typeface;
        if (hBTypeface == null ? glyphKey.typeface == null : hBTypeface.equals(glyphKey.typeface)) {
            if (this.pixelWidth == glyphKey.pixelWidth && this.pixelHeight == glyphKey.pixelHeight && this.skewX == glyphKey.skewX && this.antiAlias == glyphKey.antiAlias && this.threshold == glyphKey.threshold) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        HBTypeface hBTypeface = this.typeface;
        return ((((((((((hBTypeface != null ? hBTypeface.hashCode() : 0) * 31) + this.pixelWidth) * 31) + this.pixelHeight) * 31) + this.skewX) * 31) + (this.antiAlias ? 1 : 0)) * 31) + this.threshold;
    }

    public void set(@NonNull GlyphKey glyphKey) {
        this.typeface = glyphKey.typeface;
        this.pixelWidth = glyphKey.pixelWidth;
        this.pixelHeight = glyphKey.pixelHeight;
        this.skewX = glyphKey.skewX;
        this.strength = glyphKey.strength;
        this.antiAlias = glyphKey.antiAlias;
        this.threshold = glyphKey.threshold;
    }
}
