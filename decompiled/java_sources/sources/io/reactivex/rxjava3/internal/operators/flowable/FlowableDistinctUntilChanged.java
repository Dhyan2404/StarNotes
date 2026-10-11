package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.functions.BiPredicate;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.subscribers.BasicFuseableConditionalSubscriber;
import io.reactivex.rxjava3.internal.subscribers.BasicFuseableSubscriber;
import io.reactivex.rxjava3.operators.ConditionalSubscriber;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableDistinctUntilChanged<T, K> extends AbstractC14025l3<T, T> {

    /* renamed from: f */
    public final Function<? super T, K> f95525f;

    /* renamed from: g */
    public final BiPredicate<? super K, ? super K> f95526g;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableDistinctUntilChanged$a */
    /* loaded from: classes10.dex */
    public static final class C17346a<T, K> extends BasicFuseableConditionalSubscriber<T, T> {

        /* renamed from: e */
        public final Function<? super T, K> f95527e;

        /* renamed from: f */
        public final BiPredicate<? super K, ? super K> f95528f;

        /* renamed from: g */
        public K f95529g;

        /* renamed from: h */
        public boolean f95530h;

        public C17346a(ConditionalSubscriber<? super T> actual, Function<? super T, K> keySelector, BiPredicate<? super K, ? super K> comparer) {
            super(actual);
            this.f95527e = keySelector;
            this.f95528f = comparer;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t)) {
                return;
            }
            this.upstream.request(1L);
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public T poll() throws Throwable {
            while (true) {
                T poll = this.f97404qs.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f95527e.apply(poll);
                if (!this.f95530h) {
                    this.f95530h = true;
                    this.f95529g = apply;
                    return poll;
                }
                if (!this.f95528f.test(this.f95529g, apply)) {
                    this.f95529g = apply;
                    return poll;
                }
                this.f95529g = apply;
                if (this.sourceMode != 1) {
                    this.upstream.request(1L);
                }
            }
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int mode) {
            return transitiveBoundaryFusion(mode);
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            if (this.done) {
                return false;
            }
            if (this.sourceMode != 0) {
                return this.downstream.tryOnNext(t);
            }
            try {
                K apply = this.f95527e.apply(t);
                if (this.f95530h) {
                    boolean test = this.f95528f.test(this.f95529g, apply);
                    this.f95529g = apply;
                    if (test) {
                        return false;
                    }
                } else {
                    this.f95530h = true;
                    this.f95529g = apply;
                }
                this.downstream.onNext(t);
                return true;
            } catch (Throwable th) {
                fail(th);
                return true;
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableDistinctUntilChanged$b */
    /* loaded from: classes10.dex */
    public static final class C17347b<T, K> extends BasicFuseableSubscriber<T, T> implements ConditionalSubscriber<T> {

        /* renamed from: e */
        public final Function<? super T, K> f95531e;

        /* renamed from: f */
        public final BiPredicate<? super K, ? super K> f95532f;

        /* renamed from: g */
        public K f95533g;

        /* renamed from: h */
        public boolean f95534h;

        public C17347b(Subscriber<? super T> actual, Function<? super T, K> keySelector, BiPredicate<? super K, ? super K> comparer) {
            super(actual);
            this.f95531e = keySelector;
            this.f95532f = comparer;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t)) {
                return;
            }
            this.upstream.request(1L);
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public T poll() throws Throwable {
            while (true) {
                T poll = this.f97405qs.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f95531e.apply(poll);
                if (!this.f95534h) {
                    this.f95534h = true;
                    this.f95533g = apply;
                    return poll;
                }
                if (!this.f95532f.test(this.f95533g, apply)) {
                    this.f95533g = apply;
                    return poll;
                }
                this.f95533g = apply;
                if (this.sourceMode != 1) {
                    this.upstream.request(1L);
                }
            }
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int mode) {
            return transitiveBoundaryFusion(mode);
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            if (this.done) {
                return false;
            }
            if (this.sourceMode != 0) {
                this.downstream.onNext(t);
                return true;
            }
            try {
                K apply = this.f95531e.apply(t);
                if (this.f95534h) {
                    boolean test = this.f95532f.test(this.f95533g, apply);
                    this.f95533g = apply;
                    if (test) {
                        return false;
                    }
                } else {
                    this.f95534h = true;
                    this.f95533g = apply;
                }
                this.downstream.onNext(t);
                return true;
            } catch (Throwable th) {
                fail(th);
                return true;
            }
        }
    }

    public FlowableDistinctUntilChanged(Flowable<T> source, Function<? super T, K> keySelector, BiPredicate<? super K, ? super K> comparer) {
        super(source);
        this.f95525f = keySelector;
        this.f95526g = comparer;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        if (s instanceof ConditionalSubscriber) {
            this.source.subscribe((FlowableSubscriber) new C17346a((ConditionalSubscriber) s, this.f95525f, this.f95526g));
        } else {
            this.source.subscribe((FlowableSubscriber) new C17347b(s, this.f95525f, this.f95526g));
        }
    }
}
