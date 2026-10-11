package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.aof;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.annotation.CheckForNull;

@GwtCompatible(emulated = true)
@aof
/* loaded from: classes6.dex */
public final class Throwables {

    /* renamed from: a */
    @GwtIncompatible
    public static final String f33644a = "sun.misc.JavaLangAccess";

    /* renamed from: b */
    @VisibleForTesting
    @GwtIncompatible
    public static final String f33645b = "sun.misc.SharedSecrets";

    /* renamed from: c */
    @CheckForNull
    @GwtIncompatible
    public static final Object f33646c;

    /* renamed from: d */
    @CheckForNull
    @GwtIncompatible
    public static final Method f33647d;

    /* renamed from: e */
    @CheckForNull
    @GwtIncompatible
    public static final Method f33648e;

    /* renamed from: com.google.common.base.Throwables$a */
    /* loaded from: classes6.dex */
    public class C5671a extends AbstractList<StackTraceElement> {

        /* renamed from: e */
        public final /* synthetic */ Throwable f33649e;

        public C5671a(Throwable th) {
            this.f33649e = th;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public StackTraceElement get(int i) {
            Method method = Throwables.f33647d;
            java.util.Objects.requireNonNull(method);
            Object obj = Throwables.f33646c;
            java.util.Objects.requireNonNull(obj);
            return (StackTraceElement) Throwables.m25852i(method, obj, this.f33649e, Integer.valueOf(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            Method method = Throwables.f33648e;
            java.util.Objects.requireNonNull(method);
            Object obj = Throwables.f33646c;
            java.util.Objects.requireNonNull(obj);
            return ((Integer) Throwables.m25852i(method, obj, this.f33649e)).intValue();
        }
    }

    static {
        Object m25849f = m25849f();
        f33646c = m25849f;
        f33647d = m25849f == null ? null : m25848e();
        f33648e = m25849f != null ? m25851h(m25849f) : null;
    }

    @CheckForNull
    @GwtIncompatible
    /* renamed from: e */
    public static Method m25848e() {
        return m25850g("getStackTraceElement", Throwable.class, Integer.TYPE);
    }

    @CheckForNull
    @GwtIncompatible
    /* renamed from: f */
    public static Object m25849f() {
        try {
            return Class.forName(f33645b, false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable unused) {
            return null;
        }
    }

    @CheckForNull
    @GwtIncompatible
    /* renamed from: g */
    public static Method m25850g(String str, Class<?>... clsArr) throws ThreadDeath {
        try {
            return Class.forName(f33644a, false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static List<Throwable> getCausalChain(Throwable th) {
        Preconditions.checkNotNull(th);
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(th);
        boolean z = false;
        Throwable th2 = th;
        while (true) {
            th = th.getCause();
            if (th == null) {
                return Collections.unmodifiableList(arrayList);
            }
            arrayList.add(th);
            if (th == th2) {
                throw new IllegalArgumentException("Loop in causal chain detected.", th);
            }
            if (z) {
                th2 = th2.getCause();
            }
            z = !z;
        }
    }

    @CheckForNull
    @GwtIncompatible
    public static <X extends Throwable> X getCauseAs(Throwable th, Class<X> cls) {
        try {
            return cls.cast(th.getCause());
        } catch (ClassCastException e) {
            e.initCause(th);
            throw e;
        }
    }

    public static Throwable getRootCause(Throwable th) {
        boolean z = false;
        Throwable th2 = th;
        while (true) {
            Throwable cause = th.getCause();
            if (cause == null) {
                return th;
            }
            if (cause == th2) {
                throw new IllegalArgumentException("Loop in causal chain detected.", cause);
            }
            if (z) {
                th2 = th2.getCause();
            }
            z = !z;
            th = cause;
        }
    }

    @GwtIncompatible
    public static String getStackTraceAsString(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    @CheckForNull
    @GwtIncompatible
    /* renamed from: h */
    public static Method m25851h(Object obj) {
        try {
            Method m25850g = m25850g("getStackTraceDepth", Throwable.class);
            if (m25850g == null) {
                return null;
            }
            m25850g.invoke(obj, new Throwable());
            return m25850g;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException unused) {
            return null;
        }
    }

    @GwtIncompatible
    /* renamed from: i */
    public static Object m25852i(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw propagate(e2.getCause());
        }
    }

    @GwtIncompatible
    /* renamed from: j */
    public static List<StackTraceElement> m25853j(Throwable th) {
        Preconditions.checkNotNull(th);
        return new C5671a(th);
    }

    @GwtIncompatible
    @Deprecated
    public static List<StackTraceElement> lazyStackTrace(Throwable th) {
        return lazyStackTraceIsLazy() ? m25853j(th) : Collections.unmodifiableList(Arrays.asList(th.getStackTrace()));
    }

    @GwtIncompatible
    @Deprecated
    public static boolean lazyStackTraceIsLazy() {
        return (f33647d == null || f33648e == null) ? false : true;
    }

    @CanIgnoreReturnValue
    @GwtIncompatible
    @Deprecated
    public static RuntimeException propagate(Throwable th) {
        throwIfUnchecked(th);
        throw new RuntimeException(th);
    }

    @GwtIncompatible
    @Deprecated
    public static <X extends Throwable> void propagateIfInstanceOf(@CheckForNull Throwable th, Class<X> cls) throws Throwable {
        if (th != null) {
            throwIfInstanceOf(th, cls);
        }
    }

    @GwtIncompatible
    @Deprecated
    public static void propagateIfPossible(@CheckForNull Throwable th) {
        if (th != null) {
            throwIfUnchecked(th);
        }
    }

    @GwtIncompatible
    public static <X extends Throwable> void throwIfInstanceOf(Throwable th, Class<X> cls) throws Throwable {
        Preconditions.checkNotNull(th);
        if (cls.isInstance(th)) {
            throw cls.cast(th);
        }
    }

    public static void throwIfUnchecked(Throwable th) {
        Preconditions.checkNotNull(th);
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (th instanceof Error) {
            throw ((Error) th);
        }
    }

    @GwtIncompatible
    public static <X extends Throwable> void propagateIfPossible(@CheckForNull Throwable th, Class<X> cls) throws Throwable {
        propagateIfInstanceOf(th, cls);
        propagateIfPossible(th);
    }

    @GwtIncompatible
    public static <X1 extends Throwable, X2 extends Throwable> void propagateIfPossible(@CheckForNull Throwable th, Class<X1> cls, Class<X2> cls2) throws Throwable, Throwable {
        Preconditions.checkNotNull(cls2);
        propagateIfInstanceOf(th, cls);
        propagateIfPossible(th, cls2);
    }
}
