package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.collect.MapMaker;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.j2objc.annotations.Weak;
import com.sunia.HTREnginev2.pnf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

@Beta
@GwtIncompatible
@CanIgnoreReturnValue
@pnf
/* loaded from: classes6.dex */
public class CycleDetectingLockFactory {

    /* renamed from: b */
    public static final ConcurrentMap<Class<? extends Enum<?>>, Map<? extends Enum<?>, C6357c>> f35308b = new MapMaker().weakKeys().makeMap();

    /* renamed from: c */
    public static final Logger f35309c = Logger.getLogger(CycleDetectingLockFactory.class.getName());

    /* renamed from: d */
    public static final ThreadLocal<ArrayList<C6357c>> f35310d = new C6355a();

    /* renamed from: a */
    public final Policy f35311a;

    /* loaded from: classes6.dex */
    public final class CycleDetectingReentrantLock extends ReentrantLock implements InterfaceC6356b {
        private final C6357c lockGraphNode;

        public /* synthetic */ CycleDetectingReentrantLock(CycleDetectingLockFactory cycleDetectingLockFactory, C6357c c6357c, boolean z, C6355a c6355a) {
            this(c6357c, z);
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.InterfaceC6356b
        public C6357c getLockGraphNode() {
            return this.lockGraphNode;
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.InterfaceC6356b
        public boolean isAcquiredByCurrentThread() {
            return isHeldByCurrentThread();
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory.this.m27695a(this);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.m27694h(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory.this.m27695a(this);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.m27694h(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory.this.m27695a(this);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.m27694h(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.m27694h(this);
            }
        }

        private CycleDetectingReentrantLock(C6357c c6357c, boolean z) {
            super(z);
            this.lockGraphNode = (C6357c) Preconditions.checkNotNull(c6357c);
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory.this.m27695a(this);
            try {
                return super.tryLock(j, timeUnit);
            } finally {
                CycleDetectingLockFactory.m27694h(this);
            }
        }
    }

    /* loaded from: classes6.dex */
    public final class CycleDetectingReentrantReadWriteLock extends ReentrantReadWriteLock implements InterfaceC6356b {
        private final C6357c lockGraphNode;
        private final CycleDetectingReentrantReadLock readLock;
        private final CycleDetectingReentrantWriteLock writeLock;

        public /* synthetic */ CycleDetectingReentrantReadWriteLock(CycleDetectingLockFactory cycleDetectingLockFactory, C6357c c6357c, boolean z, C6355a c6355a) {
            this(cycleDetectingLockFactory, c6357c, z);
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.InterfaceC6356b
        public C6357c getLockGraphNode() {
            return this.lockGraphNode;
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.InterfaceC6356b
        public boolean isAcquiredByCurrentThread() {
            return isWriteLockedByCurrentThread() || getReadHoldCount() > 0;
        }

        private CycleDetectingReentrantReadWriteLock(CycleDetectingLockFactory cycleDetectingLockFactory, C6357c c6357c, boolean z) {
            super(z);
            this.readLock = new CycleDetectingReentrantReadLock(this);
            this.writeLock = new CycleDetectingReentrantWriteLock(this);
            this.lockGraphNode = (C6357c) Preconditions.checkNotNull(c6357c);
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock, java.util.concurrent.locks.ReadWriteLock
        public ReentrantReadWriteLock.ReadLock readLock() {
            return this.readLock;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock, java.util.concurrent.locks.ReadWriteLock
        public ReentrantReadWriteLock.WriteLock writeLock() {
            return this.writeLock;
        }
    }

    /* loaded from: classes6.dex */
    public static class ExampleStackTrace extends IllegalStateException {
        static final StackTraceElement[] EMPTY_STACK_TRACE = new StackTraceElement[0];
        static final ImmutableSet<String> EXCLUDED_CLASS_NAMES = ImmutableSet.m26237of(CycleDetectingLockFactory.class.getName(), ExampleStackTrace.class.getName(), C6357c.class.getName());

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public ExampleStackTrace(com.google.common.util.concurrent.CycleDetectingLockFactory.C6357c r4, com.google.common.util.concurrent.CycleDetectingLockFactory.C6357c r5) {
            /*
                r3 = this;
                java.lang.String r4 = r4.m27700d()
                java.lang.String r5 = r5.m27700d()
                java.lang.String r0 = java.lang.String.valueOf(r4)
                int r0 = r0.length()
                int r0 = r0 + 4
                java.lang.String r1 = java.lang.String.valueOf(r5)
                int r1 = r1.length()
                int r0 = r0 + r1
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>(r0)
                r1.append(r4)
                java.lang.String r4 = " -> "
                r1.append(r4)
                r1.append(r5)
                java.lang.String r4 = r1.toString()
                r3.<init>(r4)
                java.lang.StackTraceElement[] r4 = r3.getStackTrace()
                int r5 = r4.length
                r0 = 0
            L38:
                if (r0 >= r5) goto L6d
                java.lang.Class<com.google.common.util.concurrent.CycleDetectingLockFactory$WithExplicitOrdering> r1 = com.google.common.util.concurrent.CycleDetectingLockFactory.WithExplicitOrdering.class
                java.lang.String r1 = r1.getName()
                r2 = r4[r0]
                java.lang.String r2 = r2.getClassName()
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L52
                java.lang.StackTraceElement[] r4 = com.google.common.util.concurrent.CycleDetectingLockFactory.ExampleStackTrace.EMPTY_STACK_TRACE
                r3.setStackTrace(r4)
                goto L6d
            L52:
                com.google.common.collect.ImmutableSet<java.lang.String> r1 = com.google.common.util.concurrent.CycleDetectingLockFactory.ExampleStackTrace.EXCLUDED_CLASS_NAMES
                r2 = r4[r0]
                java.lang.String r2 = r2.getClassName()
                boolean r1 = r1.contains(r2)
                if (r1 != 0) goto L6a
                java.lang.Object[] r4 = java.util.Arrays.copyOfRange(r4, r0, r5)
                java.lang.StackTraceElement[] r4 = (java.lang.StackTraceElement[]) r4
                r3.setStackTrace(r4)
                goto L6d
            L6a:
                int r0 = r0 + 1
                goto L38
            L6d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.CycleDetectingLockFactory.ExampleStackTrace.<init>(com.google.common.util.concurrent.CycleDetectingLockFactory$c, com.google.common.util.concurrent.CycleDetectingLockFactory$c):void");
        }
    }

    @Beta
    /* loaded from: classes6.dex */
    public enum Policies implements Policy {
        THROW { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.Policies.1
            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policy
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
                throw potentialDeadlockException;
            }
        },
        WARN { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.Policies.2
            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policy
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
                CycleDetectingLockFactory.f35309c.log(Level.SEVERE, "Detected potential deadlock", (Throwable) potentialDeadlockException);
            }
        },
        DISABLED { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.Policies.3
            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policy
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
            }
        };

        /* synthetic */ Policies(C6355a c6355a) {
            this();
        }
    }

    @Beta
    /* loaded from: classes6.dex */
    public interface Policy {
        void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException);
    }

    @Beta
    /* loaded from: classes6.dex */
    public static final class PotentialDeadlockException extends ExampleStackTrace {
        private final ExampleStackTrace conflictingStackTrace;

        public /* synthetic */ PotentialDeadlockException(C6357c c6357c, C6357c c6357c2, ExampleStackTrace exampleStackTrace, C6355a c6355a) {
            this(c6357c, c6357c2, exampleStackTrace);
        }

        public ExampleStackTrace getConflictingStackTrace() {
            return this.conflictingStackTrace;
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            String message = super.getMessage();
            Objects.requireNonNull(message);
            StringBuilder sb = new StringBuilder(message);
            for (Throwable th = this.conflictingStackTrace; th != null; th = th.getCause()) {
                sb.append(", ");
                sb.append(th.getMessage());
            }
            return sb.toString();
        }

        private PotentialDeadlockException(C6357c c6357c, C6357c c6357c2, ExampleStackTrace exampleStackTrace) {
            super(c6357c, c6357c2);
            this.conflictingStackTrace = exampleStackTrace;
            initCause(exampleStackTrace);
        }
    }

    @Beta
    /* loaded from: classes6.dex */
    public static final class WithExplicitOrdering<E extends Enum<E>> extends CycleDetectingLockFactory {

        /* renamed from: e */
        public final Map<E, C6357c> f35312e;

        @VisibleForTesting
        public WithExplicitOrdering(Policy policy, Map<E, C6357c> map) {
            super(policy, null);
            this.f35312e = map;
        }

        public ReentrantLock newReentrantLock(E e) {
            return newReentrantLock((WithExplicitOrdering<E>) e, false);
        }

        public ReentrantReadWriteLock newReentrantReadWriteLock(E e) {
            return newReentrantReadWriteLock((WithExplicitOrdering<E>) e, false);
        }

        public ReentrantLock newReentrantLock(E e, boolean z) {
            if (this.f35311a == Policies.DISABLED) {
                return new ReentrantLock(z);
            }
            C6357c c6357c = this.f35312e.get(e);
            Objects.requireNonNull(c6357c);
            return new CycleDetectingReentrantLock(this, c6357c, z, null);
        }

        public ReentrantReadWriteLock newReentrantReadWriteLock(E e, boolean z) {
            if (this.f35311a == Policies.DISABLED) {
                return new ReentrantReadWriteLock(z);
            }
            C6357c c6357c = this.f35312e.get(e);
            Objects.requireNonNull(c6357c);
            return new CycleDetectingReentrantReadWriteLock(this, c6357c, z, null);
        }
    }

    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$a */
    /* loaded from: classes6.dex */
    public class C6355a extends ThreadLocal<ArrayList<C6357c>> {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ArrayList<C6357c> initialValue() {
            return Lists.newArrayListWithCapacity(3);
        }
    }

    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$b */
    /* loaded from: classes6.dex */
    public interface InterfaceC6356b {
        C6357c getLockGraphNode();

        boolean isAcquiredByCurrentThread();
    }

    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$c */
    /* loaded from: classes6.dex */
    public static class C6357c {

        /* renamed from: a */
        public final Map<C6357c, ExampleStackTrace> f35313a = new MapMaker().weakKeys().makeMap();

        /* renamed from: b */
        public final Map<C6357c, PotentialDeadlockException> f35314b = new MapMaker().weakKeys().makeMap();

        /* renamed from: c */
        public final String f35315c;

        public C6357c(String str) {
            this.f35315c = (String) Preconditions.checkNotNull(str);
        }

        /* renamed from: a */
        public void m27697a(Policy policy, C6357c c6357c) {
            Preconditions.checkState(this != c6357c, "Attempted to acquire multiple locks with the same rank %s", c6357c.m27700d());
            if (this.f35313a.containsKey(c6357c)) {
                return;
            }
            PotentialDeadlockException potentialDeadlockException = this.f35314b.get(c6357c);
            C6355a c6355a = null;
            if (potentialDeadlockException != null) {
                policy.handlePotentialDeadlock(new PotentialDeadlockException(c6357c, this, potentialDeadlockException.getConflictingStackTrace(), c6355a));
                return;
            }
            ExampleStackTrace m27699c = c6357c.m27699c(this, Sets.newIdentityHashSet());
            if (m27699c == null) {
                this.f35313a.put(c6357c, new ExampleStackTrace(c6357c, this));
                return;
            }
            PotentialDeadlockException potentialDeadlockException2 = new PotentialDeadlockException(c6357c, this, m27699c, c6355a);
            this.f35314b.put(c6357c, potentialDeadlockException2);
            policy.handlePotentialDeadlock(potentialDeadlockException2);
        }

        /* renamed from: b */
        public void m27698b(Policy policy, List<C6357c> list) {
            Iterator<C6357c> it2 = list.iterator();
            while (it2.hasNext()) {
                m27697a(policy, it2.next());
            }
        }

        @CheckForNull
        /* renamed from: c */
        public final ExampleStackTrace m27699c(C6357c c6357c, Set<C6357c> set) {
            if (!set.add(this)) {
                return null;
            }
            ExampleStackTrace exampleStackTrace = this.f35313a.get(c6357c);
            if (exampleStackTrace != null) {
                return exampleStackTrace;
            }
            for (Map.Entry<C6357c, ExampleStackTrace> entry : this.f35313a.entrySet()) {
                C6357c key = entry.getKey();
                ExampleStackTrace m27699c = key.m27699c(c6357c, set);
                if (m27699c != null) {
                    ExampleStackTrace exampleStackTrace2 = new ExampleStackTrace(key, this);
                    exampleStackTrace2.setStackTrace(entry.getValue().getStackTrace());
                    exampleStackTrace2.initCause(m27699c);
                    return exampleStackTrace2;
                }
            }
            return null;
        }

        /* renamed from: d */
        public String m27700d() {
            return this.f35315c;
        }
    }

    public /* synthetic */ CycleDetectingLockFactory(Policy policy, C6355a c6355a) {
        this(policy);
    }

    @VisibleForTesting
    /* renamed from: e */
    public static <E extends Enum<E>> Map<E, C6357c> m27691e(Class<E> cls) {
        EnumMap newEnumMap = Maps.newEnumMap(cls);
        E[] enumConstants = cls.getEnumConstants();
        int length = enumConstants.length;
        ArrayList newArrayListWithCapacity = Lists.newArrayListWithCapacity(length);
        int i = 0;
        for (E e : enumConstants) {
            C6357c c6357c = new C6357c(m27692f(e));
            newArrayListWithCapacity.add(c6357c);
            newEnumMap.put((EnumMap) e, (E) c6357c);
        }
        for (int i2 = 1; i2 < length; i2++) {
            ((C6357c) newArrayListWithCapacity.get(i2)).m27698b(Policies.THROW, newArrayListWithCapacity.subList(0, i2));
        }
        while (i < length - 1) {
            i++;
            ((C6357c) newArrayListWithCapacity.get(i)).m27698b(Policies.DISABLED, newArrayListWithCapacity.subList(i, length));
        }
        return Collections.unmodifiableMap(newEnumMap);
    }

    /* renamed from: f */
    public static String m27692f(Enum<?> r3) {
        String simpleName = r3.getDeclaringClass().getSimpleName();
        String name = r3.name();
        StringBuilder sb = new StringBuilder(simpleName.length() + 1 + String.valueOf(name).length());
        sb.append(simpleName);
        sb.append(".");
        sb.append(name);
        return sb.toString();
    }

    /* renamed from: g */
    public static <E extends Enum<E>> Map<? extends E, C6357c> m27693g(Class<E> cls) {
        ConcurrentMap<Class<? extends Enum<?>>, Map<? extends Enum<?>, C6357c>> concurrentMap = f35308b;
        Map<? extends E, C6357c> map = (Map) concurrentMap.get(cls);
        if (map != null) {
            return map;
        }
        Map<? extends Enum<?>, C6357c> m27691e = m27691e(cls);
        return (Map) MoreObjects.firstNonNull(concurrentMap.putIfAbsent(cls, m27691e), m27691e);
    }

    /* renamed from: h */
    public static void m27694h(InterfaceC6356b interfaceC6356b) {
        if (interfaceC6356b.isAcquiredByCurrentThread()) {
            return;
        }
        ArrayList<C6357c> arrayList = f35310d.get();
        C6357c lockGraphNode = interfaceC6356b.getLockGraphNode();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == lockGraphNode) {
                arrayList.remove(size);
                return;
            }
        }
    }

    public static CycleDetectingLockFactory newInstance(Policy policy) {
        return new CycleDetectingLockFactory(policy);
    }

    public static <E extends Enum<E>> WithExplicitOrdering<E> newInstanceWithExplicitOrdering(Class<E> cls, Policy policy) {
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(policy);
        return new WithExplicitOrdering<>(policy, m27693g(cls));
    }

    /* renamed from: a */
    public final void m27695a(InterfaceC6356b interfaceC6356b) {
        if (interfaceC6356b.isAcquiredByCurrentThread()) {
            return;
        }
        ArrayList<C6357c> arrayList = f35310d.get();
        C6357c lockGraphNode = interfaceC6356b.getLockGraphNode();
        lockGraphNode.m27698b(this.f35311a, arrayList);
        arrayList.add(lockGraphNode);
    }

    public ReentrantLock newReentrantLock(String str) {
        return newReentrantLock(str, false);
    }

    public ReentrantReadWriteLock newReentrantReadWriteLock(String str) {
        return newReentrantReadWriteLock(str, false);
    }

    public CycleDetectingLockFactory(Policy policy) {
        this.f35311a = (Policy) Preconditions.checkNotNull(policy);
    }

    public ReentrantLock newReentrantLock(String str, boolean z) {
        if (this.f35311a == Policies.DISABLED) {
            return new ReentrantLock(z);
        }
        return new CycleDetectingReentrantLock(this, new C6357c(str), z, null);
    }

    public ReentrantReadWriteLock newReentrantReadWriteLock(String str, boolean z) {
        if (this.f35311a == Policies.DISABLED) {
            return new ReentrantReadWriteLock(z);
        }
        return new CycleDetectingReentrantReadWriteLock(this, new C6357c(str), z, null);
    }

    /* loaded from: classes6.dex */
    public class CycleDetectingReentrantReadLock extends ReentrantReadWriteLock.ReadLock {

        @Weak
        final CycleDetectingReentrantReadWriteLock readWriteLock;

        public CycleDetectingReentrantReadLock(CycleDetectingReentrantReadWriteLock cycleDetectingReentrantReadWriteLock) {
            super(cycleDetectingReentrantReadWriteLock);
            this.readWriteLock = cycleDetectingReentrantReadWriteLock;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory.this.m27695a(this.readWriteLock);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.m27694h(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory.this.m27695a(this.readWriteLock);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.m27694h(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory.this.m27695a(this.readWriteLock);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.m27694h(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.m27694h(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory.this.m27695a(this.readWriteLock);
            try {
                return super.tryLock(j, timeUnit);
            } finally {
                CycleDetectingLockFactory.m27694h(this.readWriteLock);
            }
        }
    }

    /* loaded from: classes6.dex */
    public class CycleDetectingReentrantWriteLock extends ReentrantReadWriteLock.WriteLock {

        @Weak
        final CycleDetectingReentrantReadWriteLock readWriteLock;

        public CycleDetectingReentrantWriteLock(CycleDetectingReentrantReadWriteLock cycleDetectingReentrantReadWriteLock) {
            super(cycleDetectingReentrantReadWriteLock);
            this.readWriteLock = cycleDetectingReentrantReadWriteLock;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory.this.m27695a(this.readWriteLock);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.m27694h(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory.this.m27695a(this.readWriteLock);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.m27694h(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory.this.m27695a(this.readWriteLock);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.m27694h(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.m27694h(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory.this.m27695a(this.readWriteLock);
            try {
                return super.tryLock(j, timeUnit);
            } finally {
                CycleDetectingLockFactory.m27694h(this.readWriteLock);
            }
        }
    }
}
