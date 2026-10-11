package io.reactivex.rxjava3.internal.operators.mixed;

import com.sunia.HTREnginev2.cyi;
import com.sunia.HTREnginev2.e1m;
import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class ObservableSwitchMapCompletable<T> extends Completable {

    /* renamed from: e */
    public final Observable<T> f96276e;

    /* renamed from: f */
    public final Function<? super T, ? extends CompletableSource> f96277f;

    /* renamed from: g */
    public final boolean f96278g;

    /* loaded from: classes10.dex */
    public static final class SwitchMapCompletableObserver<T> implements Observer<T>, Disposable {

        /* renamed from: l */
        public static final SwitchMapInnerObserver f96279l = new SwitchMapInnerObserver(null);

        /* renamed from: e */
        public final CompletableObserver f96280e;

        /* renamed from: f */
        public final Function<? super T, ? extends CompletableSource> f96281f;

        /* renamed from: g */
        public final boolean f96282g;

        /* renamed from: h */
        public final AtomicThrowable f96283h = new AtomicThrowable();

        /* renamed from: i */
        public final AtomicReference<SwitchMapInnerObserver> f96284i = new AtomicReference<>();

        /* renamed from: j */
        public volatile boolean f96285j;

        /* renamed from: k */
        public Disposable f96286k;

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
                this.parent.m61207b(this);
            }

            @Override // io.reactivex.rxjava3.core.CompletableObserver
            public void onError(Throwable e) {
                this.parent.m61208c(this, e);
            }

            @Override // io.reactivex.rxjava3.core.CompletableObserver
            public void onSubscribe(Disposable d) {
                DisposableHelper.setOnce(this, d);
            }
        }

        public SwitchMapCompletableObserver(CompletableObserver downstream, Function<? super T, ? extends CompletableSource> mapper, boolean delayErrors) {
            this.f96280e = downstream;
            this.f96281f = mapper;
            this.f96282g = delayErrors;
        }

        /* renamed from: a */
        public void m61206a() {
            AtomicReference<SwitchMapInnerObserver> atomicReference = this.f96284i;
            SwitchMapInnerObserver switchMapInnerObserver = f96279l;
            SwitchMapInnerObserver andSet = atomicReference.getAndSet(switchMapInnerObserver);
            if (andSet == null || andSet == switchMapInnerObserver) {
                return;
            }
            andSet.dispose();
        }

        /* renamed from: b */
        public void m61207b(SwitchMapInnerObserver sender) {
            if (cyi.m53538a(this.f96284i, sender, null) && this.f96285j) {
                this.f96283h.tryTerminateConsumer(this.f96280e);
            }
        }

        /* renamed from: c */
        public void m61208c(SwitchMapInnerObserver sender, Throwable error) {
            if (!cyi.m53538a(this.f96284i, sender, null)) {
                RxJavaPlugins.onError(error);
                return;
            }
            if (this.f96283h.tryAddThrowableOrReport(error)) {
                if (this.f96282g) {
                    if (this.f96285j) {
                        this.f96283h.tryTerminateConsumer(this.f96280e);
                    }
                } else {
                    this.f96286k.dispose();
                    m61206a();
                    this.f96283h.tryTerminateConsumer(this.f96280e);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96286k.dispose();
            m61206a();
            this.f96283h.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96284i.get() == f96279l;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96285j = true;
            if (this.f96284i.get() == null) {
                this.f96283h.tryTerminateConsumer(this.f96280e);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96283h.tryAddThrowableOrReport(t)) {
                if (this.f96282g) {
                    onComplete();
                } else {
                    m61206a();
                    this.f96283h.tryTerminateConsumer(this.f96280e);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            SwitchMapInnerObserver switchMapInnerObserver;
            try {
                CompletableSource apply = this.f96281f.apply(t);
                Objects.requireNonNull(apply, "The mapper returned a null CompletableSource");
                CompletableSource completableSource = apply;
                SwitchMapInnerObserver switchMapInnerObserver2 = new SwitchMapInnerObserver(this);
                do {
                    switchMapInnerObserver = this.f96284i.get();
                    if (switchMapInnerObserver == f96279l) {
                        return;
                    }
                } while (!cyi.m53538a(this.f96284i, switchMapInnerObserver, switchMapInnerObserver2));
                if (switchMapInnerObserver != null) {
                    switchMapInnerObserver.dispose();
                }
                completableSource.subscribe(switchMapInnerObserver2);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96286k.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96286k, d)) {
                this.f96286k = d;
                this.f96280e.onSubscribe(this);
            }
        }
    }

    public ObservableSwitchMapCompletable(Observable<T> source, Function<? super T, ? extends CompletableSource> mapper, boolean delayErrors) {
        this.f96276e = source;
        this.f96277f = mapper;
        this.f96278g = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(CompletableObserver observer) {
        if (e1m.m53900a(this.f96276e, this.f96277f, observer)) {
            return;
        }
        this.f96276e.subscribe(new SwitchMapCompletableObserver(observer, this.f96277f, this.f96278g));
    }
}
