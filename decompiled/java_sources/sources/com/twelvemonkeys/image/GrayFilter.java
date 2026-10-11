package com.twelvemonkeys.image;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.awt.image.RGBImageFilter;

/* loaded from: classes10.dex */
public class GrayFilter extends RGBImageFilter {

    /* renamed from: a */
    public int f93938a;

    /* renamed from: b */
    public float f93939b;

    public GrayFilter() {
        this.canFilterIndexColorModel = true;
        this.f93938a = 0;
        this.f93939b = 1.0f;
    }

    public int filterRGB(int i, int i2, int i3) {
        int i4 = (((((i3 >> 16) & 255) * 222) + (((i3 >> 8) & 255) * TypedValues.TransitionType.TYPE_TRANSITION_FLAGS)) + ((i3 & 255) * 71)) / 1000;
        float f = this.f93939b;
        if (f != 1.0f) {
            i4 = ((int) (i4 * f)) + this.f93938a;
        }
        return ((-16777216) & i3) | (i4 << 16) | (i4 << 8) | i4;
    }

    public GrayFilter(float f, float f2) {
        this.canFilterIndexColorModel = true;
        this.f93938a = 0;
        this.f93939b = 1.0f;
        f = f > f2 ? 0.0f : f;
        if (f < 0.0f) {
            f = 0.0f;
        } else if (f > 1.0f) {
            f = 1.0f;
        }
        if (f2 < 0.0f) {
            f2 = 0.0f;
        } else if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        this.f93938a = (int) (255.0f * f);
        this.f93939b = f2 - f;
    }

    public GrayFilter(int i, int i2) {
        this(i / 255.0f, i2 / 255.0f);
    }
}
