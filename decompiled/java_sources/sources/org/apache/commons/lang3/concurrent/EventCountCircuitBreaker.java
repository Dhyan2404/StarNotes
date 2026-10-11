package org.apache.commons.lang3.concurrent;

import com.sunia.HTREnginev2.cyi;
import java.util.EnumMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.lang3.concurrent.AbstractCircuitBreaker;

/* loaded from: classes12.dex */
public class EventCountCircuitBreaker extends AbstractCircuitBreaker<Integer> {

    /* renamed from: g */
    public static final Map<AbstractCircuitBreaker.State, AbstractC18950c> f107507g = m67299b();

    /* renamed from: b */
    public final AtomicReference<C18949b> f107508b;

    /* renamed from: c */
    public final int f107509c;

    /* renamed from: d */
    public final long f107510d;

    /* renamed from: e */
    public final int f107511e;

    /* renamed from: f */
    public final long f107512f;

    /* renamed from: org.apache.commons.lang3.concurrent.EventCountCircuitBreaker$b */
    /* loaded from: classes12.dex */
    public static class C18949b {

        /* renamed from: a */
        public final int f107513a;

        /* renamed from: b */
        public final long f107514b;

        public C18949b(int i, long j) {
            this.f107513a = i;
            this.f107514b = j;
        }

        /* renamed from: a */
        public long m67306a() {
            return this.f107514b;
        }

        /* renamed from: b */
        public int m67307b() {
            return this.f107513a;
        }

        /* renamed from: c */
        public C18949b m67308c(int i) {
            return i != 0 ? new C18949b(m67307b() + i, m67306a()) : this;
        }
    }

    /* renamed from: org.apache.commons.lang3.concurrent.EventCountCircuitBreaker$c */
    /* loaded from: classes12.dex */
    public static abstract class AbstractC18950c {
        public AbstractC18950c() {
        }

        /* renamed from: a */
        public abstract long mo67309a(EventCountCircuitBreaker eventCountCircuitBreaker);

        /* renamed from: b */
        public boolean m67310b(EventCountCircuitBreaker eventCountCircuitBreaker, C18949b c18949b, long j) {
            return j - c18949b.m67306a() > mo67309a(eventCountCircuitBreaker);
        }

        /* renamed from: c */
        public abstract boolean mo67311c(EventCountCircuitBreaker eventCountCircuitBreaker, C18949b c18949b, C18949b c18949b2);
    }

    /* renamed from: org.apache.commons.lang3.concurrent.EventCountCircuitBreaker$d */
    /* loaded from: classes12.dex */
    public static class C18951d extends AbstractC18950c {
        public C18951d() {
            super();
        }

        @Override // org.apache.commons.lang3.concurrent.EventCountCircuitBreaker.AbstractC18950c
        /* renamed from: a */
        public long mo67309a(EventCountCircuitBreaker eventCountCircuitBreaker) {
            return eventCountCircuitBreaker.getOpeningInterval();
        }

        @Override // org.apache.commons.lang3.concurrent.EventCountCircuitBreaker.AbstractC18950c
        /* renamed from: c */
        public boolean mo67311c(EventCountCircuitBreaker eventCountCircuitBreaker, C18949b c18949b, C18949b c18949b2) {
            return c18949b2.m67307b() > eventCountCircuitBreaker.getOpeningThreshold();
        }
    }

    /* renamed from: org.apache.commons.lang3.concurrent.EventCountCircuitBreaker$e */
    /* loaded from: classes12.dex */
    public static class C18952e extends AbstractC18950c {
        public C18952e() {
            super();
        }

        @Override // org.apache.commons.lang3.concurrent.EventCountCircuitBreaker.AbstractC18950c
        /* renamed from: a */
        public long mo67309a(EventCountCircuitBreaker eventCountCircuitBreaker) {
            return eventCountCircuitBreaker.getClosingInterval();
        }

        @Override // org.apache.commons.lang3.concurrent.EventCountCircuitBreaker.AbstractC18950c
        /* renamed from: c */
        public boolean mo67311c(EventCountCircuitBreaker eventCountCircuitBreaker, C18949b c18949b, C18949b c18949b2) {
            return c18949b2.m67306a() != c18949b.m67306a() && c18949b.m67307b() < eventCountCircuitBreaker.getClosingThreshold();
        }
    }

