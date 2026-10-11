package com.sunia.HTREnginev2;

import com.twelvemonkeys.io.enc.Encoder;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: classes10.dex */
public final class rui implements Encoder {

    /* renamed from: k */
    public static final int f83499k = 256;

    /* renamed from: l */
    public static final int f83500l = 257;

    /* renamed from: m */
    public static final int f83501m = 9;

    /* renamed from: n */
    public static final int f83502n = 12;

    /* renamed from: o */
    public static final int f83503o = 4096;

    /* renamed from: a */
    public final short[] f83504a = new short[4096];

    /* renamed from: b */
    public final short[] f83505b = new short[4096];

    /* renamed from: c */
    public final short[] f83506c = new short[4096];

    /* renamed from: d */
    public int f83507d = -1;

    /* renamed from: e */
    public int f83508e = 9;

    /* renamed from: f */
    public int f83509f = 258;

    /* renamed from: g */
    public int f83510g = m57024d(9);

    /* renamed from: h */
    public int f83511h = 0;

    /* renamed from: i */
    public int f83512i = 0;

    /* renamed from: j */
    public long f83513j;

    public rui(long j) {
        this.f83513j = j;
    }

    /* renamed from: a */
    public static int m57023a(int i) {
        return m57024d(i);
    }

    /* renamed from: d */
    public static int m57024d(int i) {
        return (1 << i) - 1;
    }

    /* renamed from: b */
    public void m57025b(OutputStream outputStream, ByteBuffer byteBuffer) throws IOException {
        int remaining = byteBuffer.remaining();
        if (remaining == 0) {
            return;
        }
        if (this.f83507d == -1) {
            m57028f(outputStream, 256);
            this.f83507d = byteBuffer.get() & 255;
        }
        while (byteBuffer.hasRemaining()) {
            int i = byteBuffer.get() & 255;
            short[] sArr = this.f83504a;
            int i2 = this.f83507d;
            short s = sArr[i2];
            if (s <= 0) {
                int i3 = this.f83509f;
                sArr[i2] = (short) i3;
                this.f83506c[i3] = (short) i;
                m57028f(outputStream, i2);
                this.f83507d = i;
                this.f83509f++;
                m57026c(outputStream);
            } else if (this.f83506c[s] != i) {
                while (true) {
                    short[] sArr2 = this.f83505b;
                    short s2 = sArr2[s];
                    if (s2 <= 0) {
                        int i4 = this.f83509f;
                        sArr2[s] = (short) i4;
                        this.f83506c[i4] = (short) i;
                        m57028f(outputStream, this.f83507d);
                        this.f83507d = i;
                        this.f83509f++;
                        m57026c(outputStream);
                        break;
                    }
                    if (this.f83506c[s2] == i) {
                        this.f83507d = s2;
                        break;
                    }
                    s = s2;
                }
            } else {
                this.f83507d = s;
            }
        }
        this.f83513j -= remaining;
    }

    /* renamed from: c */
    public final void m57026c(OutputStream outputStream) throws IOException {
        if (this.f83509f > this.f83510g) {
            int i = this.f83508e;
            if (i == 12) {
                m57028f(outputStream, 256);
                m57027e();
            } else {
                int i2 = i + 1;
                this.f83508e = i2;
                this.f83510g = m57024d(i2);
            }
        }
    }

    /* renamed from: e */
    public final void m57027e() {
        Arrays.fill(this.f83504a, (short) 0);
        Arrays.fill(this.f83505b, (short) 0);
        this.f83508e = 9;
        this.f83510g = m57024d(9);
        this.f83509f = 258;
    }

    @Override // com.twelvemonkeys.io.enc.Encoder
    public void encode(OutputStream outputStream, ByteBuffer byteBuffer) throws IOException {
        m57025b(outputStream, byteBuffer);
        if (this.f83513j <= 0) {
            m57028f(outputStream, this.f83507d);
            m57028f(outputStream, 257);
            if (this.f83512i > 0) {
                m57028f(outputStream, 0);
            }
        }
    }

    /* renamed from: f */
    public final void m57028f(OutputStream outputStream, int i) throws IOException {
        int i2 = this.f83511h;
        int i3 = this.f83508e;
        this.f83511h = (i & this.f83510g) | (i2 << i3);
        this.f83512i += i3;
        while (true) {
            int i4 = this.f83512i;
            if (i4 < 8) {
                this.f83511h &= m57023a(i4);
                return;
            } else {
                outputStream.write((this.f83511h >> (i4 - 8)) & 255);
                this.f83512i -= 8;
            }
        }
    }
}
