package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.subscribers.BasicFuseableConditionalSubscriber;
import io.reactivex.rxjava3.internal.subscribers.BasicFuseableSubscriber;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.ConditionalSubscriber;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableDoOnEach<T> extends AbstractC14025l3<T, T> {

    /* renamed from: f */
    public final Consumer<? super T> f95541f;

    /* renamed from: g */
    public final Consumer<? super Throwable> f95542g;

    /* renamed from: h */
    public final Action f95543h;

    /* renamed from: i */
    public final Action f95544i;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableDoOnEach$a */
    /* loaded from: classes10.dex */
    public static final class C17350a<T> extends BasicFuseableConditionalSubscriber<T, T> {

        /* renamed from: e */
        public final Consumer<? super T> f95545e;

        /* renamed from: f */
        public final Consumer<? super Throwable> f95546f;

        /* renamed from: g */
        public final Action f95547g;

        /* renamed from: h */
        public final Action f95548h;

        public C17350a(ConditionalSubscriber<? super T> actual, Consumer<? super T> onNext, Consumer<? super Throwable> onError, Action onComplete, Action onAfterTerminate) {
            super(actual);
            this.f95545e = onNext;
            this.f95546f = onError;
            this.f95547g = onComplete;
            this.f95548h = onAfterTerminate;
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.BasicFuseableConditionalSubscriber, org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            try {
                this.f95547g.run();
                this.done = true;
                this.downstream.onComplete();
                try {
                    this.f95548h.run();
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    RxJavaPlugins.onError(th);
                }
            } catch (Throwable th2) {
                fail(th2);
            }
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.BasicFuseableConditionalSubscriber, org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.done) {
                RxJavaPlugins.onError(t);
                return;
            }
            boolean z = true;
            this.done = true;
            try {
                this.f95546f.accept(t);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.downstream.onError(new CompositeException(t, th));
                z = false;
            }
            if (z) {
                this.downstream.onError(t);
            }
            try {
                this.f95548h.run();
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                RxJavaPlugins.onError(th2);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            if (this.sourceMode != 0) {
                this.downstream.onNext(null);
                return;
            }
            try {
                this.f95545e.accept(t);
                this.downstream.onNext(t);
            } catch (Throwable th) {
                fail(th);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public T poll() throws Throwable {
            try {
                T poll = this.f97404qs.poll();
                if (poll != null) {
                    try {
                        this.f95545e.accept(poll);
                    } catch (Throwable th) {
                        try {
                            Exceptions.throwIfFatal(th);
                            try {
                                this.f95546f.accept(th);
                                throw ExceptionHelper.throwIfThrowable(th);
                            } catch (Throwable th2) {
                                Exceptions.throwIfFatal(th2);
                                throw new CompositeException(th, th2);
                            }
                        } finally {
                            this.f95548h.run();
                        }
                    }
                } else if (this.sourceMode == 1) {
                    this.f95547g.run();
                }
                return poll;
            } catch (Throwable th3) {
                Exceptions.throwIfFatal(th3);
                try {
                    this.f95546f.accept(th3);
                    throw ExceptionHelper.throwIfThrowable(th3);
                } catch (Throwable th4) {
                    Exceptions.throwIfFatal(th4);
                    throw new CompositeException(th3, th4);
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
            try {
                this.f95545e.accept(t);
                return this.downstream.tryOnNext(t);
            } catch (Throwable th) {
                fail(th);
                return false;
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableDoOnEach$b */
    /* loaded from: classes10.dex */
    public static final class C17351b<T> extends BasicFuseableSubscriber<T, T> {

        /* renamed from: e */
        public final Consumer<? super T> f95549e;

        /* renamed from: f */
        public final Consumer<? super Throwable> f95550f;

        /* renamed from: g */
        public final Action f95551g;

        /* renamed from: h */
        public final Action f95552h;

        public C17351b(Subscriber<? super T> actual, Consumer<? super T> onNext, Consumer<? super Throwable> onError, Action onComplete, Action onAfterTerminate) {
            super(actual);
            this.f95549e = onNext;
            this.f95550f = onError;
            this.f95551g = onComplete;
            this.f95552h = onAfterTerminate;
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.BasicFuseableSubscriber, org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            try {
                this.f95551g.run();
                this.done = true;
                this.downstream.onComplete();
                try {
                    this.f95552h.run();
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    RxJavaPlugins.onError(th);
                }
            } catch (Throwable th2) {
                fail(th2);
            }
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.BasicFuseableSubscriber, org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.done) {
                RxJavaPlugins.onError(t);
                return;
            }
            boolean z = true;
            this.done = true;
            try {
                this.f95550f.accept(t);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.downstream.onError(new CompositeException(t, th));
                z = false;
            }
            if (z) {
                this.downstream.onError(t);
            }
            try {
                this.f95552h.run();
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                RxJavaPlugins.onError(th2);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            if (this.sourceMode != 0) {
                this.downstream.onNext(null);
                return;
            }
            try {
                this.f95549e.accept(t);
                this.downstream.onNext(t);
            } catch (Throwable th) {
                fail(th);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public T poll() throws Throwable {
            try {
                T poll = this.f97405qs.poll();
                if (poll != null) {
                    try {
                        this.f95549e.accept(poll);
                    } catch (Throwable th) {
                        try {
                            Exceptions.throwIfFatal(th);
                            try {
                                this.f95550f.accept(th);
                                throw ExceptionHelper.throwIfThrowable(th);
                            } catch (Throwable th2) {
                                Exceptions.throwIfFatal(th2);
                                throw new CompositeException(th, th2);
                            }
                        } finally {
                            this.f95552h.run();
                        }
                    }
                } else if (this.sourceMode == 1) {
                    this.f95551g.run();
                }
                return poll;
            } catch (Throwable th3) {
                Exceptions.throwIfFatal(th3);
                try {
                    this.f95550f.accept(th3);
                    throw ExceptionHelper.throwIfThrowable(th3);
                } catch (Throwable th4) {
                    Exceptions.throwIfFatal(th4);
                    throw new CompositeException(th3, th4);
                }
            }
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int mode) {
            return transitiveBoundaryFusion(mode);
        }
    }

    public FlowableDoOnEach(Flowable<T> source, Consumer<? super T> onNext, Consumer<? super Throwable> onError, Action onComplete, Action onAfterTerminate) {
        super(source);
        this.f95541f = onNext;
        this.f95542g = onError;
        this.f95543h = onComplete;
        this.f95544i = onAfterTerminate;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        if (s instanceof ConditionalSubscriber) {
            this.source.subscribe((FlowableSubscriber) new C17350a((ConditionalSubscriber) s, this.f95541f, this.f95542g, this.f95543h, this.f95544i));
        } else {
            this.source.subscribe((FlowableSubscriber) new C17351b(s, this.f95541f, this.f95542g, this.f95543h, this.f95544i));
        }
    }
}
