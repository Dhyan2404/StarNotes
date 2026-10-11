package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.internal.subscribers.QueueDrainSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.QueueDrainHelper;
import io.reactivex.rxjava3.subscribers.DisposableSubscriber;
import io.reactivex.rxjava3.subscribers.SerializedSubscriber;
import java.util.Collection;
import java.util.Objects;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableBufferExactBoundary<T, U extends Collection<? super T>, B> extends AbstractC14025l3<T, U> {

    /* renamed from: f */
    public final Publisher<B> f95384f;

    /* renamed from: g */
    public final Supplier<U> f95385g;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableBufferExactBoundary$a */
    /* loaded from: classes10.dex */
    public static final class C17328a<T, U extends Collection<? super T>, B> extends DisposableSubscriber<B> {

        /* renamed from: f */
        public final C17329b<T, U, B> f95386f;

        public C17328a(C17329b<T, U, B> parent) {
            this.f95386f = parent;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f95386f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            this.f95386f.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(B t) {
            this.f95386f.m61158b();
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableBufferExactBoundary$b */
    /* loaded from: classes10.dex */
    public static final class C17329b<T, U extends Collection<? super T>, B> extends QueueDrainSubscriber<T, U, U> implements Subscription, Disposable {

        /* renamed from: M0 */
        public final Supplier<U> f95387M0;

        /* renamed from: N0 */
        public final Publisher<B> f95388N0;

        /* renamed from: O0 */
        public Subscription f95389O0;

        /* renamed from: P0 */
        public Disposable f95390P0;

        /* renamed from: Q0 */
        public U f95391Q0;

        public C17329b(Subscriber<? super U> actual, Supplier<U> bufferSupplier, Publisher<B> boundary) {
            super(actual, new MpscLinkedQueue());
            this.f95387M0 = bufferSupplier;
            this.f95388N0 = boundary;
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.QueueDrainSubscriber, io.reactivex.rxjava3.internal.util.QueueDrain
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean accept(Subscriber<? super U> a, U v) {
            this.downstream.onNext(v);
            return true;
        }

        /* renamed from: b */
        public void m61158b() {
            try {
                U u = this.f95387M0.get();
                Objects.requireNonNull(u, "The buffer supplied is null");
                U u2 = u;
                synchronized (this) {
                    U u3 = this.f95391Q0;
                    if (u3 == null) {
                        return;
                    }
                    this.f95391Q0 = u2;
                    fastPathEmitMax(u3, false, this);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                cancel();
                this.downstream.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.f95390P0.dispose();
            this.f95389O0.cancel();
            if (enter()) {
                this.queue.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            cancel();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            synchronized (this) {
                U u = this.f95391Q0;
                if (u == null) {
                    return;
                }
                this.f95391Q0 = null;
                this.queue.offer(u);
                this.done = true;
                if (enter()) {
                    QueueDrainHelper.drainMaxLoop(this.queue, this.downstream, false, this, this);
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            cancel();
            this.downstream.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            synchronized (this) {
                U u = this.f95391Q0;
                if (u == null) {
                    return;
                }
                u.add(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95389O0, s)) {
                this.f95389O0 = s;
                try {
                    U u = this.f95387M0.get();
                    Objects.requireNonNull(u, "The buffer supplied is null");
                    this.f95391Q0 = u;
                    C17328a c17328a = new C17328a(this);
                    this.f95390P0 = c17328a;
                    this.downstream.onSubscribe(this);
                    if (this.cancelled) {
                        return;
                    }
                    s.request(Long.MAX_VALUE);
                    this.f95388N0.subscribe(c17328a);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.cancelled = true;
                    s.cancel();
                    EmptySubscription.error(th, this.downstream);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            requested(n);
        }
    }

    public FlowableBufferExactBoundary(Flowable<T> source, Publisher<B> boundary, Supplier<U> bufferSupplier) {
        super(source);
        this.f95384f = boundary;
        this.f95385g = bufferSupplier;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super U> s) {
        this.source.subscribe((FlowableSubscriber) new C17329b(new SerializedSubscriber(s), this.f95385g, this.f95384f));
    }
}
