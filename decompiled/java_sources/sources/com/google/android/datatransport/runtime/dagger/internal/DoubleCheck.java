package com.google.android.datatransport.runtime.dagger.internal;

import com.google.android.datatransport.runtime.dagger.Lazy;
import com.onyx.android.sdk.base.data.font.TTCFont;
import javax.inject.Provider;

/* loaded from: classes4.dex */
public final class DoubleCheck<T> implements Provider<T>, Lazy<T> {

    /* renamed from: c */
    public static final Object f21981c = new Object();

    /* renamed from: d */
    public static final /* synthetic */ boolean f21982d = false;

    /* renamed from: a */
    public volatile Provider<T> f21983a;

    /* renamed from: b */
    public volatile Object f21984b = f21981c;

    public DoubleCheck(Provider<T> provider) {
        this.f21983a = provider;
    }

    public static <P extends Provider<T>, T> Lazy<T> lazy(P p) {
        return p instanceof Lazy ? (Lazy) p : new DoubleCheck((Provider) Preconditions.checkNotNull(p));
    }

    public static <P extends Provider<T>, T> Provider<T> provider(P p) {
        Preconditions.checkNotNull(p);
        return p instanceof DoubleCheck ? p : new DoubleCheck(p);
    }

    public static Object reentrantCheck(Object obj, Object obj2) {
        if (!((obj == f21981c || (obj instanceof MemoizedSentinel)) ? false : true) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + TTCFont.FONT_NAME_DELIMITER + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // javax.inject.Provider
    public T get() {
        T t = (T) this.f21984b;
        Object obj = f21981c;
        if (t == obj) {
            synchronized (this) {
                t = (T) this.f21984b;
                if (t == obj) {
                    t = this.f21983a.get();
                    this.f21984b = reentrantCheck(this.f21984b, t);
                    this.f21983a = null;
                }
            }
        }
        return t;
    }
}
