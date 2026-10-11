package onyx.org.apache.commons.io.function;

import java.io.IOException;

/* loaded from: classes11.dex */
public final class Erase {
    /* renamed from: a */
    public static <T, U> void m65264a(IOBiConsumer<T, U> iOBiConsumer, T t, U u) {
        try {
            iOBiConsumer.accept(t, u);
        } catch (IOException e) {
            rethrow(e);
        }
    }

    /* renamed from: b */
    public static <T> void m65265b(IOConsumer<T> iOConsumer, T t) {
        try {
            iOConsumer.accept(t);
        } catch (IOException e) {
            rethrow(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public static <T, U, R> R m65266c(IOBiFunction<? super T, ? super U, ? extends R> iOBiFunction, T t, U u) {
        try {
            return iOBiFunction.apply(t, u);
        } catch (IOException e) {
            throw rethrow(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public static <T, R> R m65267d(IOFunction<? super T, ? extends R> iOFunction, T t) {
        try {
            return iOFunction.apply(t);
        } catch (IOException e) {
            throw rethrow(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public static <T> int m65268e(IOComparator<? super T> iOComparator, T t, T t2) {
        try {
            return iOComparator.compare(t, t2);
        } catch (IOException e) {
            throw rethrow(e);
        }
    }

    /* renamed from: f */
    public static <T> T m65269f(IOSupplier<T> iOSupplier) {
        try {
            return iOSupplier.get();
        } catch (IOException e) {
            throw rethrow(e);
        }
    }

    /* renamed from: g */
    public static void m65270g(IORunnable iORunnable) {
        try {
            iORunnable.run();
        } catch (IOException e) {
            throw rethrow(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: h */
    public static <T> boolean m65271h(IOPredicate<? super T> iOPredicate, T t) {
        try {
            return iOPredicate.test(t);
        } catch (IOException e) {
            throw rethrow(e);
        }
    }

    public static <T extends Throwable> RuntimeException rethrow(Throwable th) throws Throwable {
        throw th;
    }
}
