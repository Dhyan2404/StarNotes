package com.google.android.material.color;

import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import com.google.android.material.C5139R;

/* loaded from: classes6.dex */
public final class HarmonizedColorAttributes {

    /* renamed from: c */
    public static final int[] f30891c = {C5139R.attr.colorError, C5139R.attr.colorOnError, C5139R.attr.colorErrorContainer, C5139R.attr.colorOnErrorContainer};

    /* renamed from: a */
    public final int[] f30892a;

    /* renamed from: b */
    @StyleRes
    public final int f30893b;

    public HarmonizedColorAttributes(@AttrRes @NonNull int[] iArr, @StyleRes int i) {
        if (i != 0 && iArr.length == 0) {
            throw new IllegalArgumentException("Theme overlay should be used with the accompanying int[] attributes.");
        }
        this.f30892a = iArr;
        this.f30893b = i;
    }

    @NonNull
    public static HarmonizedColorAttributes create(@AttrRes @NonNull int[] iArr) {
        return new HarmonizedColorAttributes(iArr, 0);
    }

    @NonNull
    public static HarmonizedColorAttributes createMaterialDefaults() {
        return create(f30891c, C5139R.style.ThemeOverlay_Material3_HarmonizedColors);
    }

    @NonNull
    public int[] getAttributes() {
        return this.f30892a;
    }

    @StyleRes
    public int getThemeOverlay() {
        return this.f30893b;
    }

    @NonNull
    public static HarmonizedColorAttributes create(@AttrRes @NonNull int[] iArr, @StyleRes int i) {
        return new HarmonizedColorAttributes(iArr, i);
    }
}
