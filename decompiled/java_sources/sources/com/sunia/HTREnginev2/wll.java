package com.sunia.HTREnginev2;

import android.content.res.Resources;
import android.util.Log;
import android.util.LongSparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Field;
import java.util.Map;

/* loaded from: classes3.dex */
public class wll {

    /* renamed from: a */
    public static final String f88742a = "ResourcesFlusher";

    /* renamed from: b */
    public static Field f88743b;

    /* renamed from: c */
    public static boolean f88744c;

    /* renamed from: d */
    public static Class<?> f88745d;

    /* renamed from: e */
    public static boolean f88746e;

    /* renamed from: f */
    public static Field f88747f;

    /* renamed from: g */
    public static boolean f88748g;

    /* renamed from: h */
    public static Field f88749h;

    /* renamed from: i */
    public static boolean f88750i;

    /* renamed from: a */
    public static void m58086a(@NonNull Resources resources) {
    }

    @RequiresApi(21)
    /* renamed from: b */
    public static void m58087b(@NonNull Resources resources) {
        Map map;
        if (!f88744c) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f88743b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e(f88742a, "Could not retrieve Resources#mDrawableCache field", e);
            }
            f88744c = true;
        }
        Field field = f88743b;
        if (field != null) {
            try {
                map = (Map) field.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e(f88742a, "Could not retrieve value from Resources#mDrawableCache", e2);
                map = null;
            }
            if (map != null) {
                map.clear();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
    @androidx.annotation.RequiresApi(23)
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m58088c(@androidx.annotation.NonNull android.content.res.Resources r4) {
        /*
            boolean r0 = com.sunia.HTREnginev2.wll.f88744c
            java.lang.String r1 = "ResourcesFlusher"
            if (r0 != 0) goto L1d
            r0 = 1
            java.lang.Class<android.content.res.Resources> r2 = android.content.res.Resources.class
            java.lang.String r3 = "mDrawableCache"
            java.lang.reflect.Field r2 = r2.getDeclaredField(r3)     // Catch: java.lang.NoSuchFieldException -> L15
            com.sunia.HTREnginev2.wll.f88743b = r2     // Catch: java.lang.NoSuchFieldException -> L15
            r2.setAccessible(r0)     // Catch: java.lang.NoSuchFieldException -> L15
            goto L1b
        L15:
            r2 = move-exception
            java.lang.String r3 = "Could not retrieve Resources#mDrawableCache field"
            android.util.Log.e(r1, r3, r2)
        L1b:
            com.sunia.HTREnginev2.wll.f88744c = r0
        L1d:
            java.lang.reflect.Field r0 = com.sunia.HTREnginev2.wll.f88743b
            if (r0 == 0) goto L2c
            java.lang.Object r4 = r0.get(r4)     // Catch: java.lang.IllegalAccessException -> L26
            goto L2d
        L26:
            r4 = move-exception
            java.lang.String r0 = "Could not retrieve value from Resources#mDrawableCache"
            android.util.Log.e(r1, r0, r4)
        L2c:
            r4 = 0
        L2d:
            if (r4 != 0) goto L30
            return
        L30:
            m58090e(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.wll.m58088c(android.content.res.Resources):void");
    }

    @RequiresApi(24)
    /* renamed from: d */
    public static void m58089d(@NonNull Resources resources) {
        Object obj;
        if (!f88750i) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                f88749h = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e(f88742a, "Could not retrieve Resources#mResourcesImpl field", e);
            }
            f88750i = true;
        }
        Field field = f88749h;
        if (field == null) {
            return;
        }
        Object obj2 = null;
        try {
            obj = field.get(resources);
        } catch (IllegalAccessException e2) {
            Log.e(f88742a, "Could not retrieve value from Resources#mResourcesImpl", e2);
            obj = null;
        }
        if (obj == null) {
            return;
        }
        if (!f88744c) {
            try {
                Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                f88743b = declaredField2;
                declaredField2.setAccessible(true);
            } catch (NoSuchFieldException e3) {
                Log.e(f88742a, "Could not retrieve ResourcesImpl#mDrawableCache field", e3);
            }
            f88744c = true;
        }
        Field field2 = f88743b;
        if (field2 != null) {
            try {
                obj2 = field2.get(obj);
            } catch (IllegalAccessException e4) {
                Log.e(f88742a, "Could not retrieve value from ResourcesImpl#mDrawableCache", e4);
            }
        }
        if (obj2 != null) {
            m58090e(obj2);
        }
    }

    /* renamed from: e */
    public static void m58090e(@NonNull Object obj) {
        LongSparseArray longSparseArray;
        if (!f88746e) {
            try {
                f88745d = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
                Log.e(f88742a, "Could not find ThemedResourceCache class", e);
            }
            f88746e = true;
        }
        Class<?> cls = f88745d;
        if (cls == null) {
            return;
        }
        if (!f88748g) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f88747f = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e(f88742a, "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e2);
            }
            f88748g = true;
        }
        Field field = f88747f;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e3) {
            Log.e(f88742a, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e3);
            longSparseArray = null;
        }
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }
}
