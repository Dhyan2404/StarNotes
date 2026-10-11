package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableScan<T> extends AbstractC14025l3<T, T> {

    /* renamed from: f */
    public final BiFunction<T, T, T> f95828f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableScan$a */
    /* loaded from: classes10.dex */
    public static final class C17394a<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: e */
        public final Subscriber<? super T> f95829e;

        /* renamed from: f */
        public final BiFunction<T, T, T> f95830f;

        /* renamed from: g */
        public Subscription f95831g;

        /* renamed from: h */
        public T f95832h;

        /* renamed from: i */
        public boolean f95833i;

        public C17394a(Subscriber<? super T> actual, BiFunction<T, T, T> accumulator) {
            this.f95829e = actual;
            this.f95830f = accumulator;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f95831g.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f95833i) {
                return;
            }
            this.f95833i = true;
            this.f95829e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f95833i) {
                RxJavaPlugins.onError(t);
            } else {
                this.f95833i = true;
                this.f95829e.onError(t);
            }
        }

        /* JADX WARN: Type inference failed for: r4v2, types: [T, java.lang.Object] */
        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f95833i) {
                return;
            }
            Subscriber<? super T> subscriber = this.f95829e;
            T t2 = this.f95832h;
            if (t2 == null) {
                this.f95832h = t;
                subscriber.onNext(t);
                return;
            }
            try {
                T apply = this.f95830f.apply(t2, t);
                Objects.requireNonNull(apply, "The value returned by the accumulator is null");
                this.f95832h = apply;
                subscriber.onNext(apply);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f95831g.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95831g, s)) {
                this.f95831g = s;
                this.f95829e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f95831g.request(n);
        }
    }

    public FlowableScan(Flowable<T> source, BiFunction<T, T, T> accumulator) {
        super(source);
        this.f95828f = accumulator;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        this.source.subscribe((FlowableSubscriber) new C17394a(s, this.f95828f));
    }
}
