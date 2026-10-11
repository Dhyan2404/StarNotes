package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Equivalence;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.base.Ticker;
import com.google.common.cache.AbstractCache;
import com.google.common.cache.LocalCache;
import com.google.errorprone.annotations.CheckReturnValue;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.rnf;
import java.time.Duration;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

@rnf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public final class CacheBuilder<K, V> {

    /* renamed from: q */
    public static final int f33673q = 16;

    /* renamed from: r */
    public static final int f33674r = 4;

    /* renamed from: s */
    public static final int f33675s = 0;

    /* renamed from: t */
    public static final int f33676t = 0;

    /* renamed from: u */
    public static final Supplier<? extends AbstractCache.StatsCounter> f33677u = Suppliers.ofInstance(new C5675a());

    /* renamed from: v */
    public static final CacheStats f33678v = new CacheStats(0, 0, 0, 0, 0, 0);

    /* renamed from: w */
    public static final Supplier<AbstractCache.StatsCounter> f33679w = new C5676b();

    /* renamed from: x */
    public static final Ticker f33680x = new C5677c();

    /* renamed from: y */
    public static final Logger f33681y = Logger.getLogger(CacheBuilder.class.getName());

    /* renamed from: z */
    public static final int f33682z = -1;

    /* renamed from: f */
    public Weigher<? super K, ? super V> f33688f;

    /* renamed from: g */
    public LocalCache.Strength f33689g;

    /* renamed from: h */
    public LocalCache.Strength f33690h;

    /* renamed from: l */
    public Equivalence<Object> f33694l;

    /* renamed from: m */
    public Equivalence<Object> f33695m;

    /* renamed from: n */
    public RemovalListener<? super K, ? super V> f33696n;

    /* renamed from: o */
    public Ticker f33697o;

    /* renamed from: a */
    public boolean f33683a = true;

    /* renamed from: b */
    public int f33684b = -1;

    /* renamed from: c */
    public int f33685c = -1;

    /* renamed from: d */
    public long f33686d = -1;

    /* renamed from: e */
    public long f33687e = -1;

    /* renamed from: i */
    public long f33691i = -1;

    /* renamed from: j */
    public long f33692j = -1;

    /* renamed from: k */
    public long f33693k = -1;

    /* renamed from: p */
    public Supplier<? extends AbstractCache.StatsCounter> f33698p = f33677u;

    /* loaded from: classes6.dex */
    public enum NullListener implements RemovalListener<Object, Object> {
        INSTANCE;

        @Override // com.google.common.cache.RemovalListener
        public void onRemoval(RemovalNotification<Object, Object> removalNotification) {
        }
    }

    /* loaded from: classes6.dex */
    public enum OneWeigher implements Weigher<Object, Object> {
        INSTANCE;

        @Override // com.google.common.cache.Weigher
        public int weigh(Object obj, Object obj2) {
            return 1;
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilder$a */
    /* loaded from: classes6.dex */
    public class C5675a implements AbstractCache.StatsCounter {
        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordEviction() {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordHits(int i) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordLoadException(long j) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordLoadSuccess(long j) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordMisses(int i) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public CacheStats snapshot() {
            return CacheBuilder.f33678v;
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilder$b */
    /* loaded from: classes6.dex */
    public class C5676b implements Supplier<AbstractCache.StatsCounter> {
        @Override // com.google.common.base.Supplier, java.util.function.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AbstractCache.StatsCounter get() {
            return new AbstractCache.SimpleStatsCounter();
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilder$c */
    /* loaded from: classes6.dex */
    public class C5677c extends Ticker {
        @Override // com.google.common.base.Ticker
        public long read() {
            return 0L;
        }
    }

    @CheckReturnValue
    @GwtIncompatible
    public static CacheBuilder<Object, Object> from(CacheBuilderSpec cacheBuilderSpec) {
        return cacheBuilderSpec.m25907d().m25899s();
    }

    @CheckReturnValue
    public static CacheBuilder<Object, Object> newBuilder() {
        return new CacheBuilder<>();
    }

    @GwtIncompatible
    /* renamed from: v */
    public static long m25880v(Duration duration) {
        try {
            return duration.toNanos();
        } catch (ArithmeticException unused) {
            return duration.isNegative() ? Long.MIN_VALUE : Long.MAX_VALUE;
        }
    }

    /* renamed from: a */
    public final void m25881a() {
        Preconditions.checkState(this.f33693k == -1, "refreshAfterWrite requires a LoadingCache");
    }

    /* renamed from: b */
    public final void m25882b() {
        if (this.f33688f == null) {
            Preconditions.checkState(this.f33687e == -1, "maximumWeight requires weigher");
        } else if (this.f33683a) {
            Preconditions.checkState(this.f33687e != -1, "weigher requires maximumWeight");
        } else if (this.f33687e == -1) {
            f33681y.log(Level.WARNING, "ignoring weigher specified without maximumWeight");
        }
    }

    @CheckReturnValue
    public <K1 extends K, V1 extends V> LoadingCache<K1, V1> build(CacheLoader<? super K1, V1> cacheLoader) {
        m25882b();
        return new LocalCache.LocalLoadingCache(this, cacheLoader);
    }

    /* renamed from: c */
    public int m25883c() {
        int i = this.f33685c;
        if (i == -1) {
            return 4;
        }
        return i;
    }

    public CacheBuilder<K, V> concurrencyLevel(int i) {
        int i2 = this.f33685c;
        Preconditions.checkState(i2 == -1, "concurrency level was already set to %s", i2);
        Preconditions.checkArgument(i > 0);
        this.f33685c = i;
        return this;
    }

    /* renamed from: d */
    public long m25884d() {
        long j = this.f33692j;
        if (j == -1) {
            return 0L;
        }
        return j;
    }

    /* renamed from: e */
    public long m25885e() {
        long j = this.f33691i;
        if (j == -1) {
            return 0L;
        }
        return j;
    }

    @GwtIncompatible
    public CacheBuilder<K, V> expireAfterAccess(Duration duration) {
        return expireAfterAccess(m25880v(duration), TimeUnit.NANOSECONDS);
    }

    @GwtIncompatible
    public CacheBuilder<K, V> expireAfterWrite(Duration duration) {
        return expireAfterWrite(m25880v(duration), TimeUnit.NANOSECONDS);
    }

    /* renamed from: f */
    public int m25886f() {
        int i = this.f33684b;
        if (i == -1) {
            return 16;
        }
        return i;
    }

    /* renamed from: g */
    public Equivalence<Object> m25887g() {
        return (Equivalence) MoreObjects.firstNonNull(this.f33694l, m25888h().defaultEquivalence());
    }

    /* renamed from: h */
    public LocalCache.Strength m25888h() {
        return (LocalCache.Strength) MoreObjects.firstNonNull(this.f33689g, LocalCache.Strength.STRONG);
    }

    /* renamed from: i */
    public long m25889i() {
        if (this.f33691i == 0 || this.f33692j == 0) {
            return 0L;
        }
        return this.f33688f == null ? this.f33686d : this.f33687e;
    }

    public CacheBuilder<K, V> initialCapacity(int i) {
        int i2 = this.f33684b;
        Preconditions.checkState(i2 == -1, "initial capacity was already set to %s", i2);
        Preconditions.checkArgument(i >= 0);
        this.f33684b = i;
        return this;
    }

    /* renamed from: j */
    public long m25890j() {
        long j = this.f33693k;
        if (j == -1) {
            return 0L;
        }
        return j;
    }

    /* renamed from: k */
    public <K1 extends K, V1 extends V> RemovalListener<K1, V1> m25891k() {
        return (RemovalListener) MoreObjects.firstNonNull(this.f33696n, NullListener.INSTANCE);
    }

    /* renamed from: l */
    public Supplier<? extends AbstractCache.StatsCounter> m25892l() {
        return this.f33698p;
    }

    /* renamed from: m */
    public Ticker m25893m(boolean z) {
        Ticker ticker = this.f33697o;
        return ticker != null ? ticker : z ? Ticker.systemTicker() : f33680x;
    }

    public CacheBuilder<K, V> maximumSize(long j) {
        long j2 = this.f33686d;
        Preconditions.checkState(j2 == -1, "maximum size was already set to %s", j2);
        long j3 = this.f33687e;
        Preconditions.checkState(j3 == -1, "maximum weight was already set to %s", j3);
        Preconditions.checkState(this.f33688f == null, "maximum size can not be combined with weigher");
        Preconditions.checkArgument(j >= 0, "maximum size must not be negative");
        this.f33686d = j;
        return this;
    }

    @GwtIncompatible
    public CacheBuilder<K, V> maximumWeight(long j) {
        long j2 = this.f33687e;
        Preconditions.checkState(j2 == -1, "maximum weight was already set to %s", j2);
        long j3 = this.f33686d;
        Preconditions.checkState(j3 == -1, "maximum size was already set to %s", j3);
        Preconditions.checkArgument(j >= 0, "maximum weight must not be negative");
        this.f33687e = j;
        return this;
    }

    /* renamed from: n */
    public Equivalence<Object> m25894n() {
        return (Equivalence) MoreObjects.firstNonNull(this.f33695m, m25895o().defaultEquivalence());
    }

    /* renamed from: o */
    public LocalCache.Strength m25895o() {
        return (LocalCache.Strength) MoreObjects.firstNonNull(this.f33690h, LocalCache.Strength.STRONG);
    }

    /* renamed from: p */
    public <K1 extends K, V1 extends V> Weigher<K1, V1> m25896p() {
        return (Weigher) MoreObjects.firstNonNull(this.f33688f, OneWeigher.INSTANCE);
    }

    /* renamed from: q */
    public boolean m25897q() {
        return this.f33698p == f33679w;
    }

    @GwtIncompatible
    /* renamed from: r */
    public CacheBuilder<K, V> m25898r(Equivalence<Object> equivalence) {
        Equivalence<Object> equivalence2 = this.f33694l;
        Preconditions.checkState(equivalence2 == null, "key equivalence was already set to %s", equivalence2);
        this.f33694l = (Equivalence) Preconditions.checkNotNull(equivalence);
        return this;
    }

    public CacheBuilder<K, V> recordStats() {
        this.f33698p = f33679w;
        return this;
    }

    @GwtIncompatible
    public CacheBuilder<K, V> refreshAfterWrite(Duration duration) {
        return refreshAfterWrite(m25880v(duration), TimeUnit.NANOSECONDS);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    public <K1 extends K, V1 extends V> CacheBuilder<K1, V1> removalListener(RemovalListener<? super K1, ? super V1> removalListener) {
        Preconditions.checkState(this.f33696n == null);
        this.f33696n = (RemovalListener) Preconditions.checkNotNull(removalListener);
        return this;
    }

    @GwtIncompatible
    /* renamed from: s */
    public CacheBuilder<K, V> m25899s() {
        this.f33683a = false;
        return this;
    }

    @GwtIncompatible
    public CacheBuilder<K, V> softValues() {
        return m25901u(LocalCache.Strength.SOFT);
    }

    /* renamed from: t */
    public CacheBuilder<K, V> m25900t(LocalCache.Strength strength) {
        LocalCache.Strength strength2 = this.f33689g;
        Preconditions.checkState(strength2 == null, "Key strength was already set to %s", strength2);
        this.f33689g = (LocalCache.Strength) Preconditions.checkNotNull(strength);
        return this;
    }

    public CacheBuilder<K, V> ticker(Ticker ticker) {
        Preconditions.checkState(this.f33697o == null);
        this.f33697o = (Ticker) Preconditions.checkNotNull(ticker);
        return this;
    }

    public String toString() {
        MoreObjects.ToStringHelper stringHelper = MoreObjects.toStringHelper(this);
        int i = this.f33684b;
        if (i != -1) {
            stringHelper.add("initialCapacity", i);
        }
        int i2 = this.f33685c;
        if (i2 != -1) {
            stringHelper.add("concurrencyLevel", i2);
        }
        long j = this.f33686d;
        if (j != -1) {
            stringHelper.add("maximumSize", j);
        }
        long j2 = this.f33687e;
        if (j2 != -1) {
            stringHelper.add("maximumWeight", j2);
        }
        long j3 = this.f33691i;
        if (j3 != -1) {
            StringBuilder sb = new StringBuilder(22);
            sb.append(j3);
            sb.append(Constants.ATTRNAME_NS);
            stringHelper.add("expireAfterWrite", sb.toString());
        }
        long j4 = this.f33692j;
        if (j4 != -1) {
            StringBuilder sb2 = new StringBuilder(22);
            sb2.append(j4);
            sb2.append(Constants.ATTRNAME_NS);
            stringHelper.add("expireAfterAccess", sb2.toString());
        }
        LocalCache.Strength strength = this.f33689g;
        if (strength != null) {
            stringHelper.add("keyStrength", Ascii.toLowerCase(strength.toString()));
        }
        LocalCache.Strength strength2 = this.f33690h;
        if (strength2 != null) {
            stringHelper.add("valueStrength", Ascii.toLowerCase(strength2.toString()));
        }
        if (this.f33694l != null) {
            stringHelper.addValue("keyEquivalence");
        }
        if (this.f33695m != null) {
            stringHelper.addValue("valueEquivalence");
        }
        if (this.f33696n != null) {
            stringHelper.addValue("removalListener");
        }
        return stringHelper.toString();
    }

    /* renamed from: u */
    public CacheBuilder<K, V> m25901u(LocalCache.Strength strength) {
        LocalCache.Strength strength2 = this.f33690h;
        Preconditions.checkState(strength2 == null, "Value strength was already set to %s", strength2);
        this.f33690h = (LocalCache.Strength) Preconditions.checkNotNull(strength);
        return this;
    }

    @GwtIncompatible
    /* renamed from: w */
    public CacheBuilder<K, V> m25902w(Equivalence<Object> equivalence) {
        Equivalence<Object> equivalence2 = this.f33695m;
        Preconditions.checkState(equivalence2 == null, "value equivalence was already set to %s", equivalence2);
        this.f33695m = (Equivalence) Preconditions.checkNotNull(equivalence);
        return this;
    }

    @GwtIncompatible
    public CacheBuilder<K, V> weakKeys() {
        return m25900t(LocalCache.Strength.WEAK);
    }

    @GwtIncompatible
    public CacheBuilder<K, V> weakValues() {
        return m25901u(LocalCache.Strength.WEAK);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @GwtIncompatible
    public <K1 extends K, V1 extends V> CacheBuilder<K1, V1> weigher(Weigher<? super K1, ? super V1> weigher) {
        Preconditions.checkState(this.f33688f == null);
        if (this.f33683a) {
            long j = this.f33686d;
            Preconditions.checkState(j == -1, "weigher can not be combined with maximum size", j);
        }
        this.f33688f = (Weigher) Preconditions.checkNotNull(weigher);
        return this;
    }

    @CheckReturnValue
    @GwtIncompatible
    public static CacheBuilder<Object, Object> from(String str) {
        return from(CacheBuilderSpec.parse(str));
    }

    public CacheBuilder<K, V> expireAfterAccess(long j, TimeUnit timeUnit) {
        long j2 = this.f33692j;
        Preconditions.checkState(j2 == -1, "expireAfterAccess was already set to %s ns", j2);
        Preconditions.checkArgument(j >= 0, "duration cannot be negative: %s %s", j, timeUnit);
        this.f33692j = timeUnit.toNanos(j);
        return this;
    }

    public CacheBuilder<K, V> expireAfterWrite(long j, TimeUnit timeUnit) {
        long j2 = this.f33691i;
        Preconditions.checkState(j2 == -1, "expireAfterWrite was already set to %s ns", j2);
        Preconditions.checkArgument(j >= 0, "duration cannot be negative: %s %s", j, timeUnit);
        this.f33691i = timeUnit.toNanos(j);
        return this;
    }

    @GwtIncompatible
    public CacheBuilder<K, V> refreshAfterWrite(long j, TimeUnit timeUnit) {
        Preconditions.checkNotNull(timeUnit);
        long j2 = this.f33693k;
        Preconditions.checkState(j2 == -1, "refresh was already set to %s ns", j2);
        Preconditions.checkArgument(j > 0, "duration must be positive: %s %s", j, timeUnit);
        this.f33693k = timeUnit.toNanos(j);
        return this;
    }

    @CheckReturnValue
    public <K1 extends K, V1 extends V> Cache<K1, V1> build() {
        m25882b();
        m25881a();
        return new LocalCache.LocalManualCache(this);
    }
}
