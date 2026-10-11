package androidx.emoji2.text.flatbuffer;

import java.io.IOException;
import java.io.InputStream;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* loaded from: classes3.dex */
public class FlatBufferBuilder {

    /* renamed from: o */
    public static final /* synthetic */ boolean f7057o = false;

    /* renamed from: a */
    public ByteBuffer f7058a;

    /* renamed from: b */
    public int f7059b;

    /* renamed from: c */
    public int f7060c;

    /* renamed from: d */
    public int[] f7061d;

    /* renamed from: e */
    public int f7062e;

    /* renamed from: f */
    public boolean f7063f;

    /* renamed from: g */
    public boolean f7064g;

    /* renamed from: h */
    public int f7065h;

    /* renamed from: i */
    public int[] f7066i;

    /* renamed from: j */
    public int f7067j;

    /* renamed from: k */
    public int f7068k;

    /* renamed from: l */
    public boolean f7069l;

    /* renamed from: m */
    public ByteBufferFactory f7070m;

    /* renamed from: n */
    public final Utf8 f7071n;

    /* loaded from: classes3.dex */
    public static abstract class ByteBufferFactory {
        public abstract ByteBuffer newByteBuffer(int i);

        public void releaseByteBuffer(ByteBuffer byteBuffer) {
        }
    }

    /* loaded from: classes3.dex */
    public static final class HeapByteBufferFactory extends ByteBufferFactory {
        public static final HeapByteBufferFactory INSTANCE = new HeapByteBufferFactory();

        @Override // androidx.emoji2.text.flatbuffer.FlatBufferBuilder.ByteBufferFactory
        public ByteBuffer newByteBuffer(int i) {
            return ByteBuffer.allocate(i).order(ByteOrder.LITTLE_ENDIAN);
        }
    }

    /* renamed from: androidx.emoji2.text.flatbuffer.FlatBufferBuilder$a */
    /* loaded from: classes3.dex */
    public static class C1044a extends InputStream {

        /* renamed from: e */
        public ByteBuffer f7072e;

        public C1044a(ByteBuffer byteBuffer) {
            this.f7072e = byteBuffer;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            try {
                return this.f7072e.get() & 255;
            } catch (BufferUnderflowException unused) {
                return -1;
            }
        }
    }

    public FlatBufferBuilder(int i, ByteBufferFactory byteBufferFactory) {
        this(i, byteBufferFactory, null, Utf8.getDefault());
    }

    /* renamed from: b */
    public static ByteBuffer m4296b(ByteBuffer byteBuffer, ByteBufferFactory byteBufferFactory) {
        int capacity = byteBuffer.capacity();
        if (((-1073741824) & capacity) != 0) {
            throw new AssertionError("FlatBuffers: cannot grow buffer beyond 2 gigabytes.");
        }
        int i = capacity == 0 ? 1 : capacity << 1;
        byteBuffer.position(0);
        ByteBuffer newByteBuffer = byteBufferFactory.newByteBuffer(i);
        newByteBuffer.position(newByteBuffer.clear().capacity() - capacity);
        newByteBuffer.put(byteBuffer);
        return newByteBuffer;
    }

    public static boolean isFieldPresent(Table table, int i) {
        return table.__offset(i) != 0;
    }

    public void Nested(int i) {
        if (i != offset()) {
            throw new AssertionError("FlatBuffers: struct must be serialized inline.");
        }
    }

    @Deprecated
    /* renamed from: a */
    public final int m4297a() {
        finished();
        return this.f7059b;
    }

    public void addBoolean(boolean z) {
        prep(1, 0);
        putBoolean(z);
    }

    public void addByte(byte b) {
        prep(1, 0);
        putByte(b);
    }

    public void addDouble(double d) {
        prep(8, 0);
        putDouble(d);
    }

    public void addFloat(float f) {
        prep(4, 0);
        putFloat(f);
    }

    public void addInt(int i) {
        prep(4, 0);
        putInt(i);
    }

    public void addLong(long j) {
        prep(8, 0);
        putLong(j);
    }

    public void addOffset(int i) {
        prep(4, 0);
        putInt((offset() - i) + 4);
    }

    public void addShort(short s) {
        prep(2, 0);
        putShort(s);
    }

    public void addStruct(int i, int i2, int i3) {
        if (i2 != i3) {
            Nested(i2);
            slot(i);
        }
    }

