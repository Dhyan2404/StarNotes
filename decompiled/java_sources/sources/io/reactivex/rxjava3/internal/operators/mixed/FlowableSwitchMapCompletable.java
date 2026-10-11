package io.reactivex.rxjava3.internal.operators.mixed;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableSwitchMapCompletable<T> extends Completable {

    /* renamed from: e */
    public final Flowable<T> f96232e;

    /* renamed from: f */
    public final Function<? super T, ? extends CompletableSource> f96233f;

    /* renamed from: g */
    public final boolean f96234g;

    /* loaded from: classes10.dex */
    public static final class SwitchMapCompletableObserver<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: l */
        public static final SwitchMapInnerObserver f96235l = new SwitchMapInnerObserver(null);

        /* renamed from: e */
        public final CompletableObserver f96236e;

        /* renamed from: f */
        public final Function<? super T, ? extends CompletableSource> f96237f;

        /* renamed from: g */
        public final boolean f96238g;

        /* renamed from: h */
        public final AtomicThrowable f96239h = new AtomicThrowable();

        /* renamed from: i */
        public final AtomicReference<SwitchMapInnerObserver> f96240i = new AtomicReference<>();

        /* renamed from: j */
        public volatile boolean f96241j;

        /* renamed from: k */
        public Subscription f96242k;

        /* loaded from: classes10.dex */
        public static final class SwitchMapInnerObserver extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = -8003404460084760287L;
            final SwitchMapCompletableObserver<?> parent;

            public SwitchMapInnerObserver(SwitchMapCompletableObserver<?> parent) {
                this.parent = parent;
            }

            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.core.CompletableObserver
            public void onComplete() {
                this.parent.m61204b(this);
            }

            @Override // io.reactivex.rxjava3.core.CompletableObserver
            public void onError(Throwable e) {
                this.parent.m61205c(this, e);
            }

            @Override // io.reactivex.rxjava3.core.CompletableObserver
            public void onSubscribe(Disposable d) {
                DisposableHelper.setOnce(this, d);
            }
        }

        public SwitchMapCompletableObserver(CompletableObserver downstream, Function<? super T, ? extends CompletableSource> mapper, boolean delayErrors) {
            this.f96236e = downstream;
            this.f96237f = mapper;
            this.f96238g = delayErrors;
        }

        /* renamed from: a */
        public void m61203a() {
            AtomicReference<SwitchMapInnerObserver> atomicReference = this.f96240i;
            SwitchMapInnerObserver switchMapInnerObserver = f96235l;
            SwitchMapInnerObserver andSet = atomicReference.getAndSet(switchMapInnerObserver);
            if (andSet == null || andSet == switchMapInnerObserver) {
                return;
            }
            andSet.dispose();
        }

        /* renamed from: b */
        public void m61204b(SwitchMapInnerObserver sender) {
            if (cyi.m53538a(this.f96240i, sender, null) && this.f96241j) {
                this.f96239h.tryTerminateConsumer(this.f96236e);
            }
        }

        /* renamed from: c */
        public void m61205c(SwitchMapInnerObserver sender, Throwable error) {
            if (!cyi.m53538a(this.f96240i, sender, null)) {
                RxJavaPlugins.onError(error);
                return;
            }
            if (this.f96239h.tryAddThrowableOrReport(error)) {
                if (this.f96238g) {
                    if (this.f96241j) {
                        this.f96239h.tryTerminateConsumer(this.f96236e);
                    }
                } else {
                    this.f96242k.cancel();
                    m61203a();
                    this.f96239h.tryTerminateConsumer(this.f96236e);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96242k.cancel();
            m61203a();
            this.f96239h.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96240i.get() == f96235l;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f96241j = true;
            if (this.f96240i.get() == null) {
                this.f96239h.tryTerminateConsumer(this.f96236e);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f96239h.tryAddThrowableOrReport(t)) {
                if (this.f96238g) {
                    onComplete();
                } else {
                    m61203a();
                    this.f96239h.tryTerminateConsumer(this.f96236e);
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            SwitchMapInnerObserver switchMapInnerObserver;
            try {
                CompletableSource apply = this.f96237f.apply(t);
                Objects.requireNonNull(apply, "The mapper returned a null CompletableSource");
                CompletableSource completableSource = apply;
                SwitchMapInnerObserver switchMapInnerObserver2 = new SwitchMapInnerObserver(this);
                do {
                    switchMapInnerObserver = this.f96240i.get();
                    if (switchMapInnerObserver == f96235l) {
                        return;
                    }
                } while (!cyi.m53538a(this.f96240i, switchMapInnerObserver, switchMapInnerObserver2));
                if (switchMapInnerObserver != null) {
                    switchMapInnerObserver.dispose();
                }
                completableSource.subscribe(switchMapInnerObserver2);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96242k.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f96242k, s)) {
                this.f96242k = s;
                this.f96236e.onSubscribe(this);
                s.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableSwitchMapCompletable(Flowable<T> source, Function<? super T, ? extends CompletableSource> mapper, boolean delayErrors) {
        this.f96232e = source;
        this.f96233f = mapper;
        this.f96234g = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(CompletableObserver observer) {
        this.f96232e.subscribe((FlowableSubscriber) new SwitchMapCompletableObserver(observer, this.f96233f, this.f96234g));
    }
}
