package io.reactivex.rxjava3.processors;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.annotations.CheckReturnValue;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.functions.ObjectHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.BackpressureHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class ReplayProcessor<T> extends FlowableProcessor<T> {

    /* renamed from: i */
    public static final Object[] f97528i = new Object[0];

    /* renamed from: j */
    public static final ReplaySubscription[] f97529j = new ReplaySubscription[0];

    /* renamed from: k */
    public static final ReplaySubscription[] f97530k = new ReplaySubscription[0];

    /* renamed from: f */
    public final InterfaceC17633a<T> f97531f;

    /* renamed from: g */
    public boolean f97532g;

    /* renamed from: h */
    public final AtomicReference<ReplaySubscription<T>[]> f97533h = new AtomicReference<>(f97529j);

    /* loaded from: classes10.dex */
    public static final class Node<T> extends AtomicReference<Node<T>> {
        private static final long serialVersionUID = 6404226426336033100L;
        final T value;

        public Node(T value) {
            this.value = value;
        }
    }

    /* loaded from: classes10.dex */
    public static final class ReplaySubscription<T> extends AtomicInteger implements Subscription {
        private static final long serialVersionUID = 466549804534799122L;
        volatile boolean cancelled;
        final Subscriber<? super T> downstream;
        long emitted;
        Object index;
        final AtomicLong requested = new AtomicLong();
        final ReplayProcessor<T> state;

        public ReplaySubscription(Subscriber<? super T> actual, ReplayProcessor<T> state) {
            this.downstream = actual;
            this.state = state;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.state.m61336g(this);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            if (SubscriptionHelper.validate(n)) {
                BackpressureHelper.add(this.requested, n);
                this.state.f97531f.mo61339a(this);
            }
        }
    }

    /* loaded from: classes10.dex */
    public static final class TimedNode<T> extends AtomicReference<TimedNode<T>> {
        private static final long serialVersionUID = 6404226426336033100L;
        final long time;
        final T value;

        public TimedNode(T value, long time) {
            this.value = value;
            this.time = time;
        }
    }

    /* renamed from: io.reactivex.rxjava3.processors.ReplayProcessor$a */
    /* loaded from: classes10.dex */
    public interface InterfaceC17633a<T> {
        /* renamed from: a */
        void mo61339a(ReplaySubscription<T> rs);

        void complete();

        void error(Throwable ex);

        Throwable getError();

        @Nullable
        T getValue();

        T[] getValues(T[] array);

        boolean isDone();

        void next(T value);

        int size();

        void trimHead();
    }

    /* renamed from: io.reactivex.rxjava3.processors.ReplayProcessor$b */
    /* loaded from: classes10.dex */
    public static final class C17634b<T> implements InterfaceC17633a<T> {

        /* renamed from: a */
        public final int f97534a;

        /* renamed from: b */
        public final long f97535b;

        /* renamed from: c */
        public final TimeUnit f97536c;

        /* renamed from: d */
        public final Scheduler f97537d;

        /* renamed from: e */
        public int f97538e;

        /* renamed from: f */
        public volatile TimedNode<T> f97539f;

        /* renamed from: g */
        public TimedNode<T> f97540g;

        /* renamed from: h */
        public Throwable f97541h;

        /* renamed from: i */
        public volatile boolean f97542i;

        public C17634b(int maxSize, long maxAge, TimeUnit unit, Scheduler scheduler) {
            this.f97534a = maxSize;
            this.f97535b = maxAge;
            this.f97536c = unit;
            this.f97537d = scheduler;
            TimedNode<T> timedNode = new TimedNode<>(null, 0L);
            this.f97540g = timedNode;
            this.f97539f = timedNode;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        /* renamed from: a */
        public void mo61339a(ReplaySubscription<T> replaySubscription) {
            if (replaySubscription.getAndIncrement() != 0) {
                return;
            }
            Subscriber<? super T> subscriber = replaySubscription.downstream;
            TimedNode<T> timedNode = (TimedNode) replaySubscription.index;
            if (timedNode == null) {
                timedNode = m61340b();
            }
            long j = replaySubscription.emitted;
            int i = 1;
            do {
                long j2 = replaySubscription.requested.get();
                while (j != j2) {
                    if (replaySubscription.cancelled) {
                        replaySubscription.index = null;
                        return;
                    }
                    boolean z = this.f97542i;
                    TimedNode<T> timedNode2 = timedNode.get();
                    boolean z2 = timedNode2 == null;
                    if (z && z2) {
                        replaySubscription.index = null;
                        replaySubscription.cancelled = true;
                        Throwable th = this.f97541h;
                        if (th == null) {
                            subscriber.onComplete();
                            return;
                        } else {
                            subscriber.onError(th);
                            return;
                        }
                    }
                    if (z2) {
                        break;
                    }
                    subscriber.onNext(timedNode2.value);
                    j++;
                    timedNode = timedNode2;
                }
                if (j == j2) {
                    if (replaySubscription.cancelled) {
                        replaySubscription.index = null;
                        return;
                    }
                    if (this.f97542i && timedNode.get() == null) {
                        replaySubscription.index = null;
                        replaySubscription.cancelled = true;
                        Throwable th2 = this.f97541h;
                        if (th2 == null) {
                            subscriber.onComplete();
                            return;
                        } else {
                            subscriber.onError(th2);
                            return;
                        }
                    }
                }
                replaySubscription.index = timedNode;
                replaySubscription.emitted = j;
                i = replaySubscription.addAndGet(-i);
            } while (i != 0);
        }

        /* renamed from: b */
        public TimedNode<T> m61340b() {
            TimedNode<T> timedNode;
            TimedNode<T> timedNode2 = this.f97539f;
            long now = this.f97537d.now(this.f97536c) - this.f97535b;
            TimedNode<T> timedNode3 = timedNode2.get();
            while (true) {
                timedNode = timedNode2;
                timedNode2 = timedNode3;
                if (timedNode2 == null || timedNode2.time > now) {
                    break;
                }
                timedNode3 = timedNode2.get();
            }
            return timedNode;
        }

        /* renamed from: c */
        public int m61341c(TimedNode<T> h) {
            int i = 0;
            while (i != Integer.MAX_VALUE && (h = h.get()) != null) {
                i++;
            }
            return i;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public void complete() {
            m61343e();
            this.f97542i = true;
        }

        /* renamed from: d */
        public void m61342d() {
            int i = this.f97538e;
            if (i > this.f97534a) {
                this.f97538e = i - 1;
                this.f97539f = this.f97539f.get();
            }
            long now = this.f97537d.now(this.f97536c) - this.f97535b;
            TimedNode<T> timedNode = this.f97539f;
            while (this.f97538e > 1) {
                TimedNode<T> timedNode2 = timedNode.get();
                if (timedNode2.time > now) {
                    this.f97539f = timedNode;
                    return;
                } else {
                    this.f97538e--;
                    timedNode = timedNode2;
                }
            }
            this.f97539f = timedNode;
        }

        /* renamed from: e */
        public void m61343e() {
            long now = this.f97537d.now(this.f97536c) - this.f97535b;
            TimedNode<T> timedNode = this.f97539f;
            while (true) {
                TimedNode<T> timedNode2 = timedNode.get();
                if (timedNode2 == null) {
                    if (timedNode.value != null) {
                        this.f97539f = new TimedNode<>(null, 0L);
                        return;
                    } else {
                        this.f97539f = timedNode;
                        return;
                    }
                }
                if (timedNode2.time > now) {
                    if (timedNode.value == null) {
                        this.f97539f = timedNode;
                        return;
                    }
                    TimedNode<T> timedNode3 = new TimedNode<>(null, 0L);
                    timedNode3.lazySet(timedNode.get());
                    this.f97539f = timedNode3;
                    return;
                }
                timedNode = timedNode2;
            }
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public void error(Throwable ex) {
            m61343e();
            this.f97541h = ex;
            this.f97542i = true;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public Throwable getError() {
            return this.f97541h;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        @Nullable
        public T getValue() {
            TimedNode<T> timedNode = this.f97539f;
            while (true) {
                TimedNode<T> timedNode2 = timedNode.get();
                if (timedNode2 == null) {
                    break;
                }
                timedNode = timedNode2;
            }
            if (timedNode.time < this.f97537d.now(this.f97536c) - this.f97535b) {
                return null;
            }
            return timedNode.value;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public T[] getValues(T[] tArr) {
            TimedNode<T> m61340b = m61340b();
            int m61341c = m61341c(m61340b);
            if (m61341c != 0) {
                if (tArr.length < m61341c) {
                    tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), m61341c));
                }
                for (int i = 0; i != m61341c; i++) {
                    m61340b = m61340b.get();
                    tArr[i] = m61340b.value;
                }
                if (tArr.length > m61341c) {
                    tArr[m61341c] = null;
                }
            } else if (tArr.length != 0) {
                tArr[0] = null;
            }
            return tArr;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public boolean isDone() {
            return this.f97542i;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public void next(T value) {
            TimedNode<T> timedNode = new TimedNode<>(value, this.f97537d.now(this.f97536c));
            TimedNode<T> timedNode2 = this.f97540g;
            this.f97540g = timedNode;
            this.f97538e++;
            timedNode2.set(timedNode);
            m61342d();
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public int size() {
            return m61341c(m61340b());
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public void trimHead() {
            if (this.f97539f.value != null) {
                TimedNode<T> timedNode = new TimedNode<>(null, 0L);
                timedNode.lazySet(this.f97539f.get());
                this.f97539f = timedNode;
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.processors.ReplayProcessor$c */
    /* loaded from: classes10.dex */
    public static final class C17635c<T> implements InterfaceC17633a<T> {

        /* renamed from: a */
        public final int f97543a;

        /* renamed from: b */
        public int f97544b;

        /* renamed from: c */
        public volatile Node<T> f97545c;

        /* renamed from: d */
        public Node<T> f97546d;

        /* renamed from: e */
        public Throwable f97547e;

        /* renamed from: f */
        public volatile boolean f97548f;

        public C17635c(int maxSize) {
            this.f97543a = maxSize;
            Node<T> node = new Node<>(null);
            this.f97546d = node;
            this.f97545c = node;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        /* renamed from: a */
        public void mo61339a(ReplaySubscription<T> replaySubscription) {
            if (replaySubscription.getAndIncrement() != 0) {
                return;
            }
            Subscriber<? super T> subscriber = replaySubscription.downstream;
            Node<T> node = (Node) replaySubscription.index;
            if (node == null) {
                node = this.f97545c;
            }
            long j = replaySubscription.emitted;
            int i = 1;
            do {
                long j2 = replaySubscription.requested.get();
                while (j != j2) {
                    if (replaySubscription.cancelled) {
                        replaySubscription.index = null;
                        return;
                    }
                    boolean z = this.f97548f;
                    Node<T> node2 = node.get();
                    boolean z2 = node2 == null;
                    if (z && z2) {
                        replaySubscription.index = null;
                        replaySubscription.cancelled = true;
                        Throwable th = this.f97547e;
                        if (th == null) {
                            subscriber.onComplete();
                            return;
                        } else {
                            subscriber.onError(th);
                            return;
                        }
                    }
                    if (z2) {
                        break;
                    }
                    subscriber.onNext(node2.value);
                    j++;
                    node = node2;
                }
                if (j == j2) {
                    if (replaySubscription.cancelled) {
                        replaySubscription.index = null;
                        return;
                    }
                    if (this.f97548f && node.get() == null) {
                        replaySubscription.index = null;
                        replaySubscription.cancelled = true;
                        Throwable th2 = this.f97547e;
                        if (th2 == null) {
                            subscriber.onComplete();
                            return;
                        } else {
                            subscriber.onError(th2);
                            return;
                        }
                    }
                }
                replaySubscription.index = node;
                replaySubscription.emitted = j;
                i = replaySubscription.addAndGet(-i);
            } while (i != 0);
        }

        /* renamed from: b */
        public void m61344b() {
            int i = this.f97544b;
            if (i > this.f97543a) {
                this.f97544b = i - 1;
                this.f97545c = this.f97545c.get();
            }
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public void complete() {
            trimHead();
            this.f97548f = true;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public void error(Throwable ex) {
            this.f97547e = ex;
            trimHead();
            this.f97548f = true;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public Throwable getError() {
            return this.f97547e;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public T getValue() {
            Node<T> node = this.f97545c;
            while (true) {
                Node<T> node2 = node.get();
                if (node2 == null) {
                    return node.value;
                }
                node = node2;
            }
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public T[] getValues(T[] tArr) {
            Node<T> node = this.f97545c;
            Node<T> node2 = node;
            int i = 0;
            while (true) {
                node2 = node2.get();
                if (node2 == null) {
                    break;
                }
                i++;
            }
            if (tArr.length < i) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
            }
            for (int i2 = 0; i2 < i; i2++) {
                node = node.get();
                tArr[i2] = node.value;
            }
            if (tArr.length > i) {
                tArr[i] = null;
            }
            return tArr;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public boolean isDone() {
            return this.f97548f;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public void next(T value) {
            Node<T> node = new Node<>(value);
            Node<T> node2 = this.f97546d;
            this.f97546d = node;
            this.f97544b++;
            node2.set(node);
            m61344b();
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public int size() {
            Node<T> node = this.f97545c;
            int i = 0;
            while (i != Integer.MAX_VALUE && (node = node.get()) != null) {
                i++;
            }
            return i;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public void trimHead() {
            if (this.f97545c.value != null) {
                Node<T> node = new Node<>(null);
                node.lazySet(this.f97545c.get());
                this.f97545c = node;
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.processors.ReplayProcessor$d */
    /* loaded from: classes10.dex */
    public static final class C17636d<T> implements InterfaceC17633a<T> {

        /* renamed from: a */
        public final List<T> f97549a;

        /* renamed from: b */
        public Throwable f97550b;

        /* renamed from: c */
        public volatile boolean f97551c;

        /* renamed from: d */
        public volatile int f97552d;

        public C17636d(int capacityHint) {
            this.f97549a = new ArrayList(capacityHint);
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        /* renamed from: a */
        public void mo61339a(ReplaySubscription<T> rs) {
            int i;
            if (rs.getAndIncrement() != 0) {
                return;
            }
            List<T> list = this.f97549a;
            Subscriber<? super T> subscriber = rs.downstream;
            Integer num = (Integer) rs.index;
            if (num != null) {
                i = num.intValue();
            } else {
                i = 0;
                rs.index = 0;
            }
            long j = rs.emitted;
            int i2 = 1;
            do {
                long j2 = rs.requested.get();
                while (j != j2) {
                    if (rs.cancelled) {
                        rs.index = null;
                        return;
                    }
                    boolean z = this.f97551c;
                    int i3 = this.f97552d;
                    if (z && i == i3) {
                        rs.index = null;
                        rs.cancelled = true;
                        Throwable th = this.f97550b;
                        if (th == null) {
                            subscriber.onComplete();
                            return;
                        } else {
                            subscriber.onError(th);
                            return;
                        }
                    }
                    if (i == i3) {
                        break;
                    }
                    subscriber.onNext(list.get(i));
                    i++;
                    j++;
                }
                if (j == j2) {
                    if (rs.cancelled) {
                        rs.index = null;
                        return;
                    }
                    boolean z2 = this.f97551c;
                    int i4 = this.f97552d;
                    if (z2 && i == i4) {
                        rs.index = null;
                        rs.cancelled = true;
                        Throwable th2 = this.f97550b;
                        if (th2 == null) {
                            subscriber.onComplete();
                            return;
                        } else {
                            subscriber.onError(th2);
                            return;
                        }
                    }
                }
                rs.index = Integer.valueOf(i);
                rs.emitted = j;
                i2 = rs.addAndGet(-i2);
            } while (i2 != 0);
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public void complete() {
            this.f97551c = true;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public void error(Throwable ex) {
            this.f97550b = ex;
            this.f97551c = true;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public Throwable getError() {
            return this.f97550b;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        @Nullable
        public T getValue() {
            int i = this.f97552d;
            if (i == 0) {
                return null;
            }
            return this.f97549a.get(i - 1);
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public T[] getValues(T[] tArr) {
            int i = this.f97552d;
            if (i == 0) {
                if (tArr.length != 0) {
                    tArr[0] = null;
                }
                return tArr;
            }
            List<T> list = this.f97549a;
            if (tArr.length < i) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
            }
            for (int i2 = 0; i2 < i; i2++) {
                tArr[i2] = list.get(i2);
            }
            if (tArr.length > i) {
                tArr[i] = null;
            }
            return tArr;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public boolean isDone() {
            return this.f97551c;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public void next(T value) {
            this.f97549a.add(value);
            this.f97552d++;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public int size() {
            return this.f97552d;
        }

        @Override // io.reactivex.rxjava3.processors.ReplayProcessor.InterfaceC17633a
        public void trimHead() {
        }
    }

    public ReplayProcessor(InterfaceC17633a<T> buffer) {
        this.f97531f = buffer;
    }

    @CheckReturnValue
    @NonNull
    public static <T> ReplayProcessor<T> create() {
        return new ReplayProcessor<>(new C17636d(16));
    }

    @CheckReturnValue
    @NonNull
    public static <T> ReplayProcessor<T> createWithSize(int maxSize) {
        ObjectHelper.verifyPositive(maxSize, "maxSize");
        return new ReplayProcessor<>(new C17635c(maxSize));
    }

    @CheckReturnValue
    @NonNull
    public static <T> ReplayProcessor<T> createWithTime(long maxAge, @NonNull TimeUnit unit, @NonNull Scheduler scheduler) {
        ObjectHelper.verifyPositive(maxAge, "maxAge");
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new ReplayProcessor<>(new C17634b(Integer.MAX_VALUE, maxAge, unit, scheduler));
    }

    @CheckReturnValue
    @NonNull
    public static <T> ReplayProcessor<T> createWithTimeAndSize(long maxAge, @NonNull TimeUnit unit, @NonNull Scheduler scheduler, int maxSize) {
        ObjectHelper.verifyPositive(maxSize, "maxSize");
        ObjectHelper.verifyPositive(maxAge, "maxAge");
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new ReplayProcessor<>(new C17634b(maxSize, maxAge, unit, scheduler));
    }

    @CheckReturnValue
    /* renamed from: f */
    public static <T> ReplayProcessor<T> m61334f() {
        return new ReplayProcessor<>(new C17635c(Integer.MAX_VALUE));
    }

    public void cleanupBuffer() {
        this.f97531f.trimHead();
    }

    /* renamed from: e */
    public boolean m61335e(ReplaySubscription<T> rs) {
        ReplaySubscription<T>[] replaySubscriptionArr;
        ReplaySubscription[] replaySubscriptionArr2;
        do {
            replaySubscriptionArr = this.f97533h.get();
            if (replaySubscriptionArr == f97530k) {
                return false;
            }
            int length = replaySubscriptionArr.length;
            replaySubscriptionArr2 = new ReplaySubscription[length + 1];
            System.arraycopy(replaySubscriptionArr, 0, replaySubscriptionArr2, 0, length);
            replaySubscriptionArr2[length] = rs;
        } while (!cyi.m53538a(this.f97533h, replaySubscriptionArr, replaySubscriptionArr2));
        return true;
    }

    /* renamed from: g */
    public void m61336g(ReplaySubscription<T> rs) {
        ReplaySubscription<T>[] replaySubscriptionArr;
        ReplaySubscription[] replaySubscriptionArr2;
        do {
            replaySubscriptionArr = this.f97533h.get();
            if (replaySubscriptionArr == f97530k || replaySubscriptionArr == f97529j) {
                return;
            }
            int length = replaySubscriptionArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (replaySubscriptionArr[i] == rs) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                replaySubscriptionArr2 = f97529j;
            } else {
                ReplaySubscription[] replaySubscriptionArr3 = new ReplaySubscription[length - 1];
                System.arraycopy(replaySubscriptionArr, 0, replaySubscriptionArr3, 0, i);
                System.arraycopy(replaySubscriptionArr, i + 1, replaySubscriptionArr3, i, (length - i) - 1);
                replaySubscriptionArr2 = replaySubscriptionArr3;
            }
        } while (!cyi.m53538a(this.f97533h, replaySubscriptionArr, replaySubscriptionArr2));
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @CheckReturnValue
    @Nullable
    public Throwable getThrowable() {
        InterfaceC17633a<T> interfaceC17633a = this.f97531f;
        if (interfaceC17633a.isDone()) {
            return interfaceC17633a.getError();
        }
        return null;
    }

    @CheckReturnValue
    public T getValue() {
        return this.f97531f.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    public Object[] getValues() {
        Object[] objArr = f97528i;
        Object[] values = getValues(objArr);
        return values == objArr ? new Object[0] : values;
    }

    @CheckReturnValue
    /* renamed from: h */
    public int m61337h() {
        return this.f97531f.size();
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @CheckReturnValue
    public boolean hasComplete() {
        InterfaceC17633a<T> interfaceC17633a = this.f97531f;
        return interfaceC17633a.isDone() && interfaceC17633a.getError() == null;
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @CheckReturnValue
    public boolean hasSubscribers() {
        return this.f97533h.get().length != 0;
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @CheckReturnValue
    public boolean hasThrowable() {
        InterfaceC17633a<T> interfaceC17633a = this.f97531f;
        return interfaceC17633a.isDone() && interfaceC17633a.getError() != null;
    }

    @CheckReturnValue
    public boolean hasValue() {
        return this.f97531f.size() != 0;
    }

    @CheckReturnValue
    /* renamed from: i */
    public int m61338i() {
        return this.f97533h.get().length;
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (this.f97532g) {
            return;
        }
        this.f97532g = true;
        InterfaceC17633a<T> interfaceC17633a = this.f97531f;
        interfaceC17633a.complete();
        for (ReplaySubscription<T> replaySubscription : this.f97533h.getAndSet(f97530k)) {
            interfaceC17633a.mo61339a(replaySubscription);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable t) {
        ExceptionHelper.nullCheck(t, "onError called with a null Throwable.");
        if (this.f97532g) {
            RxJavaPlugins.onError(t);
            return;
        }
        this.f97532g = true;
        InterfaceC17633a<T> interfaceC17633a = this.f97531f;
        interfaceC17633a.error(t);
        for (ReplaySubscription<T> replaySubscription : this.f97533h.getAndSet(f97530k)) {
            interfaceC17633a.mo61339a(replaySubscription);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        ExceptionHelper.nullCheck(t, "onNext called with a null value.");
        if (this.f97532g) {
            return;
        }
        InterfaceC17633a<T> interfaceC17633a = this.f97531f;
        interfaceC17633a.next(t);
        for (ReplaySubscription<T> replaySubscription : this.f97533h.get()) {
            interfaceC17633a.mo61339a(replaySubscription);
        }
    }

    @Override // org.reactivestreams.Subscriber, io.reactivex.rxjava3.core.FlowableSubscriber
    public void onSubscribe(Subscription s) {
        if (this.f97532g) {
            s.cancel();
        } else {
            s.request(Long.MAX_VALUE);
        }
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        ReplaySubscription<T> replaySubscription = new ReplaySubscription<>(s, this);
        s.onSubscribe(replaySubscription);
        if (m61335e(replaySubscription) && replaySubscription.cancelled) {
            m61336g(replaySubscription);
        } else {
            this.f97531f.mo61339a(replaySubscription);
        }
    }

    @CheckReturnValue
    @NonNull
    public static <T> ReplayProcessor<T> create(int capacityHint) {
        ObjectHelper.verifyPositive(capacityHint, "capacityHint");
        return new ReplayProcessor<>(new C17636d(capacityHint));
    }

    @CheckReturnValue
    public T[] getValues(T[] array) {
        return this.f97531f.getValues(array);
    }
}
