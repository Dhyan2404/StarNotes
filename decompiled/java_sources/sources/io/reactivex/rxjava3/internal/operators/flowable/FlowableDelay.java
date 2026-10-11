package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.subscribers.SerializedSubscriber;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableDelay<T> extends AbstractC14025l3<T, T> {

    /* renamed from: f */
    public final long f95497f;

    /* renamed from: g */
    public final TimeUnit f95498g;

    /* renamed from: h */
    public final Scheduler f95499h;

    /* renamed from: i */
    public final boolean f95500i;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableDelay$a */
    /* loaded from: classes10.dex */
    public static final class C17342a<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: e */
        public final Subscriber<? super T> f95501e;

        /* renamed from: f */
        public final long f95502f;

        /* renamed from: g */
        public final TimeUnit f95503g;

        /* renamed from: h */
        public final Scheduler.Worker f95504h;

        /* renamed from: i */
        public final boolean f95505i;

        /* renamed from: j */
        public Subscription f95506j;

        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableDelay$a$a */
        /* loaded from: classes10.dex */
        public final class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    C17342a.this.f95501e.onComplete();
                } finally {
                    C17342a.this.f95504h.dispose();
                }
            }
        }

        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableDelay$a$b */
        /* loaded from: classes10.dex */
        public final class b implements Runnable {

            /* renamed from: e */
            public final Throwable f95508e;

            public b(Throwable t) {
                this.f95508e = t;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    C17342a.this.f95501e.onError(this.f95508e);
                } finally {
                    C17342a.this.f95504h.dispose();
                }
            }
        }

        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableDelay$a$c */
        /* loaded from: classes10.dex */
        public final class c implements Runnable {

            /* renamed from: e */
            public final T f95510e;

            public c(T t) {
                this.f95510e = t;
            }

            @Override // java.lang.Runnable
            public void run() {
                C17342a.this.f95501e.onNext(this.f95510e);
            }
        }

        public C17342a(Subscriber<? super T> actual, long delay, TimeUnit unit, Scheduler.Worker w, boolean delayError) {
            this.f95501e = actual;
            this.f95502f = delay;
            this.f95503g = unit;
            this.f95504h = w;
            this.f95505i = delayError;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f95506j.cancel();
            this.f95504h.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f95504h.schedule(new a(), this.f95502f, this.f95503g);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(final Throwable t) {
            this.f95504h.schedule(new b(t), this.f95505i ? this.f95502f : 0L, this.f95503g);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(final T t) {
            this.f95504h.schedule(new c(t), this.f95502f, this.f95503g);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95506j, s)) {
                this.f95506j = s;
                this.f95501e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f95506j.request(n);
        }
    }

    public FlowableDelay(Flowable<T> source, long delay, TimeUnit unit, Scheduler scheduler, boolean delayError) {
        super(source);
        this.f95497f = delay;
        this.f95498g = unit;
        this.f95499h = scheduler;
        this.f95500i = delayError;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> t) {
        this.source.subscribe((FlowableSubscriber) new C17342a(this.f95500i ? t : new SerializedSubscriber(t), this.f95497f, this.f95498g, this.f95499h.createWorker(), this.f95500i));
    }
}
