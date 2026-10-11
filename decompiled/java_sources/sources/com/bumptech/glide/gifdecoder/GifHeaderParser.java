package com.bumptech.glide.gifdecoder;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.sunia.HTREnginev2.u2h;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* loaded from: classes3.dex */
public class GifHeaderParser {

    /* renamed from: e */
    public static final String f14407e = "GifHeaderParser";

    /* renamed from: f */
    public static final int f14408f = 255;

    /* renamed from: g */
    public static final int f14409g = 44;

    /* renamed from: h */
    public static final int f14410h = 33;

    /* renamed from: i */
    public static final int f14411i = 59;

    /* renamed from: j */
    public static final int f14412j = 249;

    /* renamed from: k */
    public static final int f14413k = 255;

    /* renamed from: l */
    public static final int f14414l = 254;

    /* renamed from: m */
    public static final int f14415m = 1;

    /* renamed from: n */
    public static final int f14416n = 28;

    /* renamed from: o */
    public static final int f14417o = 2;

    /* renamed from: p */
    public static final int f14418p = 1;

    /* renamed from: q */
    public static final int f14419q = 128;

    /* renamed from: r */
    public static final int f14420r = 64;

    /* renamed from: s */
    public static final int f14421s = 7;

    /* renamed from: t */
    public static final int f14422t = 128;

    /* renamed from: u */
    public static final int f14423u = 7;

    /* renamed from: v */
    public static final int f14424v = 2;

    /* renamed from: w */
    public static final int f14425w = 10;

    /* renamed from: x */
    public static final int f14426x = 256;

    /* renamed from: b */
    public ByteBuffer f14428b;

    /* renamed from: c */
    public GifHeader f14429c;

    /* renamed from: a */
    public final byte[] f14427a = new byte[256];

    /* renamed from: d */
    public int f14430d = 0;

    /* renamed from: a */
    public final boolean m8643a() {
        return this.f14429c.f14395b != 0;
    }

    /* renamed from: b */
    public final int m8644b() {
        try {
            return this.f14428b.get() & 255;
        } catch (Exception unused) {
            this.f14429c.f14395b = 1;
            return 0;
        }
    }

    /* renamed from: c */
    public final void m8645c() {
        this.f14429c.f14397d.f86039a = m8654l();
        this.f14429c.f14397d.f86040b = m8654l();
        this.f14429c.f14397d.f86041c = m8654l();
        this.f14429c.f14397d.f86042d = m8654l();
        int m8644b = m8644b();
        boolean z = (m8644b & 128) != 0;
        int pow = (int) Math.pow(2.0d, (m8644b & 7) + 1);
        u2h u2hVar = this.f14429c.f14397d;
        u2hVar.f86043e = (m8644b & 64) != 0;
        if (z) {
            u2hVar.f86049k = m8647e(pow);
        } else {
            u2hVar.f86049k = null;
        }
        this.f14429c.f14397d.f86048j = this.f14428b.position();
        m8657o();
        if (m8643a()) {
            return;
        }
        GifHeader gifHeader = this.f14429c;
        gifHeader.f14396c++;
        gifHeader.f14398e.add(gifHeader.f14397d);
    }

    public void clear() {
        this.f14428b = null;
        this.f14429c = null;
    }

    /* renamed from: d */
    public final void m8646d() {
        int m8644b = m8644b();
        this.f14430d = m8644b;
        if (m8644b <= 0) {
            return;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            try {
                i2 = this.f14430d;
                if (i >= i2) {
                    return;
                }
                i2 -= i;
                this.f14428b.get(this.f14427a, i, i2);
                i += i2;
            } catch (Exception e) {
                if (Log.isLoggable(f14407e, 3)) {
                    Log.d(f14407e, "Error Reading Block n: " + i + " count: " + i2 + " blockSize: " + this.f14430d, e);
                }
                this.f14429c.f14395b = 1;
                return;
            }
        }
    }

