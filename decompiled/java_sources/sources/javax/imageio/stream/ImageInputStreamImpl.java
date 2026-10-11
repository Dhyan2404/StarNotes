package javax.imageio.stream;

import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteOrder;
import java.util.Stack;
import javax.imageio.IIOException;

/* loaded from: classes5.dex */
public abstract class ImageInputStreamImpl implements ImageInputStream {
    private static final int BYTE_BUF_LENGTH = 8192;
    protected int bitOffset;
    protected long streamPos;
    private Stack<Long> markByteStack = new Stack<>();
    private Stack<Integer> markBitStack = new Stack<>();
    private boolean isClosed = false;
    byte[] byteBuf = new byte[8192];
    protected ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
    protected long flushedPos = 0;

    /* renamed from: H */
    public final void m61496H(byte[] bArr, int[] iArr, int i, int i2) {
        int i3 = 0;
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            int i4 = 0;
            while (i3 < i2) {
                iArr[i + i3] = (bArr[i4] << 24) | ((bArr[i4 + 1] & 255) << 16) | ((bArr[i4 + 2] & 255) << 8) | (bArr[i4 + 3] & 255);
                i4 += 4;
                i3++;
            }
            return;
        }
        int i5 = 0;
        while (i3 < i2) {
            iArr[i + i3] = (bArr[i5 + 3] << 24) | ((bArr[i5 + 2] & 255) << 16) | ((bArr[i5 + 1] & 255) << 8) | (bArr[i5] & 255);
            i5 += 4;
            i3++;
        }
    }

    /* renamed from: I */
    public final void m61497I(byte[] bArr, long[] jArr, int i, int i2) {
        int i3 = 0;
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            int i4 = 0;
            while (i3 < i2) {
                byte b = bArr[i4];
                int i5 = bArr[i4 + 1] & 255;
                int i6 = bArr[i4 + 2] & 255;
                int i7 = bArr[i4 + 3] & 255;
                jArr[i + i3] = (((((b << 24) | (i5 << 16)) | (i6 << 8)) | i7) << 32) | (((bArr[i4 + 4] << 24) | ((bArr[i4 + 5] & 255) << 16) | ((bArr[i4 + 6] & 255) << 8) | (bArr[i4 + 7] & 255)) & 4294967295L);
                i4 += 8;
                i3++;
            }
            return;
        }
        int i8 = 0;
        while (i3 < i2) {
            byte b2 = bArr[i8 + 7];
            int i9 = bArr[i8 + 6] & 255;
            int i10 = bArr[i8 + 5] & 255;
            int i11 = bArr[i8 + 4] & 255;
            jArr[i + i3] = (((((b2 << 24) | (i9 << 16)) | (i10 << 8)) | i11) << 32) | (((bArr[i8 + 3] << 24) | ((bArr[i8 + 2] & 255) << 16) | ((bArr[i8 + 1] & 255) << 8) | (bArr[i8] & 255)) & 4294967295L);
            i8 += 8;
            i3++;
        }
    }

    /* renamed from: M */
    public final void m61498M(byte[] bArr, short[] sArr, int i, int i2) {
        int i3 = 0;
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            int i4 = 0;
            while (i3 < i2) {
                sArr[i + i3] = (short) ((bArr[i4] << 8) | (bArr[i4 + 1] & 255));
                i4 += 2;
                i3++;
            }
            return;
        }
        int i5 = 0;
        while (i3 < i2) {
            sArr[i + i3] = (short) ((bArr[i5 + 1] << 8) | (bArr[i5] & 255));
            i5 += 2;
            i3++;
        }
    }

    public final void checkClosed() throws IOException {
        if (this.isClosed) {
            throw new IOException("closed");
        }
    }

    @Override // javax.imageio.stream.ImageInputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        checkClosed();
        this.isClosed = true;
    }

    /* renamed from: f */
    public final void m61499f(byte[] bArr, char[] cArr, int i, int i2) {
        int i3 = 0;
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            int i4 = 0;
            while (i3 < i2) {
                cArr[i + i3] = (char) ((bArr[i4] << 8) | (bArr[i4 + 1] & 255));
                i4 += 2;
                i3++;
            }
            return;
        }
        int i5 = 0;
        while (i3 < i2) {
            cArr[i + i3] = (char) ((bArr[i5 + 1] << 8) | (bArr[i5] & 255));
            i5 += 2;
            i3++;
        }
    }

    public void finalize() throws Throwable {
        if (!this.isClosed) {
            try {
                close();
            } catch (IOException unused) {
            }
        }
        super.finalize();
    }

    @Override // javax.imageio.stream.ImageInputStream
    public void flush() throws IOException {
        flushBefore(getStreamPosition());
    }

    @Override // javax.imageio.stream.ImageInputStream
    public void flushBefore(long j) throws IOException {
        checkClosed();
        if (j < this.flushedPos) {
            throw new IndexOutOfBoundsException("pos < flushedPos!");
        }
        if (j > getStreamPosition()) {
            throw new IndexOutOfBoundsException("pos > getStreamPosition()!");
        }
        this.flushedPos = j;
    }

    @Override // javax.imageio.stream.ImageInputStream
    public int getBitOffset() throws IOException {
        checkClosed();
        return this.bitOffset;
    }

    @Override // javax.imageio.stream.ImageInputStream
    public ByteOrder getByteOrder() {
        return this.byteOrder;
    }

    @Override // javax.imageio.stream.ImageInputStream
    public long getFlushedPosition() {
        return this.flushedPos;
    }

    @Override // javax.imageio.stream.ImageInputStream
    public long getStreamPosition() throws IOException {
        checkClosed();
        return this.streamPos;
    }

    @Override // javax.imageio.stream.ImageInputStream
    public boolean isCached() {
        return false;
    }

    @Override // javax.imageio.stream.ImageInputStream
    public boolean isCachedFile() {
        return false;
    }

    @Override // javax.imageio.stream.ImageInputStream
    public boolean isCachedMemory() {
        return false;
    }

    /* renamed from: j */
    public final void m61500j(byte[] bArr, double[] dArr, int i, int i2) {
        int i3 = 0;
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            int i4 = 0;
            while (i3 < i2) {
                byte b = bArr[i4];
                int i5 = bArr[i4 + 1] & 255;
                int i6 = bArr[i4 + 2] & 255;
                int i7 = bArr[i4 + 3] & 255;
                dArr[i + i3] = Double.longBitsToDouble((((((b << 24) | (i5 << 16)) | (i6 << 8)) | i7) << 32) | (((bArr[i4 + 4] << 24) | ((bArr[i4 + 5] & 255) << 16) | ((bArr[i4 + 6] & 255) << 8) | (bArr[i4 + 7] & 255)) & 4294967295L));
                i4 += 8;
                i3++;
            }
            return;
        }
        int i8 = 0;
        while (i3 < i2) {
            byte b2 = bArr[i8 + 7];
            int i9 = bArr[i8 + 6] & 255;
            int i10 = bArr[i8 + 5] & 255;
            int i11 = bArr[i8 + 4] & 255;
            dArr[i + i3] = Double.longBitsToDouble((((((b2 << 24) | (i9 << 16)) | (i10 << 8)) | i11) << 32) | (((bArr[i8 + 3] << 24) | ((bArr[i8 + 2] & 255) << 16) | ((bArr[i8 + 1] & 255) << 8) | (bArr[i8] & 255)) & 4294967295L));
            i8 += 8;
            i3++;
        }
    }

    @Override // javax.imageio.stream.ImageInputStream
    public long length() {
        return -1L;
    }

    @Override // javax.imageio.stream.ImageInputStream
    public void mark() {
        try {
            this.markByteStack.push(Long.valueOf(getStreamPosition()));
            this.markBitStack.push(Integer.valueOf(getBitOffset()));
        } catch (IOException unused) {
        }
    }

    @Override // javax.imageio.stream.ImageInputStream
    public abstract int read() throws IOException;

    @Override // javax.imageio.stream.ImageInputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // javax.imageio.stream.ImageInputStream
    public abstract int read(byte[] bArr, int i, int i2) throws IOException;

    @Override // javax.imageio.stream.ImageInputStream
    public int readBit() throws IOException {
        checkClosed();
        int i = (this.bitOffset + 1) & 7;
        int read = read();
        if (read == -1) {
            throw new EOFException();
        }
        if (i != 0) {
            seek(getStreamPosition() - 1);
            read >>= 8 - i;
        }
        this.bitOffset = i;
        return read & 1;
    }

    @Override // javax.imageio.stream.ImageInputStream
    public long readBits(int i) throws IOException {
        checkClosed();
        if (i < 0 || i > 64) {
            throw new IllegalArgumentException();
        }
        long j = 0;
        if (i == 0) {
            return 0L;
        }
        int i2 = this.bitOffset;
        int i3 = i + i2;
        int i4 = (i2 + i) & 7;
        while (i3 > 0) {
            int read = read();
            if (read == -1) {
                throw new EOFException();
            }
            j = (j << 8) | read;
            i3 -= 8;
        }
        if (i4 != 0) {
            seek(getStreamPosition() - 1);
        }
        this.bitOffset = i4;
        return ((-1) >>> (64 - i)) & (j >>> (-i3));
    }

    @Override // javax.imageio.stream.ImageInputStream, java.io.DataInput
    public boolean readBoolean() throws IOException {
        int read = read();
        if (read >= 0) {
            return read != 0;
        }
        throw new EOFException();
    }

    @Override // javax.imageio.stream.ImageInputStream, java.io.DataInput
    public byte readByte() throws IOException {
        int read = read();
        if (read >= 0) {
            return (byte) read;
        }
        throw new EOFException();
    }

    @Override // javax.imageio.stream.ImageInputStream
    public void readBytes(IIOByteBuffer iIOByteBuffer, int i) throws IOException {
        if (i < 0) {
            throw new IndexOutOfBoundsException("len < 0!");
        }
        if (iIOByteBuffer == null) {
            throw new NullPointerException("buf == null!");
        }
        byte[] bArr = new byte[i];
        int read = read(bArr, 0, i);
        iIOByteBuffer.setData(bArr);
        iIOByteBuffer.setOffset(0);
        iIOByteBuffer.setLength(read);
    }

    @Override // javax.imageio.stream.ImageInputStream, java.io.DataInput
    public char readChar() throws IOException {
        return (char) readShort();
    }

    @Override // javax.imageio.stream.ImageInputStream, java.io.DataInput
    public double readDouble() throws IOException {
        return Double.longBitsToDouble(readLong());
    }

    @Override // javax.imageio.stream.ImageInputStream, java.io.DataInput
    public float readFloat() throws IOException {
        return Float.intBitsToFloat(readInt());
    }

    @Override // javax.imageio.stream.ImageInputStream, java.io.DataInput
    public void readFully(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException("off < 0 || len < 0 || off + len > b.length!");
        }
        while (i2 > 0) {
            int read = read(bArr, i, i2);
            if (read == -1) {
                throw new EOFException();
            }
            i += read;
            i2 -= read;
        }
    }

    @Override // javax.imageio.stream.ImageInputStream, java.io.DataInput
    public int readInt() throws IOException {
        int i;
        byte b;
        if (read(this.byteBuf, 0, 4) != 4) {
            throw new EOFException();
        }
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            byte[] bArr = this.byteBuf;
            i = ((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8);
            b = bArr[3];
        } else {
            byte[] bArr2 = this.byteBuf;
            i = ((bArr2[3] & 255) << 24) | ((bArr2[2] & 255) << 16) | ((bArr2[1] & 255) << 8);
            b = bArr2[0];
        }
        return ((b & 255) << 0) | i;
    }

    @Override // javax.imageio.stream.ImageInputStream, java.io.DataInput
    public String readLine() throws IOException {
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        int i = -1;
        while (!z) {
            i = read();
            if (i != -1 && i != 10) {
                if (i != 13) {
                    sb.append((char) i);
                } else {
                    long streamPosition = getStreamPosition();
                    if (read() != 10) {
                        seek(streamPosition);
                    }
                }
            }
            z = true;
        }
        if (i == -1 && sb.length() == 0) {
            return null;
        }
        return sb.toString();
    }

    @Override // javax.imageio.stream.ImageInputStream, java.io.DataInput
    public long readLong() throws IOException {
        int readInt = readInt();
        int readInt2 = readInt();
        return this.byteOrder == ByteOrder.BIG_ENDIAN ? (readInt << 32) + (readInt2 & 4294967295L) : (readInt2 << 32) + (4294967295L & readInt);
    }

    @Override // javax.imageio.stream.ImageInputStream, java.io.DataInput
    public short readShort() throws IOException {
        int i;
        byte b;
        if (read(this.byteBuf, 0, 2) != 2) {
            throw new EOFException();
        }
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            byte[] bArr = this.byteBuf;
            i = (bArr[0] & 255) << 8;
            b = bArr[1];
        } else {
            byte[] bArr2 = this.byteBuf;
            i = (bArr2[1] & 255) << 8;
            b = bArr2[0];
        }
        return (short) (((b & 255) << 0) | i);
    }

    @Override // javax.imageio.stream.ImageInputStream, java.io.DataInput
    public String readUTF() throws IOException {
        this.bitOffset = 0;
        ByteOrder byteOrder = getByteOrder();
        setByteOrder(ByteOrder.BIG_ENDIAN);
        try {
            String readUTF = DataInputStream.readUTF(this);
            setByteOrder(byteOrder);
            return readUTF;
        } catch (IOException e) {
            setByteOrder(byteOrder);
            throw e;
        }
    }

    @Override // javax.imageio.stream.ImageInputStream, java.io.DataInput
    public int readUnsignedByte() throws IOException {
        int read = read();
        if (read >= 0) {
            return read;
        }
        throw new EOFException();
    }

    @Override // javax.imageio.stream.ImageInputStream
    public long readUnsignedInt() throws IOException {
        return readInt() & 4294967295L;
    }

    @Override // javax.imageio.stream.ImageInputStream, java.io.DataInput
    public int readUnsignedShort() throws IOException {
        return readShort() & 65535;
    }

    @Override // javax.imageio.stream.ImageInputStream
    public void reset() throws IOException {
        if (this.markByteStack.empty()) {
            return;
        }
        long longValue = this.markByteStack.pop().longValue();
        if (longValue < this.flushedPos) {
            throw new IIOException("Previous marked position has been discarded!");
        }
        seek(longValue);
        setBitOffset(this.markBitStack.pop().intValue());
    }

    @Override // javax.imageio.stream.ImageInputStream
    public void seek(long j) throws IOException {
        checkClosed();
        if (j < this.flushedPos) {
            throw new IndexOutOfBoundsException("pos < flushedPos!");
        }
        this.streamPos = j;
        this.bitOffset = 0;
    }

    @Override // javax.imageio.stream.ImageInputStream
    public void setBitOffset(int i) throws IOException {
        checkClosed();
        if (i < 0 || i > 7) {
            throw new IllegalArgumentException("bitOffset must be betwwen 0 and 7!");
        }
        this.bitOffset = i;
    }

    @Override // javax.imageio.stream.ImageInputStream
    public void setByteOrder(ByteOrder byteOrder) {
        this.byteOrder = byteOrder;
    }

    @Override // javax.imageio.stream.ImageInputStream, java.io.DataInput
    public int skipBytes(int i) throws IOException {
        long streamPosition = getStreamPosition();
        seek(i + streamPosition);
        return (int) (getStreamPosition() - streamPosition);
    }

    /* renamed from: w */
    public final void m61501w(byte[] bArr, float[] fArr, int i, int i2) {
        int i3 = 0;
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            int i4 = 0;
            while (i3 < i2) {
                fArr[i + i3] = Float.intBitsToFloat((bArr[i4] << 24) | ((bArr[i4 + 1] & 255) << 16) | ((bArr[i4 + 2] & 255) << 8) | (bArr[i4 + 3] & 255));
                i4 += 4;
                i3++;
            }
            return;
        }
        int i5 = 0;
        while (i3 < i2) {
            fArr[i + i3] = Float.intBitsToFloat((bArr[i5 + 3] << 24) | ((bArr[i5 + 2] & 255) << 16) | ((bArr[i5 + 1] & 255) << 8) | (bArr[i5 + 0] & 255));
            i5 += 4;
            i3++;
        }
    }

    @Override // javax.imageio.stream.ImageInputStream
    public long skipBytes(long j) throws IOException {
        long streamPosition = getStreamPosition();
        seek(j + streamPosition);
        return getStreamPosition() - streamPosition;
    }

    @Override // javax.imageio.stream.ImageInputStream, java.io.DataInput
    public void readFully(byte[] bArr) throws IOException {
        readFully(bArr, 0, bArr.length);
    }

    @Override // javax.imageio.stream.ImageInputStream
    public void readFully(short[] sArr, int i, int i2) throws IOException {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) > sArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException("off < 0 || len < 0 || off + len > s.length!");
        }
        while (i2 > 0) {
            int min = Math.min(i2, this.byteBuf.length / 2);
            readFully(this.byteBuf, 0, min * 2);
            m61498M(this.byteBuf, sArr, i, min);
            i += min;
            i2 -= min;
        }
    }

    @Override // javax.imageio.stream.ImageInputStream
    public void readFully(char[] cArr, int i, int i2) throws IOException {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) > cArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException("off < 0 || len < 0 || off + len > c.length!");
        }
        while (i2 > 0) {
            int min = Math.min(i2, this.byteBuf.length / 2);
            readFully(this.byteBuf, 0, min * 2);
            m61499f(this.byteBuf, cArr, i, min);
            i += min;
            i2 -= min;
        }
    }

    @Override // javax.imageio.stream.ImageInputStream
    public void readFully(int[] iArr, int i, int i2) throws IOException {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) > iArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException("off < 0 || len < 0 || off + len > i.length!");
        }
        while (i2 > 0) {
            int min = Math.min(i2, this.byteBuf.length / 4);
            readFully(this.byteBuf, 0, min * 4);
            m61496H(this.byteBuf, iArr, i, min);
            i += min;
            i2 -= min;
        }
    }

    @Override // javax.imageio.stream.ImageInputStream
    public void readFully(long[] jArr, int i, int i2) throws IOException {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) > jArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException("off < 0 || len < 0 || off + len > l.length!");
        }
        while (i2 > 0) {
            int min = Math.min(i2, this.byteBuf.length / 8);
            readFully(this.byteBuf, 0, min * 8);
            m61497I(this.byteBuf, jArr, i, min);
            i += min;
            i2 -= min;
        }
    }

    @Override // javax.imageio.stream.ImageInputStream
    public void readFully(float[] fArr, int i, int i2) throws IOException {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) > fArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException("off < 0 || len < 0 || off + len > f.length!");
        }
        while (i2 > 0) {
            int min = Math.min(i2, this.byteBuf.length / 4);
            readFully(this.byteBuf, 0, min * 4);
            m61501w(this.byteBuf, fArr, i, min);
            i += min;
            i2 -= min;
        }
    }

    @Override // javax.imageio.stream.ImageInputStream
    public void readFully(double[] dArr, int i, int i2) throws IOException {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) > dArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException("off < 0 || len < 0 || off + len > d.length!");
        }
        while (i2 > 0) {
            int min = Math.min(i2, this.byteBuf.length / 8);
            readFully(this.byteBuf, 0, min * 8);
            m61500j(this.byteBuf, dArr, i, min);
            i += min;
            i2 -= min;
        }
    }
}
