package onyx.org.apache.commons.io.file;

import java.math.BigInteger;
import java.util.Objects;

/* loaded from: classes11.dex */
public class Counters {

    /* loaded from: classes11.dex */
    public interface Counter {
        void add(long j);

        long get();

        BigInteger getBigInteger();

        Long getLong();

        void increment();

        default void reset() {
        }
    }

    /* loaded from: classes11.dex */
    public interface PathCounters {
        Counter getByteCounter();

        Counter getDirectoryCounter();

        Counter getFileCounter();

        default void reset() {
        }
    }

    /* renamed from: onyx.org.apache.commons.io.file.Counters$b */
    /* loaded from: classes11.dex */
    public static class C18629b implements PathCounters {

        /* renamed from: a */
        public final Counter f104224a;

        /* renamed from: b */
        public final Counter f104225b;

        /* renamed from: c */
        public final Counter f104226c;

        public C18629b(Counter counter, Counter counter2, Counter counter3) {
            this.f104224a = counter;
            this.f104225b = counter2;
            this.f104226c = counter3;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C18629b)) {
                return false;
            }
            C18629b c18629b = (C18629b) obj;
            return Objects.equals(this.f104224a, c18629b.f104224a) && Objects.equals(this.f104225b, c18629b.f104225b) && Objects.equals(this.f104226c, c18629b.f104226c);
        }

        @Override // onyx.org.apache.commons.io.file.Counters.PathCounters
        public Counter getByteCounter() {
            return this.f104224a;
        }

        @Override // onyx.org.apache.commons.io.file.Counters.PathCounters
        public Counter getDirectoryCounter() {
            return this.f104225b;
        }

        @Override // onyx.org.apache.commons.io.file.Counters.PathCounters
        public Counter getFileCounter() {
            return this.f104226c;
        }

        public int hashCode() {
            return Objects.hash(this.f104224a, this.f104225b, this.f104226c);
        }

        @Override // onyx.org.apache.commons.io.file.Counters.PathCounters
        public void reset() {
            this.f104224a.reset();
            this.f104225b.reset();
            this.f104226c.reset();
        }

        public String toString() {
            return String.format("%,d files, %,d directories, %,d bytes", Long.valueOf(this.f104226c.get()), Long.valueOf(this.f104225b.get()), Long.valueOf(this.f104224a.get()));
        }
    }

    /* renamed from: onyx.org.apache.commons.io.file.Counters$c */
    /* loaded from: classes11.dex */
    public static final class C18630c implements Counter {

        /* renamed from: a */
        public BigInteger f104227a;

        public C18630c() {
            this.f104227a = BigInteger.ZERO;
        }

        @Override // onyx.org.apache.commons.io.file.Counters.Counter
        public void add(long j) {
            this.f104227a = this.f104227a.add(BigInteger.valueOf(j));
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Counter) {
                return Objects.equals(this.f104227a, ((Counter) obj).getBigInteger());
            }
            return false;
        }

        @Override // onyx.org.apache.commons.io.file.Counters.Counter
        public long get() {
            long longValueExact;
            longValueExact = this.f104227a.longValueExact();
            return longValueExact;
        }

        @Override // onyx.org.apache.commons.io.file.Counters.Counter
        public BigInteger getBigInteger() {
            return this.f104227a;
        }

        @Override // onyx.org.apache.commons.io.file.Counters.Counter
        public Long getLong() {
            long longValueExact;
            longValueExact = this.f104227a.longValueExact();
            return Long.valueOf(longValueExact);
        }

        public int hashCode() {
            return Objects.hash(this.f104227a);
        }

        @Override // onyx.org.apache.commons.io.file.Counters.Counter
        public void increment() {
            this.f104227a = this.f104227a.add(BigInteger.ONE);
        }

        @Override // onyx.org.apache.commons.io.file.Counters.Counter
        public void reset() {
            this.f104227a = BigInteger.ZERO;
        }

        public String toString() {
            return this.f104227a.toString();
        }
    }

    /* renamed from: onyx.org.apache.commons.io.file.Counters$d */
    /* loaded from: classes11.dex */
    public static final class C18631d extends C18629b {
        public C18631d() {
            super(Counters.bigIntegerCounter(), Counters.bigIntegerCounter(), Counters.bigIntegerCounter());
        }
    }

    /* renamed from: onyx.org.apache.commons.io.file.Counters$e */
    /* loaded from: classes11.dex */
    public static final class C18632e implements Counter {

        /* renamed from: a */
        public long f104228a;

        public C18632e() {
        }

        @Override // onyx.org.apache.commons.io.file.Counters.Counter
        public void add(long j) {
            this.f104228a += j;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Counter) && this.f104228a == ((Counter) obj).get();
        }

        @Override // onyx.org.apache.commons.io.file.Counters.Counter
        public long get() {
            return this.f104228a;
        }

        @Override // onyx.org.apache.commons.io.file.Counters.Counter
        public BigInteger getBigInteger() {
            return BigInteger.valueOf(this.f104228a);
        }

        @Override // onyx.org.apache.commons.io.file.Counters.Counter
        public Long getLong() {
            return Long.valueOf(this.f104228a);
        }

        public int hashCode() {
            return Objects.hash(Long.valueOf(this.f104228a));
        }

        @Override // onyx.org.apache.commons.io.file.Counters.Counter
        public void increment() {
            this.f104228a++;
        }

        @Override // onyx.org.apache.commons.io.file.Counters.Counter
        public void reset() {
            this.f104228a = 0L;
        }

        public String toString() {
            return Long.toString(this.f104228a);
        }
    }

    /* renamed from: onyx.org.apache.commons.io.file.Counters$f */
    /* loaded from: classes11.dex */
    public static final class C18633f extends C18629b {
        public C18633f() {
            super(Counters.longCounter(), Counters.longCounter(), Counters.longCounter());
        }
    }

    /* renamed from: onyx.org.apache.commons.io.file.Counters$g */
    /* loaded from: classes11.dex */
    public static final class C18634g implements Counter {

        /* renamed from: a */
        public static final C18634g f104229a = new C18634g();

        @Override // onyx.org.apache.commons.io.file.Counters.Counter
        public void add(long j) {
        }

        @Override // onyx.org.apache.commons.io.file.Counters.Counter
        public long get() {
            return 0L;
        }

        @Override // onyx.org.apache.commons.io.file.Counters.Counter
        public BigInteger getBigInteger() {
            return BigInteger.ZERO;
        }

        @Override // onyx.org.apache.commons.io.file.Counters.Counter
        public Long getLong() {
            return 0L;
        }

        @Override // onyx.org.apache.commons.io.file.Counters.Counter
        public void increment() {
        }

        public String toString() {
            return "0";
        }
    }

    /* renamed from: onyx.org.apache.commons.io.file.Counters$h */
    /* loaded from: classes11.dex */
    public static final class C18635h extends C18629b {

        /* renamed from: d */
        public static final C18635h f104230d = new C18635h();

        public C18635h() {
            super(Counters.noopCounter(), Counters.noopCounter(), Counters.noopCounter());
        }
    }

    public static Counter bigIntegerCounter() {
        return new C18630c();
    }

    public static PathCounters bigIntegerPathCounters() {
        return new C18631d();
    }

    public static Counter longCounter() {
        return new C18632e();
    }

    public static PathCounters longPathCounters() {
        return new C18633f();
    }

    public static Counter noopCounter() {
        return C18634g.f104229a;
    }

    public static PathCounters noopPathCounters() {
        return C18635h.f104230d;
    }
}