    @Nullable
    /* renamed from: e */
    public final int[] m8647e(int i) {
        byte[] bArr = new byte[i * 3];
        int[] iArr = null;
        try {
            this.f14428b.get(bArr);
            iArr = new int[256];
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                int i4 = i3 + 1;
                int i5 = i4 + 1;
                int i6 = i5 + 1;
                int i7 = i2 + 1;
                iArr[i2] = ((bArr[i3] & 255) << 16) | (-16777216) | ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
                i3 = i6;
                i2 = i7;
            }
        } catch (BufferUnderflowException e) {
            if (Log.isLoggable(f14407e, 3)) {
                Log.d(f14407e, "Format Error Reading Color Table", e);
            }
            this.f14429c.f14395b = 1;
        }
        return iArr;
    }

    /* renamed from: f */
    public final void m8648f() {
        m8649g(Integer.MAX_VALUE);
    }

    /* renamed from: g */
    public final void m8649g(int i) {
        boolean z = false;
        while (!z && !m8643a() && this.f14429c.f14396c <= i) {
            int m8644b = m8644b();
            if (m8644b == 33) {
                int m8644b2 = m8644b();
                if (m8644b2 == 1) {
                    m8656n();
                } else if (m8644b2 == 249) {
                    this.f14429c.f14397d = new u2h();
                    m8650h();
                } else if (m8644b2 == 254) {
                    m8656n();
                } else if (m8644b2 != 255) {
                    m8656n();
                } else {
                    m8646d();
                    StringBuilder sb = new StringBuilder();
                    for (int i2 = 0; i2 < 11; i2++) {
                        sb.append((char) this.f14427a[i2]);
                    }
                    if (sb.toString().equals("NETSCAPE2.0")) {
                        m8653k();
                    } else {
                        m8656n();
                    }
                }
            } else if (m8644b == 44) {
                GifHeader gifHeader = this.f14429c;
                if (gifHeader.f14397d == null) {
                    gifHeader.f14397d = new u2h();
                }
                m8645c();
            } else if (m8644b != 59) {
                this.f14429c.f14395b = 1;
            } else {
                z = true;
            }
        }
    }

    /* renamed from: h */
    public final void m8650h() {
        m8644b();
        int m8644b = m8644b();
        u2h u2hVar = this.f14429c.f14397d;
        int i = (m8644b & 28) >> 2;
        u2hVar.f86045g = i;
        if (i == 0) {
            u2hVar.f86045g = 1;
        }
        u2hVar.f86044f = (m8644b & 1) != 0;
        int m8654l = m8654l();
        if (m8654l < 2) {
            m8654l = 10;
        }
        u2h u2hVar2 = this.f14429c.f14397d;
        u2hVar2.f86047i = m8654l * 10;
        u2hVar2.f86046h = m8644b();
        m8644b();
    }

    /* renamed from: i */
    public final void m8651i() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            sb.append((char) m8644b());
        }
        if (!sb.toString().startsWith("GIF")) {
            this.f14429c.f14395b = 1;
            return;
        }
        m8652j();
        if (!this.f14429c.f14401h || m8643a()) {
            return;
        }
        GifHeader gifHeader = this.f14429c;
        gifHeader.f14394a = m8647e(gifHeader.f14402i);
        GifHeader gifHeader2 = this.f14429c;
        gifHeader2.f14405l = gifHeader2.f14394a[gifHeader2.f14403j];
    }

    public boolean isAnimated() {
        m8651i();
        if (!m8643a()) {
            m8649g(2);
        }
        return this.f14429c.f14396c > 1;
    }

    /* renamed from: j */
    public final void m8652j() {
        this.f14429c.f14399f = m8654l();
        this.f14429c.f14400g = m8654l();
        int m8644b = m8644b();
        GifHeader gifHeader = this.f14429c;
        gifHeader.f14401h = (m8644b & 128) != 0;
        gifHeader.f14402i = (int) Math.pow(2.0d, (m8644b & 7) + 1);
        this.f14429c.f14403j = m8644b();
        this.f14429c.f14404k = m8644b();
    }

    /* renamed from: k */
    public final void m8653k() {
        do {
            m8646d();
            byte[] bArr = this.f14427a;
            if (bArr[0] == 1) {
                this.f14429c.f14406m = ((bArr[2] & 255) << 8) | (bArr[1] & 255);
            }
            if (this.f14430d <= 0) {
                return;
            }
        } while (!m8643a());
    }

    /* renamed from: l */
    public final int m8654l() {
        return this.f14428b.getShort();
    }

    /* renamed from: m */
    public final void m8655m() {
        this.f14428b = null;
        Arrays.fill(this.f14427a, (byte) 0);
        this.f14429c = new GifHeader();
        this.f14430d = 0;
    }

    /* renamed from: n */
    public final void m8656n() {
        int m8644b;
        do {
            m8644b = m8644b();
            this.f14428b.position(Math.min(this.f14428b.position() + m8644b, this.f14428b.limit()));
        } while (m8644b > 0);
    }

    /* renamed from: o */
    public final void m8657o() {
        m8644b();
        m8656n();
    }

    @NonNull
    public GifHeader parseHeader() {
        if (this.f14428b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (m8643a()) {
            return this.f14429c;
        }
        m8651i();
        if (!m8643a()) {
            m8648f();
            GifHeader gifHeader = this.f14429c;
            if (gifHeader.f14396c < 0) {
                gifHeader.f14395b = 1;
            }
        }
        return this.f14429c;
    }

    public GifHeaderParser setData(@NonNull ByteBuffer byteBuffer) {
        m8655m();
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.f14428b = asReadOnlyBuffer;
        asReadOnlyBuffer.position(0);
        this.f14428b.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }

    public GifHeaderParser setData(@Nullable byte[] bArr) {
        if (bArr != null) {
            setData(ByteBuffer.wrap(bArr));
        } else {
            this.f14428b = null;
            this.f14429c.f14395b = 2;
        }
        return this;
    }
}
