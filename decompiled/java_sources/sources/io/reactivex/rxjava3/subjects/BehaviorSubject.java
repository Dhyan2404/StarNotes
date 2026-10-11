package io.reactivex.rxjava3.subjects;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.annotations.CheckReturnValue;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes10.dex */
public final class BehaviorSubject<T> extends Subject<T> {

    /* renamed from: l */
    public static final C17646a[] f97591l = new C17646a[0];

    /* renamed from: m */
    public static final C17646a[] f97592m = new C17646a[0];

    /* renamed from: e */
    public final AtomicReference<Object> f97593e;

    /* renamed from: f */
    public final AtomicReference<C17646a<T>[]> f97594f;

    /* renamed from: g */
    public final ReadWriteLock f97595g;

    /* renamed from: h */
    public final Lock f97596h;

    /* renamed from: i */
    public final Lock f97597i;

    /* renamed from: j */
    public final AtomicReference<Throwable> f97598j;

    /* renamed from: k */
    public long f97599k;

    /* renamed from: io.reactivex.rxjava3.subjects.BehaviorSubject$a */
    /* loaded from: classes10.dex */
    public static final class C17646a<T> implements Disposable, AppendOnlyLinkedArrayList.NonThrowingPredicate<Object> {

        /* renamed from: e */
        public final Observer<? super T> f97600e;

        /* renamed from: f */
        public final BehaviorSubject<T> f97601f;

        /* renamed from: g */
        public boolean f97602g;

        /* renamed from: h */
        public boolean f97603h;

        /* renamed from: i */
        public AppendOnlyLinkedArrayList<Object> f97604i;

        /* renamed from: j */
        public boolean f97605j;

        /* renamed from: k */
        public volatile boolean f97606k;

        /* renamed from: l */
        public long f97607l;

        public C17646a(Observer<? super T> actual, BehaviorSubject<T> state) {
            this.f97600e = actual;
            this.f97601f = state;
        }

        /* renamed from: a */
        public void m61364a() {
            if (this.f97606k) {
                return;
            }
            synchronized (this) {
                if (this.f97606k) {
                    return;
                }
                if (this.f97602g) {
                    return;
                }
                BehaviorSubject<T> behaviorSubject = this.f97601f;
                Lock lock = behaviorSubject.f97596h;
                lock.lock();
                this.f97607l = behaviorSubject.f97599k;
                Object obj = behaviorSubject.f97593e.get();
                lock.unlock();
                this.f97603h = obj != null;
                this.f97602g = true;
                if (obj == null || test(obj)) {
                    return;
                }
                m61365b();
            }
        }

        /* renamed from: b */
        public void m61365b() {
            AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList;
            while (!this.f97606k) {
                synchronized (this) {
                    appendOnlyLinkedArrayList = this.f97604i;
                    if (appendOnlyLinkedArrayList == null) {
                        this.f97603h = false;
                        return;
                    }
                    this.f97604i = null;
                }
                appendOnlyLinkedArrayList.forEachWhile(this);
            }
        }

        /* renamed from: c */
        public void m61366c(Object value, long stateIndex) {
            if (this.f97606k) {
                return;
            }
            if (!this.f97605j) {
                synchronized (this) {
                    if (this.f97606k) {
                        return;
                    }
                    if (this.f97607l == stateIndex) {
                        return;
                    }
                    if (this.f97603h) {
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f97604i;
                        if (appendOnlyLinkedArrayList == null) {
                            appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                            this.f97604i = appendOnlyLinkedArrayList;
                        }
                        appendOnlyLinkedArrayList.add(value);
                        return;
                    }
                    this.f97602g = true;
                    this.f97605j = true;
                }
            }
            test(value);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.f97606k) {
                return;
            }
            this.f97606k = true;
            this.f97601f.m61360e(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f97606k;
        }

        @Override // io.reactivex.rxjava3.internal.util.AppendOnlyLinkedArrayList.NonThrowingPredicate, io.reactivex.rxjava3.functions.Predicate
        public boolean test(Object o) {
            return this.f97606k || NotificationLite.accept(o, this.f97600e);
        }
    }

