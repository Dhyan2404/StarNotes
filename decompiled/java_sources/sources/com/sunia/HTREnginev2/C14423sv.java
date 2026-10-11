package com.sunia.HTREnginev2;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;

/* renamed from: com.sunia.HTREnginev2.sv */
/* loaded from: classes11.dex */
public final class C14423sv {

    /* renamed from: a */
    public static final b f84595a = m57263b();

    /* renamed from: com.sunia.HTREnginev2.sv$b */
    /* loaded from: classes11.dex */
    public interface b {
        /* renamed from: a */
        void mo57265a(ByteBuffer byteBuffer) throws ReflectiveOperationException;
    }

    /* renamed from: com.sunia.HTREnginev2.sv$c */
    /* loaded from: classes11.dex */
    public static final class c implements b {

        /* renamed from: a */
        public final Method f84596a;

        /* renamed from: b */
        public final Method f84597b;

        @Override // com.sunia.HTREnginev2.C14423sv.b
        /* renamed from: a */
        public void mo57265a(ByteBuffer byteBuffer) throws ReflectiveOperationException {
            Object invoke = this.f84596a.invoke(byteBuffer, new Object[0]);
            if (invoke != null) {
                this.f84597b.invoke(invoke, new Object[0]);
            }
        }

        public c() throws ReflectiveOperationException, SecurityException {
            this.f84597b = Class.forName("sun.misc.Cleaner").getMethod("clean", new Class[0]);
            this.f84596a = Class.forName("sun.nio.ch.DirectBuffer").getMethod("cleaner", new Class[0]);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.sv$d */
    /* loaded from: classes11.dex */
    public static final class d implements b {

        /* renamed from: a */
        public final Object f84598a;

        /* renamed from: b */
        public final Method f84599b;

        @Override // com.sunia.HTREnginev2.C14423sv.b
        /* renamed from: a */
        public void mo57265a(ByteBuffer byteBuffer) throws ReflectiveOperationException {
            this.f84599b.invoke(this.f84598a, byteBuffer);
        }

        public d() throws ReflectiveOperationException, SecurityException {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            this.f84598a = declaredField.get(null);
            this.f84599b = cls.getMethod("invokeCleaner", ByteBuffer.class);
        }
    }

    /* renamed from: a */
    public static void m57262a(ByteBuffer byteBuffer) {
        try {
            f84595a.mo57265a(byteBuffer);
        } catch (Exception e) {
            throw new IllegalStateException("Failed to clean direct buffer.", e);
        }
    }

    /* renamed from: b */
    public static b m57263b() {
        try {
            return new c();
        } catch (Exception e) {
            try {
                return new d();
            } catch (Exception unused) {
                throw new IllegalStateException("Failed to initialize a Cleaner.", e);
            }
        }
    }

    /* renamed from: c */
    public static boolean m57264c() {
        return f84595a != null;
    }
}
