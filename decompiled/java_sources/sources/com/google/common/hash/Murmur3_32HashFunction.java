package com.google.common.hash;

import com.google.android.material.motion.MotionUtils;
import com.google.common.base.Charsets;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.google.common.primitives.UnsignedBytes;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.Immutable;
import com.sunia.HTREnginev2.AbstractC14378s3;
import com.sunia.HTREnginev2.AbstractC14433t3;
import com.sunia.HTREnginev2.wnf;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import javax.annotation.CheckForNull;
import org.apache.commons.codec.digest.MurmurHash3;

/* JADX INFO: Access modifiers changed from: package-private */
@Immutable
@wnf
/* loaded from: classes6.dex */
public final class Murmur3_32HashFunction extends AbstractC14378s3 implements Serializable {

    /* renamed from: C1 */
    private static final int f34783C1 = -862048943;

    /* renamed from: C2 */
    private static final int f34784C2 = 461845907;
    private static final int CHUNK_SIZE = 4;
    private static final long serialVersionUID = 0;
    private final int seed;
    private final boolean supplementaryPlaneFix;
    static final HashFunction MURMUR3_32 = new Murmur3_32HashFunction(0, false);
    static final HashFunction MURMUR3_32_FIXED = new Murmur3_32HashFunction(0, true);
    static final HashFunction GOOD_FAST_HASH_32 = new Murmur3_32HashFunction(Hashing.f34762a, true);

    @CanIgnoreReturnValue
    /* renamed from: com.google.common.hash.Murmur3_32HashFunction$a */
    /* loaded from: classes6.dex */
    public static final class C6188a extends AbstractC14433t3 {

        /* renamed from: a */
        public int f34785a;

        /* renamed from: b */
        public long f34786b;

        /* renamed from: c */
        public int f34787c;

        /* renamed from: d */
        public int f34788d = 0;

        /* renamed from: e */
        public boolean f34789e = false;

        public C6188a(int i) {
            this.f34785a = i;
        }

        /* renamed from: a */
        public final void m27164a(int i, long j) {
            long j2 = this.f34786b;
            int i2 = this.f34787c;
            long j3 = ((j & 4294967295L) << i2) | j2;
            this.f34786b = j3;
            int i3 = i2 + (i * 8);
            this.f34787c = i3;
            this.f34788d += i;
            if (i3 >= 32) {
                this.f34785a = Murmur3_32HashFunction.mixH1(this.f34785a, Murmur3_32HashFunction.mixK1((int) j3));
                this.f34786b >>>= 32;
                this.f34787c -= 32;
            }
        }

        @Override // com.google.common.hash.Hasher
        public HashCode hash() {
            Preconditions.checkState(!this.f34789e);
            this.f34789e = true;
            int mixK1 = this.f34785a ^ Murmur3_32HashFunction.mixK1((int) this.f34786b);
            this.f34785a = mixK1;
            return Murmur3_32HashFunction.fmix(mixK1, this.f34788d);
        }

