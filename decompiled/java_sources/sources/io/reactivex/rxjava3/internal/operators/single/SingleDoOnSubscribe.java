package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class SingleDoOnSubscribe<T> extends Single<T> {

    /* renamed from: e */
    public final SingleSource<T> f97182e;

    /* renamed from: f */
    public final Consumer<? super Disposable> f97183f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleDoOnSubscribe$a */
    /* loaded from: classes10.dex */
    public static final class C17597a<T> implements SingleObserver<T> {

        /* renamed from: e */
        public final SingleObserver<? super T> f97184e;

        /* renamed from: f */
        public final Consumer<? super Disposable> f97185f;

        /* renamed from: g */
        public boolean f97186g;

        public C17597a(SingleObserver<? super T> actual, Consumer<? super Disposable> onSubscribe) {
            this.f97184e = actual;
            this.f97185f = onSubscribe;
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            if (this.f97186g) {
                RxJavaPlugins.onError(e);
            } else {
                this.f97184e.onError(e);
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            try {
                this.f97185f.accept(d);
                this.f97184e.onSubscribe(d);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f97186g = true;
                d.dispose();
                EmptyDisposable.error(th, this.f97184e);
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            if (this.f97186g) {
                return;
            }
            this.f97184e.onSuccess(value);
        }
    }

    public SingleDoOnSubscribe(SingleSource<T> source, Consumer<? super Disposable> onSubscribe) {
        this.f97182e = source;
        this.f97183f = onSubscribe;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(final SingleObserver<? super T> observer) {
        this.f97182e.subscribe(new C17597a(observer, this.f97183f));
    }
}
