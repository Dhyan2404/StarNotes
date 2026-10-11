package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.Objects;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableZipIterable<T, U, V> extends AbstractC14025l3<T, V> {

    /* renamed from: f */
    public final Iterable<U> f95993f;

    /* renamed from: g */
    public final BiFunction<? super T, ? super U, ? extends V> f95994g;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableZipIterable$a */
    /* loaded from: classes10.dex */
    public static final class C17419a<T, U, V> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: e */
        public final Subscriber<? super V> f95995e;

        /* renamed from: f */
        public final Iterator<U> f95996f;

        /* renamed from: g */
        public final BiFunction<? super T, ? super U, ? extends V> f95997g;

        /* renamed from: h */
        public Subscription f95998h;

        /* renamed from: i */
        public boolean f95999i;

        public C17419a(Subscriber<? super V> actual, Iterator<U> iterator, BiFunction<? super T, ? super U, ? extends V> zipper) {
            this.f95995e = actual;
            this.f95996f = iterator;
            this.f95997g = zipper;
        }

        /* renamed from: a */
        public void m61196a(Throwable e) {
            Exceptions.throwIfFatal(e);
            this.f95999i = true;
            this.f95998h.cancel();
            this.f95995e.onError(e);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f95998h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f95999i) {
                return;
            }
            this.f95999i = true;
            this.f95995e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f95999i) {
                RxJavaPlugins.onError(t);
            } else {
                this.f95999i = true;
                this.f95995e.onError(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f95999i) {
                return;
            }
            try {
                U next = this.f95996f.next();
                Objects.requireNonNull(next, "The iterator returned a null value");
                try {
                    V apply = this.f95997g.apply(t, next);
                    Objects.requireNonNull(apply, "The zipper function returned a null value");
                    this.f95995e.onNext(apply);
                    try {
                        if (this.f95996f.hasNext()) {
                            return;
                        }
                        this.f95999i = true;
                        this.f95998h.cancel();
                        this.f95995e.onComplete();
                    } catch (Throwable th) {
                        m61196a(th);
                    }
                } catch (Throwable th2) {
                    m61196a(th2);
                }
            } catch (Throwable th3) {
                m61196a(th3);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95998h, s)) {
                this.f95998h = s;
                this.f95995e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f95998h.request(n);
        }
    }

    public FlowableZipIterable(Flowable<T> source, Iterable<U> other, BiFunction<? super T, ? super U, ? extends V> zipper) {
        super(source);
        this.f95993f = other;
        this.f95994g = zipper;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super V> t) {
        try {
            Iterator<U> it2 = this.f95993f.iterator();
            Objects.requireNonNull(it2, "The iterator returned by other is null");
            Iterator<U> it3 = it2;
            try {
                if (it3.hasNext()) {
                    this.source.subscribe((FlowableSubscriber) new C17419a(t, it3, this.f95994g));
                } else {
                    EmptySubscription.complete(t);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                EmptySubscription.error(th, t);
            }
        } catch (Throwable th2) {
            Exceptions.throwIfFatal(th2);
            EmptySubscription.error(th2, t);
        }
    }
}
