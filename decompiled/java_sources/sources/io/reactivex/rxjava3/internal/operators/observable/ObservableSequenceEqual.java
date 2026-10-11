package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiPredicate;
import io.reactivex.rxjava3.internal.disposables.ArrayCompositeDisposable;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes10.dex */
public final class ObservableSequenceEqual<T> extends Observable<Boolean> {

    /* renamed from: e */
    public final ObservableSource<? extends T> f96804e;

    /* renamed from: f */
    public final ObservableSource<? extends T> f96805f;

    /* renamed from: g */
    public final BiPredicate<? super T, ? super T> f96806g;

    /* renamed from: h */
    public final int f96807h;

    /* loaded from: classes10.dex */
    public static final class EqualCoordinator<T> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = -6178010334400373240L;
        volatile boolean cancelled;
        final BiPredicate<? super T, ? super T> comparer;
        final Observer<? super Boolean> downstream;
        final ObservableSource<? extends T> first;
        final C17536a<T>[] observers;
        final ArrayCompositeDisposable resources;
        final ObservableSource<? extends T> second;

        /* renamed from: v1 */
        T f96808v1;

        /* renamed from: v2 */
        T f96809v2;

        public EqualCoordinator(Observer<? super Boolean> actual, int bufferSize, ObservableSource<? extends T> first, ObservableSource<? extends T> second, BiPredicate<? super T, ? super T> comparer) {
            this.downstream = actual;
            this.first = first;
            this.second = second;
            this.comparer = comparer;
            this.observers = r3;
            C17536a<T>[] c17536aArr = {new C17536a<>(this, 0, bufferSize), new C17536a<>(this, 1, bufferSize)};
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
                C17536a<T>[] c17536aArr = this.observers;
                c17536aArr[0].f96811f.clear();
                c17536aArr[1].f96811f.clear();
            }
        }

        public void drain() {
            Throwable th;
            Throwable th2;
            if (getAndIncrement() != 0) {
                return;
            }
            C17536a<T>[] c17536aArr = this.observers;
            C17536a<T> c17536a = c17536aArr[0];
            SpscLinkedArrayQueue<T> spscLinkedArrayQueue = c17536a.f96811f;
            C17536a<T> c17536a2 = c17536aArr[1];
            SpscLinkedArrayQueue<T> spscLinkedArrayQueue2 = c17536a2.f96811f;
            int i = 1;
            while (!this.cancelled) {
                boolean z = c17536a.f96813h;
                if (z && (th2 = c17536a.f96814i) != null) {
                    cancel(spscLinkedArrayQueue, spscLinkedArrayQueue2);
                    this.downstream.onError(th2);
                    return;
                }
                boolean z2 = c17536a2.f96813h;
                if (z2 && (th = c17536a2.f96814i) != null) {
                    cancel(spscLinkedArrayQueue, spscLinkedArrayQueue2);
                    this.downstream.onError(th);
                    return;
                }
                if (this.f96808v1 == null) {
                    this.f96808v1 = spscLinkedArrayQueue.poll();
                }
                boolean z3 = this.f96808v1 == null;
                if (this.f96809v2 == null) {
                    this.f96809v2 = spscLinkedArrayQueue2.poll();
                }
                T t = this.f96809v2;
                boolean z4 = t == null;
                if (z && z2 && z3 && z4) {
                    this.downstream.onNext(Boolean.TRUE);
                    this.downstream.onComplete();
                    return;
                }
                if (z && z2 && z3 != z4) {
                    cancel(spscLinkedArrayQueue, spscLinkedArrayQueue2);
                    this.downstream.onNext(Boolean.FALSE);
                    this.downstream.onComplete();
                    return;
                }
                if (!z3 && !z4) {
                    try {
                        if (!this.comparer.test(this.f96808v1, t)) {
                            cancel(spscLinkedArrayQueue, spscLinkedArrayQueue2);
                            this.downstream.onNext(Boolean.FALSE);
                            this.downstream.onComplete();
                            return;
                        }
                        this.f96808v1 = null;
                        this.f96809v2 = null;
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
            C17536a<T>[] c17536aArr = this.observers;
            this.first.subscribe(c17536aArr[0]);
            this.second.subscribe(c17536aArr[1]);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableSequenceEqual$a */
    /* loaded from: classes10.dex */
    public static final class C17536a<T> implements Observer<T> {

        /* renamed from: e */
        public final EqualCoordinator<T> f96810e;

        /* renamed from: f */
        public final SpscLinkedArrayQueue<T> f96811f;

        /* renamed from: g */
        public final int f96812g;

        /* renamed from: h */
        public volatile boolean f96813h;

        /* renamed from: i */
        public Throwable f96814i;

        public C17536a(EqualCoordinator<T> parent, int index, int bufferSize) {
            this.f96810e = parent;
            this.f96812g = index;
            this.f96811f = new SpscLinkedArrayQueue<>(bufferSize);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96813h = true;
            this.f96810e.drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.f96814i = t;
            this.f96813h = true;
            this.f96810e.drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            this.f96811f.offer(t);
            this.f96810e.drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            this.f96810e.setDisposable(d, this.f96812g);
        }
    }

    public ObservableSequenceEqual(ObservableSource<? extends T> first, ObservableSource<? extends T> second, BiPredicate<? super T, ? super T> comparer, int bufferSize) {
        this.f96804e = first;
        this.f96805f = second;
        this.f96806g = comparer;
        this.f96807h = bufferSize;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super Boolean> observer) {
        EqualCoordinator equalCoordinator = new EqualCoordinator(observer, this.f96807h, this.f96804e, this.f96805f, this.f96806g);
        observer.onSubscribe(equalCoordinator);
        equalCoordinator.subscribe();
    }
}
