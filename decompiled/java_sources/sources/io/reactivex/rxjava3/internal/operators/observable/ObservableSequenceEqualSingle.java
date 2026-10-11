package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiPredicate;
import io.reactivex.rxjava3.internal.disposables.ArrayCompositeDisposable;
import io.reactivex.rxjava3.internal.fuseable.FuseToObservable;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes10.dex */
public final class ObservableSequenceEqualSingle<T> extends Single<Boolean> implements FuseToObservable<Boolean> {

    /* renamed from: e */
    public final ObservableSource<? extends T> f96815e;

    /* renamed from: f */
    public final ObservableSource<? extends T> f96816f;

    /* renamed from: g */
    public final BiPredicate<? super T, ? super T> f96817g;

    /* renamed from: h */
    public final int f96818h;

    /* loaded from: classes10.dex */
    public static final class EqualCoordinator<T> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = -6178010334400373240L;
        volatile boolean cancelled;
        final BiPredicate<? super T, ? super T> comparer;
        final SingleObserver<? super Boolean> downstream;
        final ObservableSource<? extends T> first;
        final C17537a<T>[] observers;
        final ArrayCompositeDisposable resources;
        final ObservableSource<? extends T> second;

        /* renamed from: v1 */
        T f96819v1;

        /* renamed from: v2 */
        T f96820v2;

        public EqualCoordinator(SingleObserver<? super Boolean> actual, int bufferSize, ObservableSource<? extends T> first, ObservableSource<? extends T> second, BiPredicate<? super T, ? super T> comparer) {
            this.downstream = actual;
            this.first = first;
            this.second = second;
            this.comparer = comparer;
            this.observers = r3;
            C17537a<T>[] c17537aArr = {new C17537a<>(this, 0, bufferSize), new C17537a<>(this, 1, bufferSize)};
            this.resources = new ArrayCompositeDisposable(2);
        }

        public void cancel(SpscLinkedArrayQueue<T> q1, SpscLinkedArrayQueue<T> q2) {
            this.cancelled = true;
            q1.clear();
            q2.clear();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.resources.dispose();
            if (getAndIncrement() == 0) {
                C17537a<T>[] c17537aArr = this.observers;
                c17537aArr[0].f96822f.clear();
                c17537aArr[1].f96822f.clear();
            }
        }

        public void drain() {
            Throwable th;
            Throwable th2;
            if (getAndIncrement() != 0) {
                return;
            }
            C17537a<T>[] c17537aArr = this.observers;
            C17537a<T> c17537a = c17537aArr[0];
            SpscLinkedArrayQueue<T> spscLinkedArrayQueue = c17537a.f96822f;
            C17537a<T> c17537a2 = c17537aArr[1];
            SpscLinkedArrayQueue<T> spscLinkedArrayQueue2 = c17537a2.f96822f;
            int i = 1;
            while (!this.cancelled) {
                boolean z = c17537a.f96824h;
                if (z && (th2 = c17537a.f96825i) != null) {
                    cancel(spscLinkedArrayQueue, spscLinkedArrayQueue2);
                    this.downstream.onError(th2);
                    return;
                }
                boolean z2 = c17537a2.f96824h;
                if (z2 && (th = c17537a2.f96825i) != null) {
                    cancel(spscLinkedArrayQueue, spscLinkedArrayQueue2);
                    this.downstream.onError(th);
                    return;
                }
                if (this.f96819v1 == null) {
                    this.f96819v1 = spscLinkedArrayQueue.poll();
                }
                boolean z3 = this.f96819v1 == null;
                if (this.f96820v2 == null) {
                    this.f96820v2 = spscLinkedArrayQueue2.poll();
                }
                T t = this.f96820v2;
                boolean z4 = t == null;
                if (z && z2 && z3 && z4) {
                    this.downstream.onSuccess(Boolean.TRUE);
                    return;
                }
                if (z && z2 && z3 != z4) {
                    cancel(spscLinkedArrayQueue, spscLinkedArrayQueue2);
                    this.downstream.onSuccess(Boolean.FALSE);
                    return;
                }
                if (!z3 && !z4) {
                    try {
                        if (!this.comparer.test(this.f96819v1, t)) {
                            cancel(spscLinkedArrayQueue, spscLinkedArrayQueue2);
                            this.downstream.onSuccess(Boolean.FALSE);
                            return;
                        } else {
                            this.f96819v1 = null;
                            this.f96820v2 = null;
                        }
                    } catch (Throwable th3) {
                        Exceptions.throwIfFatal(th3);
                        cancel(spscLinkedArrayQueue, spscLinkedArrayQueue2);
                        this.downstream.onError(th3);
                        return;
                    }
                }
                if (z3 || z4) {
                    i = addAndGet(-i);
                    if (i == 0) {
                        return;
                    }
                }
            }
            spscLinkedArrayQueue.clear();
            spscLinkedArrayQueue2.clear();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        public boolean setDisposable(Disposable d, int index) {
            return this.resources.setResource(index, d);
        }

        public void subscribe() {
            C17537a<T>[] c17537aArr = this.observers;
            this.first.subscribe(c17537aArr[0]);
            this.second.subscribe(c17537aArr[1]);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableSequenceEqualSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17537a<T> implements Observer<T> {

        /* renamed from: e */
        public final EqualCoordinator<T> f96821e;

        /* renamed from: f */
        public final SpscLinkedArrayQueue<T> f96822f;

        /* renamed from: g */
        public final int f96823g;

        /* renamed from: h */
        public volatile boolean f96824h;

        /* renamed from: i */
        public Throwable f96825i;

        public C17537a(EqualCoordinator<T> parent, int index, int bufferSize) {
            this.f96821e = parent;
            this.f96823g = index;
            this.f96822f = new SpscLinkedArrayQueue<>(bufferSize);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96824h = true;
            this.f96821e.drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.f96825i = t;
            this.f96824h = true;
            this.f96821e.drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            this.f96822f.offer(t);
            this.f96821e.drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            this.f96821e.setDisposable(d, this.f96823g);
        }
    }

    public ObservableSequenceEqualSingle(ObservableSource<? extends T> first, ObservableSource<? extends T> second, BiPredicate<? super T, ? super T> comparer, int bufferSize) {
        this.f96815e = first;
        this.f96816f = second;
        this.f96817g = comparer;
        this.f96818h = bufferSize;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToObservable
    public Observable<Boolean> fuseToObservable() {
        return RxJavaPlugins.onAssembly(new ObservableSequenceEqual(this.f96815e, this.f96816f, this.f96817g, this.f96818h));
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super Boolean> observer) {
        EqualCoordinator equalCoordinator = new EqualCoordinator(observer, this.f96818h, this.f96815e, this.f96816f, this.f96817g);
        observer.onSubscribe(equalCoordinator);
        equalCoordinator.subscribe();
    }
}
