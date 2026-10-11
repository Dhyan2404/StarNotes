package io.reactivex.rxjava3.internal.operators.maybe;

import com.sunia.HTREnginev2.AbstractC13470a4;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class MaybeSubscribeOn<T> extends AbstractC13470a4<T, T> {

    /* renamed from: e */
    public final Scheduler f96161e;

    /* loaded from: classes10.dex */
    public static final class SubscribeOnMaybeObserver<T> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = 8571289934935992137L;
        final MaybeObserver<? super T> downstream;
        final SequentialDisposable task = new SequentialDisposable();

        public SubscribeOnMaybeObserver(MaybeObserver<? super T> downstream) {
            this.downstream = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
            this.task.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.downstream.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            DisposableHelper.setOnce(this, d);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            this.downstream.onSuccess(value);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeSubscribeOn$a */
    /* loaded from: classes10.dex */
    public static final class RunnableC17450a<T> implements Runnable {

        /* renamed from: e */
        public final MaybeObserver<? super T> f96162e;

        /* renamed from: f */
        public final MaybeSource<T> f96163f;

        public RunnableC17450a(MaybeObserver<? super T> observer, MaybeSource<T> source) {
            this.f96162e = observer;
            this.f96163f = source;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f96163f.subscribe(this.f96162e);
        }
    }

    public MaybeSubscribeOn(MaybeSource<T> source, Scheduler scheduler) {
        super(source);
        this.f96161e = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        SubscribeOnMaybeObserver subscribeOnMaybeObserver = new SubscribeOnMaybeObserver(observer);
        observer.onSubscribe(subscribeOnMaybeObserver);
        subscribeOnMaybeObserver.task.replace(this.f96161e.scheduleDirect(new RunnableC17450a(subscribeOnMaybeObserver, this.source)));
    }
}
