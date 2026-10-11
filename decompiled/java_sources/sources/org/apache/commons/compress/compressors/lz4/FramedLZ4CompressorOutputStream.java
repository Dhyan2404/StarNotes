package org.apache.commons.compress.compressors.lz4;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.compress.compressors.CompressorOutputStream;
import org.apache.commons.compress.utils.ByteUtils;

/* loaded from: classes12.dex */
public class FramedLZ4CompressorOutputStream extends CompressorOutputStream {

    /* renamed from: o */
    public static final byte[] f106216o = new byte[4];

    /* renamed from: e */
    public final byte[] f106217e;

    /* renamed from: f */
    public final byte[] f106218f;

    /* renamed from: g */
    public final OutputStream f106219g;

    /* renamed from: h */
    public final Parameters f106220h;

    /* renamed from: i */
    public boolean f106221i;

    /* renamed from: j */
    public int f106222j;

    /* renamed from: k */
    public final XXHash32 f106223k;

    /* renamed from: l */
    public final XXHash32 f106224l;

    /* renamed from: m */
    public final byte[] f106225m;

    /* renamed from: n */
    public int f106226n;

    /* loaded from: classes12.dex */
    public enum BlockSize {
        K64(65536, 4),
        K256(262144, 5),
        M1(1048576, 6),
        M4(4194304, 7);

        private final int index;
        private final int size;

        BlockSize(int i, int i2) {
            this.size = i;
            this.index = i2;
        }

        public int getIndex() {
            return this.index;
        }

        public int getSize() {
            return this.size;
        }
    }

    /* loaded from: classes12.dex */
    public static class Parameters {
        public static final Parameters DEFAULT = new Parameters(BlockSize.M4, true, false, false);

        /* renamed from: a */
        public final BlockSize f106229a;

        /* renamed from: b */
        public final boolean f106230b;

        /* renamed from: c */
        public final boolean f106231c;

        /* renamed from: d */
        public final boolean f106232d;

        /* renamed from: e */
        public final org.apache.commons.compress.compressors.lz77support.Parameters f106233e;

        public Parameters(BlockSize blockSize) {
            this(blockSize, true, false, false);
        }

        public String toString() {
            return "LZ4 Parameters with BlockSize " + this.f106229a + ", withContentChecksum " + this.f106230b + ", withBlockChecksum " + this.f106231c + ", withBlockDependency " + this.f106232d;
        }

        public Parameters(BlockSize blockSize, org.apache.commons.compress.compressors.lz77support.Parameters parameters) {
            this(blockSize, true, false, false, parameters);
        }

        public Parameters(BlockSize blockSize, boolean z, boolean z2, boolean z3) {
            this(blockSize, z, z2, z3, BlockLZ4CompressorOutputStream.createParameterBuilder().build());
        }

        public Parameters(BlockSize blockSize, boolean z, boolean z2, boolean z3, org.apache.commons.compress.compressors.lz77support.Parameters parameters) {
            this.f106229a = blockSize;
            this.f106230b = z;
            this.f106231c = z2;
            this.f106232d = z3;
            this.f106233e = parameters;
        }
    }

    public FramedLZ4CompressorOutputStream(OutputStream outputStream) throws IOException {
        this(outputStream, Parameters.DEFAULT);
    }

    /* renamed from: H */
    public final void m66760H() throws IOException {
        this.f106219g.write(f106216o);
        if (this.f106220h.f106230b) {
            ByteUtils.toLittleEndian(this.f106219g, this.f106223k.getValue(), 4);
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            finish();
        } finally {
            this.f106219g.close();
        }
    }

    /* renamed from: f */
    public final void m66761f(byte[] bArr, int i, int i2) {
        int min = Math.min(i2, this.f106225m.length);
        if (min > 0) {
            byte[] bArr2 = this.f106225m;
            int length = bArr2.length - min;
            if (length > 0) {
                System.arraycopy(bArr2, min, bArr2, 0, length);
            }
            System.arraycopy(bArr, i, this.f106225m, length, min);
            this.f106226n = Math.min(this.f106226n + min, this.f106225m.length);
        }
    }

    public void finish() throws IOException {
        if (this.f106221i) {
            return;
        }
        if (this.f106222j > 0) {
            m66762j();
        }
        m66760H();
        this.f106221i = true;
    }

    /* renamed from: j */
    public final void m66762j() throws IOException {
        boolean z = this.f106220h.f106232d;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BlockLZ4CompressorOutputStream blockLZ4CompressorOutputStream = new BlockLZ4CompressorOutputStream(byteArrayOutputStream, this.f106220h.f106233e);
        if (z) {
            try {
                byte[] bArr = this.f106225m;
                int length = bArr.length;
                int i = this.f106226n;
                blockLZ4CompressorOutputStream.prefill(bArr, length - i, i);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        blockLZ4CompressorOutputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
        blockLZ4CompressorOutputStream.write(this.f106218f, 0, this.f106222j);
        blockLZ4CompressorOutputStream.close();
        if (z) {
            m66761f(this.f106218f, 0, this.f106222j);
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (byteArray.length > this.f106222j) {
            ByteUtils.toLittleEndian(this.f106219g, Integer.MIN_VALUE | r2, 4);
            this.f106219g.write(this.f106218f, 0, this.f106222j);
            if (this.f106220h.f106231c) {
                this.f106224l.update(this.f106218f, 0, this.f106222j);
            }
        } else {
            ByteUtils.toLittleEndian(this.f106219g, byteArray.length, 4);
            this.f106219g.write(byteArray);
            if (this.f106220h.f106231c) {
                this.f106224l.update(byteArray, 0, byteArray.length);
            }
        }
        if (this.f106220h.f106231c) {
            ByteUtils.toLittleEndian(this.f106219g, this.f106224l.getValue(), 4);
            this.f106224l.reset();
        }
        this.f106222j = 0;
    }

    /* renamed from: w */
    public final void m66763w() throws IOException {
        int i = !this.f106220h.f106232d ? 96 : 64;
        if (this.f106220h.f106230b) {
            i |= 4;
        }
        if (this.f106220h.f106231c) {
            i |= 16;
        }
        this.f106219g.write(i);
        this.f106223k.update(i);
        int index = (this.f106220h.f106229a.getIndex() << 4) & 112;
        this.f106219g.write(index);
        this.f106223k.update(index);
        this.f106219g.write((int) ((this.f106223k.getValue() >> 8) & 255));
        this.f106223k.reset();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.f106217e;
        bArr[0] = (byte) (i & 255);
        write(bArr);
    }

    public FramedLZ4CompressorOutputStream(OutputStream outputStream, Parameters parameters) throws IOException {
        this.f106217e = new byte[1];
        this.f106223k = new XXHash32();
        this.f106220h = parameters;
        this.f106218f = new byte[parameters.f106229a.getSize()];
        this.f106219g = outputStream;
        this.f106224l = parameters.f106231c ? new XXHash32() : null;
        outputStream.write(FramedLZ4CompressorInputStream.f106195t);
        m66763w();
        this.f106225m = parameters.f106232d ? new byte[65536] : null;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (this.f106220h.f106230b) {
            this.f106223k.update(bArr, i, i2);
        }
        int length = this.f106218f.length;
        if (this.f106222j + i2 > length) {
            m66762j();
            while (i2 > length) {
                System.arraycopy(bArr, i, this.f106218f, 0, length);
                i += length;
                i2 -= length;
                this.f106222j = length;
                m66762j();
            }
        }
        System.arraycopy(bArr, i, this.f106218f, this.f106222j, i2);
        this.f106222j += i2;
    }
}
