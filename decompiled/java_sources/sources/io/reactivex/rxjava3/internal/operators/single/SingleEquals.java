package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes10.dex */
public final class SingleEquals<T> extends Single<Boolean> {

    /* renamed from: e */
    public final SingleSource<? extends T> f97195e;

    /* renamed from: f */
    public final SingleSource<? extends T> f97196f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleEquals$a */
    /* loaded from: classes10.dex */
    public static class C17600a<T> implements SingleObserver<T> {

        /* renamed from: e */
        public final int f97197e;

        /* renamed from: f */
        public final CompositeDisposable f97198f;

        /* renamed from: g */
        public final Object[] f97199g;

        /* renamed from: h */
        public final SingleObserver<? super Boolean> f97200h;

        /* renamed from: i */
        public final AtomicInteger f97201i;

        public C17600a(int index, CompositeDisposable set, Object[] values, SingleObserver<? super Boolean> observer, AtomicInteger count) {
            this.f97197e = index;
            this.f97198f = set;
            this.f97199g = values;
            this.f97200h = observer;
            this.f97201i = count;
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            int andSet = this.f97201i.getAndSet(-1);
            if (andSet != 0 && andSet != 1) {
                RxJavaPlugins.onError(e);
            } else {
                this.f97198f.dispose();
                this.f97200h.onError(e);
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            this.f97198f.add(d);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            this.f97199g[this.f97197e] = value;
            if (this.f97201i.incrementAndGet() == 2) {
                SingleObserver<? super Boolean> singleObserver = this.f97200h;
                Object[] objArr = this.f97199g;
                singleObserver.onSuccess(Boolean.valueOf(Objects.equals(objArr[0], objArr[1])));
            }
        }
    }

    public SingleEquals(SingleSource<? extends T> first, SingleSource<? extends T> second) {
        this.f97195e = first;
        this.f97196f = second;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(final SingleObserver<? super Boolean> observer) {
        AtomicInteger atomicInteger = new AtomicInteger();
        Object[] objArr = {null, null};
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        observer.onSubscribe(compositeDisposable);
        this.f97195e.subscribe(new C17600a(0, compositeDisposable, objArr, observer, atomicInteger));
        this.f97196f.subscribe(new C17600a(1, compositeDisposable, objArr, observer, atomicInteger));
    }
}