    public void clear() {
        this.f7059b = this.f7058a.capacity();
        this.f7058a.clear();
        this.f7060c = 1;
        while (true) {
            int i = this.f7062e;
            if (i <= 0) {
                this.f7062e = 0;
                this.f7063f = false;
                this.f7064g = false;
                this.f7065h = 0;
                this.f7067j = 0;
                this.f7068k = 0;
                return;
            }
            int[] iArr = this.f7061d;
            int i2 = i - 1;
            this.f7062e = i2;
            iArr[i2] = 0;
        }
    }

    public int createByteVector(byte[] bArr) {
        int length = bArr.length;
        startVector(1, length, 1);
        ByteBuffer byteBuffer = this.f7058a;
        int i = this.f7059b - length;
        this.f7059b = i;
        byteBuffer.position(i);
        this.f7058a.put(bArr);
        return endVector();
    }

    public <T extends Table> int createSortedVectorOfTables(T t, int[] iArr) {
        t.sortTables(iArr, this.f7058a);
        return createVectorOfTables(iArr);
    }

    public int createString(CharSequence charSequence) {
        int encodedLength = this.f7071n.encodedLength(charSequence);
        addByte((byte) 0);
        startVector(1, encodedLength, 1);
        ByteBuffer byteBuffer = this.f7058a;
        int i = this.f7059b - encodedLength;
        this.f7059b = i;
        byteBuffer.position(i);
        this.f7071n.encodeUtf8(charSequence, this.f7058a);
        return endVector();
    }

    public ByteBuffer createUnintializedVector(int i, int i2, int i3) {
        int i4 = i * i2;
        startVector(i, i2, i3);
        ByteBuffer byteBuffer = this.f7058a;
        int i5 = this.f7059b - i4;
        this.f7059b = i5;
        byteBuffer.position(i5);
        ByteBuffer order = this.f7058a.slice().order(ByteOrder.LITTLE_ENDIAN);
        order.limit(i4);
        return order;
    }

