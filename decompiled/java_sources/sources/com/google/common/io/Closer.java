package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.dwk;
import com.sunia.HTREnginev2.ynf;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

@Beta
@GwtIncompatible
@ynf
/* loaded from: classes6.dex */
public final class Closer implements Closeable {

    /* renamed from: h */
    public static final InterfaceC6221c f34898h;

    /* renamed from: e */
    @VisibleForTesting
    public final InterfaceC6221c f34899e;

    /* renamed from: f */
    public final Deque<Closeable> f34900f = new ArrayDeque(4);

    /* renamed from: g */
    @CheckForNull
    public Throwable f34901g;

    @VisibleForTesting
    /* renamed from: com.google.common.io.Closer$a */
    /* loaded from: classes6.dex */
    public static final class C6219a implements InterfaceC6221c {

        /* renamed from: a */
        public static final C6219a f34902a = new C6219a();

        @Override // com.google.common.io.Closer.InterfaceC6221c
        /* renamed from: a */
        public void mo27212a(Closeable closeable, Throwable th, Throwable th2) {
            Logger logger = Closeables.f34897a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(closeable);
            StringBuilder sb = new StringBuilder(valueOf.length() + 42);
            sb.append("Suppressing exception thrown when closing ");
            sb.append(valueOf);
            logger.log(level, sb.toString(), th2);
        }
    }

    @VisibleForTesting
    /* renamed from: com.google.common.io.Closer$b */
    /* loaded from: classes6.dex */
    public static final class C6220b implements InterfaceC6221c {

        /* renamed from: a */
        public final Method f34903a;

        public C6220b(Method method) {
            this.f34903a = method;
        }

        @CheckForNull
        /* renamed from: b */
        public static C6220b m27213b() {
            try {
                return new C6220b(Throwable.class.getMethod("addSuppressed", Throwable.class));
            } catch (Throwable unused) {
                return null;
            }
        }

        @Override // com.google.common.io.Closer.InterfaceC6221c
        /* renamed from: a */
        public void mo27212a(Closeable closeable, Throwable th, Throwable th2) {
            if (th == th2) {
                return;
            }
            try {
                this.f34903a.invoke(th, th2);
            } catch (Throwable unused) {
                C6219a.f34902a.mo27212a(closeable, th, th2);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.google.common.io.Closer$c */
    /* loaded from: classes6.dex */
    public interface InterfaceC6221c {
        /* renamed from: a */
        void mo27212a(Closeable closeable, Throwable th, Throwable th2);
    }

    static {
        InterfaceC6221c m27213b = C6220b.m27213b();
        if (m27213b == null) {
            m27213b = C6219a.f34902a;
        }
        f34898h = m27213b;
    }

    @VisibleForTesting
    public Closer(InterfaceC6221c interfaceC6221c) {
        this.f34899e = (InterfaceC6221c) Preconditions.checkNotNull(interfaceC6221c);
    }

    public static Closer create() {
        return new Closer(f34898h);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Throwable th = this.f34901g;
        while (!this.f34900f.isEmpty()) {
            Closeable removeFirst = this.f34900f.removeFirst();
            try {
                removeFirst.close();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                } else {
                    this.f34899e.mo27212a(removeFirst, th, th2);
                }
            }
        }
        if (this.f34901g != null || th == null) {
            return;
        }
        Throwables.propagateIfPossible(th, IOException.class);
        throw new AssertionError(th);
    }

    @CanIgnoreReturnValue
    @dwk
    public <C extends Closeable> C register(@dwk C c) {
        if (c != null) {
            this.f34900f.addFirst(c);
        }
        return c;
    }

    public RuntimeException rethrow(Throwable th) throws IOException {
        Preconditions.checkNotNull(th);
        this.f34901g = th;
        Throwables.propagateIfPossible(th, IOException.class);
        throw new RuntimeException(th);
    }

    public <X extends Exception> RuntimeException rethrow(Throwable th, Class<X> cls) throws IOException, Exception {
        Preconditions.checkNotNull(th);
        this.f34901g = th;
        Throwables.propagateIfPossible(th, IOException.class);
        Throwables.propagateIfPossible(th, cls);
        throw new RuntimeException(th);
    }

    public <X1 extends Exception, X2 extends Exception> RuntimeException rethrow(Throwable th, Class<X1> cls, Class<X2> cls2) throws IOException, Exception, Exception {
        Preconditions.checkNotNull(th);
        this.f34901g = th;
        Throwables.propagateIfPossible(th, IOException.class);
        Throwables.propagateIfPossible(th, cls, cls2);
        throw new RuntimeException(th);
    }
}
