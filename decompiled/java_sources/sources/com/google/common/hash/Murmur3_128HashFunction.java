package com.google.common.hash;

import com.google.android.material.motion.MotionUtils;
import com.google.common.primitives.UnsignedBytes;
import com.google.errorprone.annotations.Immutable;
import com.sunia.HTREnginev2.AbstractC14378s3;
import com.sunia.HTREnginev2.AbstractC14585w4;
import com.sunia.HTREnginev2.wnf;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@Immutable
@wnf
/* loaded from: classes6.dex */
public final class Murmur3_128HashFunction extends AbstractC14378s3 implements Serializable {
    private static final long serialVersionUID = 0;
    private final int seed;
    static final HashFunction MURMUR3_128 = new Murmur3_128HashFunction(0);
    static final HashFunction GOOD_FAST_HASH_128 = new Murmur3_128HashFunction(Hashing.f34762a);

    /* renamed from: com.google.common.hash.Murmur3_128HashFunction$a */
    /* loaded from: classes6.dex */
    public static final class C6187a extends AbstractC14585w4 {

        /* renamed from: g */
        public static final int f34777g = 16;

        /* renamed from: h */
        public static final long f34778h = -8663945395140668459L;

        /* renamed from: i */
        public static final long f34779i = 5545529020109919103L;

        /* renamed from: d */
        public long f34780d;

        /* renamed from: e */
        public long f34781e;

        /* renamed from: f */
        public int f34782f;

        public C6187a(int i) {
            super(16);
            long j = i;
            this.f34780d = j;
            this.f34781e = j;
            this.f34782f = 0;
        }

        /* renamed from: h */
        public static long m27157h(long j) {
            long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
            long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
            return j3 ^ (j3 >>> 33);
        }

        /* renamed from: i */
        public static long m27158i(long j) {
            return Long.rotateLeft(j * (-8663945395140668459L), 31) * 5545529020109919103L;
        }

        /* renamed from: j */
        public static long m27159j(long j) {
            return Long.rotateLeft(j * 5545529020109919103L, 33) * (-8663945395140668459L);
        }

        @Override // com.sunia.HTREnginev2.AbstractC14585w4
        /* renamed from: a */
        public HashCode mo27160a() {
            long j = this.f34780d;
            int i = this.f34782f;
            long j2 = j ^ i;
            long j3 = this.f34781e ^ i;
            long j4 = j2 + j3;
            this.f34780d = j4;
            this.f34781e = j3 + j4;
            this.f34780d = m27157h(j4);
            long m27157h = m27157h(this.f34781e);
            long j5 = this.f34780d + m27157h;
            this.f34780d = j5;
            this.f34781e = m27157h + j5;
            return HashCode.fromBytesNoCopy(ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(this.f34780d).putLong(this.f34781e).array());
        }

