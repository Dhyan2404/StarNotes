package org.apache.commons.compress.compressors.snappy;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.compressors.lz77support.AbstractLZ77CompressorInputStream;
import org.apache.commons.compress.utils.ByteUtils;

/* loaded from: classes12.dex */
public class SnappyCompressorInputStream extends AbstractLZ77CompressorInputStream {
    public static final int DEFAULT_BLOCK_SIZE = 32768;

    /* renamed from: s */
    public static final int f106353s = 3;

    /* renamed from: o */
    public final int f106354o;

    /* renamed from: p */
    public int f106355p;

    /* renamed from: q */
    public State f106356q;

    /* renamed from: r */
    public boolean f106357r;

    /* loaded from: classes12.dex */
    public enum State {
        NO_BLOCK,
        IN_LITERAL,
        IN_BACK_REFERENCE
    }

    /* renamed from: org.apache.commons.compress.compressors.snappy.SnappyCompressorInputStream$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C18888a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f106358a;

        static {
            int[] iArr = new int[State.values().length];
            f106358a = iArr;
            try {
                iArr[State.NO_BLOCK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f106358a[State.IN_LITERAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f106358a[State.IN_BACK_REFERENCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public SnappyCompressorInputStream(InputStream inputStream) throws IOException {
        this(inputStream, 32768);
    }

    /* renamed from: I */
    public final void m66806I() throws IOException {
        if (this.f106355p == 0) {
            this.f106357r = true;
            return;
        }
        int readOneByte = readOneByte();
        if (readOneByte == -1) {
            throw new IOException("Premature end of stream reading block start");
        }
        int i = readOneByte & 3;
        if (i == 0) {
            int m66807M = m66807M(readOneByte);
            if (m66807M < 0) {
                throw new IOException("Illegal block with a negative literal size found");
            }
            this.f106355p -= m66807M;
            startLiteral(m66807M);
            this.f106356q = State.IN_LITERAL;
            return;
        }
        if (i == 1) {
            int i2 = ((readOneByte >> 2) & 7) + 4;
            this.f106355p -= i2;
            int i3 = (readOneByte & 224) << 3;
            int readOneByte2 = readOneByte();
            if (readOneByte2 == -1) {
                throw new IOException("Premature end of stream reading back-reference length");
            }
            try {
                startBackReference(i3 | readOneByte2, i2);
                this.f106356q = State.IN_BACK_REFERENCE;
                return;
            } catch (IllegalArgumentException e) {
                throw new IOException("Illegal block with bad offset found", e);
            }
        }
        if (i == 2) {
            int i4 = (readOneByte >> 2) + 1;
            if (i4 < 0) {
                throw new IOException("Illegal block with a negative match length found");
            }
            this.f106355p -= i4;
            try {
                startBackReference((int) ByteUtils.fromLittleEndian(this.supplier, 2), i4);
                this.f106356q = State.IN_BACK_REFERENCE;
                return;
            } catch (IllegalArgumentException e2) {
                throw new IOException("Illegal block with bad offset found", e2);
            }
        }
        if (i != 3) {
            return;
        }
        int i5 = (readOneByte >> 2) + 1;
        if (i5 < 0) {
            throw new IOException("Illegal block with a negative match length found");
        }
        this.f106355p -= i5;
        try {
            startBackReference(((int) ByteUtils.fromLittleEndian(this.supplier, 4)) & Integer.MAX_VALUE, i5);
            this.f106356q = State.IN_BACK_REFERENCE;
        } catch (IllegalArgumentException e3) {
            throw new IOException("Illegal block with bad offset found", e3);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0002. Please report as an issue. */
    /* renamed from: M */
    public final int m66807M(int i) throws IOException {
        long fromLittleEndian;
        int i2 = i >> 2;
        switch (i2) {
            case 60:
                i2 = readOneByte();
                if (i2 == -1) {
                    throw new IOException("Premature end of stream reading literal length");
                }
                return i2 + 1;
            case 61:
                fromLittleEndian = ByteUtils.fromLittleEndian(this.supplier, 2);
                i2 = (int) fromLittleEndian;
                return i2 + 1;
            case 62:
                fromLittleEndian = ByteUtils.fromLittleEndian(this.supplier, 3);
                i2 = (int) fromLittleEndian;
                return i2 + 1;
            case 63:
                fromLittleEndian = ByteUtils.fromLittleEndian(this.supplier, 4);
                i2 = (int) fromLittleEndian;
                return i2 + 1;
            default:
                return i2 + 1;
        }
    }

    /* renamed from: e0 */
    public final long m66808e0() throws IOException {
        int i = 0;
        long j = 0;
        while (true) {
            int readOneByte = readOneByte();
            if (readOneByte == -1) {
                throw new IOException("Premature end of stream reading size");
            }
            int i2 = i + 1;
            j |= (readOneByte & 127) << (i * 7);
            if ((readOneByte & 128) == 0) {
                return j;
            }
            i = i2;
        }
    }

    @Override // org.apache.commons.compress.compressors.lz77support.AbstractLZ77CompressorInputStream
    public int getSize() {
        return this.f106354o;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        if (this.f106357r) {
            return -1;
        }
        int i3 = C18888a.f106358a[this.f106356q.ordinal()];
        if (i3 == 1) {
            m66806I();
            return read(bArr, i, i2);
        }
        if (i3 == 2) {
            int readLiteral = readLiteral(bArr, i, i2);
            if (!hasMoreDataInBlock()) {
                this.f106356q = State.NO_BLOCK;
            }
            return readLiteral > 0 ? readLiteral : read(bArr, i, i2);
        }
        if (i3 == 3) {
            int readBackReference = readBackReference(bArr, i, i2);
            if (!hasMoreDataInBlock()) {
                this.f106356q = State.NO_BLOCK;
            }
            return readBackReference > 0 ? readBackReference : read(bArr, i, i2);
        }
        throw new IOException("Unknown stream state " + this.f106356q);
    }

    public SnappyCompressorInputStream(InputStream inputStream, int i) throws IOException {
        super(inputStream, i);
        this.f106356q = State.NO_BLOCK;
        int m66808e0 = (int) m66808e0();
        this.f106354o = m66808e0;
        this.f106355p = m66808e0;
    }
}
