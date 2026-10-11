package com.miui.penengine.p015e;

import android.graphics.ColorSpace;
import android.os.Bundle;
import android.util.SparseArray;
import com.miui.penengine.colorpick.MiuiColorPick;
import com.miui.penengine.p013c.C6985b;

/* renamed from: com.miui.penengine.e.a */
/* loaded from: classes7.dex */
public class C6992a {

    /* renamed from: b */
    public static final String f39637b = "color";

    /* renamed from: c */
    public static final String f39638c = "color_space";

    /* renamed from: d */
    public static final String f39639d = "a";

    /* renamed from: e */
    public static final SparseArray<ColorSpace.Named> f39640e;

    /* renamed from: a */
    public MiuiColorPick.ColorListener f39641a;

    static {
        SparseArray<ColorSpace.Named> sparseArray = new SparseArray<>();
        f39640e = sparseArray;
        sparseArray.put(0, ColorSpace.Named.SRGB);
        sparseArray.put(1, ColorSpace.Named.LINEAR_SRGB);
        sparseArray.put(2, ColorSpace.Named.EXTENDED_SRGB);
        sparseArray.put(3, ColorSpace.Named.LINEAR_EXTENDED_SRGB);
        sparseArray.put(4, ColorSpace.Named.BT709);
        sparseArray.put(5, ColorSpace.Named.BT2020);
        sparseArray.put(6, ColorSpace.Named.DCI_P3);
        sparseArray.put(7, ColorSpace.Named.DISPLAY_P3);
        sparseArray.put(8, ColorSpace.Named.NTSC_1953);
        sparseArray.put(9, ColorSpace.Named.SMPTE_C);
        sparseArray.put(10, ColorSpace.Named.ADOBE_RGB);
        sparseArray.put(11, ColorSpace.Named.PRO_PHOTO_RGB);
        sparseArray.put(12, ColorSpace.Named.ACES);
        sparseArray.put(13, ColorSpace.Named.ACESCG);
        sparseArray.put(14, ColorSpace.Named.CIE_XYZ);
        sparseArray.put(15, ColorSpace.Named.CIE_LAB);
    }

    /* renamed from: a */
    public final ColorSpace m31311a(int i) {
        C6985b.m31269c(f39639d, "Color space ordinal = " + i);
        ColorSpace.Named named = f39640e.get(i);
        if (named == null) {
            named = ColorSpace.Named.SRGB;
        }
        return ColorSpace.get(named);
    }

    /* renamed from: a */
    public void m31313a(Bundle bundle) {
        if (this.f39641a == null) {
            return;
        }
        this.f39641a.onChange(m31311a(bundle.getInt("color_space")), bundle.getInt("color"));
    }

    /* renamed from: a */
    public void m31314a(MiuiColorPick.ColorListener colorListener) {
        this.f39641a = colorListener;
    }

    /* renamed from: a */
    public void m31312a() {
        this.f39641a = null;
    }
}
