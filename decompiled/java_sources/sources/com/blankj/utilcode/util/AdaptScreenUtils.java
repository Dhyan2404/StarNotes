package com.blankj.utilcode.util;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import androidx.annotation.NonNull;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class AdaptScreenUtils {

    /* renamed from: a */
    public static List<Field> f13617a;

    /* renamed from: com.blankj.utilcode.util.AdaptScreenUtils$a */
    /* loaded from: classes3.dex */
    public static class RunnableC1795a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            AdaptScreenUtils.m7952h();
        }
    }

    public AdaptScreenUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    @NonNull
    public static Resources adaptHeight(@NonNull Resources resources, int i) {
        return adaptHeight(resources, i, false);
    }

    @NonNull
    public static Resources adaptWidth(@NonNull Resources resources, int i) {
        m7946b(resources, (resources.getDisplayMetrics().widthPixels * 72.0f) / i);
        return resources;
    }

    /* renamed from: b */
    public static void m7946b(@NonNull Resources resources, float f) {
        resources.getDisplayMetrics().xdpi = f;
        Utils.getApp().getResources().getDisplayMetrics().xdpi = f;
        m7948d(resources, f);
    }

    /* renamed from: c */
    public static void m7947c(Resources resources, float f) {
        Iterator<Field> it2 = f13617a.iterator();
        while (it2.hasNext()) {
            try {
                DisplayMetrics displayMetrics = (DisplayMetrics) it2.next().get(resources);
                if (displayMetrics != null) {
                    displayMetrics.xdpi = f;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @NonNull
    public static Resources closeAdapt(@NonNull Resources resources) {
        m7946b(resources, Resources.getSystem().getDisplayMetrics().density * 72.0f);
        return resources;
    }

    /* renamed from: d */
    public static void m7948d(Resources resources, float f) {
        if (f13617a != null) {
            m7947c(resources, f);
            return;
        }
        f13617a = new ArrayList();
        Class<?> cls = resources.getClass();
        Field[] declaredFields = cls.getDeclaredFields();
        while (declaredFields != null && declaredFields.length > 0) {
            for (Field field : declaredFields) {
                if (field.getType().isAssignableFrom(DisplayMetrics.class)) {
                    field.setAccessible(true);
                    DisplayMetrics m7949e = m7949e(resources, field);
                    if (m7949e != null) {
                        f13617a.add(field);
                        m7949e.xdpi = f;
                    }
                }
            }
            cls = cls.getSuperclass();
            if (cls == null) {
                return;
            } else {
                declaredFields = cls.getDeclaredFields();
            }
        }
    }

    /* renamed from: e */
    public static DisplayMetrics m7949e(Resources resources, Field field) {
        try {
            return (DisplayMetrics) field.get(resources);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: f */
    public static int m7950f(@NonNull Resources resources) {
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier != 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* renamed from: g */
    public static Runnable m7951g() {
        return new RunnableC1795a();
    }

    /* renamed from: h */
    public static void m7952h() {
        m7946b(Resources.getSystem(), Resources.getSystem().getDisplayMetrics().xdpi);
    }

    public static int pt2Px(float f) {
        return (int) (((f * Utils.getApp().getResources().getDisplayMetrics().xdpi) / 72.0f) + 0.5d);
    }

    public static int px2Pt(float f) {
        return (int) (((f * 72.0f) / Utils.getApp().getResources().getDisplayMetrics().xdpi) + 0.5d);
    }

    @NonNull
    public static Resources adaptHeight(@NonNull Resources resources, int i, boolean z) {
        m7946b(resources, ((resources.getDisplayMetrics().heightPixels + (z ? m7950f(resources) : 0)) * 72.0f) / i);
        return resources;
    }
}
