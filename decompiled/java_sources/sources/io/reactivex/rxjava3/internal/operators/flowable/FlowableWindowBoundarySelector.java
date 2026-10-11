package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.BackpressureHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.SimplePlainQueue;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import io.reactivex.rxjava3.processors.UnicastProcessor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableWindowBoundarySelector<T, B, V> extends AbstractC14025l3<T, Flowable<T>> {

    /* renamed from: f */
    public final Publisher<B> f95960f;

    /* renamed from: g */
    public final Function<? super B, ? extends Publisher<V>> f95961g;

    /* renamed from: h */
    public final int f95962h;

    /* loaded from: classes10.dex */
    public static final class WindowBoundaryMainSubscriber<T, B, V> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = 8646217640096099753L;
        final int bufferSize;
        final Function<? super B, ? extends Publisher<V>> closingIndicator;
        final Subscriber<? super Flowable<T>> downstream;
        long emitted;
        final Publisher<B> open;
        volatile boolean openDone;
        Subscription upstream;
        volatile boolean upstreamCanceled;
        volatile boolean upstreamDone;
        final SimplePlainQueue<Object> queue = new MpscLinkedQueue();
        final CompositeDisposable resources = new CompositeDisposable();
        final List<UnicastProcessor<T>> windows = new ArrayList();
        final AtomicLong windowCount = new AtomicLong(1);
        final AtomicBoolean downstreamCancelled = new AtomicBoolean();
        final AtomicThrowable error = new AtomicThrowable();
        final WindowStartSubscriber<B> startSubscriber = new WindowStartSubscriber<>(this);
        final AtomicLong requested = new AtomicLong();

        /* loaded from: classes10.dex */
        public static final class WindowStartSubscriber<B> extends AtomicReference<Subscription> implements FlowableSubscriber<B> {
            private static final long serialVersionUID = -3326496781427702834L;
            final WindowBoundaryMainSubscriber<?, B, ?> parent;

            public WindowStartSubscriber(WindowBoundaryMainSubscriber<?, B, ?> parent) {
                this.parent = parent;
            }

            public void cancel() {
                SubscriptionHelper.cancel(this);
            }

            @Override // org.reactivestreams.Subscriber
            public void onComplete() {
                this.parent.openComplete();
            }

            @Override // org.reactivestreams.Subscriber
            public void onError(Throwable t) {
                this.parent.openError(t);
            }

            @Override // org.reactivestreams.Subscriber
            public void onNext(B t) {
                this.parent.open(t);
            }

            @Override // io.reactivex.rxjava3.core.FlowableSubscriber
            public void onSubscribe(Subscription s) {
                if (SubscriptionHelper.setOnce(this, s)) {
                    s.request(Long.MAX_VALUE);
                }
            }
        }

        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber$a */
        /* loaded from: classes10.dex */
        public static final class C17412a<T, V> extends Flowable<T> implements FlowableSubscriber<V>, Disposable {

            /* renamed from: f */
            public final WindowBoundaryMainSubscriber<T, ?, V> f95963f;

            /* renamed from: g */
            public final UnicastProcessor<T> f95964g;

            /* renamed from: h */
            public final AtomicReference<Subscription> f95965h = new AtomicReference<>();

            /* renamed from: i */
            public final AtomicBoolean f95966i = new AtomicBoolean();

            public C17412a(WindowBoundaryMainSubscriber<T, ?, V> parent, UnicastProcessor<T> window) {
                this.f95963f = parent;
                this.f95964g = window;
            }

            @Override // io.reactivex.rxjava3.disposables.Disposable
            public void dispose() {
                SubscriptionHelper.cancel(this.f95965h);
            }

            /* renamed from: e */
            public boolean m61194e() {
                return !this.f95966i.get() && this.f95966i.compareAndSet(false, true);
            }

            @Override // io.reactivex.rxjava3.disposables.Disposable
            public boolean isDisposed() {
                return this.f95965h.get() == SubscriptionHelper.CANCELLED;
            }

            @Override // org.reactivestreams.Subscriber
            public void onComplete() {
                this.f95963f.close(this);
            }

            @Override // org.reactivestreams.Subscriber
            public void onError(Throwable t) {
                if (isDisposed()) {
                    RxJavaPlugins.onError(t);
                } else {
                    this.f95963f.closeError(t);
                }
            }

            @Override // org.reactivestreams.Subscriber
            public void onNext(V t) {
                if (SubscriptionHelper.cancel(this.f95965h)) {
                    this.f95963f.close(this);
                }
            }

            @Override // io.reactivex.rxjava3.core.FlowableSubscriber
            public void onSubscribe(Subscription s) {
                if (SubscriptionHelper.setOnce(this.f95965h, s)) {
                    s.request(Long.MAX_VALUE);
                }
            }

            @Override // io.reactivex.rxjava3.core.Flowable
            public void subscribeActual(Subscriber<? super T> s) {
                this.f95964g.subscribe(s);
                this.f95966i.set(true);
            }
        }

        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber$b */
        /* loaded from: classes10.dex */
        public static final class C17413b<B> {

            /* renamed from: a */
            public final B f95967a;

            public C17413b(B item) {
                this.f95967a = item;
            }
        }

        public WindowBoundaryMainSubscriber(Subscriber<? super Flowable<T>> actual, Publisher<B> open, Function<? super B, ? extends Publisher<V>> closingIndicator, int bufferSize) {
            this.downstream = actual;
            this.open = open;
            this.closingIndicator = closingIndicator;
            this.bufferSize = bufferSize;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.downstreamCancelled.compareAndSet(false, true)) {
                if (this.windowCount.decrementAndGet() != 0) {
                    this.startSubscriber.cancel();
                    return;
                }
                this.upstream.cancel();
                this.startSubscriber.cancel();
                this.resources.dispose();
                this.error.tryTerminateAndReport();
                this.upstreamCanceled = true;
                drain();
            }
        }

        public void close(C17412a<T, V> what) {
            this.queue.offer(what);
            drain();
        }

        public void closeError(Throwable t) {
            this.upstream.cancel();
            this.startSubscriber.cancel();
            this.resources.dispose();
            if (this.error.tryAddThrowableOrReport(t)) {
                this.upstreamDone = true;
                drain();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            Subscriber<? super Flowable<T>> subscriber = this.downstream;
            SimplePlainQueue<Object> simplePlainQueue = this.queue;
            List<UnicastProcessor<T>> list = this.windows;
            int i = 1;
            while (true) {
                if (this.upstreamCanceled) {
                    simplePlainQueue.clear();
                    list.clear();
                } else {
                    boolean z = this.upstreamDone;
                    Object poll = simplePlainQueue.poll();
                    boolean z2 = poll == null;
                    if (z && (z2 || this.error.get() != null)) {
                        terminateDownstream(subscriber);
                        this.upstreamCanceled = true;
                    } else if (z2) {
                        if (this.openDone && list.size() == 0) {
                            this.upstream.cancel();
                            this.startSubscriber.cancel();
                            this.resources.dispose();
                            terminateDownstream(subscriber);
                            this.upstreamCanceled = true;
                        }
                    } else if (poll instanceof C17413b) {
                        if (!this.downstreamCancelled.get()) {
                            long j = this.emitted;
                            if (this.requested.get() != j) {
                                this.emitted = j + 1;
                                try {
                                    Publisher<V> apply = this.closingIndicator.apply(((C17413b) poll).f95967a);
                                    Objects.requireNonNull(apply, "The closingIndicator returned a null Publisher");
                                    Publisher<V> publisher = apply;
                                    this.windowCount.getAndIncrement();
                                    UnicastProcessor<T> create = UnicastProcessor.create(this.bufferSize, this);
                                    C17412a c17412a = new C17412a(this, create);
                                    subscriber.onNext(c17412a);
                                    if (c17412a.m61194e()) {
                                        create.onComplete();
                                    } else {
                                        list.add(create);
                                        this.resources.add(c17412a);
                                        publisher.subscribe(c17412a);
                                    }
                                } catch (Throwable th) {
                                    Exceptions.throwIfFatal(th);
                                    this.upstream.cancel();
                                    this.startSubscriber.cancel();
                                    this.resources.dispose();
                                    Exceptions.throwIfFatal(th);
                                    this.error.tryAddThrowableOrReport(th);
                                    this.upstreamDone = true;
                                }
                            } else {
                                this.upstream.cancel();
                                this.startSubscriber.cancel();
                                this.resources.dispose();
                                this.error.tryAddThrowableOrReport(FlowableWindowTimed.m61195e(j));
                                this.upstreamDone = true;
                            }
                        }
                    } else if (poll instanceof C17412a) {
                        UnicastProcessor<T> unicastProcessor = ((C17412a) poll).f95964g;
                        list.remove(unicastProcessor);
                        this.resources.delete((Disposable) poll);
                        unicastProcessor.onComplete();
                    } else {
                        Iterator<UnicastProcessor<T>> it2 = list.iterator();
                        while (it2.hasNext()) {
                            it2.next().onNext(poll);
                        }
                    }
                }
                i = addAndGet(-i);
                if (i == 0) {
                    return;
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.startSubscriber.cancel();
            this.resources.dispose();
            this.upstreamDone = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            this.startSubscriber.cancel();
            this.resources.dispose();
            if (this.error.tryAddThrowableOrReport(t)) {
                this.upstreamDone = true;
                drain();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.queue.offer(t);
            drain();
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.upstream, s)) {
                this.upstream = s;
                this.downstream.onSubscribe(this);
                this.open.subscribe(this.startSubscriber);
                s.request(Long.MAX_VALUE);
            }
        }

        public void open(B startValue) {
            this.queue.offer(new C17413b(startValue));
            drain();
        }

        public void openComplete() {
            this.openDone = true;
            drain();
        }

        public void openError(Throwable t) {
            this.upstream.cancel();
            this.resources.dispose();
            if (this.error.tryAddThrowableOrReport(t)) {
                this.upstreamDone = true;
                drain();
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            if (SubscriptionHelper.validate(n)) {
                BackpressureHelper.add(this.requested, n);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.windowCount.decrementAndGet() == 0) {
                this.upstream.cancel();
                this.startSubscriber.cancel();
                this.resources.dispose();
                this.error.tryTerminateAndReport();
                this.upstreamCanceled = true;
                drain();
            }
        }

        public void terminateDownstream(Subscriber<?> downstream) {
            Throwable terminate = this.error.terminate();
            if (terminate == null) {
                Iterator<UnicastProcessor<T>> it2 = this.windows.iterator();
                while (it2.hasNext()) {
                    it2.next().onComplete();
                }
                downstream.onComplete();
                return;
            }
            if (terminate != ExceptionHelper.TERMINATED) {
                Iterator<UnicastProcessor<T>> it3 = this.windows.iterator();
                while (it3.hasNext()) {
                    it3.next().onError(terminate);
                }
                downstream.onError(terminate);
            }
        }
    }

    public FlowableWindowBoundarySelector(Flowable<T> source, Publisher<B> open, Function<? super B, ? extends Publisher<V>> closingIndicator, int bufferSize) {
        super(source);
        this.f95960f = open;
        this.f95961g = closingIndicator;
        this.f95962h = bufferSize;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super Flowable<T>> s) {
        this.source.subscribe((FlowableSubscriber) new WindowBoundaryMainSubscriber(s, this.f95960f, this.f95961g, this.f95962h));
    }
}
