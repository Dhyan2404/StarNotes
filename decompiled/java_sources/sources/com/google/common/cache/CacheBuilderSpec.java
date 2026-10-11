package com.google.common.cache;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.base.Strings;
import com.google.common.cache.LocalCache;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.sunia.HTREnginev2.rnf;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckForNull;

@rnf
@GwtIncompatible
/* loaded from: classes6.dex */
public final class CacheBuilderSpec {

    /* renamed from: o */
    public static final Splitter f33699o = Splitter.m25826on(',').trimResults();

    /* renamed from: p */
    public static final Splitter f33700p = Splitter.m25826on('=').trimResults();

    /* renamed from: q */
    public static final ImmutableMap<String, InterfaceC5690m> f33701q;

    /* renamed from: a */
    @VisibleForTesting
    @CheckForNull
    public Integer f33702a;

    /* renamed from: b */
    @VisibleForTesting
    @CheckForNull
    public Long f33703b;

    /* renamed from: c */
    @VisibleForTesting
    @CheckForNull
    public Long f33704c;

    /* renamed from: d */
    @VisibleForTesting
    @CheckForNull
    public Integer f33705d;

    /* renamed from: e */
    @VisibleForTesting
    @CheckForNull
    public LocalCache.Strength f33706e;

    /* renamed from: f */
    @VisibleForTesting
    @CheckForNull
    public LocalCache.Strength f33707f;

    /* renamed from: g */
    @VisibleForTesting
    @CheckForNull
    public Boolean f33708g;

    /* renamed from: h */
    @VisibleForTesting
    public long f33709h;

    /* renamed from: i */
    @VisibleForTesting
    @CheckForNull
    public TimeUnit f33710i;

    /* renamed from: j */
    @VisibleForTesting
    public long f33711j;

    /* renamed from: k */
    @VisibleForTesting
    @CheckForNull
    public TimeUnit f33712k;

    /* renamed from: l */
    @VisibleForTesting
    public long f33713l;

    /* renamed from: m */
    @VisibleForTesting
    @CheckForNull
    public TimeUnit f33714m;

    /* renamed from: n */
    public final String f33715n;

