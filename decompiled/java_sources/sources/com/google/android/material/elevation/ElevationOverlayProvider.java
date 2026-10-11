package com.google.android.material.elevation;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.C5139R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialAttributes;

/* loaded from: classes6.dex */
public class ElevationOverlayProvider {

    /* renamed from: f */
    public static final float f31249f = 4.5f;

    /* renamed from: g */
    public static final float f31250g = 2.0f;

    /* renamed from: h */
    public static final int f31251h = (int) Math.round(5.1000000000000005d);

    /* renamed from: a */
    public final boolean f31252a;

    /* renamed from: b */
    public final int f31253b;

    /* renamed from: c */
    public final int f31254c;

    /* renamed from: d */
    public final int f31255d;

    /* renamed from: e */
    public final float f31256e;

    public ElevationOverlayProvider(@NonNull Context context) {
        this(MaterialAttributes.resolveBoolean(context, C5139R.attr.elevationOverlayEnabled, false), MaterialColors.getColor(context, C5139R.attr.elevationOverlayColor, 0), MaterialColors.getColor(context, C5139R.attr.elevationOverlayAccentColor, 0), MaterialColors.getColor(context, C5139R.attr.colorSurface, 0), context.getResources().getDisplayMetrics().density);
    }

    /* renamed from: a */
    public final boolean m24040a(@ColorInt int i) {
        return ColorUtils.setAlphaComponent(i, 255) == this.f31255d;
    }

    public int calculateOverlayAlpha(float f) {
        return Math.round(calculateOverlayAlphaFraction(f) * 255.0f);
    }

    public float calculateOverlayAlphaFraction(float f) {
        if (this.f31256e <= 0.0f || f <= 0.0f) {
            return 0.0f;
        }
        return Math.min(((((float) Math.log1p(f / r2)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
    }

    @ColorInt
    public int compositeOverlay(@ColorInt int i, float f, @NonNull View view) {
        return compositeOverlay(i, f + getParentAbsoluteElevation(view));
    }

    @ColorInt
    public int compositeOverlayIfNeeded(@ColorInt int i, float f, @NonNull View view) {
        return compositeOverlayIfNeeded(i, f + getParentAbsoluteElevation(view));
    }

    @ColorInt
    public int compositeOverlayWithThemeSurfaceColorIfNeeded(float f, @NonNull View view) {
        return compositeOverlayWithThemeSurfaceColorIfNeeded(f + getParentAbsoluteElevation(view));
    }

    public float getParentAbsoluteElevation(@NonNull View view) {
        return ViewUtils.getParentAbsoluteElevation(view);
    }

    @ColorInt
    public int getThemeElevationOverlayColor() {
        return this.f31253b;
    }

    @ColorInt
    public int getThemeSurfaceColor() {
        return this.f31255d;
    }

    public boolean isThemeElevationOverlayEnabled() {
        return this.f31252a;
    }

    @ColorInt
    public int compositeOverlay(@ColorInt int i, float f) {
        int i2;
        float calculateOverlayAlphaFraction = calculateOverlayAlphaFraction(f);
        int alpha = Color.alpha(i);
        int layer = MaterialColors.layer(ColorUtils.setAlphaComponent(i, 255), this.f31253b, calculateOverlayAlphaFraction);
        if (calculateOverlayAlphaFraction > 0.0f && (i2 = this.f31254c) != 0) {
            layer = MaterialColors.layer(layer, ColorUtils.setAlphaComponent(i2, f31251h));
        }
        return ColorUtils.setAlphaComponent(layer, alpha);
    }

    @ColorInt
    public int compositeOverlayIfNeeded(@ColorInt int i, float f) {
        return (this.f31252a && m24040a(i)) ? compositeOverlay(i, f) : i;
    }

    @ColorInt
    public int compositeOverlayWithThemeSurfaceColorIfNeeded(float f) {
        return compositeOverlayIfNeeded(this.f31255d, f);
    }

    public ElevationOverlayProvider(boolean z, @ColorInt int i, @ColorInt int i2, @ColorInt int i3, float f) {
        this.f31252a = z;
        this.f31253b = i;
        this.f31254c = i2;
        this.f31255d = i3;
        this.f31256e = f;
    }
}
