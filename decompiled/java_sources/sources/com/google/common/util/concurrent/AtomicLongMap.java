package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.AtomicLongMap;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.C14189og;
import com.sunia.HTREnginev2.C14239pg;
import com.sunia.HTREnginev2.pnf;
import java.io.Serializable;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongUnaryOperator;
import java.util.function.Predicate;
import javax.annotation.CheckForNull;

@GwtCompatible
@pnf
/* loaded from: classes6.dex */
public final class AtomicLongMap<K> implements Serializable {

    @CheckForNull
    private transient Map<K, Long> asMap;
    private final ConcurrentHashMap<K, Long> map;

    private AtomicLongMap(ConcurrentHashMap<K, Long> concurrentHashMap) {
        this.map = (ConcurrentHashMap) Preconditions.checkNotNull(concurrentHashMap);
    }

    public static <K> AtomicLongMap<K> create() {
        return new AtomicLongMap<>(new ConcurrentHashMap());
    }

    private Map<K, Long> createAsMap() {
        return Collections.unmodifiableMap(this.map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$getAndUpdate$1(AtomicLong atomicLong, LongUnaryOperator longUnaryOperator, Object obj, Long l) {
        long longValue = l == null ? 0L : l.longValue();
        atomicLong.set(longValue);
        return Long.valueOf(longUnaryOperator.applyAsLong(longValue));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ long lambda$put$4(long j, long j2) {
        return j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$putIfAbsent$6(AtomicBoolean atomicBoolean, long j, Object obj, Long l) {
        if (l != null && l.longValue() != 0) {
            return l;
        }
        atomicBoolean.set(true);
        return Long.valueOf(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$removeAllZeros$5(Long l) {
        return l.longValue() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$updateAndGet$0(LongUnaryOperator longUnaryOperator, Object obj, Long l) {
        return Long.valueOf(longUnaryOperator.applyAsLong(l == null ? 0L : l.longValue()));
    }

    @CanIgnoreReturnValue
    public long accumulateAndGet(K k, final long j, final LongBinaryOperator longBinaryOperator) {
        Preconditions.checkNotNull(longBinaryOperator);
        return updateAndGet(k, new LongUnaryOperator() { // from class: com.sunia.HTREnginev2.qg
            @Override // java.util.function.LongUnaryOperator
            public final long applyAsLong(long j2) {
                long applyAsLong;
                applyAsLong = longBinaryOperator.applyAsLong(j2, j);
                return applyAsLong;
            }
        });
    }

    @CanIgnoreReturnValue
    public long addAndGet(K k, long j) {
        return accumulateAndGet(k, j, new C14189og());
    }

    public Map<K, Long> asMap() {
        Map<K, Long> map = this.asMap;
        if (map != null) {
            return map;
        }
        Map<K, Long> createAsMap = createAsMap();
        this.asMap = createAsMap;
        return createAsMap;
    }

    public void clear() {
        this.map.clear();
    }

    public boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    @CanIgnoreReturnValue
    public long decrementAndGet(K k) {
        return addAndGet(k, -1L);
    }

    public long get(K k) {
        return this.map.getOrDefault(k, 0L).longValue();
    }

    @CanIgnoreReturnValue
    public long getAndAccumulate(K k, final long j, final LongBinaryOperator longBinaryOperator) {
        Preconditions.checkNotNull(longBinaryOperator);
        return getAndUpdate(k, new LongUnaryOperator() { // from class: com.sunia.HTREnginev2.tg
            @Override // java.util.function.LongUnaryOperator
            public final long applyAsLong(long j2) {
                long applyAsLong;
                applyAsLong = longBinaryOperator.applyAsLong(j2, j);
                return applyAsLong;
            }
        });
    }

    @CanIgnoreReturnValue
    public long getAndAdd(K k, long j) {
        return getAndAccumulate(k, j, new C14189og());
    }

    @CanIgnoreReturnValue
    public long getAndDecrement(K k) {
        return getAndAdd(k, -1L);
    }

    @CanIgnoreReturnValue
    public long getAndIncrement(K k) {
        return getAndAdd(k, 1L);
    }

    @CanIgnoreReturnValue
    public long getAndUpdate(K k, final LongUnaryOperator longUnaryOperator) {
        Preconditions.checkNotNull(longUnaryOperator);
        final AtomicLong atomicLong = new AtomicLong();
        this.map.compute(k, new BiFunction() { // from class: com.sunia.HTREnginev2.ng
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Long lambda$getAndUpdate$1;
                lambda$getAndUpdate$1 = AtomicLongMap.lambda$getAndUpdate$1(atomicLong, longUnaryOperator, obj, (Long) obj2);
                return lambda$getAndUpdate$1;
            }
        });
        return atomicLong.get();
    }

    @CanIgnoreReturnValue
    public long incrementAndGet(K k) {
        return addAndGet(k, 1L);
    }

    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    @CanIgnoreReturnValue
    public long put(K k, final long j) {
        return getAndUpdate(k, new LongUnaryOperator() { // from class: com.sunia.HTREnginev2.kg
            @Override // java.util.function.LongUnaryOperator
            public final long applyAsLong(long j2) {
                long lambda$put$4;
                lambda$put$4 = AtomicLongMap.lambda$put$4(j, j2);
                return lambda$put$4;
            }
        });
    }

    public void putAll(Map<? extends K, ? extends Long> map) {
        map.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.sg
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                AtomicLongMap.this.put(obj, ((Long) obj2).longValue());
            }
        });
    }

    public long putIfAbsent(K k, final long j) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Long compute = this.map.compute(k, new BiFunction() { // from class: com.sunia.HTREnginev2.mg
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Long lambda$putIfAbsent$6;
                lambda$putIfAbsent$6 = AtomicLongMap.lambda$putIfAbsent$6(atomicBoolean, j, obj, (Long) obj2);
                return lambda$putIfAbsent$6;
            }
        });
        if (atomicBoolean.get()) {
            return 0L;
        }
        return compute.longValue();
    }

    @CanIgnoreReturnValue
    public long remove(K k) {
        Long remove = this.map.remove(k);
        if (remove == null) {
            return 0L;
        }
        return remove.longValue();
    }

    public void removeAllZeros() {
        this.map.values().removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.rg
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$removeAllZeros$5;
                lambda$removeAllZeros$5 = AtomicLongMap.lambda$removeAllZeros$5((Long) obj);
                return lambda$removeAllZeros$5;
            }
        });
    }

    @CanIgnoreReturnValue
    @Beta
    public boolean removeIfZero(K k) {
        return remove(k, 0L);
    }

    public boolean replace(K k, long j, long j2) {
        return j == 0 ? putIfAbsent(k, j2) == 0 : this.map.replace(k, Long.valueOf(j), Long.valueOf(j2));
    }

    public int size() {
        return this.map.size();
    }

    public long sum() {
        return this.map.values().stream().mapToLong(new C14239pg()).sum();
    }

    public String toString() {
        return this.map.toString();
    }

    @CanIgnoreReturnValue
    public long updateAndGet(K k, final LongUnaryOperator longUnaryOperator) {
        Preconditions.checkNotNull(longUnaryOperator);
        return this.map.compute(k, new BiFunction() { // from class: com.sunia.HTREnginev2.lg
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Long lambda$updateAndGet$0;
                lambda$updateAndGet$0 = AtomicLongMap.lambda$updateAndGet$0(longUnaryOperator, obj, (Long) obj2);
                return lambda$updateAndGet$0;
            }
        }).longValue();
    }

    public static <K> AtomicLongMap<K> create(Map<? extends K, ? extends Long> map) {
        AtomicLongMap<K> create = create();
        create.putAll(map);
        return create;
    }

    public boolean remove(K k, long j) {
        return this.map.remove(k, Long.valueOf(j));
    }
}