    /* renamed from: com.google.common.cache.CacheBuilderSpec$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C5678a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f33716a;

        static {
            int[] iArr = new int[LocalCache.Strength.values().length];
            f33716a = iArr;
            try {
                iArr[LocalCache.Strength.WEAK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33716a[LocalCache.Strength.SOFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$b */
    /* loaded from: classes6.dex */
    public static class C5679b extends AbstractC5681d {
        @Override // com.google.common.cache.CacheBuilderSpec.AbstractC5681d
        /* renamed from: b */
        public void mo25908b(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit) {
            Preconditions.checkArgument(cacheBuilderSpec.f33712k == null, "expireAfterAccess already set");
            cacheBuilderSpec.f33711j = j;
            cacheBuilderSpec.f33712k = timeUnit;
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$c */
    /* loaded from: classes6.dex */
    public static class C5680c extends AbstractC5683f {
        @Override // com.google.common.cache.CacheBuilderSpec.AbstractC5683f
        /* renamed from: b */
        public void mo25909b(CacheBuilderSpec cacheBuilderSpec, int i) {
            Integer num = cacheBuilderSpec.f33705d;
            Preconditions.checkArgument(num == null, "concurrency level was already set to ", num);
            cacheBuilderSpec.f33705d = Integer.valueOf(i);
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$d */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC5681d implements InterfaceC5690m {
        @Override // com.google.common.cache.CacheBuilderSpec.InterfaceC5690m
        /* renamed from: a */
        public void mo25910a(CacheBuilderSpec cacheBuilderSpec, String str, @CheckForNull String str2) {
            TimeUnit timeUnit;
            if (Strings.isNullOrEmpty(str2)) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21);
                sb.append("value of key ");
                sb.append(str);
                sb.append(" omitted");
                throw new IllegalArgumentException(sb.toString());
            }
            try {
                char charAt = str2.charAt(str2.length() - 1);
                if (charAt == 'd') {
                    timeUnit = TimeUnit.DAYS;
                } else if (charAt == 'h') {
                    timeUnit = TimeUnit.HOURS;
                } else if (charAt == 'm') {
                    timeUnit = TimeUnit.MINUTES;
                } else {
                    if (charAt != 's') {
                        throw new IllegalArgumentException(CacheBuilderSpec.m25906c("key %s invalid unit: was %s, must end with one of [dhms]", str, str2));
                    }
                    timeUnit = TimeUnit.SECONDS;
                }
                mo25908b(cacheBuilderSpec, Long.parseLong(str2.substring(0, str2.length() - 1)), timeUnit);
            } catch (NumberFormatException unused) {
                throw new IllegalArgumentException(CacheBuilderSpec.m25906c("key %s value set to %s, must be integer", str, str2));
            }
        }

        /* renamed from: b */
        public abstract void mo25908b(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit);
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$e */
    /* loaded from: classes6.dex */
    public static class C5682e extends AbstractC5683f {
        @Override // com.google.common.cache.CacheBuilderSpec.AbstractC5683f
        /* renamed from: b */
        public void mo25909b(CacheBuilderSpec cacheBuilderSpec, int i) {
            Integer num = cacheBuilderSpec.f33702a;
            Preconditions.checkArgument(num == null, "initial capacity was already set to ", num);
            cacheBuilderSpec.f33702a = Integer.valueOf(i);
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$f */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC5683f implements InterfaceC5690m {
        @Override // com.google.common.cache.CacheBuilderSpec.InterfaceC5690m
        /* renamed from: a */
        public void mo25910a(CacheBuilderSpec cacheBuilderSpec, String str, String str2) {
            if (!Strings.isNullOrEmpty(str2)) {
                try {
                    mo25909b(cacheBuilderSpec, Integer.parseInt(str2));
                } catch (NumberFormatException e) {
                    throw new IllegalArgumentException(CacheBuilderSpec.m25906c("key %s value set to %s, must be integer", str, str2), e);
                }
            } else {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21);
                sb.append("value of key ");
                sb.append(str);
                sb.append(" omitted");
                throw new IllegalArgumentException(sb.toString());
            }
        }

        /* renamed from: b */
        public abstract void mo25909b(CacheBuilderSpec cacheBuilderSpec, int i);
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$g */
    /* loaded from: classes6.dex */
    public static class C5684g implements InterfaceC5690m {

        /* renamed from: a */
        public final LocalCache.Strength f33717a;

        public C5684g(LocalCache.Strength strength) {
            this.f33717a = strength;
        }

        @Override // com.google.common.cache.CacheBuilderSpec.InterfaceC5690m
        /* renamed from: a */
        public void mo25910a(CacheBuilderSpec cacheBuilderSpec, String str, @CheckForNull String str2) {
            Preconditions.checkArgument(str2 == null, "key %s does not take values", str);
            LocalCache.Strength strength = cacheBuilderSpec.f33706e;
            Preconditions.checkArgument(strength == null, "%s was already set to %s", str, strength);
            cacheBuilderSpec.f33706e = this.f33717a;
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$h */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC5685h implements InterfaceC5690m {
        @Override // com.google.common.cache.CacheBuilderSpec.InterfaceC5690m
        /* renamed from: a */
        public void mo25910a(CacheBuilderSpec cacheBuilderSpec, String str, String str2) {
            if (!Strings.isNullOrEmpty(str2)) {
                try {
                    mo25911b(cacheBuilderSpec, Long.parseLong(str2));
                } catch (NumberFormatException e) {
                    throw new IllegalArgumentException(CacheBuilderSpec.m25906c("key %s value set to %s, must be integer", str, str2), e);
                }
            } else {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21);
                sb.append("value of key ");
                sb.append(str);
                sb.append(" omitted");
                throw new IllegalArgumentException(sb.toString());
            }
        }

        /* renamed from: b */
        public abstract void mo25911b(CacheBuilderSpec cacheBuilderSpec, long j);
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$i */
    /* loaded from: classes6.dex */
    public static class C5686i extends AbstractC5685h {
        @Override // com.google.common.cache.CacheBuilderSpec.AbstractC5685h
        /* renamed from: b */
        public void mo25911b(CacheBuilderSpec cacheBuilderSpec, long j) {
            Long l = cacheBuilderSpec.f33703b;
            Preconditions.checkArgument(l == null, "maximum size was already set to ", l);
            Long l2 = cacheBuilderSpec.f33704c;
            Preconditions.checkArgument(l2 == null, "maximum weight was already set to ", l2);
            cacheBuilderSpec.f33703b = Long.valueOf(j);
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$j */
    /* loaded from: classes6.dex */
    public static class C5687j extends AbstractC5685h {
        @Override // com.google.common.cache.CacheBuilderSpec.AbstractC5685h
        /* renamed from: b */
        public void mo25911b(CacheBuilderSpec cacheBuilderSpec, long j) {
            Long l = cacheBuilderSpec.f33704c;
            Preconditions.checkArgument(l == null, "maximum weight was already set to ", l);
            Long l2 = cacheBuilderSpec.f33703b;
            Preconditions.checkArgument(l2 == null, "maximum size was already set to ", l2);
            cacheBuilderSpec.f33704c = Long.valueOf(j);
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$k */
    /* loaded from: classes6.dex */
    public static class C5688k implements InterfaceC5690m {
        @Override // com.google.common.cache.CacheBuilderSpec.InterfaceC5690m
        /* renamed from: a */
        public void mo25910a(CacheBuilderSpec cacheBuilderSpec, String str, @CheckForNull String str2) {
            Preconditions.checkArgument(str2 == null, "recordStats does not take values");
            Preconditions.checkArgument(cacheBuilderSpec.f33708g == null, "recordStats already set");
            cacheBuilderSpec.f33708g = Boolean.TRUE;
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$l */
    /* loaded from: classes6.dex */
    public static class C5689l extends AbstractC5681d {
        @Override // com.google.common.cache.CacheBuilderSpec.AbstractC5681d
        /* renamed from: b */
        public void mo25908b(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit) {
            Preconditions.checkArgument(cacheBuilderSpec.f33714m == null, "refreshAfterWrite already set");
            cacheBuilderSpec.f33713l = j;
            cacheBuilderSpec.f33714m = timeUnit;
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$m */
    /* loaded from: classes6.dex */
    public interface InterfaceC5690m {
        /* renamed from: a */
        void mo25910a(CacheBuilderSpec cacheBuilderSpec, String str, @CheckForNull String str2);
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$n */
    /* loaded from: classes6.dex */
    public static class C5691n implements InterfaceC5690m {

        /* renamed from: a */
        public final LocalCache.Strength f33718a;

        public C5691n(LocalCache.Strength strength) {
            this.f33718a = strength;
        }

        @Override // com.google.common.cache.CacheBuilderSpec.InterfaceC5690m
        /* renamed from: a */
        public void mo25910a(CacheBuilderSpec cacheBuilderSpec, String str, @CheckForNull String str2) {
            Preconditions.checkArgument(str2 == null, "key %s does not take values", str);
            LocalCache.Strength strength = cacheBuilderSpec.f33707f;
            Preconditions.checkArgument(strength == null, "%s was already set to %s", str, strength);
            cacheBuilderSpec.f33707f = this.f33718a;
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$o */
    /* loaded from: classes6.dex */
    public static class C5692o extends AbstractC5681d {
        @Override // com.google.common.cache.CacheBuilderSpec.AbstractC5681d
        /* renamed from: b */
        public void mo25908b(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit) {
            Preconditions.checkArgument(cacheBuilderSpec.f33710i == null, "expireAfterWrite already set");
            cacheBuilderSpec.f33709h = j;
            cacheBuilderSpec.f33710i = timeUnit;
        }
    }

    static {
        ImmutableMap.Builder put = ImmutableMap.builder().put("initialCapacity", new C5682e()).put("maximumSize", new C5686i()).put("maximumWeight", new C5687j()).put("concurrencyLevel", new C5680c());
        LocalCache.Strength strength = LocalCache.Strength.WEAK;
        f33701q = put.put("weakKeys", new C5684g(strength)).put("softValues", new C5691n(LocalCache.Strength.SOFT)).put("weakValues", new C5691n(strength)).put("recordStats", new C5688k()).put("expireAfterAccess", new C5679b()).put("expireAfterWrite", new C5692o()).put("refreshAfterWrite", new C5689l()).put("refreshInterval", new C5689l()).buildOrThrow();
    }

    public CacheBuilderSpec(String str) {
        this.f33715n = str;
    }

    @CheckForNull
    /* renamed from: b */
    public static Long m25905b(long j, @CheckForNull TimeUnit timeUnit) {
        if (timeUnit == null) {
            return null;
        }
        return Long.valueOf(timeUnit.toNanos(j));
    }

    /* renamed from: c */
    public static String m25906c(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }

    public static CacheBuilderSpec disableCaching() {
        return parse("maximumSize=0");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static CacheBuilderSpec parse(String str) {
        CacheBuilderSpec cacheBuilderSpec = new CacheBuilderSpec(str);
        if (!str.isEmpty()) {
            for (String str2 : f33699o.split(str)) {
                ImmutableList copyOf = ImmutableList.copyOf(f33700p.split(str2));
                Preconditions.checkArgument(!copyOf.isEmpty(), "blank key-value pair");
                Preconditions.checkArgument(copyOf.size() <= 2, "key-value pair %s with more than one equals sign", str2);
                String str3 = (String) copyOf.get(0);
                InterfaceC5690m interfaceC5690m = f33701q.get(str3);
                Preconditions.checkArgument(interfaceC5690m != null, "unknown key %s", str3);
                interfaceC5690m.mo25910a(cacheBuilderSpec, str3, copyOf.size() == 1 ? null : (String) copyOf.get(1));
            }
        }
        return cacheBuilderSpec;
    }

    /* renamed from: d */
    public CacheBuilder<Object, Object> m25907d() {
        CacheBuilder<Object, Object> newBuilder = CacheBuilder.newBuilder();
        Integer num = this.f33702a;
        if (num != null) {
            newBuilder.initialCapacity(num.intValue());
        }
        Long l = this.f33703b;
        if (l != null) {
            newBuilder.maximumSize(l.longValue());
        }
        Long l2 = this.f33704c;
        if (l2 != null) {
            newBuilder.maximumWeight(l2.longValue());
        }
        Integer num2 = this.f33705d;
        if (num2 != null) {
            newBuilder.concurrencyLevel(num2.intValue());
        }
        LocalCache.Strength strength = this.f33706e;
        if (strength != null) {
            if (C5678a.f33716a[strength.ordinal()] != 1) {
                throw new AssertionError();
            }
            newBuilder.weakKeys();
        }
        LocalCache.Strength strength2 = this.f33707f;
        if (strength2 != null) {
            int i = C5678a.f33716a[strength2.ordinal()];
            if (i == 1) {
                newBuilder.weakValues();
            } else {
                if (i != 2) {
                    throw new AssertionError();
                }
                newBuilder.softValues();
            }
        }
        Boolean bool = this.f33708g;
        if (bool != null && bool.booleanValue()) {
            newBuilder.recordStats();
        }
        TimeUnit timeUnit = this.f33710i;
        if (timeUnit != null) {
            newBuilder.expireAfterWrite(this.f33709h, timeUnit);
        }
        TimeUnit timeUnit2 = this.f33712k;
        if (timeUnit2 != null) {
            newBuilder.expireAfterAccess(this.f33711j, timeUnit2);
        }
        TimeUnit timeUnit3 = this.f33714m;
        if (timeUnit3 != null) {
            newBuilder.refreshAfterWrite(this.f33713l, timeUnit3);
        }
        return newBuilder;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CacheBuilderSpec)) {
            return false;
        }
        CacheBuilderSpec cacheBuilderSpec = (CacheBuilderSpec) obj;
        return Objects.equal(this.f33702a, cacheBuilderSpec.f33702a) && Objects.equal(this.f33703b, cacheBuilderSpec.f33703b) && Objects.equal(this.f33704c, cacheBuilderSpec.f33704c) && Objects.equal(this.f33705d, cacheBuilderSpec.f33705d) && Objects.equal(this.f33706e, cacheBuilderSpec.f33706e) && Objects.equal(this.f33707f, cacheBuilderSpec.f33707f) && Objects.equal(this.f33708g, cacheBuilderSpec.f33708g) && Objects.equal(m25905b(this.f33709h, this.f33710i), m25905b(cacheBuilderSpec.f33709h, cacheBuilderSpec.f33710i)) && Objects.equal(m25905b(this.f33711j, this.f33712k), m25905b(cacheBuilderSpec.f33711j, cacheBuilderSpec.f33712k)) && Objects.equal(m25905b(this.f33713l, this.f33714m), m25905b(cacheBuilderSpec.f33713l, cacheBuilderSpec.f33714m));
    }

    public int hashCode() {
        return Objects.hashCode(this.f33702a, this.f33703b, this.f33704c, this.f33705d, this.f33706e, this.f33707f, this.f33708g, m25905b(this.f33709h, this.f33710i), m25905b(this.f33711j, this.f33712k), m25905b(this.f33713l, this.f33714m));
    }

    public String toParsableString() {
        return this.f33715n;
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).addValue(toParsableString()).toString();
    }
}
