package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.flowables.ConnectableFlowable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.fuseable.HasUpstreamPublisher;
import io.reactivex.rxjava3.internal.subscribers.SubscriberResourceWrapper;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.BackpressureHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import io.reactivex.rxjava3.schedulers.Timed;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableReplay<T> extends ConnectableFlowable<T> implements HasUpstreamPublisher<T> {

    /* renamed from: j */
    public static final Supplier f95793j = new C17386a();

    /* renamed from: f */
    public final Flowable<T> f95794f;

    /* renamed from: g */
    public final AtomicReference<ReplaySubscriber<T>> f95795g;

    /* renamed from: h */
    public final Supplier<? extends InterfaceC17388c<T>> f95796h;

    /* renamed from: i */
    public final Publisher<T> f95797i;

    /* loaded from: classes10.dex */
    public static abstract class BoundedReplayBuffer<T> extends AtomicReference<Node> implements InterfaceC17388c<T> {
        private static final long serialVersionUID = 2346567790059478686L;
        final boolean eagerTruncate;
        long index;
        int size;
        Node tail;

        public BoundedReplayBuffer(boolean eagerTruncate) {
            this.eagerTruncate = eagerTruncate;
            Node node = new Node(null, 0L);
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

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay.InterfaceC17388c
        public final void complete() {
            Object enterTransform = enterTransform(NotificationLite.complete(), true);
            long j = this.index + 1;
            this.index = j;
            addLast(new Node(enterTransform, j));
            truncateFinal();
        }

        public Object enterTransform(Object value, boolean terminal) {
            return value;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay.InterfaceC17388c
        public final void error(Throwable e) {
            Object enterTransform = enterTransform(NotificationLite.error(e), true);
            long j = this.index + 1;
            this.index = j;
            addLast(new Node(enterTransform, j));
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

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay.InterfaceC17388c
        public final void next(T value) {
            Object enterTransform = enterTransform(NotificationLite.next(value), false);
            long j = this.index + 1;
            this.index = j;
            addLast(new Node(enterTransform, j));
            truncate();
        }

        public final void removeFirst() {
            Node node = get().get();
            if (node == null) {
                throw new IllegalStateException("Empty list!");
            }
            this.size--;
            setFirst(node);
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

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay.InterfaceC17388c
        public final void replay(InnerSubscription<T> output) {
            synchronized (output) {
                if (output.emitting) {
                    output.missed = true;
                    return;
                }
                output.emitting = true;
                while (true) {
                    long j = output.get();
                    boolean z = j == Long.MAX_VALUE;
                    Node node = (Node) output.index();
                    if (node == null) {
                        node = getHead();
                        output.index = node;
                        BackpressureHelper.add(output.totalRequested, node.index);
                    }
                    long j2 = 0;
                    while (j != 0) {
                        if (!output.isDisposed()) {
                            Node node2 = node.get();
                            if (node2 == null) {
                                break;
                            }
                            Object leaveTransform = leaveTransform(node2.value);
                            try {
                                if (NotificationLite.accept(leaveTransform, output.child)) {
                                    output.index = null;
                                    return;
                                } else {
                                    j2++;
                                    j--;
                                    node = node2;
                                }
                            } catch (Throwable th) {
                                Exceptions.throwIfFatal(th);
                                output.index = null;
                                output.dispose();
                                if (NotificationLite.isError(leaveTransform) || NotificationLite.isComplete(leaveTransform)) {
                                    RxJavaPlugins.onError(th);
                                    return;
                                } else {
                                    output.child.onError(th);
                                    return;
                                }
                            }
                        } else {
                            output.index = null;
                            return;
                        }
                    }
                    if (j == 0 && output.isDisposed()) {
                        output.index = null;
                        return;
                    }
                    if (j2 != 0) {
                        output.index = node;
                        if (!z) {
                            output.produced(j2);
                        }
                    }
                    synchronized (output) {
                        if (!output.missed) {
                            output.emitting = false;
                            return;
                        }
                        output.missed = false;
                    }
                }
            }
        }

        public final void setFirst(Node n) {
            if (this.eagerTruncate) {
                Node node = new Node(null, n.index);
                node.lazySet(n.get());
                n = node;
            }
            set(n);
        }

        public final void trimHead() {
            Node node = get();
            if (node.value != null) {
                Node node2 = new Node(null, 0L);
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
    public static final class InnerSubscription<T> extends AtomicLong implements Subscription, Disposable {
        static final long CANCELLED = Long.MIN_VALUE;
        private static final long serialVersionUID = -4453897557930727610L;
        final Subscriber<? super T> child;
        boolean emitting;
        Object index;
        boolean missed;
        final ReplaySubscriber<T> parent;
        final AtomicLong totalRequested = new AtomicLong();

        public InnerSubscription(ReplaySubscriber<T> parent, Subscriber<? super T> child) {
            this.parent = parent;
            this.child = child;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.remove(this);
                this.parent.manageRequests();
                this.index = null;
            }
        }

        public <U> U index() {
            return (U) this.index;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return get() == Long.MIN_VALUE;
        }

        public long produced(long n) {
            return BackpressureHelper.producedCancel(this, n);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            if (!SubscriptionHelper.validate(n) || BackpressureHelper.addCancel(this, n) == Long.MIN_VALUE) {
                return;
            }
            BackpressureHelper.add(this.totalRequested, n);
            this.parent.manageRequests();
            this.parent.buffer.replay(this);
        }
    }

    /* loaded from: classes10.dex */
    public static final class Node extends AtomicReference<Node> {
        private static final long serialVersionUID = 245354315435971818L;
        final long index;
        final Object value;

        public Node(Object value, long index) {
            this.value = value;
            this.index = index;
        }
    }

    /* loaded from: classes10.dex */
    public static final class ReplaySubscriber<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T>, Disposable {
        static final InnerSubscription[] EMPTY = new InnerSubscription[0];
        static final InnerSubscription[] TERMINATED = new InnerSubscription[0];
        private static final long serialVersionUID = 7224554242710036740L;
        final InterfaceC17388c<T> buffer;
        final AtomicReference<ReplaySubscriber<T>> current;
        boolean done;
        long requestedFromUpstream;
        final AtomicInteger management = new AtomicInteger();
        final AtomicReference<InnerSubscription<T>[]> subscribers = new AtomicReference<>(EMPTY);
        final AtomicBoolean shouldConnect = new AtomicBoolean();

        public ReplaySubscriber(InterfaceC17388c<T> buffer, AtomicReference<ReplaySubscriber<T>> current) {
            this.buffer = buffer;
            this.current = current;
        }

        public boolean add(InnerSubscription<T> producer) {
            InnerSubscription<T>[] innerSubscriptionArr;
            InnerSubscription[] innerSubscriptionArr2;
            do {
                innerSubscriptionArr = this.subscribers.get();
                if (innerSubscriptionArr == TERMINATED) {
                    return false;
                }
                int length = innerSubscriptionArr.length;
                innerSubscriptionArr2 = new InnerSubscription[length + 1];
                System.arraycopy(innerSubscriptionArr, 0, innerSubscriptionArr2, 0, length);
                innerSubscriptionArr2[length] = producer;
            } while (!cyi.m53538a(this.subscribers, innerSubscriptionArr, innerSubscriptionArr2));
            return true;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.subscribers.set(TERMINATED);
            cyi.m53538a(this.current, this, null);
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.subscribers.get() == TERMINATED;
        }

        public void manageRequests() {
            AtomicInteger atomicInteger = this.management;
            if (atomicInteger.getAndIncrement() != 0) {
                return;
            }
            int i = 1;
            while (!isDisposed()) {
                Subscription subscription = get();
                if (subscription != null) {
                    long j = this.requestedFromUpstream;
                    long j2 = j;
                    for (InnerSubscription<T> innerSubscription : this.subscribers.get()) {
                        j2 = Math.max(j2, innerSubscription.totalRequested.get());
                    }
                    long j3 = j2 - j;
                    if (j3 != 0) {
                        this.requestedFromUpstream = j2;
                        subscription.request(j3);
                    }
                }
                i = atomicInteger.addAndGet(-i);
                if (i == 0) {
                    return;
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            this.buffer.complete();
            for (InnerSubscription<T> innerSubscription : this.subscribers.getAndSet(TERMINATED)) {
                this.buffer.replay(innerSubscription);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable e) {
            if (this.done) {
                RxJavaPlugins.onError(e);
                return;
            }
            this.done = true;
            this.buffer.error(e);
            for (InnerSubscription<T> innerSubscription : this.subscribers.getAndSet(TERMINATED)) {
                this.buffer.replay(innerSubscription);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            this.buffer.next(t);
            for (InnerSubscription<T> innerSubscription : this.subscribers.get()) {
                this.buffer.replay(innerSubscription);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription p) {
            if (SubscriptionHelper.setOnce(this, p)) {
                manageRequests();
                for (InnerSubscription<T> innerSubscription : this.subscribers.get()) {
                    this.buffer.replay(innerSubscription);
                }
            }
        }

        public void remove(InnerSubscription<T> p) {
            InnerSubscription<T>[] innerSubscriptionArr;
            InnerSubscription[] innerSubscriptionArr2;
            do {
                innerSubscriptionArr = this.subscribers.get();
                int length = innerSubscriptionArr.length;
                if (length == 0) {
                    return;
                }
                int i = 0;
                while (true) {
                    if (i >= length) {
                        i = -1;
                        break;
                    } else if (innerSubscriptionArr[i].equals(p)) {
                        break;
                    } else {
                        i++;
                    }
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    innerSubscriptionArr2 = EMPTY;
                } else {
                    InnerSubscription[] innerSubscriptionArr3 = new InnerSubscription[length - 1];
                    System.arraycopy(innerSubscriptionArr, 0, innerSubscriptionArr3, 0, i);
                    System.arraycopy(innerSubscriptionArr, i + 1, innerSubscriptionArr3, i, (length - i) - 1);
                    innerSubscriptionArr2 = innerSubscriptionArr3;
                }
            } while (!cyi.m53538a(this.subscribers, innerSubscriptionArr, innerSubscriptionArr2));
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

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay.BoundedReplayBuffer
        public Object enterTransform(Object value, boolean terminal) {
            return new Timed(value, terminal ? Long.MAX_VALUE : this.scheduler.now(this.unit), this.unit);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay.BoundedReplayBuffer
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

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay.BoundedReplayBuffer
        public Object leaveTransform(Object value) {
            return ((Timed) value).value();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay.BoundedReplayBuffer
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

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay.BoundedReplayBuffer
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

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay.BoundedReplayBuffer
        public void truncate() {
            if (this.size > this.limit) {
                removeFirst();
            }
        }
    }

    /* loaded from: classes10.dex */
    public static final class UnboundedReplayBuffer<T> extends ArrayList<Object> implements InterfaceC17388c<T> {
        private static final long serialVersionUID = 7063189396499112664L;
        volatile int size;

        public UnboundedReplayBuffer(int capacityHint) {
            super(capacityHint);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay.InterfaceC17388c
        public void complete() {
            add(NotificationLite.complete());
            this.size++;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay.InterfaceC17388c
        public void error(Throwable e) {
            add(NotificationLite.error(e));
            this.size++;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay.InterfaceC17388c
        public void next(T value) {
            add(NotificationLite.next(value));
            this.size++;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay.InterfaceC17388c
        public void replay(InnerSubscription<T> output) {
            synchronized (output) {
                if (output.emitting) {
                    output.missed = true;
                    return;
                }
                output.emitting = true;
                Subscriber<? super T> subscriber = output.child;
                while (!output.isDisposed()) {
                    int i = this.size;
                    Integer num = (Integer) output.index();
                    int intValue = num != null ? num.intValue() : 0;
                    long j = output.get();
                    long j2 = j;
                    long j3 = 0;
                    while (j2 != 0 && intValue < i) {
                        Object obj = get(intValue);
                        try {
                            if (NotificationLite.accept(obj, subscriber) || output.isDisposed()) {
                                return;
                            }
                            intValue++;
                            j2--;
                            j3++;
                        } catch (Throwable th) {
                            Exceptions.throwIfFatal(th);
                            output.dispose();
                            if (NotificationLite.isError(obj) || NotificationLite.isComplete(obj)) {
                                RxJavaPlugins.onError(th);
                                return;
                            } else {
                                subscriber.onError(th);
                                return;
                            }
                        }
                    }
                    if (j3 != 0) {
                        output.index = Integer.valueOf(intValue);
                        if (j != Long.MAX_VALUE) {
                            output.produced(j3);
                        }
                    }
                    synchronized (output) {
                        if (!output.missed) {
                            output.emitting = false;
                            return;
                        }
                        output.missed = false;
                    }
                }
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay$a */
    /* loaded from: classes10.dex */
    public static final class C17386a implements Supplier<Object> {
        @Override // io.reactivex.rxjava3.functions.Supplier
        public Object get() {
            return new UnboundedReplayBuffer(16);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay$b */
    /* loaded from: classes10.dex */
    public static final class C17387b<R, U> extends Flowable<R> {

        /* renamed from: f */
        public final Supplier<? extends ConnectableFlowable<U>> f95798f;

        /* renamed from: g */
        public final Function<? super Flowable<U>, ? extends Publisher<R>> f95799g;

        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay$b$a */
        /* loaded from: classes10.dex */
        public final class a implements Consumer<Disposable> {

            /* renamed from: e */
            public final SubscriberResourceWrapper<R> f95800e;

            public a(SubscriberResourceWrapper<R> srw) {
                this.f95800e = srw;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void accept(Disposable r) {
                this.f95800e.setResource(r);
            }
        }

        public C17387b(Supplier<? extends ConnectableFlowable<U>> connectableFactory, Function<? super Flowable<U>, ? extends Publisher<R>> selector) {
            this.f95798f = connectableFactory;
            this.f95799g = selector;
        }

        @Override // io.reactivex.rxjava3.core.Flowable
        public void subscribeActual(Subscriber<? super R> child) {
            try {
                ConnectableFlowable connectableFlowable = (ConnectableFlowable) ExceptionHelper.nullCheck(this.f95798f.get(), "The connectableFactory returned a null ConnectableFlowable.");
                try {
                    Publisher publisher = (Publisher) ExceptionHelper.nullCheck(this.f95799g.apply(connectableFlowable), "The selector returned a null Publisher.");
                    SubscriberResourceWrapper subscriberResourceWrapper = new SubscriberResourceWrapper(child);
                    publisher.subscribe(subscriberResourceWrapper);
                    connectableFlowable.connect(new a(subscriberResourceWrapper));
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    EmptySubscription.error(th, child);
                }
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                EmptySubscription.error(th2, child);
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay$c */
    /* loaded from: classes10.dex */
    public interface InterfaceC17388c<T> {
        void complete();

        void error(Throwable e);

        void next(T value);

        void replay(InnerSubscription<T> output);
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay$d */
    /* loaded from: classes10.dex */
    public static final class C17389d<T> implements Supplier<InterfaceC17388c<T>> {

        /* renamed from: e */
        public final int f95802e;

        /* renamed from: f */
        public final boolean f95803f;

        public C17389d(int bufferSize, boolean eagerTruncate) {
            this.f95802e = bufferSize;
            this.f95803f = eagerTruncate;
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public InterfaceC17388c<T> get() {
            return new SizeBoundReplayBuffer(this.f95802e, this.f95803f);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay$e */
    /* loaded from: classes10.dex */
    public static final class C17390e<T> implements Publisher<T> {

        /* renamed from: e */
        public final AtomicReference<ReplaySubscriber<T>> f95804e;

        /* renamed from: f */
        public final Supplier<? extends InterfaceC17388c<T>> f95805f;

        public C17390e(AtomicReference<ReplaySubscriber<T>> curr, Supplier<? extends InterfaceC17388c<T>> bufferFactory) {
            this.f95804e = curr;
            this.f95805f = bufferFactory;
        }

        @Override // org.reactivestreams.Publisher
        public void subscribe(Subscriber<? super T> child) {
            ReplaySubscriber<T> replaySubscriber;
            while (true) {
                replaySubscriber = this.f95804e.get();
                if (replaySubscriber != null) {
                    break;
                }
                try {
                    ReplaySubscriber<T> replaySubscriber2 = new ReplaySubscriber<>(this.f95805f.get(), this.f95804e);
                    if (cyi.m53538a(this.f95804e, null, replaySubscriber2)) {
                        replaySubscriber = replaySubscriber2;
                        break;
                    }
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    EmptySubscription.error(th, child);
                    return;
                }
            }
            InnerSubscription<T> innerSubscription = new InnerSubscription<>(replaySubscriber, child);
            child.onSubscribe(innerSubscription);
            replaySubscriber.add(innerSubscription);
            if (innerSubscription.isDisposed()) {
                replaySubscriber.remove(innerSubscription);
            } else {
                replaySubscriber.manageRequests();
                replaySubscriber.buffer.replay(innerSubscription);
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableReplay$f */
    /* loaded from: classes10.dex */
    public static final class C17391f<T> implements Supplier<InterfaceC17388c<T>> {

        /* renamed from: e */
        public final int f95806e;

        /* renamed from: f */
        public final long f95807f;

        /* renamed from: g */
        public final TimeUnit f95808g;

        /* renamed from: h */
        public final Scheduler f95809h;

        /* renamed from: i */
        public final boolean f95810i;

        public C17391f(int bufferSize, long maxAge, TimeUnit unit, Scheduler scheduler, boolean eagerTruncate) {
            this.f95806e = bufferSize;
            this.f95807f = maxAge;
            this.f95808g = unit;
            this.f95809h = scheduler;
            this.f95810i = eagerTruncate;
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public InterfaceC17388c<T> get() {
            return new SizeAndTimeBoundReplayBuffer(this.f95806e, this.f95807f, this.f95808g, this.f95809h, this.f95810i);
        }
    }

    public FlowableReplay(Publisher<T> onSubscribe, Flowable<T> source, final AtomicReference<ReplaySubscriber<T>> current, final Supplier<? extends InterfaceC17388c<T>> bufferFactory) {
        this.f95797i = onSubscribe;
        this.f95794f = source;
        this.f95795g = current;
        this.f95796h = bufferFactory;
    }

    public static <T> ConnectableFlowable<T> create(Flowable<T> source, final int bufferSize, boolean eagerTruncate) {
        if (bufferSize == Integer.MAX_VALUE) {
            return createFrom(source);
        }
        return m61190e(source, new C17389d(bufferSize, eagerTruncate));
    }

    public static <T> ConnectableFlowable<T> createFrom(Flowable<? extends T> source) {
        return m61190e(source, f95793j);
    }

    /* renamed from: e */
    public static <T> ConnectableFlowable<T> m61190e(Flowable<T> source, final Supplier<? extends InterfaceC17388c<T>> bufferFactory) {
        AtomicReference atomicReference = new AtomicReference();
        return RxJavaPlugins.onAssembly((ConnectableFlowable) new FlowableReplay(new C17390e(atomicReference, bufferFactory), source, atomicReference, bufferFactory));
    }

    public static <U, R> Flowable<R> multicastSelector(final Supplier<? extends ConnectableFlowable<U>> connectableFactory, final Function<? super Flowable<U>, ? extends Publisher<R>> selector) {
        return new C17387b(connectableFactory, selector);
    }

    @Override // io.reactivex.rxjava3.flowables.ConnectableFlowable
    public void connect(Consumer<? super Disposable> connection) {
        ReplaySubscriber<T> replaySubscriber;
        while (true) {
            replaySubscriber = this.f95795g.get();
            if (replaySubscriber != null && !replaySubscriber.isDisposed()) {
                break;
            }
            try {
                ReplaySubscriber<T> replaySubscriber2 = new ReplaySubscriber<>(this.f95796h.get(), this.f95795g);
                if (cyi.m53538a(this.f95795g, replaySubscriber, replaySubscriber2)) {
                    replaySubscriber = replaySubscriber2;
                    break;
                }
            } finally {
                Exceptions.throwIfFatal(th);
                RuntimeException wrapOrThrow = ExceptionHelper.wrapOrThrow(th);
            }
        }
        boolean z = !replaySubscriber.shouldConnect.get() && replaySubscriber.shouldConnect.compareAndSet(false, true);
        try {
            connection.accept(replaySubscriber);
            if (z) {
                this.f95794f.subscribe((FlowableSubscriber) replaySubscriber);
            }
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            if (z) {
                replaySubscriber.shouldConnect.compareAndSet(true, false);
            }
            throw ExceptionHelper.wrapOrThrow(th);
        }
    }

    @Override // io.reactivex.rxjava3.flowables.ConnectableFlowable
    public void reset() {
        ReplaySubscriber<T> replaySubscriber = this.f95795g.get();
        if (replaySubscriber == null || !replaySubscriber.isDisposed()) {
            return;
        }
        cyi.m53538a(this.f95795g, replaySubscriber, null);
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.HasUpstreamPublisher
    public Publisher<T> source() {
        return this.f95794f;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        this.f95797i.subscribe(s);
    }

    public static <T> ConnectableFlowable<T> create(Flowable<T> source, long maxAge, TimeUnit unit, Scheduler scheduler, boolean eagerTruncate) {
        return create(source, maxAge, unit, scheduler, Integer.MAX_VALUE, eagerTruncate);
    }

    public static <T> ConnectableFlowable<T> create(Flowable<T> source, final long maxAge, final TimeUnit unit, final Scheduler scheduler, final int bufferSize, boolean eagerTruncate) {
        return m61190e(source, new C17391f(bufferSize, maxAge, unit, scheduler, eagerTruncate));
    }
}
