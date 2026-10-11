package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicates;
import com.google.common.base.Stopwatch;
import com.google.common.collect.Collections2;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableSetMultimap;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.MultimapBuilder;
import com.google.common.collect.Multimaps;
import com.google.common.collect.Multiset;
import com.google.common.collect.Ordering;
import com.google.common.collect.SetMultimap;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.util.concurrent.C6415g;
import com.google.common.util.concurrent.Monitor;
import com.google.common.util.concurrent.Service;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.sunia.HTREnginev2.ipi;
import com.sunia.HTREnginev2.pnf;
import java.lang.ref.WeakReference;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public final class ServiceManager implements InterfaceC6417i {

    /* renamed from: c */
    public static final Logger f35399c = Logger.getLogger(ServiceManager.class.getName());

    /* renamed from: d */
    public static final C6415g.a<Listener> f35400d = new C6391a();

    /* renamed from: e */
    public static final C6415g.a<Listener> f35401e = new C6392b();

    /* renamed from: a */
    public final C6395e f35402a;

    /* renamed from: b */
    public final ImmutableList<Service> f35403b;

    /* loaded from: classes6.dex */
    public static final class EmptyServiceManagerWarning extends Throwable {
        private EmptyServiceManagerWarning() {
        }

        public /* synthetic */ EmptyServiceManagerWarning(C6391a c6391a) {
            this();
        }
    }

    /* loaded from: classes6.dex */
    public static final class FailedService extends Throwable {
        public FailedService(Service service) {
            super(service.toString(), service.failureCause(), false, false);
        }
    }

    /* loaded from: classes6.dex */
    public static abstract class Listener {
        public void failure(Service service) {
        }

        public void healthy() {
        }

        public void stopped() {
        }
    }

    /* renamed from: com.google.common.util.concurrent.ServiceManager$a */
    /* loaded from: classes6.dex */
    public class C6391a implements C6415g.a<Listener> {
        @Override // com.google.common.util.concurrent.C6415g.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void call(Listener listener) {
            listener.healthy();
        }

        public String toString() {
            return "healthy()";
        }
    }

    /* renamed from: com.google.common.util.concurrent.ServiceManager$b */
    /* loaded from: classes6.dex */
    public class C6392b implements C6415g.a<Listener> {
        @Override // com.google.common.util.concurrent.C6415g.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void call(Listener listener) {
            listener.stopped();
        }

        public String toString() {
            return "stopped()";
        }
    }

    /* renamed from: com.google.common.util.concurrent.ServiceManager$c */
    /* loaded from: classes6.dex */
    public static final class C6393c extends AbstractService {
        public C6393c() {
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public void doStart() {
            notifyStarted();
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public void doStop() {
            notifyStopped();
        }

        public /* synthetic */ C6393c(C6391a c6391a) {
            this();
        }
    }

    /* renamed from: com.google.common.util.concurrent.ServiceManager$d */
    /* loaded from: classes6.dex */
    public static final class C6394d extends Service.Listener {

        /* renamed from: a */
        public final Service f35404a;

        /* renamed from: b */
        public final WeakReference<C6395e> f35405b;

        public C6394d(Service service, WeakReference<C6395e> weakReference) {
            this.f35404a = service;
            this.f35405b = weakReference;
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void failed(Service.State state, Throwable th) {
            C6395e c6395e = this.f35405b.get();
            if (c6395e != null) {
                if ((!(this.f35404a instanceof C6393c)) & (state != Service.State.STARTING)) {
                    Logger logger = ServiceManager.f35399c;
                    Level level = Level.SEVERE;
                    String valueOf = String.valueOf(this.f35404a);
                    String valueOf2 = String.valueOf(state);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 34 + valueOf2.length());
                    sb.append("Service ");
                    sb.append(valueOf);
                    sb.append(" has failed in the ");
                    sb.append(valueOf2);
                    sb.append(" state.");
                    logger.log(level, sb.toString(), th);
                }
                c6395e.m27807n(this.f35404a, state, Service.State.FAILED);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void running() {
            C6395e c6395e = this.f35405b.get();
            if (c6395e != null) {
                c6395e.m27807n(this.f35404a, Service.State.STARTING, Service.State.RUNNING);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void starting() {
            C6395e c6395e = this.f35405b.get();
            if (c6395e != null) {
                c6395e.m27807n(this.f35404a, Service.State.NEW, Service.State.STARTING);
                if (this.f35404a instanceof C6393c) {
                    return;
                }
                ServiceManager.f35399c.log(Level.FINE, "Starting {0}.", this.f35404a);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void stopping(Service.State state) {
            C6395e c6395e = this.f35405b.get();
            if (c6395e != null) {
                c6395e.m27807n(this.f35404a, state, Service.State.STOPPING);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void terminated(Service.State state) {
            C6395e c6395e = this.f35405b.get();
            if (c6395e != null) {
                if (!(this.f35404a instanceof C6393c)) {
                    ServiceManager.f35399c.log(Level.FINE, "Service {0} has terminated. Previous state was: {1}", new Object[]{this.f35404a, state});
                }
                c6395e.m27807n(this.f35404a, state, Service.State.TERMINATED);
            }
        }
    }

    /* renamed from: com.google.common.util.concurrent.ServiceManager$e */
    /* loaded from: classes6.dex */
    public static final class C6395e {

        /* renamed from: a */
        public final Monitor f35406a = new Monitor();

        /* renamed from: b */
        @GuardedBy("monitor")
        public final SetMultimap<Service.State, Service> f35407b;

        /* renamed from: c */
        @GuardedBy("monitor")
        public final Multiset<Service.State> f35408c;

        /* renamed from: d */
        @GuardedBy("monitor")
        public final Map<Service, Stopwatch> f35409d;

        /* renamed from: e */
        @GuardedBy("monitor")
        public boolean f35410e;

        /* renamed from: f */
        @GuardedBy("monitor")
        public boolean f35411f;

        /* renamed from: g */
        public final int f35412g;

        /* renamed from: h */
        public final Monitor.Guard f35413h;

        /* renamed from: i */
        public final Monitor.Guard f35414i;

        /* renamed from: j */
        public final C6415g<Listener> f35415j;

        /* renamed from: com.google.common.util.concurrent.ServiceManager$e$a */
        /* loaded from: classes6.dex */
        public class a implements Function<Map.Entry<Service, Long>, Long> {
            public a(C6395e c6395e) {
            }

            @Override // com.google.common.base.Function, java.util.function.Function
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Long apply(Map.Entry<Service, Long> entry) {
                return entry.getValue();
            }
        }

        /* renamed from: com.google.common.util.concurrent.ServiceManager$e$b */
        /* loaded from: classes6.dex */
        public class b implements C6415g.a<Listener> {

            /* renamed from: a */
            public final /* synthetic */ Service f35416a;

            public b(C6395e c6395e, Service service) {
                this.f35416a = service;
            }

            @Override // com.google.common.util.concurrent.C6415g.a
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void call(Listener listener) {
                listener.failure(this.f35416a);
            }

            public String toString() {
                String valueOf = String.valueOf(this.f35416a);
                StringBuilder sb = new StringBuilder(valueOf.length() + 18);
                sb.append("failed({service=");
                sb.append(valueOf);
                sb.append("})");
                return sb.toString();
            }
        }

        /* renamed from: com.google.common.util.concurrent.ServiceManager$e$c */
        /* loaded from: classes6.dex */
        public final class c extends Monitor.Guard {
            public c() {
                super(C6395e.this.f35406a);
            }

            @Override // com.google.common.util.concurrent.Monitor.Guard
            @GuardedBy("ServiceManagerState.this.monitor")
            public boolean isSatisfied() {
                int count = C6395e.this.f35408c.count(Service.State.RUNNING);
                C6395e c6395e = C6395e.this;
                return count == c6395e.f35412g || c6395e.f35408c.contains(Service.State.STOPPING) || C6395e.this.f35408c.contains(Service.State.TERMINATED) || C6395e.this.f35408c.contains(Service.State.FAILED);
            }
        }

        /* renamed from: com.google.common.util.concurrent.ServiceManager$e$d */
        /* loaded from: classes6.dex */
        public final class d extends Monitor.Guard {
            public d() {
                super(C6395e.this.f35406a);
            }

            @Override // com.google.common.util.concurrent.Monitor.Guard
            @GuardedBy("ServiceManagerState.this.monitor")
            public boolean isSatisfied() {
                return C6395e.this.f35408c.count(Service.State.TERMINATED) + C6395e.this.f35408c.count(Service.State.FAILED) == C6395e.this.f35412g;
            }
        }

        public C6395e(ImmutableCollection<Service> immutableCollection) {
            SetMultimap<Service.State, Service> build = MultimapBuilder.enumKeys(Service.State.class).linkedHashSetValues().build();
            this.f35407b = build;
            this.f35408c = build.keys();
            this.f35409d = Maps.newIdentityHashMap();
            this.f35413h = new c();
            this.f35414i = new d();
            this.f35415j = new C6415g<>();
            this.f35412g = immutableCollection.size();
            build.putAll(Service.State.NEW, immutableCollection);
        }

        /* renamed from: a */
        public void m27794a(Listener listener, Executor executor) {
            this.f35415j.m27874b(listener, executor);
        }

        /* renamed from: b */
        public void m27795b() {
            this.f35406a.enterWhenUninterruptibly(this.f35413h);
            try {
                m27799f();
            } finally {
                this.f35406a.leave();
            }
        }

        /* renamed from: c */
        public void m27796c(long j, TimeUnit timeUnit) throws TimeoutException {
            this.f35406a.enter();
            try {
                if (this.f35406a.waitForUninterruptibly(this.f35413h, j, timeUnit)) {
                    m27799f();
                    return;
                }
                String valueOf = String.valueOf(Multimaps.filterKeys((SetMultimap) this.f35407b, Predicates.m25817in(ImmutableSet.m26236of(Service.State.NEW, Service.State.STARTING))));
                StringBuilder sb = new StringBuilder(valueOf.length() + 93);
                sb.append("Timeout waiting for the services to become healthy. The following services have not started: ");
                sb.append(valueOf);
                throw new TimeoutException(sb.toString());
            } finally {
                this.f35406a.leave();
            }
        }

        /* renamed from: d */
        public void m27797d() {
            this.f35406a.enterWhenUninterruptibly(this.f35414i);
            this.f35406a.leave();
        }

        /* renamed from: e */
        public void m27798e(long j, TimeUnit timeUnit) throws TimeoutException {
            this.f35406a.enter();
            try {
                if (this.f35406a.waitForUninterruptibly(this.f35414i, j, timeUnit)) {
                    return;
                }
                String valueOf = String.valueOf(Multimaps.filterKeys((SetMultimap) this.f35407b, Predicates.not(Predicates.m25817in(EnumSet.of(Service.State.TERMINATED, Service.State.FAILED)))));
                StringBuilder sb = new StringBuilder(valueOf.length() + 83);
                sb.append("Timeout waiting for the services to stop. The following services have not stopped: ");
                sb.append(valueOf);
                throw new TimeoutException(sb.toString());
            } finally {
                this.f35406a.leave();
            }
        }

        @GuardedBy("monitor")
        /* renamed from: f */
        public void m27799f() {
            Multiset<Service.State> multiset = this.f35408c;
            Service.State state = Service.State.RUNNING;
            if (multiset.count(state) != this.f35412g) {
                String valueOf = String.valueOf(Multimaps.filterKeys((SetMultimap) this.f35407b, Predicates.not(Predicates.equalTo(state))));
                StringBuilder sb = new StringBuilder(valueOf.length() + 79);
                sb.append("Expected to be healthy after starting. The following services are not running: ");
                sb.append(valueOf);
                IllegalStateException illegalStateException = new IllegalStateException(sb.toString());
                Iterator<Service> it2 = this.f35407b.get((SetMultimap<Service.State, Service>) Service.State.FAILED).iterator();
                while (it2.hasNext()) {
                    illegalStateException.addSuppressed(new FailedService(it2.next()));
                }
                throw illegalStateException;
            }
        }

        /* renamed from: g */
        public void m27800g() {
            Preconditions.checkState(!this.f35406a.isOccupiedByCurrentThread(), "It is incorrect to execute listeners with the monitor held.");
            this.f35415j.m27875c();
        }

        /* renamed from: h */
        public void m27801h(Service service) {
            this.f35415j.m27876d(new b(this, service));
        }

        /* renamed from: i */
        public void m27802i() {
            this.f35415j.m27876d(ServiceManager.f35400d);
        }

        /* renamed from: j */
        public void m27803j() {
            this.f35415j.m27876d(ServiceManager.f35401e);
        }

        /* renamed from: k */
        public void m27804k() {
            this.f35406a.enter();
            try {
                if (!this.f35411f) {
                    this.f35410e = true;
                    return;
                }
                ArrayList newArrayList = Lists.newArrayList();
                UnmodifiableIterator<Service> it2 = m27805l().values().iterator();
                while (it2.hasNext()) {
                    Service next = it2.next();
                    if (next.state() != Service.State.NEW) {
                        newArrayList.add(next);
                    }
                }
                String valueOf = String.valueOf(newArrayList);
                StringBuilder sb = new StringBuilder(valueOf.length() + 89);
                sb.append("Services started transitioning asynchronously before the ServiceManager was constructed: ");
                sb.append(valueOf);
                throw new IllegalArgumentException(sb.toString());
            } finally {
                this.f35406a.leave();
            }
        }

        /* renamed from: l */
        public ImmutableSetMultimap<Service.State, Service> m27805l() {
            ImmutableSetMultimap.Builder builder = ImmutableSetMultimap.builder();
            this.f35406a.enter();
            try {
                for (Map.Entry<Service.State, Service> entry : this.f35407b.entries()) {
                    if (!(entry.getValue() instanceof C6393c)) {
                        builder.put((Map.Entry) entry);
                    }
                }
                this.f35406a.leave();
                return builder.build();
            } catch (Throwable th) {
                this.f35406a.leave();
                throw th;
            }
        }

        /* renamed from: m */
        public ImmutableMap<Service, Long> m27806m() {
            this.f35406a.enter();
            try {
                ArrayList newArrayListWithCapacity = Lists.newArrayListWithCapacity(this.f35409d.size());
                for (Map.Entry<Service, Stopwatch> entry : this.f35409d.entrySet()) {
                    Service key = entry.getKey();
                    Stopwatch value = entry.getValue();
                    if (!value.isRunning() && !(key instanceof C6393c)) {
                        newArrayListWithCapacity.add(Maps.immutableEntry(key, Long.valueOf(value.elapsed(TimeUnit.MILLISECONDS))));
                    }
                }
                this.f35406a.leave();
                Collections.sort(newArrayListWithCapacity, Ordering.natural().onResultOf(new a(this)));
                return ImmutableMap.copyOf(newArrayListWithCapacity);
            } catch (Throwable th) {
                this.f35406a.leave();
                throw th;
            }
        }

        /* renamed from: n */
        public void m27807n(Service service, Service.State state, Service.State state2) {
            Preconditions.checkNotNull(service);
            Preconditions.checkArgument(state != state2);
            this.f35406a.enter();
            try {
                this.f35411f = true;
                if (this.f35410e) {
                    Preconditions.checkState(this.f35407b.remove(state, service), "Service %s not at the expected location in the state map %s", service, state);
                    Preconditions.checkState(this.f35407b.put(state2, service), "Service %s in the state map unexpectedly at %s", service, state2);
                    Stopwatch stopwatch = this.f35409d.get(service);
                    if (stopwatch == null) {
                        stopwatch = Stopwatch.createStarted();
                        this.f35409d.put(service, stopwatch);
                    }
                    Service.State state3 = Service.State.RUNNING;
                    if (state2.compareTo(state3) >= 0 && stopwatch.isRunning()) {
                        stopwatch.stop();
                        if (!(service instanceof C6393c)) {
                            ServiceManager.f35399c.log(Level.FINE, "Started {0} in {1}.", new Object[]{service, stopwatch});
                        }
                    }
                    Service.State state4 = Service.State.FAILED;
                    if (state2 == state4) {
                        m27801h(service);
                    }
                    if (this.f35408c.count(state3) == this.f35412g) {
                        m27802i();
                    } else if (this.f35408c.count(Service.State.TERMINATED) + this.f35408c.count(state4) == this.f35412g) {
                        m27803j();
                    }
                }
            } finally {
                this.f35406a.leave();
                m27800g();
            }
        }

        /* renamed from: o */
        public void m27808o(Service service) {
            this.f35406a.enter();
            try {
                if (this.f35409d.get(service) == null) {
                    this.f35409d.put(service, Stopwatch.createStarted());
                }
            } finally {
                this.f35406a.leave();
            }
        }
    }

    public ServiceManager(Iterable<? extends Service> iterable) {
        ImmutableList<Service> copyOf = ImmutableList.copyOf(iterable);
        if (copyOf.isEmpty()) {
            C6391a c6391a = null;
            f35399c.log(Level.WARNING, "ServiceManager configured with no services.  Is your application configured properly?", (Throwable) new EmptyServiceManagerWarning(c6391a));
            copyOf = ImmutableList.m26162of(new C6393c(c6391a));
        }
        C6395e c6395e = new C6395e(copyOf);
        this.f35402a = c6395e;
        this.f35403b = copyOf;
        WeakReference weakReference = new WeakReference(c6395e);
        UnmodifiableIterator<Service> it2 = copyOf.iterator();
        while (it2.hasNext()) {
            Service next = it2.next();
            next.addListener(new C6394d(next, weakReference), MoreExecutors.directExecutor());
            Preconditions.checkArgument(next.state() == Service.State.NEW, "Can only manage NEW services, %s", next);
        }
        this.f35402a.m27804k();
    }

    public void addListener(Listener listener, Executor executor) {
        this.f35402a.m27794a(listener, executor);
    }

    public void awaitHealthy() {
        this.f35402a.m27795b();
    }

    public void awaitStopped() {
        this.f35402a.m27797d();
    }

    public boolean isHealthy() {
        UnmodifiableIterator<Service> it2 = this.f35403b.iterator();
        while (it2.hasNext()) {
            if (!it2.next().isRunning()) {
                return false;
            }
        }
        return true;
    }

    @CanIgnoreReturnValue
    public ServiceManager startAsync() {
        UnmodifiableIterator<Service> it2 = this.f35403b.iterator();
        while (it2.hasNext()) {
            Preconditions.checkState(it2.next().state() == Service.State.NEW, "Not all services are NEW, cannot start %s", this);
        }
        UnmodifiableIterator<Service> it3 = this.f35403b.iterator();
        while (it3.hasNext()) {
            Service next = it3.next();
            try {
                this.f35402a.m27808o(next);
                next.startAsync();
            } catch (IllegalStateException e) {
                Logger logger = f35399c;
                Level level = Level.WARNING;
                String valueOf = String.valueOf(next);
                StringBuilder sb = new StringBuilder(valueOf.length() + 24);
                sb.append("Unable to start Service ");
                sb.append(valueOf);
                logger.log(level, sb.toString(), (Throwable) e);
            }
        }
        return this;
    }

    public ImmutableMap<Service, Duration> startupDurations() {
        return ImmutableMap.copyOf(Maps.transformValues(startupTimes(), new Function() { // from class: com.sunia.HTREnginev2.vhm
            @Override // com.google.common.base.Function, java.util.function.Function
            public final Object apply(Object obj) {
                return Duration.ofMillis(((Long) obj).longValue());
            }
        }));
    }

    public ImmutableMap<Service, Long> startupTimes() {
        return this.f35402a.m27806m();
    }

    @CanIgnoreReturnValue
    public ServiceManager stopAsync() {
        UnmodifiableIterator<Service> it2 = this.f35403b.iterator();
        while (it2.hasNext()) {
            it2.next().stopAsync();
        }
        return this;
    }

    public String toString() {
        return MoreObjects.toStringHelper((Class<?>) ServiceManager.class).add("services", Collections2.filter(this.f35403b, Predicates.not(Predicates.instanceOf(C6393c.class)))).toString();
    }

    public void awaitHealthy(Duration duration) throws TimeoutException {
        awaitHealthy(ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    public void awaitStopped(Duration duration) throws TimeoutException {
        awaitStopped(ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    @Override // com.google.common.util.concurrent.InterfaceC6417i
    public ImmutableSetMultimap<Service.State, Service> servicesByState() {
        return this.f35402a.m27805l();
    }

    public void awaitHealthy(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f35402a.m27796c(j, timeUnit);
    }

    public void awaitStopped(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f35402a.m27798e(j, timeUnit);
    }
}
