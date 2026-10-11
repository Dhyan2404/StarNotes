package com.sunia.HTREnginev2;

import com.google.common.base.Preconditions;
import com.google.common.hash.Hasher;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@CanIgnoreReturnValue
@wnf
/* renamed from: com.sunia.HTREnginev2.n2 */
/* loaded from: classes6.dex */
public abstract class AbstractC14121n2 extends AbstractC14433t3 {

    /* renamed from: a */
    public final ByteBuffer f78225a = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);

    /* renamed from: a */
    public final Hasher m55706a(int i) {
        try {
            mo27139e(this.f78225a.array(), 0, i);
            return this;
        } finally {
            gri.m54338a(this.f78225a);
        }
    }

    /* renamed from: b */
    public abstract void mo27138b(byte b);

    /* renamed from: c */
    public void mo27155c(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            mo27139e(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            gri.m54341d(byteBuffer, byteBuffer.limit());
        } else {
            for (int remaining = byteBuffer.remaining(); remaining > 0; remaining--) {
                mo27138b(byteBuffer.get());
            }
        }
    }

    /* renamed from: d */
    public void mo54897d(byte[] bArr) {
        mo27139e(bArr, 0, bArr.length);
    }

    /* renamed from: e */
    public void mo27139e(byte[] bArr, int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            mo27138b(bArr[i3]);
        }
    }

    @Override // com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
    public Hasher putByte(byte b) {
        mo27138b(b);
        return this;
    }

    @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
    public Hasher putChar(char c) {
        this.f78225a.putChar(c);
        return m55706a(2);
    }

    @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
    public Hasher putInt(int i) {
        this.f78225a.putInt(i);
        return m55706a(4);
    }

    @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
    public Hasher putLong(long j) {
        this.f78225a.putLong(j);
        return m55706a(8);
    }

    @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
    public Hasher putShort(short s) {
        this.f78225a.putShort(s);
        return m55706a(2);
    }

    @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
    public Hasher putBytes(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        mo54897d(bArr);
        return this;
    }

    @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
    public Hasher putBytes(byte[] bArr, int i, int i2) {
        Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
        mo27139e(bArr, i, i2);
        return this;
    }

    @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
    public Hasher putBytes(ByteBuffer byteBuffer) {
        mo27155c(byteBuffer);
        return this;
    }
}
