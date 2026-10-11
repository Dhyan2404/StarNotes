package com.sunia.HTREnginev2;

import com.google.common.base.Preconditions;
import com.google.common.hash.Funnel;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import com.google.common.hash.Hasher;
import com.google.errorprone.annotations.Immutable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

@Immutable
@wnf
/* renamed from: com.sunia.HTREnginev2.v2 */
/* loaded from: classes6.dex */
public abstract class AbstractC14530v2 extends AbstractC14378s3 {

    /* renamed from: f */
    public static final long f87048f = 0;

    /* renamed from: e */
    public final HashFunction[] f87049e;

    /* renamed from: com.sunia.HTREnginev2.v2$a */
    /* loaded from: classes6.dex */
    public class a implements Hasher {

        /* renamed from: a */
        public final /* synthetic */ Hasher[] f87050a;

        public a(Hasher[] hasherArr) {
            this.f87050a = hasherArr;
        }

        @Override // com.google.common.hash.Hasher
        public HashCode hash() {
            return AbstractC14530v2.this.mo27143b(this.f87050a);
        }

        @Override // com.google.common.hash.Hasher
        public <T> Hasher putObject(@bwk T t, Funnel<? super T> funnel) {
            for (Hasher hasher : this.f87050a) {
                hasher.putObject(t, funnel);
            }
            return this;
        }

        @Override // com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putBoolean(boolean z) {
            for (Hasher hasher : this.f87050a) {
                hasher.putBoolean(z);
            }
            return this;
        }

        @Override // com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putByte(byte b) {
            for (Hasher hasher : this.f87050a) {
                hasher.putByte(b);
            }
            return this;
        }

        @Override // com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putChar(char c) {
            for (Hasher hasher : this.f87050a) {
                hasher.putChar(c);
            }
            return this;
        }

        @Override // com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putDouble(double d) {
            for (Hasher hasher : this.f87050a) {
                hasher.putDouble(d);
            }
            return this;
        }

        @Override // com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putFloat(float f) {
            for (Hasher hasher : this.f87050a) {
                hasher.putFloat(f);
            }
            return this;
        }

        @Override // com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putInt(int i) {
            for (Hasher hasher : this.f87050a) {
                hasher.putInt(i);
            }
            return this;
        }

        @Override // com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putLong(long j) {
            for (Hasher hasher : this.f87050a) {
                hasher.putLong(j);
            }
            return this;
        }

        @Override // com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putShort(short s) {
            for (Hasher hasher : this.f87050a) {
                hasher.putShort(s);
            }
            return this;
        }

        @Override // com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putString(CharSequence charSequence, Charset charset) {
            for (Hasher hasher : this.f87050a) {
                hasher.putString(charSequence, charset);
            }
            return this;
        }

        @Override // com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putUnencodedChars(CharSequence charSequence) {
            for (Hasher hasher : this.f87050a) {
                hasher.putUnencodedChars(charSequence);
            }
            return this;
        }

        @Override // com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putBytes(byte[] bArr) {
            for (Hasher hasher : this.f87050a) {
                hasher.putBytes(bArr);
            }
            return this;
        }

        @Override // com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putBytes(byte[] bArr, int i, int i2) {
            for (Hasher hasher : this.f87050a) {
                hasher.putBytes(bArr, i, i2);
            }
            return this;
        }

        @Override // com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putBytes(ByteBuffer byteBuffer) {
            int position = byteBuffer.position();
            for (Hasher hasher : this.f87050a) {
                gri.m54341d(byteBuffer, position);
                hasher.putBytes(byteBuffer);
            }
            return this;
        }
    }

    public AbstractC14530v2(HashFunction... hashFunctionArr) {
        for (HashFunction hashFunction : hashFunctionArr) {
            Preconditions.checkNotNull(hashFunction);
        }
        this.f87049e = hashFunctionArr;
    }

    /* renamed from: a */
    public final Hasher m57728a(Hasher[] hasherArr) {
        return new a(hasherArr);
    }

    /* renamed from: b */
    public abstract HashCode mo27143b(Hasher[] hasherArr);

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        int length = this.f87049e.length;
        Hasher[] hasherArr = new Hasher[length];
        for (int i = 0; i < length; i++) {
            hasherArr[i] = this.f87049e[i].newHasher();
        }
        return m57728a(hasherArr);
    }

    @Override // com.sunia.HTREnginev2.AbstractC14378s3, com.google.common.hash.HashFunction
    public Hasher newHasher(int i) {
        Preconditions.checkArgument(i >= 0);
        int length = this.f87049e.length;
        Hasher[] hasherArr = new Hasher[length];
        for (int i2 = 0; i2 < length; i2++) {
            hasherArr[i2] = this.f87049e[i2].newHasher(i);
        }
        return m57728a(hasherArr);
    }
}
