package com.google.common.base.internal;

import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

/* loaded from: classes6.dex */
public class Finalizer implements Runnable {

    /* renamed from: h */
    public static final Logger f33660h = Logger.getLogger(Finalizer.class.getName());

    /* renamed from: i */
    public static final String f33661i = "com.google.common.base.FinalizableReference";

    /* renamed from: j */
    @CheckForNull
    public static final Constructor<Thread> f33662j;

    /* renamed from: k */
    @CheckForNull
    public static final Field f33663k;

    /* renamed from: e */
    public final WeakReference<Class<?>> f33664e;

    /* renamed from: f */
    public final PhantomReference<Object> f33665f;

    /* renamed from: g */
    public final ReferenceQueue<Object> f33666g;

    static {
        Constructor<Thread> m25875b = m25875b();
        f33662j = m25875b;
        f33663k = m25875b == null ? m25876d() : null;
    }

    public Finalizer(Class<?> cls, ReferenceQueue<Object> referenceQueue, PhantomReference<Object> phantomReference) {
        this.f33666g = referenceQueue;
        this.f33664e = new WeakReference<>(cls);
        this.f33665f = phantomReference;
    }

    @CheckForNull
    /* renamed from: b */
    public static Constructor<Thread> m25875b() {
        try {
            return Thread.class.getConstructor(ThreadGroup.class, Runnable.class, String.class, Long.TYPE, Boolean.TYPE);
        } catch (Throwable unused) {
            return null;
        }
    }

    @CheckForNull
    /* renamed from: d */
    public static Field m25876d() {
        try {
            Field declaredField = Thread.class.getDeclaredField("inheritableThreadLocals");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            f33660h.log(Level.INFO, "Couldn't access Thread.inheritableThreadLocals. Reference finalizer threads will inherit thread local values.");
            return null;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:3|(10:5|6|7|(1:9)|10|11|12|(1:14)|16|17)|24|(0)|10|11|12|(0)|16|17) */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005a, code lost:
    
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005b, code lost:
    
        com.google.common.base.internal.Finalizer.f33660h.log(java.util.logging.Level.INFO, "Failed to clear thread local values inherited by reference finalizer thread.", r5);
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0056 A[Catch: all -> 0x005a, TRY_LEAVE, TryCatch #0 {all -> 0x005a, blocks: (B:12:0x0052, B:14:0x0056), top: B:11:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void startFinalizer(java.lang.Class<?> r5, java.lang.ref.ReferenceQueue<java.lang.Object> r6, java.lang.ref.PhantomReference<java.lang.Object> r7) {
        /*
            java.lang.String r0 = r5.getName()
            java.lang.String r1 = "com.google.common.base.FinalizableReference"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L68
            com.google.common.base.internal.Finalizer r0 = new com.google.common.base.internal.Finalizer
            r0.<init>(r5, r6, r7)
            java.lang.Class<com.google.common.base.internal.Finalizer> r5 = com.google.common.base.internal.Finalizer.class
            java.lang.String r5 = r5.getName()
            java.lang.reflect.Constructor<java.lang.Thread> r6 = com.google.common.base.internal.Finalizer.f33662j
            r7 = 1
            r1 = 0
            if (r6 == 0) goto L47
            r2 = 5
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> L3d
            r3 = 0
            r2[r3] = r1     // Catch: java.lang.Throwable -> L3d
            r2[r7] = r0     // Catch: java.lang.Throwable -> L3d
            r3 = 2
            r2[r3] = r5     // Catch: java.lang.Throwable -> L3d
            r3 = 0
            java.lang.Long r3 = java.lang.Long.valueOf(r3)     // Catch: java.lang.Throwable -> L3d
            r4 = 3
            r2[r4] = r3     // Catch: java.lang.Throwable -> L3d
            java.lang.Boolean r3 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L3d
            r4 = 4
            r2[r4] = r3     // Catch: java.lang.Throwable -> L3d
            java.lang.Object r6 = r6.newInstance(r2)     // Catch: java.lang.Throwable -> L3d
            java.lang.Thread r6 = (java.lang.Thread) r6     // Catch: java.lang.Throwable -> L3d
            goto L48
        L3d:
            r6 = move-exception
            java.util.logging.Logger r2 = com.google.common.base.internal.Finalizer.f33660h
            java.util.logging.Level r3 = java.util.logging.Level.INFO
            java.lang.String r4 = "Failed to create a thread without inherited thread-local values"
            r2.log(r3, r4, r6)
        L47:
            r6 = r1
        L48:
            if (r6 != 0) goto L4f
            java.lang.Thread r6 = new java.lang.Thread
            r6.<init>(r1, r0, r5)
        L4f:
            r6.setDaemon(r7)
            java.lang.reflect.Field r5 = com.google.common.base.internal.Finalizer.f33663k     // Catch: java.lang.Throwable -> L5a
            if (r5 == 0) goto L64
            r5.set(r6, r1)     // Catch: java.lang.Throwable -> L5a
            goto L64
        L5a:
            r5 = move-exception
            java.util.logging.Logger r7 = com.google.common.base.internal.Finalizer.f33660h
            java.util.logging.Level r0 = java.util.logging.Level.INFO
            java.lang.String r1 = "Failed to clear thread local values inherited by reference finalizer thread."
            r7.log(r0, r1, r5)
        L64:
            r6.start()
            return
        L68:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r6 = "Expected com.google.common.base.FinalizableReference."
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.base.internal.Finalizer.startFinalizer(java.lang.Class, java.lang.ref.ReferenceQueue, java.lang.ref.PhantomReference):void");
    }

    /* renamed from: a */
    public final boolean m25877a(Reference<?> reference) {
        Method m25878c = m25878c();
        if (m25878c == null) {
            return false;
        }
        do {
            reference.clear();
            if (reference == this.f33665f) {
                return false;
            }
            try {
                m25878c.invoke(reference, new Object[0]);
            } catch (Throwable th) {
                f33660h.log(Level.SEVERE, "Error cleaning up after reference.", th);
            }
            reference = this.f33666g.poll();
        } while (reference != null);
        return true;
    }

    @CheckForNull
    /* renamed from: c */
    public final Method m25878c() {
        Class<?> cls = this.f33664e.get();
        if (cls == null) {
            return null;
        }
        try {
            return cls.getMethod("finalizeReferent", new Class[0]);
        } catch (NoSuchMethodException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (m25877a(this.f33666g.remove())) {
        }
    }
}