        @Override // com.sunia.HTREnginev2.AbstractC14585w4
        /* renamed from: d */
        public void mo27161d(ByteBuffer byteBuffer) {
            m27163g(byteBuffer.getLong(), byteBuffer.getLong());
            this.f34782f += 16;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x001b. Please report as an issue. */
        @Override // com.sunia.HTREnginev2.AbstractC14585w4
        /* renamed from: e */
        public void mo27162e(ByteBuffer byteBuffer) {
            long j;
            long j2;
            long j3;
            long j4;
            long j5;
            long j6;
            long j7;
            long j8;
            long j9;
            long j10;
            long j11;
            long j12;
            long j13;
            long j14;
            this.f34782f += byteBuffer.remaining();
            long j15 = 0;
            switch (byteBuffer.remaining()) {
                case 1:
                    j = 0;
                    j7 = UnsignedBytes.toInt(byteBuffer.get(0)) ^ j;
                    this.f34780d ^= m27158i(j7);
                    this.f34781e ^= m27159j(j15);
                    return;
                case 2:
                    j2 = 0;
                    j = j2 ^ (UnsignedBytes.toInt(byteBuffer.get(1)) << 8);
                    j7 = UnsignedBytes.toInt(byteBuffer.get(0)) ^ j;
                    this.f34780d ^= m27158i(j7);
                    this.f34781e ^= m27159j(j15);
                    return;
                case 3:
                    j3 = 0;
                    j2 = j3 ^ (UnsignedBytes.toInt(byteBuffer.get(2)) << 16);
                    j = j2 ^ (UnsignedBytes.toInt(byteBuffer.get(1)) << 8);
                    j7 = UnsignedBytes.toInt(byteBuffer.get(0)) ^ j;
                    this.f34780d ^= m27158i(j7);
                    this.f34781e ^= m27159j(j15);
                    return;
                case 4:
                    j4 = 0;
                    j3 = j4 ^ (UnsignedBytes.toInt(byteBuffer.get(3)) << 24);
                    j2 = j3 ^ (UnsignedBytes.toInt(byteBuffer.get(2)) << 16);
                    j = j2 ^ (UnsignedBytes.toInt(byteBuffer.get(1)) << 8);
                    j7 = UnsignedBytes.toInt(byteBuffer.get(0)) ^ j;
                    this.f34780d ^= m27158i(j7);
                    this.f34781e ^= m27159j(j15);
                    return;
                case 5:
                    j5 = 0;
                    j4 = j5 ^ (UnsignedBytes.toInt(byteBuffer.get(4)) << 32);
                    j3 = j4 ^ (UnsignedBytes.toInt(byteBuffer.get(3)) << 24);
                    j2 = j3 ^ (UnsignedBytes.toInt(byteBuffer.get(2)) << 16);
                    j = j2 ^ (UnsignedBytes.toInt(byteBuffer.get(1)) << 8);
                    j7 = UnsignedBytes.toInt(byteBuffer.get(0)) ^ j;
                    this.f34780d ^= m27158i(j7);
                    this.f34781e ^= m27159j(j15);
                    return;
                case 6:
                    j6 = 0;
                    j5 = j6 ^ (UnsignedBytes.toInt(byteBuffer.get(5)) << 40);
                    j4 = j5 ^ (UnsignedBytes.toInt(byteBuffer.get(4)) << 32);
                    j3 = j4 ^ (UnsignedBytes.toInt(byteBuffer.get(3)) << 24);
                    j2 = j3 ^ (UnsignedBytes.toInt(byteBuffer.get(2)) << 16);
                    j = j2 ^ (UnsignedBytes.toInt(byteBuffer.get(1)) << 8);
                    j7 = UnsignedBytes.toInt(byteBuffer.get(0)) ^ j;
                    this.f34780d ^= m27158i(j7);
                    this.f34781e ^= m27159j(j15);
                    return;
                case 7:
                    j6 = (UnsignedBytes.toInt(byteBuffer.get(6)) << 48) ^ 0;
                    j5 = j6 ^ (UnsignedBytes.toInt(byteBuffer.get(5)) << 40);
                    j4 = j5 ^ (UnsignedBytes.toInt(byteBuffer.get(4)) << 32);
                    j3 = j4 ^ (UnsignedBytes.toInt(byteBuffer.get(3)) << 24);
                    j2 = j3 ^ (UnsignedBytes.toInt(byteBuffer.get(2)) << 16);
                    j = j2 ^ (UnsignedBytes.toInt(byteBuffer.get(1)) << 8);
                    j7 = UnsignedBytes.toInt(byteBuffer.get(0)) ^ j;
                    this.f34780d ^= m27158i(j7);
                    this.f34781e ^= m27159j(j15);
                    return;
                case 8:
                    j8 = 0;
                    j7 = byteBuffer.getLong() ^ 0;
                    j15 = j8;
                    this.f34780d ^= m27158i(j7);
                    this.f34781e ^= m27159j(j15);
                    return;
                case 9:
                    j9 = 0;
                    j8 = j9 ^ UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong() ^ 0;
                    j15 = j8;
                    this.f34780d ^= m27158i(j7);
                    this.f34781e ^= m27159j(j15);
                    return;
                case 10:
                    j10 = 0;
                    j9 = j10 ^ (UnsignedBytes.toInt(byteBuffer.get(9)) << 8);
                    j8 = j9 ^ UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong() ^ 0;
                    j15 = j8;
                    this.f34780d ^= m27158i(j7);
                    this.f34781e ^= m27159j(j15);
                    return;
                case 11:
                    j11 = 0;
                    j10 = j11 ^ (UnsignedBytes.toInt(byteBuffer.get(10)) << 16);
                    j9 = j10 ^ (UnsignedBytes.toInt(byteBuffer.get(9)) << 8);
                    j8 = j9 ^ UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong() ^ 0;
                    j15 = j8;
                    this.f34780d ^= m27158i(j7);
                    this.f34781e ^= m27159j(j15);
                    return;
                case 12:
                    j12 = 0;
                    j11 = j12 ^ (UnsignedBytes.toInt(byteBuffer.get(11)) << 24);
                    j10 = j11 ^ (UnsignedBytes.toInt(byteBuffer.get(10)) << 16);
                    j9 = j10 ^ (UnsignedBytes.toInt(byteBuffer.get(9)) << 8);
                    j8 = j9 ^ UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong() ^ 0;
                    j15 = j8;
                    this.f34780d ^= m27158i(j7);
                    this.f34781e ^= m27159j(j15);
                    return;
                case 13:
                    j13 = 0;
                    j12 = j13 ^ (UnsignedBytes.toInt(byteBuffer.get(12)) << 32);
                    j11 = j12 ^ (UnsignedBytes.toInt(byteBuffer.get(11)) << 24);
                    j10 = j11 ^ (UnsignedBytes.toInt(byteBuffer.get(10)) << 16);
                    j9 = j10 ^ (UnsignedBytes.toInt(byteBuffer.get(9)) << 8);
                    j8 = j9 ^ UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong() ^ 0;
                    j15 = j8;
                    this.f34780d ^= m27158i(j7);
                    this.f34781e ^= m27159j(j15);
                    return;
                case 14:
                    j14 = 0;
                    j13 = j14 ^ (UnsignedBytes.toInt(byteBuffer.get(13)) << 40);
                    j12 = j13 ^ (UnsignedBytes.toInt(byteBuffer.get(12)) << 32);
                    j11 = j12 ^ (UnsignedBytes.toInt(byteBuffer.get(11)) << 24);
                    j10 = j11 ^ (UnsignedBytes.toInt(byteBuffer.get(10)) << 16);
                    j9 = j10 ^ (UnsignedBytes.toInt(byteBuffer.get(9)) << 8);
                    j8 = j9 ^ UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong() ^ 0;
                    j15 = j8;
                    this.f34780d ^= m27158i(j7);
                    this.f34781e ^= m27159j(j15);
                    return;
                case 15:
                    j14 = (UnsignedBytes.toInt(byteBuffer.get(14)) << 48) ^ 0;
                    j13 = j14 ^ (UnsignedBytes.toInt(byteBuffer.get(13)) << 40);
                    j12 = j13 ^ (UnsignedBytes.toInt(byteBuffer.get(12)) << 32);
                    j11 = j12 ^ (UnsignedBytes.toInt(byteBuffer.get(11)) << 24);
                    j10 = j11 ^ (UnsignedBytes.toInt(byteBuffer.get(10)) << 16);
                    j9 = j10 ^ (UnsignedBytes.toInt(byteBuffer.get(9)) << 8);
                    j8 = j9 ^ UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong() ^ 0;
                    j15 = j8;
                    this.f34780d ^= m27158i(j7);
                    this.f34781e ^= m27159j(j15);
                    return;
                default:
                    throw new AssertionError("Should never get here.");
            }
        }

        /* renamed from: g */
        public final void m27163g(long j, long j2) {
            long m27158i = m27158i(j) ^ this.f34780d;
            this.f34780d = m27158i;
            long rotateLeft = Long.rotateLeft(m27158i, 27);
            long j3 = this.f34781e;
            this.f34780d = ((rotateLeft + j3) * 5) + 1390208809;
            long m27159j = m27159j(j2) ^ j3;
            this.f34781e = m27159j;
            this.f34781e = ((Long.rotateLeft(m27159j, 31) + this.f34780d) * 5) + 944331445;
        }
    }

    public Murmur3_128HashFunction(int i) {
        this.seed = i;
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 128;
    }

    public boolean equals(@CheckForNull Object obj) {
        return (obj instanceof Murmur3_128HashFunction) && this.seed == ((Murmur3_128HashFunction) obj).seed;
    }

    public int hashCode() {
        return this.seed ^ Murmur3_128HashFunction.class.hashCode();
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new C6187a(this.seed);
    }

    public String toString() {
        int i = this.seed;
        StringBuilder sb = new StringBuilder(32);
        sb.append("Hashing.murmur3_128(");
        sb.append(i);
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }
}
