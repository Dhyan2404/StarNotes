package dagger.internal;

import com.onyx.android.sdk.base.data.font.TTCFont;
import dagger.Lazy;

/* loaded from: classes10.dex */
public final class DoubleCheck<T> implements Provider<T>, Lazy<T> {

    /* renamed from: c */
    public static final Object f94535c = new Object();

    /* renamed from: d */
    public static final /* synthetic */ boolean f94536d = false;

    /* renamed from: a */
    public volatile Provider<T> f94537a;

    /* renamed from: b */
    public volatile Object f94538b = f94535c;

    public DoubleCheck(Provider<T> provider) {
        this.f94537a = provider;
    }

    /* renamed from: a */
    public static Object m60907a(Object obj, Object obj2) {
        if (!(obj != f94535c) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + TTCFont.FONT_NAME_DELIMITER + obj2 + ". This is likely due to a circular dependency.");
    }

    public static <P extends Provider<T>, T> Lazy<T> lazy(P p) {
        if (p instanceof Lazy) {
            return (Lazy) p;
        }
        return new DoubleCheck((Provider) Preconditions.checkNotNull(p));
    }

    public static <P extends Provider<T>, T> Provider<T> provider(P p) {
        Preconditions.checkNotNull(p);
        return p instanceof DoubleCheck ? p : new DoubleCheck(p);
    }

    @Override // javax.inject.Provider
    public T get() {
        T t = (T) this.f94538b;
        Object obj = f94535c;
        if (t == obj) {
            synchronized (this) {
                t = (T) this.f94538b;
                if (t == obj) {
                    t = this.f94537a.get();
                    this.f94538b = m60907a(this.f94538b, t);
                    this.f94537a = null;
                }
            }
        }
        return t;
    }

    public static <P extends javax.inject.Provider<T>, T> Lazy<T> lazy(P p) {
        return lazy(Providers.asDaggerProvider(p));
    }

    @Deprecated
    public static <P extends javax.inject.Provider<T>, T> javax.inject.Provider<T> provider(P p) {
        return provider(Providers.asDaggerProvider(p));
    }
}
