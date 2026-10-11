package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.utils.CloseShieldFilterInputStream;
import org.apache.commons.compress.utils.CountingInputStream;
import org.apache.commons.compress.utils.ExactMath;
import org.apache.commons.compress.utils.InputStreamStatistics;

/* loaded from: classes12.dex */
public class c2g extends InputStream implements InputStreamStatistics {

    /* renamed from: e */
    public final InputStream f66386e;

    /* renamed from: f */
    public C13739fs f66387f;

    /* renamed from: g */
    public final int f66388g;

    /* renamed from: h */
    public final int f66389h;

    /* renamed from: i */
    public final int f66390i;

    /* renamed from: j */
    public C14618wq f66391j;

    /* renamed from: k */
    public C14618wq f66392k;

    /* renamed from: l */
    public C14618wq f66393l;

    /* renamed from: m */
    public final ptd f66394m = new ptd(32768);

    /* renamed from: n */
    public long f66395n;

    /* renamed from: o */
    public long f66396o;

    public c2g(int i, int i2, InputStream inputStream) {
        if (i != 4096 && i != 8192) {
            throw new IllegalArgumentException("The dictionary size must be 4096 or 8192");
        }
        if (i2 != 2 && i2 != 3) {
            throw new IllegalArgumentException("The number of trees must be 2 or 3");
        }
        this.f66388g = i;
        this.f66389h = i2;
        this.f66390i = i2;
        this.f66386e = inputStream;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f66386e.close();
    }

    /* renamed from: f */
    public final void m53384f() throws IOException {
        m53385j();
        int m54175H = this.f66387f.m54175H();
        if (m54175H == -1) {
            return;
        }
        if (m54175H == 1) {
            C14618wq c14618wq = this.f66391j;
            int m58128c = c14618wq != null ? c14618wq.m58128c(this.f66387f) : this.f66387f.m54177M();
            if (m58128c == -1) {
                return;
            }
            this.f66394m.m56375d(m58128c);
            return;
        }
        int i = this.f66388g == 4096 ? 6 : 7;
        int m54176I = (int) this.f66387f.m54176I(i);
        int m58128c2 = this.f66393l.m58128c(this.f66387f);
        if (m58128c2 != -1 || m54176I > 0) {
            int i2 = (m58128c2 << i) | m54176I;
            int m58128c3 = this.f66392k.m58128c(this.f66387f);
            if (m58128c3 == 63) {
                long m54176I2 = this.f66387f.m54176I(8);
                if (m54176I2 == -1) {
                    return;
                } else {
                    m58128c3 = ExactMath.add(m58128c3, m54176I2);
                }
            }
            this.f66394m.m56373b(i2 + 1, m58128c3 + this.f66390i);
        }
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getCompressedCount() {
        return this.f66387f.getBytesRead() + this.f66396o;
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getUncompressedCount() {
        return this.f66395n;
    }

    /* renamed from: j */
    public final void m53385j() throws IOException {
        if (this.f66387f == null) {
            CountingInputStream countingInputStream = new CountingInputStream(new CloseShieldFilterInputStream(this.f66386e));
            try {
                if (this.f66389h == 3) {
                    this.f66391j = C14618wq.m58126b(countingInputStream, 256);
                }
                this.f66392k = C14618wq.m58126b(countingInputStream, 64);
                this.f66393l = C14618wq.m58126b(countingInputStream, 64);
                this.f66396o += countingInputStream.getBytesRead();
                countingInputStream.close();
                this.f66387f = new C13739fs(this.f66386e);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        countingInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (!this.f66394m.m56372a()) {
            try {
                m53384f();
            } catch (IllegalArgumentException e) {
                throw new IOException("bad IMPLODE stream", e);
            }
        }
        int m56374c = this.f66394m.m56374c();
        if (m56374c > -1) {
            this.f66395n++;
        }
        return m56374c;
    }
}
