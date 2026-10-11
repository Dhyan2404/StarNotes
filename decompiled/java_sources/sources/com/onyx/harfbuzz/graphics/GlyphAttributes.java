package com.onyx.harfbuzz.graphics;

import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.onyx.harfbuzz.graphics.GlyphKey;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes9.dex */
public final class GlyphAttributes {
    public static final int LINECAP_BUTT = 0;
    public static final int LINECAP_ROUND = 1;
    public static final int LINECAP_SQUARE = 2;
    public static final int LINEJOIN_BEVEL = 1;
    public static final int LINEJOIN_MITER_FIXED = 3;
    public static final int LINEJOIN_MITER_VARIABLE = 2;
    public static final int LINEJOIN_ROUND = 0;

    /* renamed from: a */
    @NonNull
    public final GlyphKey.Data f62747a = new GlyphKey.Data();

    /* renamed from: b */
    @NonNull
    public final GlyphKey.Color f62748b = new GlyphKey.Color();

    /* renamed from: c */
    @NonNull
    public final GlyphKey.Stroke f62749c = new GlyphKey.Stroke();

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes9.dex */
    public @interface LineCap {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes9.dex */
    public @interface LineJoin {
    }

    @NonNull
    public GlyphKey.Color colorKey() {
        this.f62748b.set(this.f62747a);
        return this.f62748b;
    }

    @NonNull
    public GlyphKey.Data dataKey() {
        return this.f62747a;
    }

    public boolean isAntiAlias() {
        return this.f62747a.antiAlias;
    }

    public boolean isRenderable() {
        GlyphKey.Data data = this.f62747a;
        return data.pixelWidth >= 64 && data.pixelHeight >= 64;
    }

    public void setAntiAlias(boolean z) {
        this.f62747a.antiAlias = z;
    }

    public void setForegroundColor(@ColorInt int i) {
        this.f62748b.foregroundColor = i;
    }

    public void setLineCap(int i) {
        this.f62749c.lineCap = i;
    }

    public void setLineJoin(int i) {
        this.f62749c.lineJoin = i;
    }

    public void setLineRadius(float f) {
        this.f62749c.lineRadius = (int) ((f * 64.0f) + 0.5f);
    }

    public void setMiterLimit(float f) {
        this.f62749c.miterLimit = (int) ((f * 65536.0f) + 0.5f);
    }

    public void setPixelHeight(float f) {
        this.f62747a.pixelHeight = (int) ((f * 64.0f) + 0.5f);
    }

    public void setPixelWidth(float f) {
        this.f62747a.pixelWidth = (int) ((f * 64.0f) + 0.5f);
    }

    public void setSkewX(float f) {
        this.f62747a.skewX = (int) ((f * 65536.0f) + 0.5f);
    }

    public void setStrength(int i) {
        this.f62747a.strength = i;
    }

    public void setThreshold(int i) {
        this.f62747a.threshold = i;
    }

    public void setTypeface(HBTypeface hBTypeface) {
        this.f62747a.typeface = hBTypeface;
    }

    @NonNull
    public GlyphKey.Stroke strokeKey() {
        this.f62749c.set(this.f62747a);
        return this.f62749c;
    }
}
