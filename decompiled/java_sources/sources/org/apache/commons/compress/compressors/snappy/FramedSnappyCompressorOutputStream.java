package org.apache.commons.compress.compressors.snappy;

import com.sunia.HTREnginev2.fal;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.compress.compressors.CompressorOutputStream;
import org.apache.commons.compress.compressors.lz77support.Parameters;
import org.apache.commons.compress.utils.ByteUtils;

/* loaded from: classes12.dex */
public class FramedSnappyCompressorOutputStream extends CompressorOutputStream {

    /* renamed from: l */
    public static final int f106345l = 65536;

    /* renamed from: e */
    public final OutputStream f106346e;

    /* renamed from: f */
    public final Parameters f106347f;

    /* renamed from: g */
    public final fal f106348g;

    /* renamed from: h */
    public final byte[] f106349h;

    /* renamed from: i */
    public final byte[] f106350i;

    /* renamed from: j */
    public int f106351j;

    /* renamed from: k */
    public final ByteUtils.ByteConsumer f106352k;

    public FramedSnappyCompressorOutputStream(OutputStream outputStream) throws IOException {
        this(outputStream, SnappyCompressorOutputStream.createParameterBuilder(32768).build());
    }

    /* renamed from: j */
    public static long m66802j(long j) {
        return (((j << 17) | (j >> 15)) + FramedSnappyCompressorInputStream.f106324s) & 4294967295L;
    }

    /* renamed from: H */
    public final void m66803H(int i, long j) throws IOException {
        ByteUtils.toLittleEndian(this.f106352k, j, i);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            finish();
        } finally {
            this.f106346e.close();
        }
    }

    /* renamed from: f */
    public final void m66804f() throws IOException {
        this.f106346e.write(0);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        SnappyCompressorOutputStream snappyCompressorOutputStream = new SnappyCompressorOutputStream(byteArrayOutputStream, this.f106351j, this.f106347f);
        try {
            snappyCompressorOutputStream.write(this.f106350i, 0, this.f106351j);
            snappyCompressorOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            m66803H(3, byteArray.length + 4);
            m66805w();
            this.f106346e.write(byteArray);
            this.f106351j = 0;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    snappyCompressorOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public void finish() throws IOException {
        if (this.f106351j > 0) {
            m66804f();
        }
    }

    /* renamed from: w */
    public final void m66805w() throws IOException {
        this.f106348g.update(this.f106350i, 0, this.f106351j);
        m66803H(4, m66802j(this.f106348g.getValue()));
        this.f106348g.reset();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.f106349h;
        bArr[0] = (byte) (i & 255);
        write(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (this.f106351j + i2 > 65536) {
            m66804f();
            while (i2 > 65536) {
                System.arraycopy(bArr, i, this.f106350i, 0, 65536);
                i += 65536;
                i2 -= 65536;
                this.f106351j = 65536;
                m66804f();
            }
        }
        System.arraycopy(bArr, i, this.f106350i, this.f106351j, i2);
        this.f106351j += i2;
    }

    public FramedSnappyCompressorOutputStream(OutputStream outputStream, Parameters parameters) throws IOException {
        this.f106348g = new fal();
        this.f106349h = new byte[1];
        this.f106350i = new byte[65536];
        this.f106346e = outputStream;
        this.f106347f = parameters;
        this.f106352k = new ByteUtils.OutputStreamByteConsumer(outputStream);
        outputStream.write(FramedSnappyCompressorInputStream.f106323J);
    }
}