    public EventCountCircuitBreaker(int i, long j, TimeUnit timeUnit, int i2, long j2, TimeUnit timeUnit2) {
        this.f107508b = new AtomicReference<>(new C18949b(0, 0L));
        this.f107509c = i;
        this.f107510d = timeUnit.toNanos(j);
        this.f107511e = i2;
        this.f107512f = timeUnit2.toNanos(j2);
    }

    /* renamed from: b */
    public static Map<AbstractCircuitBreaker.State, AbstractC18950c> m67299b() {
        EnumMap enumMap = new EnumMap(AbstractCircuitBreaker.State.class);
        enumMap.put((EnumMap) AbstractCircuitBreaker.State.CLOSED, (AbstractCircuitBreaker.State) new C18951d());
        enumMap.put((EnumMap) AbstractCircuitBreaker.State.OPEN, (AbstractCircuitBreaker.State) new C18952e());
        return enumMap;
    }

    /* renamed from: f */
    public static AbstractC18950c m67300f(AbstractCircuitBreaker.State state) {
        return f107507g.get(state);
    }

    /* renamed from: a */
    public final void m67301a(AbstractCircuitBreaker.State state) {
        changeState(state);
        this.f107508b.set(new C18949b(0, m67303d()));
    }

    /* renamed from: c */
    public final C18949b m67302c(int i, C18949b c18949b, AbstractCircuitBreaker.State state, long j) {
        return m67300f(state).m67310b(this, c18949b, j) ? new C18949b(i, j) : c18949b.m67308c(i);
    }

    @Override // org.apache.commons.lang3.concurrent.AbstractCircuitBreaker, org.apache.commons.lang3.concurrent.CircuitBreaker
    public boolean checkState() {
        return m67304e(0);
    }

    @Override // org.apache.commons.lang3.concurrent.AbstractCircuitBreaker, org.apache.commons.lang3.concurrent.CircuitBreaker
    public void close() {
        super.close();
        this.f107508b.set(new C18949b(0, m67303d()));
    }

    /* renamed from: d */
    public long m67303d() {
        return System.nanoTime();
    }

    /* renamed from: e */
    public final boolean m67304e(int i) {
        AbstractCircuitBreaker.State state;
        C18949b c18949b;
        C18949b m67302c;
        do {
            long m67303d = m67303d();
            state = this.state.get();
            c18949b = this.f107508b.get();
            m67302c = m67302c(i, c18949b, state, m67303d);
        } while (!m67305g(c18949b, m67302c));
        if (m67300f(state).mo67311c(this, c18949b, m67302c)) {
            state = state.oppositeState();
            m67301a(state);
        }
        return !AbstractCircuitBreaker.isOpen(state);
    }

    /* renamed from: g */
    public final boolean m67305g(C18949b c18949b, C18949b c18949b2) {
        return c18949b == c18949b2 || cyi.m53538a(this.f107508b, c18949b, c18949b2);
    }

    public long getClosingInterval() {
        return this.f107512f;
    }

    public int getClosingThreshold() {
        return this.f107511e;
    }

    public long getOpeningInterval() {
        return this.f107510d;
    }

    public int getOpeningThreshold() {
        return this.f107509c;
    }

    @Override // org.apache.commons.lang3.concurrent.AbstractCircuitBreaker, org.apache.commons.lang3.concurrent.CircuitBreaker
    public void open() {
        super.open();
        this.f107508b.set(new C18949b(0, m67303d()));
    }

    @Override // org.apache.commons.lang3.concurrent.AbstractCircuitBreaker, org.apache.commons.lang3.concurrent.CircuitBreaker
    public boolean incrementAndCheckState(Integer num) throws CircuitBreakingException {
        return m67304e(1);
    }

    public boolean incrementAndCheckState() {
        return incrementAndCheckState((Integer) 1);
    }

    public EventCountCircuitBreaker(int i, long j, TimeUnit timeUnit, int i2) {
        this(i, j, timeUnit, i2, j, timeUnit);
    }

    public EventCountCircuitBreaker(int i, long j, TimeUnit timeUnit) {
        this(i, j, timeUnit, i);
    }
}