    public int createVectorOfTables(int[] iArr) {
        notNested();
        startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            addOffset(iArr[length]);
        }
        return endVector();
    }

    public ByteBuffer dataBuffer() {
        finished();
        return this.f7058a;
    }

    public int endTable() {
        int i;
        if (this.f7061d == null || !this.f7063f) {
            throw new AssertionError("FlatBuffers: endTable called without startTable");
        }
        addInt(0);
        int offset = offset();
        int i2 = this.f7062e - 1;
        while (i2 >= 0 && this.f7061d[i2] == 0) {
            i2--;
        }
        int i3 = i2 + 1;
        while (i2 >= 0) {
            int i4 = this.f7061d[i2];
            addShort((short) (i4 != 0 ? offset - i4 : 0));
            i2--;
        }
        addShort((short) (offset - this.f7065h));
        addShort((short) ((i3 + 2) * 2));
        int i5 = 0;
        loop2: while (true) {
            if (i5 >= this.f7067j) {
                i = 0;
                break;
            }
            int capacity = this.f7058a.capacity() - this.f7066i[i5];
            int i6 = this.f7059b;
            short s = this.f7058a.getShort(capacity);
            if (s == this.f7058a.getShort(i6)) {
                for (int i7 = 2; i7 < s; i7 += 2) {
                    if (this.f7058a.getShort(capacity + i7) != this.f7058a.getShort(i6 + i7)) {
                        break;
                    }
                }
                i = this.f7066i[i5];
                break loop2;
            }
            i5++;
        }
        if (i != 0) {
            int capacity2 = this.f7058a.capacity() - offset;
            this.f7059b = capacity2;
            this.f7058a.putInt(capacity2, i - offset);
        } else {
            int i8 = this.f7067j;
            int[] iArr = this.f7066i;
            if (i8 == iArr.length) {
                this.f7066i = Arrays.copyOf(iArr, i8 * 2);
            }
            int[] iArr2 = this.f7066i;
            int i9 = this.f7067j;
            this.f7067j = i9 + 1;
            iArr2[i9] = offset();
            ByteBuffer byteBuffer = this.f7058a;
            byteBuffer.putInt(byteBuffer.capacity() - offset, offset() - offset);
        }
        this.f7063f = false;
        return offset;
    }

    public int endVector() {
        if (!this.f7063f) {
            throw new AssertionError("FlatBuffers: endVector called without startVector");
        }
        this.f7063f = false;
        putInt(this.f7068k);
        return offset();
    }

    public void finish(int i, boolean z) {
        prep(this.f7060c, (z ? 4 : 0) + 4);
        addOffset(i);
        if (z) {
            addInt(this.f7058a.capacity() - this.f7059b);
        }
        this.f7058a.position(this.f7059b);
        this.f7064g = true;
    }

    public void finishSizePrefixed(int i) {
        finish(i, true);
    }

    public void finished() {
        if (!this.f7064g) {
            throw new AssertionError("FlatBuffers: you can only access the serialized buffer after it has been finished by FlatBufferBuilder.finish().");
        }
    }

    public FlatBufferBuilder forceDefaults(boolean z) {
        this.f7069l = z;
        return this;
    }

    public FlatBufferBuilder init(ByteBuffer byteBuffer, ByteBufferFactory byteBufferFactory) {
        this.f7070m = byteBufferFactory;
        this.f7058a = byteBuffer;
        byteBuffer.clear();
        this.f7058a.order(ByteOrder.LITTLE_ENDIAN);
        this.f7060c = 1;
        this.f7059b = this.f7058a.capacity();
        this.f7062e = 0;
        this.f7063f = false;
        this.f7064g = false;
        this.f7065h = 0;
        this.f7067j = 0;
        this.f7068k = 0;
        return this;
    }

    public void notNested() {
        if (this.f7063f) {
            throw new AssertionError("FlatBuffers: object serialization must not be nested.");
        }
    }

    public int offset() {
        return this.f7058a.capacity() - this.f7059b;
    }

    public void pad(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            ByteBuffer byteBuffer = this.f7058a;
            int i3 = this.f7059b - 1;
            this.f7059b = i3;
            byteBuffer.put(i3, (byte) 0);
        }
    }

    public void prep(int i, int i2) {
        if (i > this.f7060c) {
            this.f7060c = i;
        }
        int i3 = ((~((this.f7058a.capacity() - this.f7059b) + i2)) + 1) & (i - 1);
        while (this.f7059b < i3 + i + i2) {
            int capacity = this.f7058a.capacity();
            ByteBuffer byteBuffer = this.f7058a;
            ByteBuffer m4296b = m4296b(byteBuffer, this.f7070m);
            this.f7058a = m4296b;
            if (byteBuffer != m4296b) {
                this.f7070m.releaseByteBuffer(byteBuffer);
            }
            this.f7059b += this.f7058a.capacity() - capacity;
        }
        pad(i3);
    }

    public void putBoolean(boolean z) {
        ByteBuffer byteBuffer = this.f7058a;
        int i = this.f7059b - 1;
        this.f7059b = i;
        byteBuffer.put(i, z ? (byte) 1 : (byte) 0);
    }

    public void putByte(byte b) {
        ByteBuffer byteBuffer = this.f7058a;
        int i = this.f7059b - 1;
        this.f7059b = i;
        byteBuffer.put(i, b);
    }

    public void putDouble(double d) {
        ByteBuffer byteBuffer = this.f7058a;
        int i = this.f7059b - 8;
        this.f7059b = i;
        byteBuffer.putDouble(i, d);
    }

    public void putFloat(float f) {
        ByteBuffer byteBuffer = this.f7058a;
        int i = this.f7059b - 4;
        this.f7059b = i;
        byteBuffer.putFloat(i, f);
    }

    public void putInt(int i) {
        ByteBuffer byteBuffer = this.f7058a;
        int i2 = this.f7059b - 4;
        this.f7059b = i2;
        byteBuffer.putInt(i2, i);
    }

    public void putLong(long j) {
        ByteBuffer byteBuffer = this.f7058a;
        int i = this.f7059b - 8;
        this.f7059b = i;
        byteBuffer.putLong(i, j);
    }

    public void putShort(short s) {
        ByteBuffer byteBuffer = this.f7058a;
        int i = this.f7059b - 2;
        this.f7059b = i;
        byteBuffer.putShort(i, s);
    }

    public void required(int i, int i2) {
        int capacity = this.f7058a.capacity() - i;
        if (this.f7058a.getShort((capacity - this.f7058a.getInt(capacity)) + i2) != 0) {
            return;
        }
        throw new AssertionError("FlatBuffers: field " + i2 + " must be set");
    }

    public byte[] sizedByteArray(int i, int i2) {
        finished();
        byte[] bArr = new byte[i2];
        this.f7058a.position(i);
        this.f7058a.get(bArr);
        return bArr;
    }

    public InputStream sizedInputStream() {
        finished();
        ByteBuffer duplicate = this.f7058a.duplicate();
        duplicate.position(this.f7059b);
        duplicate.limit(this.f7058a.capacity());
        return new C1044a(duplicate);
    }

    public void slot(int i) {
        this.f7061d[i] = offset();
    }

    public void startTable(int i) {
        notNested();
        int[] iArr = this.f7061d;
        if (iArr == null || iArr.length < i) {
            this.f7061d = new int[i];
        }
        this.f7062e = i;
        Arrays.fill(this.f7061d, 0, i, 0);
        this.f7063f = true;
        this.f7065h = offset();
    }

    public void startVector(int i, int i2, int i3) {
        notNested();
        this.f7068k = i2;
        int i4 = i * i2;
        prep(4, i4);
        prep(i3, i4);
        this.f7063f = true;
    }

    public FlatBufferBuilder(int i, ByteBufferFactory byteBufferFactory, ByteBuffer byteBuffer, Utf8 utf8) {
        this.f7060c = 1;
        this.f7061d = null;
        this.f7062e = 0;
        this.f7063f = false;
        this.f7064g = false;
        this.f7066i = new int[16];
        this.f7067j = 0;
        this.f7068k = 0;
        this.f7069l = false;
        i = i <= 0 ? 1 : i;
        this.f7070m = byteBufferFactory;
        if (byteBuffer != null) {
            this.f7058a = byteBuffer;
            byteBuffer.clear();
            this.f7058a.order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.f7058a = byteBufferFactory.newByteBuffer(i);
        }
        this.f7071n = utf8;
        this.f7059b = this.f7058a.capacity();
    }

    public void addBoolean(int i, boolean z, boolean z2) {
        if (this.f7069l || z != z2) {
            addBoolean(z);
            slot(i);
        }
    }

    public void addByte(int i, byte b, int i2) {
        if (this.f7069l || b != i2) {
            addByte(b);
            slot(i);
        }
    }

    public void addDouble(int i, double d, double d2) {
        if (this.f7069l || d != d2) {
            addDouble(d);
            slot(i);
        }
    }

    public void addFloat(int i, float f, double d) {
        if (this.f7069l || f != d) {
            addFloat(f);
            slot(i);
        }
    }

    public void addInt(int i, int i2, int i3) {
        if (this.f7069l || i2 != i3) {
            addInt(i2);
            slot(i);
        }
    }

    public void addLong(int i, long j, long j2) {
        if (this.f7069l || j != j2) {
            addLong(j);
            slot(i);
        }
    }

    public void addShort(int i, short s, int i2) {
        if (this.f7069l || s != i2) {
            addShort(s);
            slot(i);
        }
    }

    public void finishSizePrefixed(int i, String str) {
        finish(i, str, true);
    }

    public void addOffset(int i, int i2, int i3) {
        if (this.f7069l || i2 != i3) {
            addOffset(i2);
            slot(i);
        }
    }

    public byte[] sizedByteArray() {
        return sizedByteArray(this.f7059b, this.f7058a.capacity() - this.f7059b);
    }

    public int createByteVector(byte[] bArr, int i, int i2) {
        startVector(1, i2, 1);
        ByteBuffer byteBuffer = this.f7058a;
        int i3 = this.f7059b - i2;
        this.f7059b = i3;
        byteBuffer.position(i3);
        this.f7058a.put(bArr, i, i2);
        return endVector();
    }

    public void finish(int i) {
        finish(i, false);
    }

    public int createString(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        addByte((byte) 0);
        startVector(1, remaining, 1);
        ByteBuffer byteBuffer2 = this.f7058a;
        int i = this.f7059b - remaining;
        this.f7059b = i;
        byteBuffer2.position(i);
        this.f7058a.put(byteBuffer);
        return endVector();
    }

    public void finish(int i, String str, boolean z) {
        prep(this.f7060c, (z ? 4 : 0) + 8);
        if (str.length() == 4) {
            for (int i2 = 3; i2 >= 0; i2--) {
                addByte((byte) str.charAt(i2));
            }
            finish(i, z);
            return;
        }
        throw new AssertionError("FlatBuffers: file identifier must be length 4");
    }

    public int createByteVector(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        startVector(1, remaining, 1);
        ByteBuffer byteBuffer2 = this.f7058a;
        int i = this.f7059b - remaining;
        this.f7059b = i;
        byteBuffer2.position(i);
        this.f7058a.put(byteBuffer);
        return endVector();
    }

    public void finish(int i, String str) {
        finish(i, str, false);
    }

    public FlatBufferBuilder(int i) {
        this(i, HeapByteBufferFactory.INSTANCE, null, Utf8.getDefault());
    }

    public FlatBufferBuilder() {
        this(1024);
    }

    public FlatBufferBuilder(ByteBuffer byteBuffer, ByteBufferFactory byteBufferFactory) {
        this(byteBuffer.capacity(), byteBufferFactory, byteBuffer, Utf8.getDefault());
    }

    public FlatBufferBuilder(ByteBuffer byteBuffer) {
        this(byteBuffer, new HeapByteBufferFactory());
    }
}
