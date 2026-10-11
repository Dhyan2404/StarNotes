package com.sunia.HTREnginev2;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes3.dex */
public class w4o {

    /* renamed from: b */
    public static final String f88231b = "ViewUtils";

    /* renamed from: a */
    public static final x4o f88230a = new b5o();

    /* renamed from: c */
    public static final Property<View, Float> f88232c = new C14586a(Float.class, "translationAlpha");

    /* renamed from: d */
    public static final Property<View, Rect> f88233d = new C14587b(Rect.class, "clipBounds");

    /* renamed from: com.sunia.HTREnginev2.w4o$a */
    /* loaded from: classes3.dex */
    public class C14586a extends Property<View, Float> {
        public C14586a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(w4o.m57929b(view));
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f) {
            w4o.m57933f(view, f.floatValue());
        }
    }

    /* renamed from: com.sunia.HTREnginev2.w4o$b */
    /* loaded from: classes3.dex */
    public class C14587b extends Property<View, Rect> {
        public C14587b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Rect get(View view) {
            return view.getClipBounds();
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Rect rect) {
            view.setClipBounds(rect);
        }
    }

    /* renamed from: a */
    public static void m57928a(@NonNull View view) {
        f88230a.m58152a(view);
    }

    /* renamed from: b */
    public static float m57929b(@NonNull View view) {
        return f88230a.mo53172c(view);
    }

    /* renamed from: c */
    public static void m57930c(@NonNull View view) {
        f88230a.m58154d(view);
    }

    /* renamed from: d */
    public static void m57931d(@NonNull View view, @Nullable Matrix matrix) {
        f88230a.mo53173e(view, matrix);
    }

    /* renamed from: e */
    public static void m57932e(@NonNull View view, int i, int i2, int i3, int i4) {
        f88230a.mo53174f(view, i, i2, i3, i4);
    }

    /* renamed from: f */
    public static void m57933f(@NonNull View view, float f) {
        f88230a.mo53175g(view, f);
    }

    /* renamed from: g */
    public static void m57934g(@NonNull View view, int i) {
        f88230a.mo52972h(view, i);
    }

    /* renamed from: h */
    public static void m57935h(@NonNull View view, @NonNull Matrix matrix) {
        f88230a.mo53176i(view, matrix);
    }

    /* renamed from: i */
    public static void m57936i(@NonNull View view, @NonNull Matrix matrix) {
        f88230a.mo53177j(view, matrix);
    }
}
