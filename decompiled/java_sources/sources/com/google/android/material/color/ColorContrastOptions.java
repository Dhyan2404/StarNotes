package com.google.android.material.color;

import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* loaded from: classes6.dex */
public class ColorContrastOptions {

    /* renamed from: a */
    @StyleRes
    public final int f30863a;

    /* renamed from: b */
    @StyleRes
    public final int f30864b;

    /* loaded from: classes6.dex */
    public static class Builder {

        /* renamed from: a */
        @StyleRes
        public int f30865a;

        /* renamed from: b */
        @StyleRes
        public int f30866b;

        @NonNull
        public ColorContrastOptions build() {
            return new ColorContrastOptions(this);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setHighContrastThemeOverlay(@StyleRes int i) {
            this.f30866b = i;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setMediumContrastThemeOverlay(@StyleRes int i) {
            this.f30865a = i;
            return this;
        }
    }

    @StyleRes
    public int getHighContrastThemeOverlay() {
        return this.f30864b;
    }

    @StyleRes
    public int getMediumContrastThemeOverlay() {
        return this.f30863a;
    }

    public ColorContrastOptions(Builder builder) {
        this.f30863a = builder.f30865a;
        this.f30864b = builder.f30866b;
    }
}
