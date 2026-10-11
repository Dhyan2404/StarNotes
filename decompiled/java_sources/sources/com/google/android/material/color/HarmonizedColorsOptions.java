package com.google.android.material.color;

import androidx.annotation.AttrRes;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import com.google.android.material.C5139R;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* loaded from: classes6.dex */
public class HarmonizedColorsOptions {

    /* renamed from: a */
    @NonNull
    @ColorRes
    public final int[] f30895a;

    /* renamed from: b */
    @Nullable
    public final HarmonizedColorAttributes f30896b;

    /* renamed from: c */
    @AttrRes
    public final int f30897c;

    /* loaded from: classes6.dex */
    public static class Builder {

        /* renamed from: b */
        @Nullable
        public HarmonizedColorAttributes f30899b;

        /* renamed from: a */
        @NonNull
        @ColorRes
        public int[] f30898a = new int[0];

        /* renamed from: c */
        @AttrRes
        public int f30900c = C5139R.attr.colorPrimary;

        @NonNull
        public HarmonizedColorsOptions build() {
            return new HarmonizedColorsOptions(this);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setColorAttributeToHarmonizeWith(@AttrRes int i) {
            this.f30900c = i;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setColorAttributes(@Nullable HarmonizedColorAttributes harmonizedColorAttributes) {
            this.f30899b = harmonizedColorAttributes;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setColorResourceIds(@NonNull @ColorRes int[] iArr) {
            this.f30898a = iArr;
            return this;
        }
    }

    @NonNull
    public static HarmonizedColorsOptions createMaterialDefaults() {
        return new Builder().setColorAttributes(HarmonizedColorAttributes.createMaterialDefaults()).build();
    }

    @StyleRes
    /* renamed from: a */
    public int m23520a(@StyleRes int i) {
        HarmonizedColorAttributes harmonizedColorAttributes = this.f30896b;
        return (harmonizedColorAttributes == null || harmonizedColorAttributes.getThemeOverlay() == 0) ? i : this.f30896b.getThemeOverlay();
    }

    @AttrRes
    public int getColorAttributeToHarmonizeWith() {
        return this.f30897c;
    }

    @Nullable
    public HarmonizedColorAttributes getColorAttributes() {
        return this.f30896b;
    }

    @NonNull
    @ColorRes
    public int[] getColorResourceIds() {
        return this.f30895a;
    }

    public HarmonizedColorsOptions(Builder builder) {
        this.f30895a = builder.f30898a;
        this.f30896b = builder.f30899b;
        this.f30897c = builder.f30900c;
    }
}
