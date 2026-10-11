package org.apache.commons.compress.compressors.lz4;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.compressors.lz77support.AbstractLZ77CompressorInputStream;
import org.apache.commons.compress.utils.ByteUtils;

/* loaded from: classes12.dex */
public class BlockLZ4CompressorInputStream extends AbstractLZ77CompressorInputStream {

    /* renamed from: q */
    public static final int f106171q = 65536;

    /* renamed from: r */
    public static final int f106172r = 4;

    /* renamed from: s */
    public static final int f106173s = 15;

    /* renamed from: t */
    public static final int f106174t = 240;

    /* renamed from: o */
    public int f106175o;

    /* renamed from: p */
    public State f106176p;

    /* loaded from: classes12.dex */
    public enum State {
        NO_BLOCK,
        IN_LITERAL,
        LOOKING_FOR_BACK_REFERENCE,
        IN_BACK_REFERENCE,
        EOF
    }

    /* renamed from: org.apache.commons.compress.compressors.lz4.BlockLZ4CompressorInputStream$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C18882a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f106177a;

        static {
            int[] iArr = new int[State.values().length];
            f106177a = iArr;
            try {
                iArr[State.EOF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f106177a[State.NO_BLOCK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f106177a[State.IN_LITERAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f106177a[State.LOOKING_FOR_BACK_REFERENCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f106177a[State.IN_BACK_REFERENCE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public BlockLZ4CompressorInputStream(InputStream inputStream) {
        super(inputStream, 65536);
        this.f106176p = State.NO_BLOCK;
    }

    /* renamed from: I */
    public final boolean m66709I() throws IOException {
        try {
            int fromLittleEndian = (int) ByteUtils.fromLittleEndian(this.supplier, 2);
            int i = this.f106175o;
            long j = i;
            if (i == 15) {
                j += m66710M();
            }
            if (j < 0) {
                throw new IOException("Illegal block with a negative match length found");
            }
            try {
                startBackReference(fromLittleEndian, j + 4);
                this.f106176p = State.IN_BACK_REFERENCE;
                return true;
            } catch (IllegalArgumentException e) {
                throw new IOException("Illegal block with bad offset found", e);
            }
        } catch (IOException e2) {
            if (this.f106175o == 0) {
                return false;
            }
            throw e2;
        }
    }

    /* renamed from: M */
    public final long m66710M() throws IOException {
        int readOneByte;
        long j = 0;
        do {
            readOneByte = readOneByte();
            if (readOneByte == -1) {
                throw new IOException("Premature end of stream while parsing length");
            }
            j += readOneByte;
        } while (readOneByte == 255);
        return j;
    }

    /* renamed from: e0 */
    public final void m66711e0() throws IOException {
        int readOneByte = readOneByte();
        if (readOneByte == -1) {
            throw new IOException("Premature end of stream while looking for next block");
        }
        this.f106175o = readOneByte & 15;
        long j = (readOneByte & 240) >> 4;
        if (j == 15) {
            j += m66710M();
        }
        if (j < 0) {
            throw new IOException("Illegal block with a negative literal size found");
        }
        startLiteral(j);
        this.f106176p = State.IN_LITERAL;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        int i3 = C18882a.f106177a[this.f106176p.ordinal()];
        if (i3 == 1) {
            return -1;
        }
        if (i3 == 2) {
            m66711e0();
        } else if (i3 != 3) {
            if (i3 != 4) {
                if (i3 != 5) {
                    throw new IOException("Unknown stream state " + this.f106176p);
                }
            } else if (!m66709I()) {
                this.f106176p = State.EOF;
                return -1;
            }
            int readBackReference = readBackReference(bArr, i, i2);
            if (!hasMoreDataInBlock()) {
                this.f106176p = State.NO_BLOCK;
            }
            return readBackReference > 0 ? readBackReference : read(bArr, i, i2);
        }
        int readLiteral = readLiteral(bArr, i, i2);
        if (!hasMoreDataInBlock()) {
            this.f106176p = State.LOOKING_FOR_BACK_REFERENCE;
        }
        return readLiteral > 0 ? readLiteral : read(bArr, i, i2);
    }
}
