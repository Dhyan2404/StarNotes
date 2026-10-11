package com.sunia.HTREnginev2;

import com.google.common.base.Preconditions;
import com.google.common.hash.HashCode;
import com.google.common.hash.Hasher;
import com.google.errorprone.annotations.Immutable;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Arrays;

@Immutable
@wnf
/* renamed from: com.sunia.HTREnginev2.b4 */
/* loaded from: classes6.dex */
public abstract class AbstractC13512b4 extends AbstractC14378s3 {

    /* renamed from: com.sunia.HTREnginev2.b4$a */
    /* loaded from: classes6.dex */
    public final class a extends AbstractC14433t3 {

        /* renamed from: a */
        public final b f65361a;

        public a(int i) {
            this.f65361a = new b(i);
        }

        @Override // com.google.common.hash.Hasher
        public HashCode hash() {
            return AbstractC13512b4.this.hashBytes(this.f65361a.m53162f(), 0, this.f65361a.m53163j());
        }

        @Override // com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putByte(byte b) {
            this.f65361a.write(b);
            return this;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putBytes(byte[] bArr, int i, int i2) {
            this.f65361a.write(bArr, i, i2);
            return this;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putBytes(ByteBuffer byteBuffer) {
            this.f65361a.m53164w(byteBuffer);
            return this;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.b4$b */
    /* loaded from: classes6.dex */
    public static final class b extends ByteArrayOutputStream {
        public b(int i) {
            super(i);
        }

        /* renamed from: f */
        public byte[] m53162f() {
            return ((ByteArrayOutputStream) this).buf;
        }

        /* renamed from: j */
        public int m53163j() {
            return ((ByteArrayOutputStream) this).count;
        }

        /* renamed from: w */
        public void m53164w(ByteBuffer byteBuffer) {
            int remaining = byteBuffer.remaining();
            int i = ((ByteArrayOutputStream) this).count;
            int i2 = i + remaining;
            byte[] bArr = ((ByteArrayOutputStream) this).buf;
            if (i2 > bArr.length) {
                ((ByteArrayOutputStream) this).buf = Arrays.copyOf(bArr, i + remaining);
            }
            byteBuffer.get(((ByteArrayOutputStream) this).buf, ((ByteArrayOutputStream) this).count, remaining);
            ((ByteArrayOutputStream) this).count += remaining;
        }
    }

    @Override // com.sunia.HTREnginev2.AbstractC14378s3, com.google.common.hash.HashFunction
    public HashCode hashBytes(ByteBuffer byteBuffer) {
        return newHasher(byteBuffer.remaining()).putBytes(byteBuffer).hash();
    }

    @Override // com.sunia.HTREnginev2.AbstractC14378s3, com.google.common.hash.HashFunction
    public abstract HashCode hashBytes(byte[] bArr, int i, int i2);

    @Override // com.sunia.HTREnginev2.AbstractC14378s3, com.google.common.hash.HashFunction
    public HashCode hashInt(int i) {
        return hashBytes(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(i).array());
    }

    @Override // com.sunia.HTREnginev2.AbstractC14378s3, com.google.common.hash.HashFunction
    public HashCode hashLong(long j) {
        return hashBytes(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j).array());
    }

    @Override // com.sunia.HTREnginev2.AbstractC14378s3, com.google.common.hash.HashFunction
    public HashCode hashString(CharSequence charSequence, Charset charset) {
        return hashBytes(charSequence.toString().getBytes(charset));
    }

    @Override // com.sunia.HTREnginev2.AbstractC14378s3, com.google.common.hash.HashFunction
    public HashCode hashUnencodedChars(CharSequence charSequence) {
        int length = charSequence.length();
        ByteBuffer order = ByteBuffer.allocate(length * 2).order(ByteOrder.LITTLE_ENDIAN);
        for (int i = 0; i < length; i++) {
            order.putChar(charSequence.charAt(i));
        }
        return hashBytes(order.array());
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return newHasher(32);
    }

    @Override // com.sunia.HTREnginev2.AbstractC14378s3, com.google.common.hash.HashFunction
    public Hasher newHasher(int i) {
        Preconditions.checkArgument(i >= 0);
        return new a(i);
    }
}
