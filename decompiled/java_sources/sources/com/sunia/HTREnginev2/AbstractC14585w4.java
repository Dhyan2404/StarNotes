package com.sunia.HTREnginev2;

import com.google.common.base.Preconditions;
import com.google.common.hash.HashCode;
import com.google.common.hash.Hasher;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@CanIgnoreReturnValue
@wnf
/* renamed from: com.sunia.HTREnginev2.w4 */
/* loaded from: classes6.dex */
public abstract class AbstractC14585w4 extends AbstractC14433t3 {

    /* renamed from: a */
    public final ByteBuffer f88205a;

    /* renamed from: b */
    public final int f88206b;

    /* renamed from: c */
    public final int f88207c;

    public AbstractC14585w4(int i) {
        this(i, i);
    }

    /* renamed from: a */
    public abstract HashCode mo27160a();

    /* renamed from: b */
    public final void m57925b() {
        gri.m54339b(this.f88205a);
        while (this.f88205a.remaining() >= this.f88207c) {
            mo27161d(this.f88205a);
        }
        this.f88205a.compact();
    }

    /* renamed from: c */
    public final void m57926c() {
        if (this.f88205a.remaining() < 8) {
            m57925b();
        }
    }

    /* renamed from: d */
    public abstract void mo27161d(ByteBuffer byteBuffer);

    /* renamed from: e */
    public void mo27162e(ByteBuffer byteBuffer) {
        gri.m54341d(byteBuffer, byteBuffer.limit());
        gri.m54340c(byteBuffer, this.f88207c + 7);
        while (true) {
            int position = byteBuffer.position();
            int i = this.f88207c;
            if (position >= i) {
                gri.m54340c(byteBuffer, i);
                gri.m54339b(byteBuffer);
                mo27161d(byteBuffer);
                return;
            }
            byteBuffer.putLong(0L);
        }
    }

    /* renamed from: f */
    public final Hasher m57927f(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= this.f88205a.remaining()) {
            this.f88205a.put(byteBuffer);
            m57926c();
            return this;
        }
        int position = this.f88206b - this.f88205a.position();
        for (int i = 0; i < position; i++) {
            this.f88205a.put(byteBuffer.get());
        }
        m57925b();
        while (byteBuffer.remaining() >= this.f88207c) {
            mo27161d(byteBuffer);
        }
        this.f88205a.put(byteBuffer);
        return this;
    }

    @Override // com.google.common.hash.Hasher
    public final HashCode hash() {
        m57925b();
        gri.m54339b(this.f88205a);
        if (this.f88205a.remaining() > 0) {
            mo27162e(this.f88205a);
            ByteBuffer byteBuffer = this.f88205a;
            gri.m54341d(byteBuffer, byteBuffer.limit());
        }
        return mo27160a();
    }

    public AbstractC14585w4(int i, int i2) {
        Preconditions.checkArgument(i2 % i == 0);
        this.f88205a = ByteBuffer.allocate(i2 + 7).order(ByteOrder.LITTLE_ENDIAN);
        this.f88206b = i2;
        this.f88207c = i;
    }

    @Override // com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
    public final Hasher putByte(byte b) {
        this.f88205a.put(b);
        m57926c();
        return this;
    }

    @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
    public final Hasher putChar(char c) {
        this.f88205a.putChar(c);
        m57926c();
        return this;
    }

    @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
    public final Hasher putInt(int i) {
        this.f88205a.putInt(i);
        m57926c();
        return this;
    }

    @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
    public final Hasher putLong(long j) {
        this.f88205a.putLong(j);
        m57926c();
        return this;
    }

    @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
    public final Hasher putShort(short s) {
        this.f88205a.putShort(s);
        m57926c();
        return this;
    }

    @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
    public final Hasher putBytes(byte[] bArr, int i, int i2) {
        return m57927f(ByteBuffer.wrap(bArr, i, i2).order(ByteOrder.LITTLE_ENDIAN));
    }

    @Override // com.sunia.HTREnginev2.AbstractC14433t3, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
    public final Hasher putBytes(ByteBuffer byteBuffer) {
        ByteOrder order = byteBuffer.order();
        try {
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            return m57927f(byteBuffer);
        } finally {
            byteBuffer.order(order);
        }
    }
}
