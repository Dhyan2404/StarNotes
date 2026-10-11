package com.google.android.material.carousel;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.material.C5139R;
import com.google.android.material.carousel.C5201b;
import com.sunia.HTREnginev2.C14756ze;

/* renamed from: com.google.android.material.carousel.a */
/* loaded from: classes6.dex */
public final class C5200a {
    /* renamed from: a */
    public static float m23360a(float f, float f2, int i) {
        return f + (Math.max(0, i - 1) * f2);
    }

    /* renamed from: b */
    public static float m23361b(float f, float f2, int i) {
        return i > 0 ? f + (f2 / 2.0f) : f;
    }

    /* renamed from: c */
    public static C5201b m23362c(@NonNull Context context, float f, float f2, @NonNull C14756ze c14756ze) {
        float f3;
        float f4;
        float min = Math.min(m23365f(context) + f, c14756ze.f91650f);
        float f5 = min / 2.0f;
        float f6 = 0.0f - f5;
        float m23361b = m23361b(0.0f, c14756ze.f91646b, c14756ze.f91647c);
        float m23369j = m23369j(0.0f, m23360a(m23361b, c14756ze.f91646b, (int) Math.floor(c14756ze.f91647c / 2.0f)), c14756ze.f91646b, c14756ze.f91647c);
        float m23361b2 = m23361b(m23369j, c14756ze.f91649e, c14756ze.f91648d);
        float m23369j2 = m23369j(m23369j, m23360a(m23361b2, c14756ze.f91649e, (int) Math.floor(c14756ze.f91648d / 2.0f)), c14756ze.f91649e, c14756ze.f91648d);
        float m23361b3 = m23361b(m23369j2, c14756ze.f91650f, c14756ze.f91651g);
        float m23369j3 = m23369j(m23369j2, m23360a(m23361b3, c14756ze.f91650f, c14756ze.f91651g), c14756ze.f91650f, c14756ze.f91651g);
        float m23361b4 = m23361b(m23369j3, c14756ze.f91649e, c14756ze.f91648d);
        float m23361b5 = m23361b(m23369j(m23369j3, m23360a(m23361b4, c14756ze.f91649e, (int) Math.ceil(c14756ze.f91648d / 2.0f)), c14756ze.f91649e, c14756ze.f91648d), c14756ze.f91646b, c14756ze.f91647c);
        float f7 = f5 + f2;
        float m23345b = CarouselStrategy.m23345b(min, c14756ze.f91650f, f);
        float m23345b2 = CarouselStrategy.m23345b(c14756ze.f91646b, c14756ze.f91650f, f);
        float m23345b3 = CarouselStrategy.m23345b(c14756ze.f91649e, c14756ze.f91650f, f);
        C5201b.b m23385a = new C5201b.b(c14756ze.f91650f, f2).m23385a(f6, m23345b, min);
        if (c14756ze.f91647c > 0) {
            f3 = f7;
            m23385a.m23391g(m23361b, m23345b2, c14756ze.f91646b, (int) Math.floor(r7 / 2.0f));
        } else {
            f3 = f7;
        }
        if (c14756ze.f91648d > 0) {
            m23385a.m23391g(m23361b2, m23345b3, c14756ze.f91649e, (int) Math.floor(r4 / 2.0f));
        }
        m23385a.m23392h(m23361b3, 0.0f, c14756ze.f91650f, c14756ze.f91651g, true);
        if (c14756ze.f91648d > 0) {
            f4 = 2.0f;
            m23385a.m23391g(m23361b4, m23345b3, c14756ze.f91649e, (int) Math.ceil(r4 / 2.0f));
        } else {
            f4 = 2.0f;
        }
        if (c14756ze.f91647c > 0) {
            m23385a.m23391g(m23361b5, m23345b2, c14756ze.f91646b, (int) Math.ceil(r0 / f4));
        }
        m23385a.m23385a(f3, m23345b, min);
        return m23385a.m23393i();
    }

    /* renamed from: d */
    public static C5201b m23363d(@NonNull Context context, float f, float f2, @NonNull C14756ze c14756ze, int i) {
        return i == 1 ? m23362c(context, f, f2, c14756ze) : m23364e(context, f, f2, c14756ze);
    }

    /* renamed from: e */
    public static C5201b m23364e(@NonNull Context context, float f, float f2, @NonNull C14756ze c14756ze) {
        float min = Math.min(m23365f(context) + f, c14756ze.f91650f);
        float f3 = min / 2.0f;
        float f4 = 0.0f - f3;
        float m23361b = m23361b(0.0f, c14756ze.f91650f, c14756ze.f91651g);
        float m23369j = m23369j(0.0f, m23360a(m23361b, c14756ze.f91650f, c14756ze.f91651g), c14756ze.f91650f, c14756ze.f91651g);
        float m23361b2 = m23361b(m23369j, c14756ze.f91649e, c14756ze.f91648d);
        float m23361b3 = m23361b(m23369j(m23369j, m23361b2, c14756ze.f91649e, c14756ze.f91648d), c14756ze.f91646b, c14756ze.f91647c);
        float f5 = f3 + f2;
        float m23345b = CarouselStrategy.m23345b(min, c14756ze.f91650f, f);
        float m23345b2 = CarouselStrategy.m23345b(c14756ze.f91646b, c14756ze.f91650f, f);
        float m23345b3 = CarouselStrategy.m23345b(c14756ze.f91649e, c14756ze.f91650f, f);
        C5201b.b m23392h = new C5201b.b(c14756ze.f91650f, f2).m23385a(f4, m23345b, min).m23392h(m23361b, 0.0f, c14756ze.f91650f, c14756ze.f91651g, true);
        if (c14756ze.f91648d > 0) {
            m23392h.m23386b(m23361b2, m23345b3, c14756ze.f91649e);
        }
        int i = c14756ze.f91647c;
        if (i > 0) {
            m23392h.m23391g(m23361b3, m23345b2, c14756ze.f91646b, i);
        }
        m23392h.m23385a(f5, m23345b, min);
        return m23392h.m23393i();
    }

    /* renamed from: f */
    public static float m23365f(@NonNull Context context) {
        return context.getResources().getDimension(C5139R.dimen.m3_carousel_gone_size);
    }

    /* renamed from: g */
    public static float m23366g(@NonNull Context context) {
        return context.getResources().getDimension(C5139R.dimen.m3_carousel_small_item_size_max);
    }

    /* renamed from: h */
    public static float m23367h(@NonNull Context context) {
        return context.getResources().getDimension(C5139R.dimen.m3_carousel_small_item_size_min);
    }

    /* renamed from: i */
    public static int m23368i(int[] iArr) {
        int i = Integer.MIN_VALUE;
        for (int i2 : iArr) {
            if (i2 > i) {
                i = i2;
            }
        }
        return i;
    }

    /* renamed from: j */
    public static float m23369j(float f, float f2, float f3, int i) {
        return i > 0 ? f2 + (f3 / 2.0f) : f;
    }
}
