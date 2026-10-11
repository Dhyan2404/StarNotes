package com.google.common.hash;

import com.google.android.material.motion.MotionUtils;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;
import com.sunia.HTREnginev2.AbstractC14378s3;
import com.sunia.HTREnginev2.AbstractC14585w4;
import com.sunia.HTREnginev2.wnf;
import java.io.Serializable;
import java.nio.ByteBuffer;
import javax.annotation.CheckForNull;

@Immutable
@wnf
/* loaded from: classes6.dex */
final class SipHashFunction extends AbstractC14378s3 implements Serializable {
    static final HashFunction SIP_HASH_24 = new SipHashFunction(2, 4, 506097522914230528L, 1084818905618843912L);
    private static final long serialVersionUID = 0;

    /* renamed from: c */
    private final int f34790c;

    /* renamed from: d */
    private final int f34791d;

    /* renamed from: k0 */
    private final long f34792k0;

    /* renamed from: k1 */
    private final long f34793k1;

    /* renamed from: com.google.common.hash.SipHashFunction$a */
    /* loaded from: classes6.dex */
    public static final class C6189a extends AbstractC14585w4 {

        /* renamed from: l */
        public static final int f34794l = 8;

        /* renamed from: d */
        public final int f34795d;

        /* renamed from: e */
        public final int f34796e;

        /* renamed from: f */
        public long f34797f;

        /* renamed from: g */
        public long f34798g;

        /* renamed from: h */
        public long f34799h;

        /* renamed from: i */
        public long f34800i;

        /* renamed from: j */
        public long f34801j;

        /* renamed from: k */
        public long f34802k;

        public C6189a(int i, int i2, long j, long j2) {
            super(8);
            this.f34801j = 0L;
            this.f34802k = 0L;
            this.f34795d = i;
            this.f34796e = i2;
            this.f34797f = 8317987319222330741L ^ j;
            this.f34798g = 7237128888997146477L ^ j2;
            this.f34799h = 7816392313619706465L ^ j;
            this.f34800i = 8387220255154660723L ^ j2;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14585w4
        /* renamed from: a */
        public HashCode mo27160a() {
            long j = this.f34802k ^ (this.f34801j << 56);
            this.f34802k = j;
            m27165g(j);
            this.f34799h ^= 255;
            m27166h(this.f34796e);
            return HashCode.fromLong(((this.f34797f ^ this.f34798g) ^ this.f34799h) ^ this.f34800i);
        }

        @Override // com.sunia.HTREnginev2.AbstractC14585w4
        /* renamed from: d */
        public void mo27161d(ByteBuffer byteBuffer) {
            this.f34801j += 8;
            m27165g(byteBuffer.getLong());
        }

        @Override // com.sunia.HTREnginev2.AbstractC14585w4
        /* renamed from: e */
        public void mo27162e(ByteBuffer byteBuffer) {
            this.f34801j += byteBuffer.remaining();
            int i = 0;
            while (byteBuffer.hasRemaining()) {
                this.f34802k ^= (byteBuffer.get() & 255) << i;
                i += 8;
            }
        }

        /* renamed from: g */
        public final void m27165g(long j) {
            this.f34800i ^= j;
            m27166h(this.f34795d);
            this.f34797f = j ^ this.f34797f;
        }

        /* renamed from: h */
        public final void m27166h(int i) {
            for (int i2 = 0; i2 < i; i2++) {
                long j = this.f34797f;
                long j2 = this.f34798g;
                this.f34797f = j + j2;
                this.f34799h += this.f34800i;
                this.f34798g = Long.rotateLeft(j2, 13);
                long rotateLeft = Long.rotateLeft(this.f34800i, 16);
                long j3 = this.f34798g;
                long j4 = this.f34797f;
                this.f34798g = j3 ^ j4;
                this.f34800i = rotateLeft ^ this.f34799h;
                long rotateLeft2 = Long.rotateLeft(j4, 32);
                long j5 = this.f34799h;
                long j6 = this.f34798g;
                this.f34799h = j5 + j6;
                this.f34797f = rotateLeft2 + this.f34800i;
                this.f34798g = Long.rotateLeft(j6, 17);
                long rotateLeft3 = Long.rotateLeft(this.f34800i, 21);
                long j7 = this.f34798g;
                long j8 = this.f34799h;
                this.f34798g = j7 ^ j8;
                this.f34800i = rotateLeft3 ^ this.f34797f;
                this.f34799h = Long.rotateLeft(j8, 32);
            }
        }
    }

    public SipHashFunction(int i, int i2, long j, long j2) {
        Preconditions.checkArgument(i > 0, "The number of SipRound iterations (c=%s) during Compression must be positive.", i);
        Preconditions.checkArgument(i2 > 0, "The number of SipRound iterations (d=%s) during Finalization must be positive.", i2);
        this.f34790c = i;
        this.f34791d = i2;
        this.f34792k0 = j;
        this.f34793k1 = j2;
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 64;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof SipHashFunction)) {
            return false;
        }
        SipHashFunction sipHashFunction = (SipHashFunction) obj;
        return this.f34790c == sipHashFunction.f34790c && this.f34791d == sipHashFunction.f34791d && this.f34792k0 == sipHashFunction.f34792k0 && this.f34793k1 == sipHashFunction.f34793k1;
    }

    public int hashCode() {
        return (int) ((((SipHashFunction.class.hashCode() ^ this.f34790c) ^ this.f34791d) ^ this.f34792k0) ^ this.f34793k1);
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new C6189a(this.f34790c, this.f34791d, this.f34792k0, this.f34793k1);
    }

    public String toString() {
        int i = this.f34790c;
        int i2 = this.f34791d;
        long j = this.f34792k0;
        long j2 = this.f34793k1;
        StringBuilder sb = new StringBuilder(81);
        sb.append("Hashing.sipHash");
        sb.append(i);
        sb.append(i2);
        sb.append(MotionUtils.f31761c);
        sb.append(j);
        sb.append(", ");
        sb.append(j2);
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }
}
