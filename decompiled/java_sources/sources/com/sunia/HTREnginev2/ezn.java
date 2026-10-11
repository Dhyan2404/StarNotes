package com.sunia.HTREnginev2;

import android.widget.ImageView;

/* loaded from: classes4.dex */
public class ezn {

    /* renamed from: com.sunia.HTREnginev2.ezn$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C13697a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f69493a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f69493a = iArr;
            try {
                iArr[ImageView.ScaleType.MATRIX.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: a */
    public static void m54049a(float f, float f2, float f3) {
        if (f >= f2) {
            throw new IllegalArgumentException("Minimum zoom has to be less than Medium zoom. Call setMinimumZoom() with a more appropriate value");
        }
        if (f2 >= f3) {
            throw new IllegalArgumentException("Medium zoom has to be less than Maximum zoom. Call setMaximumZoom() with a more appropriate value");
        }
    }

    /* renamed from: b */
    public static int m54050b(int i) {
        return (i & 65280) >> 8;
    }

    /* renamed from: c */
    public static boolean m54051c(ImageView imageView) {
        return imageView.getDrawable() != null;
    }

    /* renamed from: d */
    public static boolean m54052d(ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            return false;
        }
        if (C13697a.f69493a[scaleType.ordinal()] != 1) {
            return true;
        }
        throw new IllegalStateException("Matrix scale type is not supported");
    }
}
