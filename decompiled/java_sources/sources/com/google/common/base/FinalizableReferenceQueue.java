package com.google.common.base;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.reflect.ClassPath;
import com.sunia.HTREnginev2.aof;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

@GwtIncompatible
@aof
/* loaded from: classes6.dex */
public class FinalizableReferenceQueue implements Closeable {

    /* renamed from: i */
    public static final String f33582i = "com.google.common.base.internal.Finalizer";

    /* renamed from: e */
    public final ReferenceQueue<Object> f33584e;

    /* renamed from: f */
    public final PhantomReference<Object> f33585f;

    /* renamed from: g */
    public final boolean f33586g;

    /* renamed from: h */
    public static final Logger f33581h = Logger.getLogger(FinalizableReferenceQueue.class.getName());

    /* renamed from: j */
    public static final Method f33583j = m25785w(m25783H(new C5646d(), new C5643a(), new C5644b()));

    /* renamed from: com.google.common.base.FinalizableReferenceQueue$a */
    /* loaded from: classes6.dex */
    public static class C5643a implements InterfaceC5645c {

        /* renamed from: a */
        public static final String f33587a = "Could not load Finalizer in its own class loader. Loading Finalizer in the current class loader instead. As a result, you will not be able to garbage collect this class loader. To support reclaiming this class loader, either resolve the underlying issue, or move Guava to your system class path.";

        @Override // com.google.common.base.FinalizableReferenceQueue.InterfaceC5645c
        @CheckForNull
        /* renamed from: a */
        public Class<?> mo25787a() {
            try {
                return m25789c(m25788b()).loadClass(FinalizableReferenceQueue.f33582i);
            } catch (Exception e) {
                FinalizableReferenceQueue.f33581h.log(Level.WARNING, f33587a, (Throwable) e);
                return null;
            }
        }

        /* renamed from: b */
        public URL m25788b() throws IOException {
            String concat = String.valueOf(FinalizableReferenceQueue.f33582i.replace('.', '/')).concat(ClassPath.f35080d);
            URL resource = getClass().getClassLoader().getResource(concat);
            if (resource == null) {
                throw new FileNotFoundException(concat);
            }
            String url = resource.toString();
            if (url.endsWith(concat)) {
                return new URL(resource, url.substring(0, url.length() - concat.length()));
            }
            throw new IOException(url.length() != 0 ? "Unsupported path style: ".concat(url) : new String("Unsupported path style: "));
        }

        /* renamed from: c */
        public URLClassLoader m25789c(URL url) {
            return new URLClassLoader(new URL[]{url}, null);
        }
    }

    /* renamed from: com.google.common.base.FinalizableReferenceQueue$b */
    /* loaded from: classes6.dex */
    public static class C5644b implements InterfaceC5645c {
        @Override // com.google.common.base.FinalizableReferenceQueue.InterfaceC5645c
        /* renamed from: a */
        public Class<?> mo25787a() {
            try {
                return Class.forName(FinalizableReferenceQueue.f33582i);
            } catch (ClassNotFoundException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* renamed from: com.google.common.base.FinalizableReferenceQueue$c */
    /* loaded from: classes6.dex */
    public interface InterfaceC5645c {
        @CheckForNull
        /* renamed from: a */
        Class<?> mo25787a();
    }

    /* renamed from: com.google.common.base.FinalizableReferenceQueue$d */
    /* loaded from: classes6.dex */
    public static class C5646d implements InterfaceC5645c {

        /* renamed from: a */
        @VisibleForTesting
        public static boolean f33588a;

        @Override // com.google.common.base.FinalizableReferenceQueue.InterfaceC5645c
        @CheckForNull
        /* renamed from: a */
        public Class<?> mo25787a() {
            if (f33588a) {
                return null;
            }
            try {
                ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
                if (systemClassLoader != null) {
                    try {
                        return systemClassLoader.loadClass(FinalizableReferenceQueue.f33582i);
                    } catch (ClassNotFoundException unused) {
                    }
                }
                return null;
            } catch (SecurityException unused2) {
                FinalizableReferenceQueue.f33581h.info("Not allowed to access system class loader.");
                return null;
            }
        }
    }

    public FinalizableReferenceQueue() {
        ReferenceQueue<Object> referenceQueue = new ReferenceQueue<>();
        this.f33584e = referenceQueue;
        PhantomReference<Object> phantomReference = new PhantomReference<>(this, referenceQueue);
        this.f33585f = phantomReference;
        boolean z = false;
        try {
            f33583j.invoke(null, FinalizableReference.class, referenceQueue, phantomReference);
            z = true;
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (Throwable th) {
            f33581h.log(Level.INFO, "Failed to start reference finalizer thread. Reference cleanup will only occur when new references are created.", th);
        }
        this.f33586g = z;
    }

    /* renamed from: H */
    public static Class<?> m25783H(InterfaceC5645c... interfaceC5645cArr) {
        for (InterfaceC5645c interfaceC5645c : interfaceC5645cArr) {
            Class<?> mo25787a = interfaceC5645c.mo25787a();
            if (mo25787a != null) {
                return mo25787a;
            }
        }
        throw new AssertionError();
    }

    /* renamed from: w */
    public static Method m25785w(Class<?> cls) {
        try {
            return cls.getMethod("startFinalizer", Class.class, ReferenceQueue.class, PhantomReference.class);
        } catch (NoSuchMethodException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f33585f.enqueue();
        m25786j();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: j */
    public void m25786j() {
        if (this.f33586g) {
            return;
        }
        while (true) {
            Reference<? extends Object> poll = this.f33584e.poll();
            if (poll == 0) {
                return;
            }
            poll.clear();
            try {
                ((FinalizableReference) poll).finalizeReferent();
            } catch (Throwable th) {
                f33581h.log(Level.SEVERE, "Error cleaning up after reference.", th);
            }
        }
    }
}
