package org.apache.commons.compress.compressors.snappy;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.compress.compressors.CompressorOutputStream;
import org.apache.commons.compress.compressors.lz77support.LZ77Compressor;
import org.apache.commons.compress.compressors.lz77support.Parameters;
import org.apache.commons.compress.compressors.snappy.SnappyCompressorOutputStream;
import org.apache.commons.compress.utils.ByteUtils;

/* loaded from: classes12.dex */
public class SnappyCompressorOutputStream extends CompressorOutputStream {

    /* renamed from: j */
    public static final int f106359j = 60;

    /* renamed from: k */
    public static final int f106360k = 256;

    /* renamed from: l */
    public static final int f106361l = 65536;

    /* renamed from: m */
    public static final int f106362m = 16777216;

    /* renamed from: n */
    public static final int f106363n = 240;

    /* renamed from: o */
    public static final int f106364o = 244;

    /* renamed from: p */
    public static final int f106365p = 248;

    /* renamed from: q */
    public static final int f106366q = 252;

    /* renamed from: r */
    public static final int f106367r = 4;

    /* renamed from: s */
    public static final int f106368s = 11;

    /* renamed from: t */
    public static final int f106369t = 1024;

    /* renamed from: u */
    public static final int f106370u = 32768;

    /* renamed from: v */
    public static final int f106371v = 1;

    /* renamed from: w */
    public static final int f106372w = 2;

    /* renamed from: x */
    public static final int f106373x = 3;

    /* renamed from: y */
    public static final int f106374y = 4;

    /* renamed from: z */
    public static final int f106375z = 64;

    /* renamed from: e */
    public final LZ77Compressor f106376e;

    /* renamed from: f */
    public final OutputStream f106377f;

    /* renamed from: g */
    public final ByteUtils.ByteConsumer f106378g;

    /* renamed from: h */
    public final byte[] f106379h;

    /* renamed from: i */
    public boolean f106380i;

    /* renamed from: org.apache.commons.compress.compressors.snappy.SnappyCompressorOutputStream$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C18889a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f106381a;

        static {
            int[] iArr = new int[LZ77Compressor.Block.BlockType.values().length];
            f106381a = iArr;
            try {
                iArr[LZ77Compressor.Block.BlockType.LITERAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f106381a[LZ77Compressor.Block.BlockType.BACK_REFERENCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f106381a[LZ77Compressor.Block.BlockType.EOD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public SnappyCompressorOutputStream(OutputStream outputStream, long j) throws IOException {
        this(outputStream, j, 32768);
    }

    public static Parameters.Builder createParameterBuilder(int i) {
        return Parameters.builder(i).withMinBackReferenceLength(4).withMaxBackReferenceLength(64).withMaxOffset(i).withMaxLiteralLength(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ void m66810j(LZ77Compressor.Block block) throws IOException {
        int i = C18889a.f106381a[block.getType().ordinal()];
        if (i == 1) {
            m66815f0((LZ77Compressor.LiteralBlock) block);
        } else {
            if (i != 2) {
                return;
            }
            m66824w((LZ77Compressor.BackReference) block);
        }
    }

    /* renamed from: H */
    public final void m66811H(int i, int i2) throws IOException {
        m66812I(3, 4, i, i2);
    }

    /* renamed from: I */
    public final void m66812I(int i, int i2, int i3, int i4) throws IOException {
        this.f106377f.write(i | ((i3 - 1) << 2));
        m66822m0(i2, i4);
    }

