package org.apache.commons.compress.compressors.gzip;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.zip.CRC32;
import java.util.zip.Deflater;
import org.apache.commons.compress.compressors.CompressorOutputStream;

/* loaded from: classes12.dex */
public class GzipCompressorOutputStream extends CompressorOutputStream {

    /* renamed from: j */
    public static final int f106157j = 8;

    /* renamed from: k */
    public static final int f106158k = 16;

    /* renamed from: e */
    public final OutputStream f106159e;

    /* renamed from: f */
    public final Deflater f106160f;

    /* renamed from: g */
    public final byte[] f106161g;

    /* renamed from: h */
    public boolean f106162h;

    /* renamed from: i */
    public final CRC32 f106163i;

    public GzipCompressorOutputStream(OutputStream outputStream) throws IOException {
        this(outputStream, new GzipParameters());
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f106162h) {
            return;
        }
        try {
            finish();
        } finally {
            this.f106160f.end();
            this.f106159e.close();
            this.f106162h = true;
        }
    }

    /* renamed from: f */
    public final void m66706f() throws IOException {
        Deflater deflater = this.f106160f;
        byte[] bArr = this.f106161g;
        int deflate = deflater.deflate(bArr, 0, bArr.length);
        if (deflate > 0) {
            this.f106159e.write(this.f106161g, 0, deflate);
        }
    }

    public void finish() throws IOException {
        if (this.f106160f.finished()) {
            return;
        }
        this.f106160f.finish();
        while (!this.f106160f.finished()) {
            m66706f();
        }
        m66708w();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.f106159e.flush();
    }

    /* renamed from: j */
    public final void m66707j(GzipParameters gzipParameters) throws IOException {
        String filename = gzipParameters.getFilename();
        String comment = gzipParameters.getComment();
        ByteBuffer allocate = ByteBuffer.allocate(10);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.putShort((short) -29921);
        allocate.put((byte) 8);
        allocate.put((byte) ((filename == null ? 0 : 8) | (comment != null ? 16 : 0)));
        allocate.putInt((int) (gzipParameters.getModificationTime() / 1000));
        int compressionLevel = gzipParameters.getCompressionLevel();
        if (compressionLevel == 9) {
            allocate.put((byte) 2);
        } else if (compressionLevel == 1) {
            allocate.put((byte) 4);
        } else {
            allocate.put((byte) 0);
        }
        allocate.put((byte) gzipParameters.getOperatingSystem());
        this.f106159e.write(allocate.array());
        if (filename != null) {
            this.f106159e.write(filename.getBytes(StandardCharsets.ISO_8859_1));
            this.f106159e.write(0);
        }
        if (comment != null) {
            this.f106159e.write(comment.getBytes(StandardCharsets.ISO_8859_1));
            this.f106159e.write(0);
        }
    }

    /* renamed from: w */
    public final void m66708w() throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.putInt((int) this.f106163i.getValue());
        allocate.putInt(this.f106160f.getTotalIn());
        this.f106159e.write(allocate.array());
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        write(new byte[]{(byte) (i & 255)}, 0, 1);
    }

    public GzipCompressorOutputStream(OutputStream outputStream, GzipParameters gzipParameters) throws IOException {
        this.f106163i = new CRC32();
        this.f106159e = outputStream;
        this.f106160f = new Deflater(gzipParameters.getCompressionLevel(), true);
        this.f106161g = new byte[gzipParameters.getBufferSize()];
        m66707j(gzipParameters);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (this.f106160f.finished()) {
            throw new IOException("Cannot write more data, the end of the compressed data stream has been reached");
        }
        if (i2 > 0) {
            this.f106160f.setInput(bArr, i, i2);
            while (!this.f106160f.needsInput()) {
                m66706f();
            }
            this.f106163i.update(bArr, i, i2);
        }
    }
}