    public BehaviorSubject(T defaultValue) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f97595g = reentrantReadWriteLock;
        this.f97596h = reentrantReadWriteLock.readLock();
        this.f97597i = reentrantReadWriteLock.writeLock();
        this.f97594f = new AtomicReference<>(f97591l);
        this.f97593e = new AtomicReference<>(defaultValue);
        this.f97598j = new AtomicReference<>();
    }

    @CheckReturnValue
    @NonNull
    public static <T> BehaviorSubject<T> create() {
        return new BehaviorSubject<>(null);
    }

    @CheckReturnValue
    @NonNull
    public static <T> BehaviorSubject<T> createDefault(T defaultValue) {
        Objects.requireNonNull(defaultValue, "defaultValue is null");
        return new BehaviorSubject<>(defaultValue);
    }

    /* renamed from: d */
    public boolean m61359d(C17646a<T> rs) {
        C17646a<T>[] c17646aArr;
        C17646a[] c17646aArr2;
        do {
            c17646aArr = this.f97594f.get();
            if (c17646aArr == f97592m) {
                return false;
            }
            int length = c17646aArr.length;
            c17646aArr2 = new C17646a[length + 1];
            System.arraycopy(c17646aArr, 0, c17646aArr2, 0, length);
            c17646aArr2[length] = rs;
        } while (!cyi.m53538a(this.f97594f, c17646aArr, c17646aArr2));
        return true;
    }

    /* renamed from: e */
    public void m61360e(C17646a<T> rs) {
        C17646a<T>[] c17646aArr;
        C17646a[] c17646aArr2;
        do {
            c17646aArr = this.f97594f.get();
            int length = c17646aArr.length;
            if (length == 0) {
                return;
            }
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (c17646aArr[i] == rs) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                c17646aArr2 = f97591l;
            } else {
                C17646a[] c17646aArr3 = new C17646a[length - 1];
                System.arraycopy(c17646aArr, 0, c17646aArr3, 0, i);
                System.arraycopy(c17646aArr, i + 1, c17646aArr3, i, (length - i) - 1);
                c17646aArr2 = c17646aArr3;
            }
        } while (!cyi.m53538a(this.f97594f, c17646aArr, c17646aArr2));
    }

    /* renamed from: f */
    public void m61361f(Object o) {
        this.f97597i.lock();
        this.f97599k++;
        this.f97593e.lazySet(o);
        this.f97597i.unlock();
    }

    @CheckReturnValue
    /* renamed from: g */
    public int m61362g() {
        return this.f97594f.get().length;
    }

    @Override // io.reactivex.rxjava3.subjects.Subject
    @CheckReturnValue
    @Nullable
    public Throwable getThrowable() {
        Object obj = this.f97593e.get();
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    @CheckReturnValue
    @Nullable
    public T getValue() {
        Object obj = this.f97593e.get();
        if (NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) {
            return null;
        }
        return (T) NotificationLite.getValue(obj);
    }

    /* renamed from: h */
    public C17646a<T>[] m61363h(Object terminalValue) {
        m61361f(terminalValue);
        return this.f97594f.getAndSet(f97592m);
    }

    @Override // io.reactivex.rxjava3.subjects.Subject
    @CheckReturnValue
    public boolean hasComplete() {
        return NotificationLite.isComplete(this.f97593e.get());
    }

    @Override // io.reactivex.rxjava3.subjects.Subject
    @CheckReturnValue
    public boolean hasObservers() {
        return this.f97594f.get().length != 0;
    }

    @Override // io.reactivex.rxjava3.subjects.Subject
    @CheckReturnValue
    public boolean hasThrowable() {
        return NotificationLite.isError(this.f97593e.get());
    }

    @CheckReturnValue
    public boolean hasValue() {
        Object obj = this.f97593e.get();
        return (obj == null || NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) ? false : true;
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onComplete() {
        if (cyi.m53538a(this.f97598j, null, ExceptionHelper.TERMINATED)) {
            Object complete = NotificationLite.complete();
            for (C17646a<T> c17646a : m61363h(complete)) {
                c17646a.m61366c(complete, this.f97599k);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onError(Throwable t) {
        ExceptionHelper.nullCheck(t, "onError called with a null Throwable.");
        if (!cyi.m53538a(this.f97598j, null, t)) {
            RxJavaPlugins.onError(t);
            return;
        }
        Object error = NotificationLite.error(t);
        for (C17646a<T> c17646a : m61363h(error)) {
            c17646a.m61366c(error, this.f97599k);
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onNext(T t) {
        ExceptionHelper.nullCheck(t, "onNext called with a null value.");
        if (this.f97598j.get() != null) {
            return;
        }
        Object next = NotificationLite.next(t);
        m61361f(next);
        for (C17646a<T> c17646a : this.f97594f.get()) {
            c17646a.m61366c(next, this.f97599k);
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onSubscribe(Disposable d) {
        if (this.f97598j.get() != null) {
            d.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        C17646a<T> c17646a = new C17646a<>(observer, this);
        observer.onSubscribe(c17646a);
        if (m61359d(c17646a)) {
            if (c17646a.f97606k) {
                m61360e(c17646a);
                return;
            } else {
                c17646a.m61364a();
                return;
            }
        }
        Throwable th = this.f97598j.get();
        if (th == ExceptionHelper.TERMINATED) {
            observer.onComplete();
        } else {
            observer.onError(th);
        }
    }
}
