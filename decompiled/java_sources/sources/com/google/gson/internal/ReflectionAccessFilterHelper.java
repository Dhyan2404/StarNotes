package com.google.gson.internal;

import com.google.gson.ReflectionAccessFilter;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes6.dex */
public class ReflectionAccessFilterHelper {

    /* renamed from: com.google.gson.internal.ReflectionAccessFilterHelper$b */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC6533b {

        /* renamed from: a */
        public static final AbstractC6533b f36173a;

        /* renamed from: com.google.gson.internal.ReflectionAccessFilterHelper$b$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractC6533b {

            /* renamed from: b */
            public final /* synthetic */ Method f36174b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Method method) {
                super();
                this.f36174b = method;
            }

            @Override // com.google.gson.internal.ReflectionAccessFilterHelper.AbstractC6533b
            /* renamed from: a */
            public boolean mo28257a(AccessibleObject accessibleObject, Object obj) {
                try {
                    return ((Boolean) this.f36174b.invoke(accessibleObject, obj)).booleanValue();
                } catch (Exception e) {
                    throw new RuntimeException("Failed invoking canAccess", e);
                }
            }
        }

        /* renamed from: com.google.gson.internal.ReflectionAccessFilterHelper$b$b */
        /* loaded from: classes6.dex */
        public class b extends AbstractC6533b {
            public b() {
                super();
            }

            @Override // com.google.gson.internal.ReflectionAccessFilterHelper.AbstractC6533b
            /* renamed from: a */
            public boolean mo28257a(AccessibleObject accessibleObject, Object obj) {
                return true;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:5:0x001f  */
        static {
            /*
                boolean r0 = com.google.gson.internal.JavaVersion.isJava9OrLater()
                if (r0 == 0) goto L1c
                java.lang.Class<java.lang.reflect.AccessibleObject> r0 = java.lang.reflect.AccessibleObject.class
                java.lang.String r1 = "canAccess"
                r2 = 1
                java.lang.Class[] r2 = new java.lang.Class[r2]     // Catch: java.lang.NoSuchMethodException -> L1c
                java.lang.Class<java.lang.Object> r3 = java.lang.Object.class
                r4 = 0
                r2[r4] = r3     // Catch: java.lang.NoSuchMethodException -> L1c
                java.lang.reflect.Method r0 = r0.getDeclaredMethod(r1, r2)     // Catch: java.lang.NoSuchMethodException -> L1c
                com.google.gson.internal.ReflectionAccessFilterHelper$b$a r1 = new com.google.gson.internal.ReflectionAccessFilterHelper$b$a     // Catch: java.lang.NoSuchMethodException -> L1c
                r1.<init>(r0)     // Catch: java.lang.NoSuchMethodException -> L1c
                goto L1d
            L1c:
                r1 = 0
            L1d:
                if (r1 != 0) goto L24
                com.google.gson.internal.ReflectionAccessFilterHelper$b$b r1 = new com.google.gson.internal.ReflectionAccessFilterHelper$b$b
                r1.<init>()
            L24:
                com.google.gson.internal.ReflectionAccessFilterHelper.AbstractC6533b.f36173a = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.ReflectionAccessFilterHelper.AbstractC6533b.<clinit>():void");
        }

        public AbstractC6533b() {
        }

        /* renamed from: a */
        public abstract boolean mo28257a(AccessibleObject accessibleObject, Object obj);
    }

    /* renamed from: a */
    public static boolean m28255a(String str) {
        return str.startsWith("android.") || str.startsWith("androidx.") || m28256b(str);
    }

    /* renamed from: b */
    public static boolean m28256b(String str) {
        return str.startsWith("java.") || str.startsWith("javax.");
    }

    public static boolean canAccess(AccessibleObject accessibleObject, Object obj) {
        return AbstractC6533b.f36173a.mo28257a(accessibleObject, obj);
    }

    public static ReflectionAccessFilter.FilterResult getFilterResult(List<ReflectionAccessFilter> list, Class<?> cls) {
        Iterator<ReflectionAccessFilter> it2 = list.iterator();
        while (it2.hasNext()) {
            ReflectionAccessFilter.FilterResult check = it2.next().check(cls);
            if (check != ReflectionAccessFilter.FilterResult.INDECISIVE) {
                return check;
            }
        }
        return ReflectionAccessFilter.FilterResult.ALLOW;
    }

    public static boolean isAndroidType(Class<?> cls) {
        return m28255a(cls.getName());
    }

    public static boolean isAnyPlatformType(Class<?> cls) {
        String name = cls.getName();
        return m28255a(name) || name.startsWith("kotlin.") || name.startsWith("kotlinx.") || name.startsWith("scala.");
    }

    public static boolean isJavaType(Class<?> cls) {
        return m28256b(cls.getName());
    }
}
