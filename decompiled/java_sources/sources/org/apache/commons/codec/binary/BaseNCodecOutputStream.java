package org.apache.commons.codec.binary;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Objects;
import org.apache.commons.codec.binary.BaseNCodec;

/* loaded from: classes9.dex */
public class BaseNCodecOutputStream extends FilterOutputStream {

    /* renamed from: e */
    public final boolean f104627e;

    /* renamed from: f */
    public final BaseNCodec f104628f;

    /* renamed from: g */
    public final byte[] f104629g;

    /* renamed from: h */
    public final BaseNCodec.C18665a f104630h;

    public BaseNCodecOutputStream(OutputStream outputStream, BaseNCodec baseNCodec, boolean z) {
        super(outputStream);
        this.f104629g = new byte[1];
        this.f104630h = new BaseNCodec.C18665a();
        this.f104628f = baseNCodec;
        this.f104627e = z;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        eof();
        flush();
        ((FilterOutputStream) this).out.close();
    }

    public void eof() throws IOException {
        if (this.f104627e) {
            this.f104628f.mo65699e(this.f104629g, 0, -1, this.f104630h);
        } else {
            this.f104628f.mo65698d(this.f104629g, 0, -1, this.f104630h);
        }
    }

    /* renamed from: f */
    public final void m65713f(boolean z) throws IOException {
        byte[] bArr;
        int m65712g;
        int m65710a = this.f104628f.m65710a(this.f104630h);
        if (m65710a > 0 && (m65712g = this.f104628f.m65712g((bArr = new byte[m65710a]), 0, m65710a, this.f104630h)) > 0) {
            ((FilterOutputStream) this).out.write(bArr, 0, m65712g);
        }
        if (z) {
            ((FilterOutputStream) this).out.flush();
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        m65713f(true);
    }

    public boolean isStrictDecoding() {
        return this.f104628f.isStrictDecoding();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        Objects.requireNonNull(bArr, "array");
        if (i >= 0 && i2 >= 0) {
            if (i > bArr.length || i + i2 > bArr.length) {
                throw new IndexOutOfBoundsException();
            }
            if (i2 > 0) {
                if (this.f104627e) {
                    this.f104628f.mo65699e(bArr, i, i2, this.f104630h);
                } else {
                    this.f104628f.mo65698d(bArr, i, i2, this.f104630h);
                }
                m65713f(false);
                return;
            }
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.f104629g;
        bArr[0] = (byte) i;
        write(bArr, 0, 1);
    }
}
