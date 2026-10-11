package io.reactivex.rxjava3.subjects;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.annotations.CheckReturnValue;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.functions.ObjectHelper;
import io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.SimpleQueue;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class UnicastSubject<T> extends Subject<T> {

    /* renamed from: e */
    public final SpscLinkedArrayQueue<T> f97635e;

    /* renamed from: g */
    public final AtomicReference<Runnable> f97637g;

    /* renamed from: h */
    public final boolean f97638h;

    /* renamed from: i */
    public volatile boolean f97639i;

    /* renamed from: j */
    public volatile boolean f97640j;

    /* renamed from: k */
    public Throwable f97641k;

    /* renamed from: n */
    public boolean f97644n;

    /* renamed from: f */
    public final AtomicReference<Observer<? super T>> f97636f = new AtomicReference<>();

    /* renamed from: l */
    public final AtomicBoolean f97642l = new AtomicBoolean();

    /* renamed from: m */
    public final BasicIntQueueDisposable<T> f97643m = new UnicastQueueDisposable();

    /* loaded from: classes10.dex */
    public final class UnicastQueueDisposable extends BasicIntQueueDisposable<T> {
        private static final long serialVersionUID = 7926949470189395511L;

        public UnicastQueueDisposable() {
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public void clear() {
            UnicastSubject.this.f97635e.clear();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (UnicastSubject.this.f97639i) {
                return;
            }
            UnicastSubject.this.f97639i = true;
            UnicastSubject.this.m61384d();
            UnicastSubject.this.f97636f.lazySet(null);
            if (UnicastSubject.this.f97643m.getAndIncrement() == 0) {
                UnicastSubject.this.f97636f.lazySet(null);
                UnicastSubject unicastSubject = UnicastSubject.this;
                if (unicastSubject.f97644n) {
                    return;
                }
                unicastSubject.f97635e.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return UnicastSubject.this.f97639i;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public boolean isEmpty() {
            return UnicastSubject.this.f97635e.isEmpty();
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public T poll() {
            return UnicastSubject.this.f97635e.poll();
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int mode) {
            if ((mode & 2) == 0) {
                return 0;
            }
            UnicastSubject.this.f97644n = true;
            return 2;
        }
    }

    public UnicastSubject(int capacityHint, Runnable onTerminate, boolean delayError) {
        this.f97635e = new SpscLinkedArrayQueue<>(capacityHint);
        this.f97637g = new AtomicReference<>(onTerminate);
        this.f97638h = delayError;
    }

    @CheckReturnValue
    @NonNull
    public static <T> UnicastSubject<T> create() {
        return new UnicastSubject<>(Observable.bufferSize(), null, true);
    }

    /* renamed from: d */
    public void m61384d() {
        Runnable runnable = this.f97637g.get();
        if (runnable == null || !cyi.m53538a(this.f97637g, runnable, null)) {
            return;
        }
        runnable.run();
    }

    /* renamed from: e */
    public void m61385e() {
        if (this.f97643m.getAndIncrement() != 0) {
            return;
        }
        Observer<? super T> observer = this.f97636f.get();
        int i = 1;
        while (observer == null) {
            i = this.f97643m.addAndGet(-i);
            if (i == 0) {
                return;
            } else {
                observer = this.f97636f.get();
            }
        }
        if (this.f97644n) {
            m61386f(observer);
        } else {
            m61387g(observer);
        }
    }

    /* renamed from: f */
    public void m61386f(Observer<? super T> a) {
        SpscLinkedArrayQueue<T> spscLinkedArrayQueue = this.f97635e;
        int i = 1;
        boolean z = !this.f97638h;
        while (!this.f97639i) {
            boolean z2 = this.f97640j;
            if (z && z2 && m61389i(spscLinkedArrayQueue, a)) {
                return;
            }
            a.onNext(null);
            if (z2) {
                m61388h(a);
                return;
            } else {
                i = this.f97643m.addAndGet(-i);
                if (i == 0) {
                    return;
                }
            }
        }
        this.f97636f.lazySet(null);
    }

    /* renamed from: g */
    public void m61387g(Observer<? super T> observer) {
        SpscLinkedArrayQueue<T> spscLinkedArrayQueue = this.f97635e;
        boolean z = !this.f97638h;
        boolean z2 = true;
        int i = 1;
        while (!this.f97639i) {
            boolean z3 = this.f97640j;
            T poll = this.f97635e.poll();
            boolean z4 = poll == null;
            if (z3) {
                if (z && z2) {
                    if (m61389i(spscLinkedArrayQueue, observer)) {
                        return;
                    } else {
                        z2 = false;
                    }
                }
                if (z4) {
                    m61388h(observer);
                    return;
                }
            }
            if (z4) {
                i = this.f97643m.addAndGet(-i);
                if (i == 0) {
                    return;
                }
            } else {
                observer.onNext(poll);
            }
        }
        this.f97636f.lazySet(null);
        spscLinkedArrayQueue.clear();
    }

    @Override // io.reactivex.rxjava3.subjects.Subject
    @CheckReturnValue
    @Nullable
    public Throwable getThrowable() {
        if (this.f97640j) {
            return this.f97641k;
        }
        return null;
    }

    /* renamed from: h */
    public void m61388h(Observer<? super T> a) {
        this.f97636f.lazySet(null);
        Throwable th = this.f97641k;
        if (th != null) {
            a.onError(th);
        } else {
            a.onComplete();
        }
    }

    @Override // io.reactivex.rxjava3.subjects.Subject
    @CheckReturnValue
    public boolean hasComplete() {
        return this.f97640j && this.f97641k == null;
    }

    @Override // io.reactivex.rxjava3.subjects.Subject
    @CheckReturnValue
    public boolean hasObservers() {
        return this.f97636f.get() != null;
    }

    @Override // io.reactivex.rxjava3.subjects.Subject
    @CheckReturnValue
    public boolean hasThrowable() {
        return this.f97640j && this.f97641k != null;
    }

    /* renamed from: i */
    public boolean m61389i(final SimpleQueue<T> q, Observer<? super T> a) {
        Throwable th = this.f97641k;
        if (th == null) {
            return false;
        }
        this.f97636f.lazySet(null);
        q.clear();
        a.onError(th);
        return true;
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onComplete() {
        if (this.f97640j || this.f97639i) {
            return;
        }
        this.f97640j = true;
        m61384d();
        m61385e();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onError(Throwable t) {
        ExceptionHelper.nullCheck(t, "onError called with a null Throwable.");
        if (this.f97640j || this.f97639i) {
            RxJavaPlugins.onError(t);
            return;
        }
        this.f97641k = t;
        this.f97640j = true;
        m61384d();
        m61385e();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onNext(T t) {
        ExceptionHelper.nullCheck(t, "onNext called with a null value.");
        if (this.f97640j || this.f97639i) {
            return;
        }
        this.f97635e.offer(t);
        m61385e();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onSubscribe(Disposable d) {
        if (this.f97640j || this.f97639i) {
            d.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        if (this.f97642l.get() || !this.f97642l.compareAndSet(false, true)) {
            EmptyDisposable.error(new IllegalStateException("Only a single observer allowed."), observer);
            return;
        }
        observer.onSubscribe(this.f97643m);
        this.f97636f.lazySet(observer);
        if (this.f97639i) {
            this.f97636f.lazySet(null);
        } else {
            m61385e();
        }
    }

    @CheckReturnValue
    @NonNull
    public static <T> UnicastSubject<T> create(int capacityHint) {
        ObjectHelper.verifyPositive(capacityHint, "capacityHint");
        return new UnicastSubject<>(capacityHint, null, true);
    }

    @CheckReturnValue
    @NonNull
    public static <T> UnicastSubject<T> create(int capacityHint, @NonNull Runnable onTerminate) {
        ObjectHelper.verifyPositive(capacityHint, "capacityHint");
        Objects.requireNonNull(onTerminate, "onTerminate");
        return new UnicastSubject<>(capacityHint, onTerminate, true);
    }

    @CheckReturnValue
    @NonNull
    public static <T> UnicastSubject<T> create(int capacityHint, @NonNull Runnable onTerminate, boolean delayError) {
        ObjectHelper.verifyPositive(capacityHint, "capacityHint");
        Objects.requireNonNull(onTerminate, "onTerminate");
        return new UnicastSubject<>(capacityHint, onTerminate, delayError);
    }

    @CheckReturnValue
    @NonNull
    public static <T> UnicastSubject<T> create(boolean delayError) {
        return new UnicastSubject<>(Observable.bufferSize(), null, delayError);
    }
}
