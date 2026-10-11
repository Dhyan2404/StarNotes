package org.apache.commons.compress.archivers.zip;

import java.io.Closeable;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;
import java.util.zip.CRC32;
import java.util.zip.Deflater;
import org.apache.commons.compress.parallel.ScatterGatherBackingStore;

/* loaded from: classes12.dex */
public abstract class StreamCompressor implements Closeable {

    /* renamed from: l */
    public static final int f105829l = 8192;

    /* renamed from: m */
    public static final int f105830m = 4096;

    /* renamed from: e */
    public final Deflater f105831e;

    /* renamed from: g */
    public long f105833g;

    /* renamed from: h */
    public long f105834h;

    /* renamed from: i */
    public long f105835i;

    /* renamed from: f */
    public final CRC32 f105832f = new CRC32();

    /* renamed from: j */
    public final byte[] f105836j = new byte[4096];

    /* renamed from: k */
    public final byte[] f105837k = new byte[4096];

    /* renamed from: org.apache.commons.compress.archivers.zip.StreamCompressor$a */
    /* loaded from: classes12.dex */
    public static final class C18854a extends StreamCompressor {

        /* renamed from: n */
        public final DataOutput f105838n;

        public C18854a(Deflater deflater, DataOutput dataOutput) {
            super(deflater);
            this.f105838n = dataOutput;
        }

        @Override // org.apache.commons.compress.archivers.zip.StreamCompressor
        public void writeOut(byte[] bArr, int i, int i2) throws IOException {
            this.f105838n.write(bArr, i, i2);
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.zip.StreamCompressor$b */
    /* loaded from: classes12.dex */
    public static final class C18855b extends StreamCompressor {

        /* renamed from: n */
        public final OutputStream f105839n;

        public C18855b(Deflater deflater, OutputStream outputStream) {
            super(deflater);
            this.f105839n = outputStream;
        }

        @Override // org.apache.commons.compress.archivers.zip.StreamCompressor
        public void writeOut(byte[] bArr, int i, int i2) throws IOException {
            this.f105839n.write(bArr, i, i2);
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.zip.StreamCompressor$c */
    /* loaded from: classes12.dex */
    public static final class C18856c extends StreamCompressor {

        /* renamed from: n */
        public final ScatterGatherBackingStore f105840n;

        public C18856c(Deflater deflater, ScatterGatherBackingStore scatterGatherBackingStore) {
            super(deflater);
            this.f105840n = scatterGatherBackingStore;
        }

        @Override // org.apache.commons.compress.archivers.zip.StreamCompressor
        public void writeOut(byte[] bArr, int i, int i2) throws IOException {
            this.f105840n.writeOut(bArr, i, i2);
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.zip.StreamCompressor$d */
    /* loaded from: classes12.dex */
    public static final class C18857d extends StreamCompressor {

        /* renamed from: n */
        public final SeekableByteChannel f105841n;

        public C18857d(Deflater deflater, SeekableByteChannel seekableByteChannel) {
            super(deflater);
            this.f105841n = seekableByteChannel;
        }

        @Override // org.apache.commons.compress.archivers.zip.StreamCompressor
        public void writeOut(byte[] bArr, int i, int i2) throws IOException {
            this.f105841n.write(ByteBuffer.wrap(bArr, i, i2));
        }
    }

    public StreamCompressor(Deflater deflater) {
        this.f105831e = deflater;
    }

    /* renamed from: H */
    public static StreamCompressor m66413H(SeekableByteChannel seekableByteChannel, Deflater deflater) {
        return new C18857d(deflater, seekableByteChannel);
    }

    public static StreamCompressor create(int i, ScatterGatherBackingStore scatterGatherBackingStore) {
        return new C18856c(new Deflater(i, true), scatterGatherBackingStore);
    }

    /* renamed from: f */
    public static StreamCompressor m66414f(DataOutput dataOutput, Deflater deflater) {
        return new C18854a(deflater, dataOutput);
    }

    /* renamed from: j */
    public static StreamCompressor m66415j(OutputStream outputStream) {
        return m66416w(outputStream, new Deflater(-1, true));
    }

    /* renamed from: w */
    public static StreamCompressor m66416w(OutputStream outputStream, Deflater deflater) {
        return new C18855b(deflater, outputStream);
    }

    /* renamed from: I */
    public void m66417I() throws IOException {
        Deflater deflater = this.f105831e;
        byte[] bArr = this.f105836j;
        int deflate = deflater.deflate(bArr, 0, bArr.length);
        if (deflate > 0) {
            writeCounted(this.f105836j, 0, deflate);
        }
    }

    /* renamed from: M */
    public final void m66418M() throws IOException {
        while (!this.f105831e.needsInput()) {
            m66417I();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f105831e.end();
    }

    public void deflate(InputStream inputStream, int i) throws IOException {
        reset();
        while (true) {
            byte[] bArr = this.f105837k;
            int read = inputStream.read(bArr, 0, bArr.length);
            if (read < 0) {
                break;
            } else {
                m66420f0(this.f105837k, 0, read, i);
            }
        }
        if (i == 8) {
            m66419e0();
        }
    }

    /* renamed from: e0 */
    public void m66419e0() throws IOException {
        this.f105831e.finish();
        while (!this.f105831e.finished()) {
            m66417I();
        }
    }

    /* renamed from: f0 */
    public long m66420f0(byte[] bArr, int i, int i2, int i3) throws IOException {
        long j = this.f105833g;
        this.f105832f.update(bArr, i, i2);
        if (i3 == 8) {
            m66421g0(bArr, i, i2);
        } else {
            writeCounted(bArr, i, i2);
        }
        this.f105834h += i2;
        return this.f105833g - j;
    }

    /* renamed from: g0 */
    public final void m66421g0(byte[] bArr, int i, int i2) throws IOException {
        if (i2 <= 0 || this.f105831e.finished()) {
            return;
        }
        if (i2 <= 8192) {
            this.f105831e.setInput(bArr, i, i2);
            m66418M();
            return;
        }
        int i3 = i2 / 8192;
        for (int i4 = 0; i4 < i3; i4++) {
            this.f105831e.setInput(bArr, (i4 * 8192) + i, 8192);
            m66418M();
        }
        int i5 = i3 * 8192;
        if (i5 < i2) {
            this.f105831e.setInput(bArr, i + i5, i2 - i5);
            m66418M();
        }
    }

    public long getBytesRead() {
        return this.f105834h;
    }

    public long getBytesWrittenForLastEntry() {
        return this.f105833g;
    }

    public long getCrc32() {
        return this.f105832f.getValue();
    }

    public long getTotalBytesWritten() {
        return this.f105835i;
    }

    public void reset() {
        this.f105832f.reset();
        this.f105831e.reset();
        this.f105834h = 0L;
        this.f105833g = 0L;
    }

    public void writeCounted(byte[] bArr) throws IOException {
        writeCounted(bArr, 0, bArr.length);
    }

    public abstract void writeOut(byte[] bArr, int i, int i2) throws IOException;

    public void writeCounted(byte[] bArr, int i, int i2) throws IOException {
        writeOut(bArr, i, i2);
        long j = i2;
        this.f105833g += j;
        this.f105835i += j;
    }

    public static StreamCompressor create(ScatterGatherBackingStore scatterGatherBackingStore) {
        return create(-1, scatterGatherBackingStore);
    }
}
