package com.google.gson.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import org.apache.commons.math3.dfp.Dfp;

/* loaded from: classes6.dex */
public abstract class UnsafeAllocator {
    public static final UnsafeAllocator INSTANCE = m28261c();

    /* renamed from: com.google.gson.internal.UnsafeAllocator$a */
    /* loaded from: classes6.dex */
    public class C6536a extends UnsafeAllocator {

        /* renamed from: a */
        public final /* synthetic */ Method f36179a;

        /* renamed from: b */
        public final /* synthetic */ Object f36180b;

        public C6536a(Method method, Object obj) {
            this.f36179a = method;
            this.f36180b = obj;
        }

        @Override // com.google.gson.internal.UnsafeAllocator
        public <T> T newInstance(Class<T> cls) throws Exception {
            UnsafeAllocator.m28260b(cls);
            return (T) this.f36179a.invoke(this.f36180b, cls);
        }
    }

    /* renamed from: com.google.gson.internal.UnsafeAllocator$b */
    /* loaded from: classes6.dex */
    public class C6537b extends UnsafeAllocator {

        /* renamed from: a */
        public final /* synthetic */ Method f36181a;

        /* renamed from: b */
        public final /* synthetic */ int f36182b;

        public C6537b(Method method, int i) {
            this.f36181a = method;
            this.f36182b = i;
        }

        @Override // com.google.gson.internal.UnsafeAllocator
        public <T> T newInstance(Class<T> cls) throws Exception {
            UnsafeAllocator.m28260b(cls);
            return (T) this.f36181a.invoke(null, cls, Integer.valueOf(this.f36182b));
        }
    }

    /* renamed from: com.google.gson.internal.UnsafeAllocator$c */
    /* loaded from: classes6.dex */
    public class C6538c extends UnsafeAllocator {

        /* renamed from: a */
        public final /* synthetic */ Method f36183a;

        public C6538c(Method method) {
            this.f36183a = method;
        }

        @Override // com.google.gson.internal.UnsafeAllocator
        public <T> T newInstance(Class<T> cls) throws Exception {
            UnsafeAllocator.m28260b(cls);
            return (T) this.f36183a.invoke(null, cls, Object.class);
        }
    }

    /* renamed from: com.google.gson.internal.UnsafeAllocator$d */
    /* loaded from: classes6.dex */
    public class C6539d extends UnsafeAllocator {
        @Override // com.google.gson.internal.UnsafeAllocator
        public <T> T newInstance(Class<T> cls) {
            throw new UnsupportedOperationException("Cannot allocate " + cls + ". Usage of JDK sun.misc.Unsafe is enabled, but it could not be used. Make sure your runtime is configured correctly.");
        }
    }

    /* renamed from: b */
    public static void m28260b(Class<?> cls) {
        String m28232a = ConstructorConstructor.m28232a(cls);
        if (m28232a == null) {
            return;
        }
        throw new AssertionError("UnsafeAllocator is used for non-instantiable type: " + m28232a);
    }

    /* renamed from: c */
    public static UnsafeAllocator m28261c() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return new C6536a(cls.getMethod("allocateInstance", Class.class), declaredField.get(null));
        } catch (Exception unused) {
            try {
                try {
                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod.setAccessible(true);
                    int intValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                    Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod(Dfp.f108018r, Class.class, Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    return new C6537b(declaredMethod2, intValue);
                } catch (Exception unused2) {
                    Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod(Dfp.f108018r, Class.class, Class.class);
                    declaredMethod3.setAccessible(true);
                    return new C6538c(declaredMethod3);
                }
            } catch (Exception unused3) {
                return new C6539d();
            }
        }
    }

    public abstract <T> T newInstance(Class<T> cls) throws Exception;
}