    /* renamed from: M */
    public final void m66813M(int i, int i2) throws IOException {
        this.f106377f.write(((i - 4) << 2) | 1 | ((i2 & 1792) >> 3));
        this.f106377f.write(i2 & 255);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            finish();
        } finally {
            this.f106377f.close();
        }
    }

    /* renamed from: e0 */
    public final void m66814e0(int i, int i2) throws IOException {
        m66812I(2, 2, i, i2);
    }

    /* renamed from: f0 */
    public final void m66815f0(LZ77Compressor.LiteralBlock literalBlock) throws IOException {
        int length = literalBlock.getLength();
        if (length <= 60) {
            m66817h0(literalBlock, length);
            return;
        }
        if (length <= 256) {
            m66818i0(literalBlock, length);
            return;
        }
        if (length <= 65536) {
            m66820k0(literalBlock, length);
        } else if (length <= 16777216) {
            m66819j0(literalBlock, length);
        } else {
            m66816g0(literalBlock, length);
        }
    }

    public void finish() throws IOException {
        if (this.f106380i) {
            return;
        }
        this.f106376e.finish();
        this.f106380i = true;
    }

    /* renamed from: g0 */
    public final void m66816g0(LZ77Compressor.LiteralBlock literalBlock, int i) throws IOException {
        m66821l0(252, 4, i, literalBlock);
    }

    /* renamed from: h0 */
    public final void m66817h0(LZ77Compressor.LiteralBlock literalBlock, int i) throws IOException {
        m66821l0((i - 1) << 2, 0, i, literalBlock);
    }

    /* renamed from: i0 */
    public final void m66818i0(LZ77Compressor.LiteralBlock literalBlock, int i) throws IOException {
        m66821l0(240, 1, i, literalBlock);
    }

    /* renamed from: j0 */
    public final void m66819j0(LZ77Compressor.LiteralBlock literalBlock, int i) throws IOException {
        m66821l0(248, 3, i, literalBlock);
    }

    /* renamed from: k0 */
    public final void m66820k0(LZ77Compressor.LiteralBlock literalBlock, int i) throws IOException {
        m66821l0(244, 2, i, literalBlock);
    }

    /* renamed from: l0 */
    public final void m66821l0(int i, int i2, int i3, LZ77Compressor.LiteralBlock literalBlock) throws IOException {
        this.f106377f.write(i);
        m66822m0(i2, i3 - 1);
        this.f106377f.write(literalBlock.getData(), literalBlock.getOffset(), i3);
    }

    /* renamed from: m0 */
    public final void m66822m0(int i, int i2) throws IOException {
        ByteUtils.toLittleEndian(this.f106378g, i2, i);
    }

    /* renamed from: n0 */
    public final void m66823n0(long j) throws IOException {
        boolean z;
        do {
            int i = (int) (127 & j);
            z = j > ((long) i);
            if (z) {
                i |= 128;
            }
            this.f106377f.write(i);
            j >>= 7;
        } while (z);
    }

    /* renamed from: w */
    public final void m66824w(LZ77Compressor.BackReference backReference) throws IOException {
        int length = backReference.getLength();
        int offset = backReference.getOffset();
        if (length >= 4 && length <= 11 && offset <= 1024) {
            m66813M(length, offset);
        } else if (offset < 32768) {
            m66814e0(length, offset);
        } else {
            m66811H(length, offset);
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.f106379h;
        bArr[0] = (byte) (i & 255);
        write(bArr);
    }

    public SnappyCompressorOutputStream(OutputStream outputStream, long j, int i) throws IOException {
        this(outputStream, j, createParameterBuilder(i).build());
    }

    public SnappyCompressorOutputStream(OutputStream outputStream, long j, Parameters parameters) throws IOException {
        this.f106379h = new byte[1];
        this.f106377f = outputStream;
        this.f106378g = new ByteUtils.OutputStreamByteConsumer(outputStream);
        this.f106376e = new LZ77Compressor(parameters, new LZ77Compressor.Callback() { // from class: com.sunia.HTREnginev2.avm
            @Override // org.apache.commons.compress.compressors.lz77support.LZ77Compressor.Callback
            public final void accept(LZ77Compressor.Block block) {
                SnappyCompressorOutputStream.this.m66810j(block);
            }
        });
        m66823n0(j);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f106376e.compress(bArr, i, i2);
    }
}
