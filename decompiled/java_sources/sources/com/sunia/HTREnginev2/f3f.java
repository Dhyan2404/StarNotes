package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import androidx.concurrent.futures.AbstractResolvableFuture;
import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

@SuppressLint({"RestrictedApi"})
/* loaded from: classes6.dex */
public class f3f<V> extends AbstractResolvableFuture<V> implements ScheduledFuture<V> {

    /* renamed from: m */
    public final ScheduledFuture<?> f69614m;

    /* renamed from: com.sunia.HTREnginev2.f3f$a */
    /* loaded from: classes6.dex */
    public class C13703a implements InterfaceC13704b<V> {
        public C13703a() {
        }

        @Override // com.sunia.HTREnginev2.f3f.InterfaceC13704b
        /* renamed from: a */
        public void mo54068a(Throwable th) {
            f3f.this.setException(th);
        }

        @Override // com.sunia.HTREnginev2.f3f.InterfaceC13704b
        public void set(V v) {
            f3f.this.set(v);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.f3f$b */
    /* loaded from: classes6.dex */
    public interface InterfaceC13704b<T> {
        /* renamed from: a */
        void mo54068a(Throwable th);

        void set(T t);
    }

    /* renamed from: com.sunia.HTREnginev2.f3f$c */
    /* loaded from: classes6.dex */
    public interface InterfaceC13705c<T> {
        /* renamed from: a */
        ScheduledFuture<?> mo53161a(InterfaceC13704b<T> interfaceC13704b);
    }

    public f3f(InterfaceC13705c<V> interfaceC13705c) {
        this.f69614m = interfaceC13705c.mo53161a(new C13703a());
    }

    @Override // androidx.concurrent.futures.AbstractResolvableFuture
    public void afterDone() {
        this.f69614m.cancel(wasInterrupted());
    }

    @Override // java.util.concurrent.Delayed
    public long getDelay(TimeUnit timeUnit) {
        return this.f69614m.getDelay(timeUnit);
    }

    @Override // java.lang.Comparable
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public int compareTo(Delayed delayed) {
        return this.f69614m.compareTo(delayed);
    }
}
