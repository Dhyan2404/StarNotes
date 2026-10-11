package io.reactivex.rxjava3.internal.operators.observable;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.fuseable.HasUpstreamObservableSource;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.observables.ConnectableObservable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import io.reactivex.rxjava3.schedulers.Timed;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class ObservableReplay<T> extends ConnectableObservable<T> implements HasUpstreamObservableSource<T> {

    /* renamed from: i */
    public static final InterfaceC17524a f96760i = new C17531h();

    /* renamed from: e */
    public final ObservableSource<T> f96761e;

    /* renamed from: f */
    public final AtomicReference<ReplayObserver<T>> f96762f;

    /* renamed from: g */
    public final InterfaceC17524a<T> f96763g;

    /* renamed from: h */
    public final ObservableSource<T> f96764h;

    /* loaded from: classes10.dex */
    public static abstract class BoundedReplayBuffer<T> extends AtomicReference<Node> implements InterfaceC17527d<T> {
        private static final long serialVersionUID = 2346567790059478686L;
        final boolean eagerTruncate;
        int size;
        Node tail;

        public BoundedReplayBuffer(boolean eagerTruncate) {
            this.eagerTruncate = eagerTruncate;
            Node node = new Node(null);
            this.tail = node;
            set(node);
        }

        public final void addLast(Node n) {
            this.tail.set(n);
            this.tail = n;
            this.size++;
        }

        public final void collect(Collection<? super T> collection) {
            Node head = getHead();
            while (true) {
                head = head.get();
                if (head == null) {
                    return;
                }
                Object leaveTransform = leaveTransform(head.value);
                if (NotificationLite.isComplete(leaveTransform) || NotificationLite.isError(leaveTransform)) {
                    return;
                } else {
                    collection.add((Object) NotificationLite.getValue(leaveTransform));
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.InterfaceC17527d
        public final void complete() {
            addLast(new Node(enterTransform(NotificationLite.complete())));
            truncateFinal();
        }

        public Object enterTransform(Object value) {
            return value;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.InterfaceC17527d
        public final void error(Throwable e) {
            addLast(new Node(enterTransform(NotificationLite.error(e))));
            truncateFinal();
        }

        public Node getHead() {
            return get();
        }

        public boolean hasCompleted() {
            Object obj = this.tail.value;
            return obj != null && NotificationLite.isComplete(leaveTransform(obj));
        }

        public boolean hasError() {
            Object obj = this.tail.value;
            return obj != null && NotificationLite.isError(leaveTransform(obj));
        }

        public Object leaveTransform(Object value) {
            return value;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.InterfaceC17527d
        public final void next(T value) {
            addLast(new Node(enterTransform(NotificationLite.next(value))));
            truncate();
        }

        public final void removeFirst() {
            this.size--;
            setFirst(get().get());
        }

        public final void removeSome(int n) {
            Node node = get();
            while (n > 0) {
                node = node.get();
                n--;
                this.size--;
            }
            setFirst(node);
            Node node2 = get();
            if (node2.get() == null) {
                this.tail = node2;
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.InterfaceC17527d
        public final void replay(InnerDisposable<T> output) {
            if (output.getAndIncrement() != 0) {
                return;
            }
            int i = 1;
            do {
                Node node = (Node) output.index();
                if (node == null) {
                    node = getHead();
                    output.index = node;
                }
                while (!output.isDisposed()) {
                    Node node2 = node.get();
                    if (node2 == null) {
                        output.index = node;
                        i = output.addAndGet(-i);
                    } else {
                        if (NotificationLite.accept(leaveTransform(node2.value), output.child)) {
                            output.index = null;
                            return;
                        }
                        node = node2;
                    }
                }
                output.index = null;
                return;
            } while (i != 0);
        }

        public final void setFirst(Node n) {
            if (this.eagerTruncate) {
                Node node = new Node(null);
                node.lazySet(n.get());
                n = node;
            }
            set(n);
        }

        public final void trimHead() {
            Node node = get();
            if (node.value != null) {
                Node node2 = new Node(null);
                node2.lazySet(node.get());
                set(node2);
            }
        }

        public abstract void truncate();

        public void truncateFinal() {
            trimHead();
        }
    }

    /* loaded from: classes10.dex */
    public static final class InnerDisposable<T> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 2728361546769921047L;
        volatile boolean cancelled;
        final Observer<? super T> child;
        Object index;
        final ReplayObserver<T> parent;

        public InnerDisposable(ReplayObserver<T> parent, Observer<? super T> child) {
            this.parent = parent;
            this.child = child;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.parent.remove(this);
            this.index = null;
        }

        public <U> U index() {
            return (U) this.index;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }
    }

    /* loaded from: classes10.dex */
    public static final class Node extends AtomicReference<Node> {
        private static final long serialVersionUID = 245354315435971818L;
        final Object value;

        public Node(Object value) {
            this.value = value;
        }
    }

    /* loaded from: classes10.dex */
    public static final class ReplayObserver<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable {
        static final InnerDisposable[] EMPTY = new InnerDisposable[0];
        static final InnerDisposable[] TERMINATED = new InnerDisposable[0];
        private static final long serialVersionUID = -533785617179540163L;
        final InterfaceC17527d<T> buffer;
        final AtomicReference<ReplayObserver<T>> current;
        boolean done;
        final AtomicReference<InnerDisposable[]> observers = new AtomicReference<>(EMPTY);
        final AtomicBoolean shouldConnect = new AtomicBoolean();

        public ReplayObserver(InterfaceC17527d<T> buffer, AtomicReference<ReplayObserver<T>> current) {
            this.buffer = buffer;
            this.current = current;
        }

        public boolean add(InnerDisposable<T> producer) {
            InnerDisposable[] innerDisposableArr;
            InnerDisposable[] innerDisposableArr2;
            do {
                innerDisposableArr = this.observers.get();
                if (innerDisposableArr == TERMINATED) {
                    return false;
                }
                int length = innerDisposableArr.length;
                innerDisposableArr2 = new InnerDisposable[length + 1];
                System.arraycopy(innerDisposableArr, 0, innerDisposableArr2, 0, length);
                innerDisposableArr2[length] = producer;
            } while (!cyi.m53538a(this.observers, innerDisposableArr, innerDisposableArr2));
            return true;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.observers.set(TERMINATED);
            cyi.m53538a(this.current, this, null);
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.observers.get() == TERMINATED;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            this.buffer.complete();
            replayFinal();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable e) {
            if (this.done) {
                RxJavaPlugins.onError(e);
                return;
            }
            this.done = true;
            this.buffer.error(e);
            replayFinal();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            this.buffer.next(t);
            replay();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable p) {
            if (DisposableHelper.setOnce(this, p)) {
                replay();
            }
        }

        public void remove(InnerDisposable<T> producer) {
            InnerDisposable[] innerDisposableArr;
            InnerDisposable[] innerDisposableArr2;
            do {
                innerDisposableArr = this.observers.get();
                int length = innerDisposableArr.length;
                if (length == 0) {
                    return;
                }
                int i = 0;
                while (true) {
                    if (i >= length) {
                        i = -1;
                        break;
                    } else if (innerDisposableArr[i].equals(producer)) {
                        break;
                    } else {
                        i++;
                    }
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    innerDisposableArr2 = EMPTY;
                } else {
                    InnerDisposable[] innerDisposableArr3 = new InnerDisposable[length - 1];
                    System.arraycopy(innerDisposableArr, 0, innerDisposableArr3, 0, i);
                    System.arraycopy(innerDisposableArr, i + 1, innerDisposableArr3, i, (length - i) - 1);
                    innerDisposableArr2 = innerDisposableArr3;
                }
            } while (!cyi.m53538a(this.observers, innerDisposableArr, innerDisposableArr2));
        }

        public void replay() {
            for (InnerDisposable<T> innerDisposable : this.observers.get()) {
                this.buffer.replay(innerDisposable);
            }
        }

        public void replayFinal() {
            for (InnerDisposable<T> innerDisposable : this.observers.getAndSet(TERMINATED)) {
                this.buffer.replay(innerDisposable);
            }
        }
    }

    /* loaded from: classes10.dex */
    public static final class SizeAndTimeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = 3457957419649567404L;
        final int limit;
        final long maxAge;
        final Scheduler scheduler;
        final TimeUnit unit;

        public SizeAndTimeBoundReplayBuffer(int limit, long maxAge, TimeUnit unit, Scheduler scheduler, boolean eagerTruncate) {
            super(eagerTruncate);
            this.scheduler = scheduler;
            this.limit = limit;
            this.maxAge = maxAge;
            this.unit = unit;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        public Object enterTransform(Object value) {
            return new Timed(value, this.scheduler.now(this.unit), this.unit);
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        public Node getHead() {
            Node node;
            long now = this.scheduler.now(this.unit) - this.maxAge;
            Node node2 = get();
            Node node3 = node2.get();
            while (true) {
                Node node4 = node3;
                node = node2;
                node2 = node4;
                if (node2 != null) {
                    Timed timed = (Timed) node2.value;
                    if (NotificationLite.isComplete(timed.value()) || NotificationLite.isError(timed.value()) || timed.time() > now) {
                        break;
                    }
                    node3 = node2.get();
                } else {
                    break;
                }
            }
            return node;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        public Object leaveTransform(Object value) {
            return ((Timed) value).value();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        public void truncate() {
            Node node;
            long now = this.scheduler.now(this.unit) - this.maxAge;
            Node node2 = get();
            Node node3 = node2.get();
            int i = 0;
            while (true) {
                Node node4 = node3;
                node = node2;
                node2 = node4;
                int i2 = this.size;
                if (i2 > 1) {
                    if (i2 <= this.limit) {
                        if (((Timed) node2.value).time() > now) {
                            break;
                        }
                        i++;
                        this.size--;
                        node3 = node2.get();
                    } else {
                        i++;
                        this.size = i2 - 1;
                        node3 = node2.get();
                    }
                } else {
                    break;
                }
            }
            if (i != 0) {
                setFirst(node);
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        public void truncateFinal() {
            Node node;
            long now = this.scheduler.now(this.unit) - this.maxAge;
            Node node2 = get();
            Node node3 = node2.get();
            int i = 0;
            while (true) {
                Node node4 = node3;
                node = node2;
                node2 = node4;
                if (this.size <= 1 || ((Timed) node2.value).time() > now) {
                    break;
                }
                i++;
                this.size--;
                node3 = node2.get();
            }
            if (i != 0) {
                setFirst(node);
            }
        }
    }

    /* loaded from: classes10.dex */
    public static final class SizeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = -5898283885385201806L;
        final int limit;

        public SizeBoundReplayBuffer(int limit, boolean eagerTruncate) {
            super(eagerTruncate);
            this.limit = limit;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        public void truncate() {
            if (this.size > this.limit) {
                removeFirst();
            }
        }
    }

    /* loaded from: classes10.dex */
    public static final class UnboundedReplayBuffer<T> extends ArrayList<Object> implements InterfaceC17527d<T> {
        private static final long serialVersionUID = 7063189396499112664L;
        volatile int size;

        public UnboundedReplayBuffer(int capacityHint) {
            super(capacityHint);
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.InterfaceC17527d
        public void complete() {
            add(NotificationLite.complete());
            this.size++;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.InterfaceC17527d
        public void error(Throwable e) {
            add(NotificationLite.error(e));
            this.size++;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.InterfaceC17527d
        public void next(T value) {
            add(NotificationLite.next(value));
            this.size++;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.InterfaceC17527d
        public void replay(InnerDisposable<T> output) {
            if (output.getAndIncrement() != 0) {
                return;
            }
            Observer<? super T> observer = output.child;
            int i = 1;
            while (!output.isDisposed()) {
                int i2 = this.size;
                Integer num = (Integer) output.index();
                int intValue = num != null ? num.intValue() : 0;
                while (intValue < i2) {
                    if (NotificationLite.accept(get(intValue), observer) || output.isDisposed()) {
                        return;
                    } else {
                        intValue++;
                    }
                }
                output.index = Integer.valueOf(intValue);
                i = output.addAndGet(-i);
                if (i == 0) {
                    return;
                }
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableReplay$a */
    /* loaded from: classes10.dex */
    public interface InterfaceC17524a<T> {
        InterfaceC17527d<T> call();
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableReplay$b */
    /* loaded from: classes10.dex */
    public static final class C17525b<R> implements Consumer<Disposable> {

        /* renamed from: e */
        public final ObserverResourceWrapper<R> f96765e;

        public C17525b(ObserverResourceWrapper<R> srw) {
            this.f96765e = srw;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(Disposable r) {
            this.f96765e.setResource(r);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableReplay$c */
    /* loaded from: classes10.dex */
    public static final class C17526c<R, U> extends Observable<R> {

        /* renamed from: e */
        public final Supplier<? extends ConnectableObservable<U>> f96766e;

        /* renamed from: f */
        public final Function<? super Observable<U>, ? extends ObservableSource<R>> f96767f;

        public C17526c(Supplier<? extends ConnectableObservable<U>> connectableFactory, Function<? super Observable<U>, ? extends ObservableSource<R>> selector) {
            this.f96766e = connectableFactory;
            this.f96767f = selector;
        }

        @Override // io.reactivex.rxjava3.core.Observable
        public void subscribeActual(Observer<? super R> observer) {
            try {
                ConnectableObservable<U> connectableObservable = this.f96766e.get();
                Objects.requireNonNull(connectableObservable, "The connectableFactory returned a null ConnectableObservable");
                ConnectableObservable<U> connectableObservable2 = connectableObservable;
                ObservableSource<R> apply = this.f96767f.apply(connectableObservable2);
                Objects.requireNonNull(apply, "The selector returned a null ObservableSource");
                ObservableSource<R> observableSource = apply;
                ObserverResourceWrapper observerResourceWrapper = new ObserverResourceWrapper(observer);
                observableSource.subscribe(observerResourceWrapper);
                connectableObservable2.connect(new C17525b(observerResourceWrapper));
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                EmptyDisposable.error(th, observer);
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableReplay$d */
    /* loaded from: classes10.dex */
    public interface InterfaceC17527d<T> {
        void complete();

        void error(Throwable e);

        void next(T value);

        void replay(InnerDisposable<T> output);
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableReplay$e */
    /* loaded from: classes10.dex */
    public static final class C17528e<T> implements InterfaceC17524a<T> {

        /* renamed from: a */
        public final int f96768a;

        /* renamed from: b */
        public final boolean f96769b;

        public C17528e(int bufferSize, boolean eagerTruncate) {
            this.f96768a = bufferSize;
            this.f96769b = eagerTruncate;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.InterfaceC17524a
        public InterfaceC17527d<T> call() {
            return new SizeBoundReplayBuffer(this.f96768a, this.f96769b);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableReplay$f */
    /* loaded from: classes10.dex */
    public static final class C17529f<T> implements ObservableSource<T> {

        /* renamed from: e */
        public final AtomicReference<ReplayObserver<T>> f96770e;

        /* renamed from: f */
        public final InterfaceC17524a<T> f96771f;

        public C17529f(AtomicReference<ReplayObserver<T>> curr, InterfaceC17524a<T> bufferFactory) {
            this.f96770e = curr;
            this.f96771f = bufferFactory;
        }

        @Override // io.reactivex.rxjava3.core.ObservableSource
        public void subscribe(Observer<? super T> child) {
            ReplayObserver<T> replayObserver;
            while (true) {
                replayObserver = this.f96770e.get();
                if (replayObserver != null) {
                    break;
                }
                ReplayObserver<T> replayObserver2 = new ReplayObserver<>(this.f96771f.call(), this.f96770e);
                if (cyi.m53538a(this.f96770e, null, replayObserver2)) {
                    replayObserver = replayObserver2;
                    break;
                }
            }
            InnerDisposable<T> innerDisposable = new InnerDisposable<>(replayObserver, child);
            child.onSubscribe(innerDisposable);
            replayObserver.add(innerDisposable);
            if (innerDisposable.isDisposed()) {
                replayObserver.remove(innerDisposable);
            } else {
                replayObserver.buffer.replay(innerDisposable);
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableReplay$g */
    /* loaded from: classes10.dex */
    public static final class C17530g<T> implements InterfaceC17524a<T> {

        /* renamed from: a */
        public final int f96772a;

        /* renamed from: b */
        public final long f96773b;

        /* renamed from: c */
        public final TimeUnit f96774c;

        /* renamed from: d */
        public final Scheduler f96775d;

        /* renamed from: e */
        public final boolean f96776e;

        public C17530g(int bufferSize, long maxAge, TimeUnit unit, Scheduler scheduler, boolean eagerTruncate) {
            this.f96772a = bufferSize;
            this.f96773b = maxAge;
            this.f96774c = unit;
            this.f96775d = scheduler;
            this.f96776e = eagerTruncate;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.InterfaceC17524a
        public InterfaceC17527d<T> call() {
            return new SizeAndTimeBoundReplayBuffer(this.f96772a, this.f96773b, this.f96774c, this.f96775d, this.f96776e);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableReplay$h */
    /* loaded from: classes10.dex */
    public static final class C17531h implements InterfaceC17524a<Object> {
        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableReplay.InterfaceC17524a
        public InterfaceC17527d<Object> call() {
            return new UnboundedReplayBuffer(16);
        }
    }

    public ObservableReplay(ObservableSource<T> onSubscribe, ObservableSource<T> source, final AtomicReference<ReplayObserver<T>> current, final InterfaceC17524a<T> bufferFactory) {
        this.f96764h = onSubscribe;
        this.f96761e = source;
        this.f96762f = current;
        this.f96763g = bufferFactory;
    }

    public static <T> ConnectableObservable<T> create(ObservableSource<T> source, final int bufferSize, boolean eagerTruncate) {
        if (bufferSize == Integer.MAX_VALUE) {
            return createFrom(source);
        }
        return m61252d(source, new C17528e(bufferSize, eagerTruncate));
    }

    public static <T> ConnectableObservable<T> createFrom(ObservableSource<? extends T> source) {
        return m61252d(source, f96760i);
    }

    /* renamed from: d */
    public static <T> ConnectableObservable<T> m61252d(ObservableSource<T> source, final InterfaceC17524a<T> bufferFactory) {
        AtomicReference atomicReference = new AtomicReference();
        return RxJavaPlugins.onAssembly((ConnectableObservable) new ObservableReplay(new C17529f(atomicReference, bufferFactory), source, atomicReference, bufferFactory));
    }

    public static <U, R> Observable<R> multicastSelector(final Supplier<? extends ConnectableObservable<U>> connectableFactory, final Function<? super Observable<U>, ? extends ObservableSource<R>> selector) {
        return RxJavaPlugins.onAssembly(new C17526c(connectableFactory, selector));
    }

    @Override // io.reactivex.rxjava3.observables.ConnectableObservable
    public void connect(Consumer<? super Disposable> connection) {
        ReplayObserver<T> replayObserver;
        while (true) {
            replayObserver = this.f96762f.get();
            if (replayObserver != null && !replayObserver.isDisposed()) {
                break;
            }
            ReplayObserver<T> replayObserver2 = new ReplayObserver<>(this.f96763g.call(), this.f96762f);
            if (cyi.m53538a(this.f96762f, replayObserver, replayObserver2)) {
                replayObserver = replayObserver2;
                break;
            }
        }
        boolean z = !replayObserver.shouldConnect.get() && replayObserver.shouldConnect.compareAndSet(false, true);
        try {
            connection.accept(replayObserver);
            if (z) {
                this.f96761e.subscribe(replayObserver);
            }
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            if (z) {
                replayObserver.shouldConnect.compareAndSet(true, false);
            }
            Exceptions.throwIfFatal(th);
            throw ExceptionHelper.wrapOrThrow(th);
        }
    }

    @Override // io.reactivex.rxjava3.observables.ConnectableObservable
    public void reset() {
        ReplayObserver<T> replayObserver = this.f96762f.get();
        if (replayObserver == null || !replayObserver.isDisposed()) {
            return;
        }
        cyi.m53538a(this.f96762f, replayObserver, null);
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.HasUpstreamObservableSource
    public ObservableSource<T> source() {
        return this.f96761e;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f96764h.subscribe(observer);
    }

    public static <T> ConnectableObservable<T> create(ObservableSource<T> source, long maxAge, TimeUnit unit, Scheduler scheduler, boolean eagerTruncate) {
        return create(source, maxAge, unit, scheduler, Integer.MAX_VALUE, eagerTruncate);
    }

    public static <T> ConnectableObservable<T> create(ObservableSource<T> source, final long maxAge, final TimeUnit unit, final Scheduler scheduler, final int bufferSize, boolean eagerTruncate) {
        return m61252d(source, new C17530g(bufferSize, maxAge, unit, scheduler, eagerTruncate));
    }
}
