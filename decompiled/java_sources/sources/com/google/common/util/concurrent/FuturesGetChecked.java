package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.Ordering;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.pnf;
import com.sunia.HTREnginev2.uvk;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.CheckForNull;

@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public final class FuturesGetChecked {

    /* renamed from: a */
    public static final Ordering<Constructor<?>> f35350a = Ordering.natural().onResultOf(new C6372a()).reverse();

    @VisibleForTesting
    /* loaded from: classes6.dex */
    public static class GetCheckedTypeValidatorHolder {

        /* renamed from: a */
        public static final String f35351a = GetCheckedTypeValidatorHolder.class.getName().concat("$ClassValueValidator");

        /* renamed from: b */
        public static final InterfaceC6373b f35352b = m27730a();

        /* loaded from: classes6.dex */
        public enum ClassValueValidator implements InterfaceC6373b {
            INSTANCE;

            private static final ClassValue<Boolean> isValidClass = new C6371a();

            /* renamed from: com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidatorHolder$ClassValueValidator$a */
            /* loaded from: classes6.dex */
            public class C6371a extends ClassValue<Boolean> {
                @Override // java.lang.ClassValue
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public Boolean computeValue(Class<?> cls) {
                    FuturesGetChecked.m27718b(cls.asSubclass(Exception.class));
                    return Boolean.TRUE;
                }
            }

            @Override // com.google.common.util.concurrent.FuturesGetChecked.InterfaceC6373b
            public void validateClass(Class<? extends Exception> cls) {
                isValidClass.get(cls);
            }
        }

        /* loaded from: classes6.dex */
        public enum WeakSetValidator implements InterfaceC6373b {
            INSTANCE;

            private static final Set<WeakReference<Class<? extends Exception>>> validClasses = new CopyOnWriteArraySet();

            @Override // com.google.common.util.concurrent.FuturesGetChecked.InterfaceC6373b
            public void validateClass(Class<? extends Exception> cls) {
                Iterator<WeakReference<Class<? extends Exception>>> it2 = validClasses.iterator();
                while (it2.hasNext()) {
                    if (cls.equals(it2.next().get())) {
                        return;
                    }
                }
                FuturesGetChecked.m27718b(cls);
                Set<WeakReference<Class<? extends Exception>>> set = validClasses;
                if (set.size() > 1000) {
                    set.clear();
                }
                set.add(new WeakReference<>(cls));
            }
        }

        /* renamed from: a */
        public static InterfaceC6373b m27730a() {
            try {
                return (InterfaceC6373b) ((Enum[]) Class.forName(f35351a).asSubclass(Enum.class).getEnumConstants())[0];
            } catch (Throwable unused) {
                return FuturesGetChecked.m27728l();
            }
        }
    }

    /* renamed from: com.google.common.util.concurrent.FuturesGetChecked$a */
    /* loaded from: classes6.dex */
    public class C6372a implements Function<Constructor<?>, Boolean> {
        @Override // com.google.common.base.Function, java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean apply(Constructor<?> constructor) {
            return Boolean.valueOf(Arrays.asList(constructor.getParameterTypes()).contains(String.class));
        }
    }

    @VisibleForTesting
    /* renamed from: com.google.common.util.concurrent.FuturesGetChecked$b */
    /* loaded from: classes6.dex */
    public interface InterfaceC6373b {
        void validateClass(Class<? extends Exception> cls);
    }

    /* renamed from: a */
    public static InterfaceC6373b m27717a() {
        return GetCheckedTypeValidatorHolder.f35352b;
    }

    @VisibleForTesting
    /* renamed from: b */
    public static void m27718b(Class<? extends Exception> cls) {
        Preconditions.checkArgument(m27724h(cls), "Futures.getChecked exception type (%s) must not be a RuntimeException", cls);
        Preconditions.checkArgument(m27723g(cls), "Futures.getChecked exception type (%s) must be an accessible class with an accessible constructor whose parameters (if any) must be of type String and/or Throwable", cls);
    }

    @VisibleForTesting
    /* renamed from: c */
    public static InterfaceC6373b m27719c() {
        return GetCheckedTypeValidatorHolder.ClassValueValidator.INSTANCE;
    }

    @VisibleForTesting
    @CanIgnoreReturnValue
    @uvk
    /* renamed from: d */
    public static <V, X extends Exception> V m27720d(InterfaceC6373b interfaceC6373b, Future<V> future, Class<X> cls) throws Exception {
        interfaceC6373b.validateClass(cls);
        try {
            return future.get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw m27726j(cls, e);
        } catch (ExecutionException e2) {
            m27729m(e2.getCause(), cls);
            throw new AssertionError();
        }
    }

    @CanIgnoreReturnValue
    @uvk
    /* renamed from: e */
    public static <V, X extends Exception> V m27721e(Future<V> future, Class<X> cls) throws Exception {
        return (V) m27720d(m27717a(), future, cls);
    }

    @CanIgnoreReturnValue
    @uvk
    /* renamed from: f */
    public static <V, X extends Exception> V m27722f(Future<V> future, Class<X> cls, long j, TimeUnit timeUnit) throws Exception {
        m27717a().validateClass(cls);
        try {
            return future.get(j, timeUnit);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw m27726j(cls, e);
        } catch (ExecutionException e2) {
            m27729m(e2.getCause(), cls);
            throw new AssertionError();
        } catch (TimeoutException e3) {
            throw m27726j(cls, e3);
        }
    }

    /* renamed from: g */
    public static boolean m27723g(Class<? extends Exception> cls) {
        try {
            m27726j(cls, new Exception());
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @VisibleForTesting
    /* renamed from: h */
    public static boolean m27724h(Class<? extends Exception> cls) {
        return !RuntimeException.class.isAssignableFrom(cls);
    }

    @CheckForNull
    /* renamed from: i */
    public static <X> X m27725i(Constructor<X> constructor, Throwable th) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        Object[] objArr = new Object[parameterTypes.length];
        for (int i = 0; i < parameterTypes.length; i++) {
            Class<?> cls = parameterTypes[i];
            if (cls.equals(String.class)) {
                objArr[i] = th.toString();
            } else {
                if (!cls.equals(Throwable.class)) {
                    return null;
                }
                objArr[i] = th;
            }
        }
        try {
            return constructor.newInstance(objArr);
        } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    /* renamed from: j */
    public static <X extends Exception> X m27726j(Class<X> cls, Throwable th) {
        Iterator it2 = m27727k(Arrays.asList(cls.getConstructors())).iterator();
        while (it2.hasNext()) {
            X x = (X) m27725i((Constructor) it2.next(), th);
            if (x != null) {
                if (x.getCause() == null) {
                    x.initCause(th);
                }
                return x;
            }
        }
        String valueOf = String.valueOf(cls);
        StringBuilder sb = new StringBuilder(valueOf.length() + 82);
        sb.append("No appropriate constructor for exception of type ");
        sb.append(valueOf);
        sb.append(" in response to chained exception");
        throw new IllegalArgumentException(sb.toString(), th);
    }

    /* renamed from: k */
    public static <X extends Exception> List<Constructor<X>> m27727k(List<Constructor<X>> list) {
        return (List<Constructor<X>>) f35350a.sortedCopy(list);
    }

    @VisibleForTesting
    /* renamed from: l */
    public static InterfaceC6373b m27728l() {
        return GetCheckedTypeValidatorHolder.WeakSetValidator.INSTANCE;
    }

    /* renamed from: m */
    public static <X extends Exception> void m27729m(Throwable th, Class<X> cls) throws Exception {
        if (th instanceof Error) {
            throw new ExecutionError((Error) th);
        }
        if (!(th instanceof RuntimeException)) {
            throw m27726j(cls, th);
        }
        throw new UncheckedExecutionException(th);
    }
}
