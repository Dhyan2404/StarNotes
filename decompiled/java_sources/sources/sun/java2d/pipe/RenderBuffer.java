package sun.java2d.pipe;

/* loaded from: classes16.dex */
public class RenderBuffer {
    private static final int COPY_FROM_ARRAY_THRESHOLD = 6;
    protected static final long SIZEOF_BYTE = 1;
    protected static final long SIZEOF_DOUBLE = 8;
    protected static final long SIZEOF_FLOAT = 4;
    protected static final long SIZEOF_INT = 4;
    protected static final long SIZEOF_LONG = 8;
    protected static final long SIZEOF_SHORT = 2;
    protected long curAddress;

    public RenderBuffer(int i) {
    }

    public static RenderBuffer allocate(int i) {
        return new RenderBuffer(i);
    }

    public final int capacity() {
        return 0;
    }

    public final void clear() {
    }

    public final long getAddress() {
        return 0L;
    }

    public final int position() {
        return 0;
    }

    public RenderBuffer put(byte[] bArr, int i, int i2) {
        return this;
    }

    public final RenderBuffer putByte(byte b) {
        return this;
    }

    public final RenderBuffer putDouble(double d) {
        return this;
    }

    public final RenderBuffer putFloat(float f) {
        return this;
    }

    public final RenderBuffer putInt(int i) {
        return this;
    }

    public final RenderBuffer putLong(long j) {
        return this;
    }

    public final RenderBuffer putShort(short s) {
        return this;
    }

    public final int remaining() {
        return 0;
    }

    public final RenderBuffer skip(long j) {
        this.curAddress += j;
        return this;
    }

    public final void position(long j) {
    }

    public RenderBuffer put(float[] fArr, int i, int i2) {
        return this;
    }

    public final RenderBuffer putInt(int i, int i2) {
        return this;
    }

    public RenderBuffer put(int[] iArr, int i, int i2) {
        return this;
    }

    public RenderBuffer put(long[] jArr, int i, int i2) {
        return this;
    }

    public RenderBuffer put(short[] sArr, int i, int i2) {
        return this;
    }

    public RenderBuffer put(byte[] bArr) {
        return put(bArr, 0, bArr.length);
    }

    public RenderBuffer put(short[] sArr) {
        return put(sArr, 0, sArr.length);
    }

    public RenderBuffer put(int[] iArr) {
        return put(iArr, 0, iArr.length);
    }

    public RenderBuffer put(float[] fArr) {
        return put(fArr, 0, fArr.length);
    }

    public RenderBuffer put(long[] jArr) {
        return put(jArr, 0, jArr.length);
    }
}
