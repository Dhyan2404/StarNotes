package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.common.hash.BloomFilter;
import com.google.common.math.LongMath;
import com.google.common.primitives.Ints;
import com.google.common.primitives.Longs;
import com.sunia.HTREnginev2.bwk;
import com.sunia.HTREnginev2.d5j;
import com.sunia.HTREnginev2.wnf;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLongArray;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@wnf
/* loaded from: classes6.dex */
public enum BloomFilterStrategies implements BloomFilter.Strategy {
    MURMUR128_MITZ_32 { // from class: com.google.common.hash.BloomFilterStrategies.1
        @Override // com.google.common.hash.BloomFilter.Strategy
        public <T> boolean mightContain(@bwk T t, Funnel<? super T> funnel, int i, C6163a c6163a) {
            long m27131b = c6163a.m27131b();
            long asLong = Hashing.murmur3_128().hashObject(t, funnel).asLong();
            int i2 = (int) asLong;
            int i3 = (int) (asLong >>> 32);
            for (int i4 = 1; i4 <= i; i4++) {
                int i5 = (i4 * i3) + i2;
                if (i5 < 0) {
                    i5 = ~i5;
                }
                if (!c6163a.m27134e(i5 % m27131b)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.hash.BloomFilter.Strategy
        public <T> boolean put(@bwk T t, Funnel<? super T> funnel, int i, C6163a c6163a) {
            long m27131b = c6163a.m27131b();
            long asLong = Hashing.murmur3_128().hashObject(t, funnel).asLong();
            int i2 = (int) asLong;
            int i3 = (int) (asLong >>> 32);
            boolean z = false;
            for (int i4 = 1; i4 <= i; i4++) {
                int i5 = (i4 * i3) + i2;
                if (i5 < 0) {
                    i5 = ~i5;
                }
                z |= c6163a.m27137h(i5 % m27131b);
            }
            return z;
        }
    },
    MURMUR128_MITZ_64 { // from class: com.google.common.hash.BloomFilterStrategies.2
        private long lowerEight(byte[] bArr) {
            return Longs.fromBytes(bArr[7], bArr[6], bArr[5], bArr[4], bArr[3], bArr[2], bArr[1], bArr[0]);
        }

        private long upperEight(byte[] bArr) {
            return Longs.fromBytes(bArr[15], bArr[14], bArr[13], bArr[12], bArr[11], bArr[10], bArr[9], bArr[8]);
        }

        @Override // com.google.common.hash.BloomFilter.Strategy
        public <T> boolean mightContain(@bwk T t, Funnel<? super T> funnel, int i, C6163a c6163a) {
            long m27131b = c6163a.m27131b();
            byte[] bytesInternal = Hashing.murmur3_128().hashObject(t, funnel).getBytesInternal();
            long lowerEight = lowerEight(bytesInternal);
            long upperEight = upperEight(bytesInternal);
            for (int i2 = 0; i2 < i; i2++) {
                if (!c6163a.m27134e((Long.MAX_VALUE & lowerEight) % m27131b)) {
                    return false;
                }
                lowerEight += upperEight;
            }
            return true;
        }

        @Override // com.google.common.hash.BloomFilter.Strategy
        public <T> boolean put(@bwk T t, Funnel<? super T> funnel, int i, C6163a c6163a) {
            long m27131b = c6163a.m27131b();
            byte[] bytesInternal = Hashing.murmur3_128().hashObject(t, funnel).getBytesInternal();
            long lowerEight = lowerEight(bytesInternal);
            long upperEight = upperEight(bytesInternal);
            long j = lowerEight;
            boolean z = false;
            for (int i2 = 0; i2 < i; i2++) {
                z |= c6163a.m27137h((Long.MAX_VALUE & j) % m27131b);
                j += upperEight;
            }
            return z;
        }
    };

    /* renamed from: com.google.common.hash.BloomFilterStrategies$a */
    /* loaded from: classes6.dex */
    public static final class C6163a {

        /* renamed from: c */
        public static final int f34756c = 6;

        /* renamed from: a */
        public final AtomicLongArray f34757a;

        /* renamed from: b */
        public final d5j f34758b;

        public C6163a(long j) {
            Preconditions.checkArgument(j > 0, "data length is zero!");
            this.f34757a = new AtomicLongArray(Ints.checkedCast(LongMath.divide(j, 64L, RoundingMode.CEILING)));
            this.f34758b = LongAddables.m27151a();
        }

        /* renamed from: i */
        public static long[] m27129i(AtomicLongArray atomicLongArray) {
            int length = atomicLongArray.length();
            long[] jArr = new long[length];
            for (int i = 0; i < length; i++) {
                jArr[i] = atomicLongArray.get(i);
            }
            return jArr;
        }

        /* renamed from: a */
        public long m27130a() {
            return this.f34758b.sum();
        }

        /* renamed from: b */
        public long m27131b() {
            return this.f34757a.length() * 64;
        }

        /* renamed from: c */
        public C6163a m27132c() {
            return new C6163a(m27129i(this.f34757a));
        }

        /* renamed from: d */
        public int m27133d() {
            return this.f34757a.length();
        }

        /* renamed from: e */
        public boolean m27134e(long j) {
            return ((1 << ((int) j)) & this.f34757a.get((int) (j >>> 6))) != 0;
        }

        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof C6163a) {
                return Arrays.equals(m27129i(this.f34757a), m27129i(((C6163a) obj).f34757a));
            }
            return false;
        }

        /* renamed from: f */
        public void m27135f(C6163a c6163a) {
            Preconditions.checkArgument(this.f34757a.length() == c6163a.f34757a.length(), "BitArrays must be of equal length (%s != %s)", this.f34757a.length(), c6163a.f34757a.length());
            for (int i = 0; i < this.f34757a.length(); i++) {
                m27136g(i, c6163a.f34757a.get(i));
            }
        }

        /* renamed from: g */
        public void m27136g(int i, long j) {
            long j2;
            long j3;
            boolean z;
            while (true) {
                j2 = this.f34757a.get(i);
                j3 = j2 | j;
                if (j2 == j3) {
                    z = false;
                    break;
                } else if (this.f34757a.compareAndSet(i, j2, j3)) {
                    z = true;
                    break;
                }
            }
            if (z) {
                this.f34758b.add(Long.bitCount(j3) - Long.bitCount(j2));
            }
        }

        /* renamed from: h */
        public boolean m27137h(long j) {
            long j2;
            long j3;
            if (m27134e(j)) {
                return false;
            }
            int i = (int) (j >>> 6);
            long j4 = 1 << ((int) j);
            do {
                j2 = this.f34757a.get(i);
                j3 = j2 | j4;
                if (j2 == j3) {
                    return false;
                }
            } while (!this.f34757a.compareAndSet(i, j2, j3));
            this.f34758b.increment();
            return true;
        }

        public int hashCode() {
            return Arrays.hashCode(m27129i(this.f34757a));
        }

        public C6163a(long[] jArr) {
            Preconditions.checkArgument(jArr.length > 0, "data length is zero!");
            this.f34757a = new AtomicLongArray(jArr);
            this.f34758b = LongAddables.m27151a();
            long j = 0;
            for (long j2 : jArr) {
                j += Long.bitCount(j2);
            }
            this.f34758b.add(j);
        }
    }
}