        @Override // com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putByte(byte b) {
            m27164a(1, b & 255);
            return this;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putChar(char c) {
            m27164a(2, c);
            return this;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putInt(int i) {
            m27164a(4, i);
            return this;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putLong(long j) {
            m27164a(4, (int) j);
            m27164a(4, j >>> 32);
            return this;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putString(CharSequence charSequence, Charset charset) {
            if (Charsets.UTF_8.equals(charset)) {
                int length = charSequence.length();
                int i = 0;
                while (true) {
                    int i2 = i + 4;
                    if (i2 > length) {
                        break;
                    }
                    char charAt = charSequence.charAt(i);
                    char charAt2 = charSequence.charAt(i + 1);
                    char charAt3 = charSequence.charAt(i + 2);
                    char charAt4 = charSequence.charAt(i + 3);
                    if (charAt >= 128 || charAt2 >= 128 || charAt3 >= 128 || charAt4 >= 128) {
                        break;
                    }
                    m27164a(4, (charAt2 << '\b') | charAt | (charAt3 << 16) | (charAt4 << 24));
                    i = i2;
                }
                while (i < length) {
                    char charAt5 = charSequence.charAt(i);
                    if (charAt5 < 128) {
                        m27164a(1, charAt5);
                    } else if (charAt5 < 2048) {
                        m27164a(2, Murmur3_32HashFunction.charToTwoUtf8Bytes(charAt5));
                    } else if (charAt5 >= 55296 && charAt5 <= 57343) {
                        int codePointAt = Character.codePointAt(charSequence, i);
                        if (codePointAt == charAt5) {
                            putBytes(charSequence.subSequence(i, length).toString().getBytes(charset));
                            return this;
                        }
                        i++;
                        m27164a(4, Murmur3_32HashFunction.codePointToFourUtf8Bytes(codePointAt));
                    } else {
                        m27164a(3, Murmur3_32HashFunction.charToThreeUtf8Bytes(charAt5));
                    }
                    i++;
                }
                return this;
            }
            return super.putString(charSequence, charset);
        }

        @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putBytes(byte[] bArr, int i, int i2) {
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            int i3 = 0;
            while (true) {
                int i4 = i3 + 4;
                if (i4 > i2) {
                    break;
                }
                m27164a(4, Murmur3_32HashFunction.getIntLittleEndian(bArr, i3 + i));
                i3 = i4;
            }
            while (i3 < i2) {
                putByte(bArr[i + i3]);
                i3++;
            }
            return this;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putBytes(ByteBuffer byteBuffer) {
            ByteOrder order = byteBuffer.order();
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            while (byteBuffer.remaining() >= 4) {
                putInt(byteBuffer.getInt());
            }
            while (byteBuffer.hasRemaining()) {
                putByte(byteBuffer.get());
            }
            byteBuffer.order(order);
            return this;
        }
    }

    public Murmur3_32HashFunction(int i, boolean z) {
        this.seed = i;
        this.supplementaryPlaneFix = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long charToThreeUtf8Bytes(char c) {
        return (c >>> '\f') | 224 | ((((c >>> 6) & 63) | 128) << 8) | (((c & '?') | 128) << 16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long charToTwoUtf8Bytes(char c) {
        return (c >>> 6) | 192 | (((c & '?') | 128) << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long codePointToFourUtf8Bytes(int i) {
        return (i >>> 18) | 240 | ((((i >>> 12) & 63) | 128) << 8) | ((((i >>> 6) & 63) | 128) << 16) | (((i & 63) | 128) << 24);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static HashCode fmix(int i, int i2) {
        int i3 = i ^ i2;
        int i4 = (i3 ^ (i3 >>> 16)) * (-2048144789);
        int i5 = (i4 ^ (i4 >>> 13)) * (-1028477387);
        return HashCode.fromInt(i5 ^ (i5 >>> 16));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getIntLittleEndian(byte[] bArr, int i) {
        return Ints.fromBytes(bArr[i + 3], bArr[i + 2], bArr[i + 1], bArr[i]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int mixH1(int i, int i2) {
        return (Integer.rotateLeft(i ^ i2, 13) * 5) + MurmurHash3.f104668i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int mixK1(int i) {
        return Integer.rotateLeft(i * (-862048943), 15) * 461845907;
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 32;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof Murmur3_32HashFunction)) {
            return false;
        }
        Murmur3_32HashFunction murmur3_32HashFunction = (Murmur3_32HashFunction) obj;
        return this.seed == murmur3_32HashFunction.seed && this.supplementaryPlaneFix == murmur3_32HashFunction.supplementaryPlaneFix;
    }

    @Override // com.sunia.HTREnginev2.AbstractC14378s3, com.google.common.hash.HashFunction
    public HashCode hashBytes(byte[] bArr, int i, int i2) {
        Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
        int i3 = this.seed;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5 + 4;
            if (i6 > i2) {
                break;
            }
            i3 = mixH1(i3, mixK1(getIntLittleEndian(bArr, i5 + i)));
            i5 = i6;
        }
        int i7 = i5;
        int i8 = 0;
        while (i7 < i2) {
            i4 ^= UnsignedBytes.toInt(bArr[i + i7]) << i8;
            i7++;
            i8 += 8;
        }
        return fmix(i3 ^ mixK1(i4), i2);
    }

    public int hashCode() {
        return this.seed ^ Murmur3_32HashFunction.class.hashCode();
    }

    @Override // com.sunia.HTREnginev2.AbstractC14378s3, com.google.common.hash.HashFunction
    public HashCode hashInt(int i) {
        return fmix(mixH1(this.seed, mixK1(i)), 4);
    }

    @Override // com.sunia.HTREnginev2.AbstractC14378s3, com.google.common.hash.HashFunction
    public HashCode hashLong(long j) {
        return fmix(mixH1(mixH1(this.seed, mixK1((int) j)), mixK1((int) (j >>> 32))), 8);
    }

    @Override // com.sunia.HTREnginev2.AbstractC14378s3, com.google.common.hash.HashFunction
    public HashCode hashString(CharSequence charSequence, Charset charset) {
        if (!Charsets.UTF_8.equals(charset)) {
            return hashBytes(charSequence.toString().getBytes(charset));
        }
        int length = charSequence.length();
        int i = this.seed;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = i3 + 4;
            if (i5 > length) {
                break;
            }
            char charAt = charSequence.charAt(i3);
            char charAt2 = charSequence.charAt(i3 + 1);
            char charAt3 = charSequence.charAt(i3 + 2);
            char charAt4 = charSequence.charAt(i3 + 3);
            if (charAt >= 128 || charAt2 >= 128 || charAt3 >= 128 || charAt4 >= 128) {
                break;
            }
            i = mixH1(i, mixK1((charAt2 << '\b') | charAt | (charAt3 << 16) | (charAt4 << 24)));
            i4 += 4;
            i3 = i5;
        }
        long j = 0;
        while (i3 < length) {
            char charAt5 = charSequence.charAt(i3);
            if (charAt5 < 128) {
                j |= charAt5 << i2;
                i2 += 8;
                i4++;
            } else if (charAt5 < 2048) {
                j |= charToTwoUtf8Bytes(charAt5) << i2;
                i2 += 16;
                i4 += 2;
            } else if (charAt5 < 55296 || charAt5 > 57343) {
                j |= charToThreeUtf8Bytes(charAt5) << i2;
                i2 += 24;
                i4 += 3;
            } else {
                int codePointAt = Character.codePointAt(charSequence, i3);
                if (codePointAt == charAt5) {
                    return hashBytes(charSequence.toString().getBytes(charset));
                }
                i3++;
                j |= codePointToFourUtf8Bytes(codePointAt) << i2;
                if (this.supplementaryPlaneFix) {
                    i2 += 32;
                }
                i4 += 4;
            }
            if (i2 >= 32) {
                i = mixH1(i, mixK1((int) j));
                j >>>= 32;
                i2 -= 32;
            }
            i3++;
        }
        return fmix(mixK1((int) j) ^ i, i4);
    }

    @Override // com.sunia.HTREnginev2.AbstractC14378s3, com.google.common.hash.HashFunction
    public HashCode hashUnencodedChars(CharSequence charSequence) {
        int i = this.seed;
        for (int i2 = 1; i2 < charSequence.length(); i2 += 2) {
            i = mixH1(i, mixK1(charSequence.charAt(i2 - 1) | (charSequence.charAt(i2) << 16)));
        }
        if ((charSequence.length() & 1) == 1) {
            i ^= mixK1(charSequence.charAt(charSequence.length() - 1));
        }
        return fmix(i, charSequence.length() * 2);
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new C6188a(this.seed);
    }

    public String toString() {
        int i = this.seed;
        StringBuilder sb = new StringBuilder(31);
        sb.append("Hashing.murmur3_32(");
        sb.append(i);
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }
}
