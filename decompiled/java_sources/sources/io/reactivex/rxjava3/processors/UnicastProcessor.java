package io.reactivex.rxjava3.processors;

import io.reactivex.rxjava3.annotations.CheckReturnValue;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.internal.functions.ObjectHelper;
import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.BackpressureHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class UnicastProcessor<T> extends FlowableProcessor<T> {

    /* renamed from: f */
    public final SpscLinkedArrayQueue<T> f97553f;

    /* renamed from: g */
    public final AtomicReference<Runnable> f97554g;

    /* renamed from: h */
    public final boolean f97555h;

    /* renamed from: i */
    public volatile boolean f97556i;

    /* renamed from: j */
    public Throwable f97557j;

    /* renamed from: l */
    public volatile boolean f97559l;

    /* renamed from: p */
    public boolean f97563p;

    /* renamed from: k */
    public final AtomicReference<Subscriber<? super T>> f97558k = new AtomicReference<>();

    /* renamed from: m */
    public final AtomicBoolean f97560m = new AtomicBoolean();

    /* renamed from: n */
    public final BasicIntQueueSubscription<T> f97561n = new UnicastQueueSubscription();

    /* renamed from: o */
    public final AtomicLong f97562o = new AtomicLong();

    /* loaded from: classes10.dex */
    public final class UnicastQueueSubscription extends BasicIntQueueSubscription<T> {
        private static final long serialVersionUID = -4896760517184205454L;

        public UnicastQueueSubscription() {
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (UnicastProcessor.this.f97559l) {
                return;
            }
            UnicastProcessor.this.f97559l = true;
            UnicastProcessor.this.m61346f();
            UnicastProcessor.this.f97558k.lazySet(null);
            if (UnicastProcessor.this.f97561n.getAndIncrement() == 0) {
                UnicastProcessor.this.f97558k.lazySet(null);
                UnicastProcessor unicastProcessor = UnicastProcessor.this;
                if (unicastProcessor.f97563p) {
                    return;
                }
                unicastProcessor.f97553f.clear();
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public void clear() {
            UnicastProcessor.this.f97553f.clear();
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public boolean isEmpty() {
            return UnicastProcessor.this.f97553f.isEmpty();
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public T poll() {
            return UnicastProcessor.this.f97553f.poll();
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            if (SubscriptionHelper.validate(n)) {
                BackpressureHelper.add(UnicastProcessor.this.f97562o, n);
                UnicastProcessor.this.m61347g();
            }
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int requestedMode) {
            if ((requestedMode & 2) == 0) {
                return 0;
            }
            UnicastProcessor.this.f97563p = true;
            return 2;
        }
    }

    public UnicastProcessor(int capacityHint, Runnable onTerminate, boolean delayError) {
        this.f97553f = new SpscLinkedArrayQueue<>(capacityHint);
        this.f97554g = new AtomicReference<>(onTerminate);
        this.f97555h = delayError;
    }

    @CheckReturnValue
    @NonNull
    public static <T> UnicastProcessor<T> create() {
        return new UnicastProcessor<>(Flowable.bufferSize(), null, true);
    }

    /* renamed from: e */
    public boolean m61345e(boolean failFast, boolean d, boolean empty, Subscriber<? super T> a, SpscLinkedArrayQueue<T> q) {
        if (this.f97559l) {
            q.clear();
            this.f97558k.lazySet(null);
            return true;
        }
        if (!d) {
            return false;
        }
        if (failFast && this.f97557j != null) {
            q.clear();
            this.f97558k.lazySet(null);
            a.onError(this.f97557j);
            return true;
        }
        if (!empty) {
            return false;
        }
        Throwable th = this.f97557j;
        this.f97558k.lazySet(null);
        if (th != null) {
            a.onError(th);
        } else {
            a.onComplete();
        }
        return true;
    }

    /* renamed from: f */
    public void m61346f() {
        Runnable andSet = this.f97554g.getAndSet(null);
        if (andSet != null) {
            andSet.run();
        }
    }

    /* renamed from: g */
    public void m61347g() {
        if (this.f97561n.getAndIncrement() != 0) {
            return;
        }
        Subscriber<? super T> subscriber = this.f97558k.get();
        int i = 1;
        while (subscriber == null) {
            i = this.f97561n.addAndGet(-i);
            if (i == 0) {
                return;
            } else {
                subscriber = this.f97558k.get();
            }
        }
        if (this.f97563p) {
            m61348h(subscriber);
        } else {
            m61349i(subscriber);
        }
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @CheckReturnValue
    @Nullable
    public Throwable getThrowable() {
        if (this.f97556i) {
            return this.f97557j;
        }
        return null;
    }

    /* renamed from: h */
    public void m61348h(Subscriber<? super T> a) {
        SpscLinkedArrayQueue<T> spscLinkedArrayQueue = this.f97553f;
        int i = 1;
        boolean z = !this.f97555h;
        while (!this.f97559l) {
            boolean z2 = this.f97556i;
            if (z && z2 && this.f97557j != null) {
                spscLinkedArrayQueue.clear();
                this.f97558k.lazySet(null);
                a.onError(this.f97557j);
                return;
            }
            a.onNext(null);
            if (z2) {
                this.f97558k.lazySet(null);
                Throwable th = this.f97557j;
                if (th != null) {
                    a.onError(th);
                    return;
                } else {
                    a.onComplete();
                    return;
                }
            }
            i = this.f97561n.addAndGet(-i);
            if (i == 0) {
                return;
            }
        }
        this.f97558k.lazySet(null);
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @CheckReturnValue
    public boolean hasComplete() {
        return this.f97556i && this.f97557j == null;
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @CheckReturnValue
    public boolean hasSubscribers() {
        return this.f97558k.get() != null;
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @CheckReturnValue
    public boolean hasThrowable() {
        return this.f97556i && this.f97557j != null;
    }

    /* renamed from: i */
    public void m61349i(Subscriber<? super T> a) {
        long j;
        SpscLinkedArrayQueue<T> spscLinkedArrayQueue = this.f97553f;
        boolean z = true;
        boolean z2 = !this.f97555h;
        int i = 1;
        while (true) {
            long j2 = this.f97562o.get();
            long j3 = 0;
            while (true) {
                if (j2 == j3) {
                    j = j3;
                    break;
                }
                boolean z3 = this.f97556i;
                T poll = spscLinkedArrayQueue.poll();
                boolean z4 = poll == null ? z : false;
                j = j3;
                if (m61345e(z2, z3, z4, a, spscLinkedArrayQueue)) {
                    return;
                }
                if (z4) {
                    break;
                }
                a.onNext(poll);
                j3 = 1 + j;
                z = true;
            }
            if (j2 == j3 && m61345e(z2, this.f97556i, spscLinkedArrayQueue.isEmpty(), a, spscLinkedArrayQueue)) {
                return;
            }
            if (j != 0 && j2 != Long.MAX_VALUE) {
                this.f97562o.addAndGet(-j);
            }
            i = this.f97561n.addAndGet(-i);
            if (i == 0) {
                return;
            } else {
                z = true;
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (this.f97556i || this.f97559l) {
            return;
        }
        this.f97556i = true;
        m61346f();
        m61347g();
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable t) {
        ExceptionHelper.nullCheck(t, "onError called with a null Throwable.");
        if (this.f97556i || this.f97559l) {
            RxJavaPlugins.onError(t);
            return;
        }
        this.f97557j = t;
        this.f97556i = true;
        m61346f();
        m61347g();
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        ExceptionHelper.nullCheck(t, "onNext called with a null value.");
        if (this.f97556i || this.f97559l) {
            return;
        }
        this.f97553f.offer(t);
        m61347g();
    }

    @Override // org.reactivestreams.Subscriber, io.reactivex.rxjava3.core.FlowableSubscriber
    public void onSubscribe(Subscription s) {
        if (this.f97556i || this.f97559l) {
            s.cancel();
        } else {
            s.request(Long.MAX_VALUE);
        }
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        if (this.f97560m.get() || !this.f97560m.compareAndSet(false, true)) {
            EmptySubscription.error(new IllegalStateException("This processor allows only a single Subscriber"), s);
            return;
        }
        s.onSubscribe(this.f97561n);
        this.f97558k.set(s);
        if (this.f97559l) {
            this.f97558k.lazySet(null);
        } else {
            m61347g();
        }
    }

    @CheckReturnValue
    @NonNull
    public static <T> UnicastProcessor<T> create(int capacityHint) {
        ObjectHelper.verifyPositive(capacityHint, "capacityHint");
        return new UnicastProcessor<>(capacityHint, null, true);
    }

    @CheckReturnValue
    @NonNull
    public static <T> UnicastProcessor<T> create(boolean delayError) {
        return new UnicastProcessor<>(Flowable.bufferSize(), null, delayError);
    }

    @CheckReturnValue
    @NonNull
    public static <T> UnicastProcessor<T> create(int capacityHint, @NonNull Runnable onTerminate) {
        return create(capacityHint, onTerminate, true);
    }

    @CheckReturnValue
    @NonNull
    public static <T> UnicastProcessor<T> create(int capacityHint, @NonNull Runnable onTerminate, boolean delayError) {
        Objects.requireNonNull(onTerminate, "onTerminate");
        ObjectHelper.verifyPositive(capacityHint, "capacityHint");
        return new UnicastProcessor<>(capacityHint, onTerminate, delayError);
    }
}
