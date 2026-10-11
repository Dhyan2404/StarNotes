package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.BackpressureHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import io.reactivex.rxjava3.subscribers.DisposableSubscriber;
import io.reactivex.rxjava3.subscribers.SerializedSubscriber;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableDebounce<T, U> extends AbstractC14025l3<T, T> {

    /* renamed from: f */
    public final Function<? super T, ? extends Publisher<U>> f95486f;

    /* loaded from: classes10.dex */
    public static final class DebounceSubscriber<T, U> extends AtomicLong implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 6725975399620862591L;
        final Function<? super T, ? extends Publisher<U>> debounceSelector;
        final AtomicReference<Disposable> debouncer = new AtomicReference<>();
        boolean done;
        final Subscriber<? super T> downstream;
        volatile long index;
        Subscription upstream;

        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableDebounce$DebounceSubscriber$a */
        /* loaded from: classes10.dex */
        public static final class C17341a<T, U> extends DisposableSubscriber<U> {

            /* renamed from: f */
            public final DebounceSubscriber<T, U> f95487f;

            /* renamed from: g */
            public final long f95488g;

            /* renamed from: h */
            public final T f95489h;

            /* renamed from: i */
            public boolean f95490i;

            /* renamed from: j */
            public final AtomicBoolean f95491j = new AtomicBoolean();

            public C17341a(DebounceSubscriber<T, U> parent, long index, T value) {
                this.f95487f = parent;
                this.f95488g = index;
                this.f95489h = value;
            }

            /* renamed from: a */
            public void m61169a() {
                if (this.f95491j.compareAndSet(false, true)) {
                    this.f95487f.emit(this.f95488g, this.f95489h);
                }
            }

            @Override // org.reactivestreams.Subscriber
            public void onComplete() {
                if (this.f95490i) {
                    return;
                }
                this.f95490i = true;
                m61169a();
            }

            @Override // org.reactivestreams.Subscriber
            public void onError(Throwable t) {
                if (this.f95490i) {
                    RxJavaPlugins.onError(t);
                } else {
                    this.f95490i = true;
                    this.f95487f.onError(t);
                }
            }

            @Override // org.reactivestreams.Subscriber
            public void onNext(U t) {
                if (this.f95490i) {
                    return;
                }
                this.f95490i = true;
                cancel();
                m61169a();
            }
        }

        public DebounceSubscriber(Subscriber<? super T> actual, Function<? super T, ? extends Publisher<U>> debounceSelector) {
            this.downstream = actual;
            this.debounceSelector = debounceSelector;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.upstream.cancel();
            DisposableHelper.dispose(this.debouncer);
        }

        public void emit(long idx, T value) {
            if (idx == this.index) {
                if (get() != 0) {
                    this.downstream.onNext(value);
                    BackpressureHelper.produced(this, 1L);
                } else {
                    cancel();
                    this.downstream.onError(MissingBackpressureException.createDefault());
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            Disposable disposable = this.debouncer.get();
            if (DisposableHelper.isDisposed(disposable)) {
                return;
            }
            C17341a c17341a = (C17341a) disposable;
            if (c17341a != null) {
                c17341a.m61169a();
            }
            DisposableHelper.dispose(this.debouncer);
            this.downstream.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            DisposableHelper.dispose(this.debouncer);
            this.downstream.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            long j = this.index + 1;
            this.index = j;
            Disposable disposable = this.debouncer.get();
            if (disposable != null) {
                disposable.dispose();
            }
            try {
                Publisher<U> apply = this.debounceSelector.apply(t);
                Objects.requireNonNull(apply, "The publisher supplied is null");
                Publisher<U> publisher = apply;
                C17341a c17341a = new C17341a(this, j, t);
                if (cyi.m53538a(this.debouncer, disposable, c17341a)) {
                    publisher.subscribe(c17341a);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                cancel();
                this.downstream.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.upstream, s)) {
                this.upstream = s;
                this.downstream.onSubscribe(this);
                s.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            if (SubscriptionHelper.validate(n)) {
                BackpressureHelper.add(this, n);
            }
        }
    }

    public FlowableDebounce(Flowable<T> source, Function<? super T, ? extends Publisher<U>> debounceSelector) {
        super(source);
        this.f95486f = debounceSelector;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        this.source.subscribe((FlowableSubscriber) new DebounceSubscriber(new SerializedSubscriber(s), this.f95486f));
    }
}
