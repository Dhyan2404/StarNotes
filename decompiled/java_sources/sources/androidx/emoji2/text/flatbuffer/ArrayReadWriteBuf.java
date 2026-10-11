package androidx.emoji2.text.flatbuffer;

import com.sunia.HTREnginev2.ddl;
import java.util.Arrays;

/* loaded from: classes3.dex */
public class ArrayReadWriteBuf implements ddl {

    /* renamed from: a */
    public byte[] f7043a;

    /* renamed from: b */
    public int f7044b;

    public ArrayReadWriteBuf() {
        this(10);
    }

    @Override // com.sunia.HTREnginev2.bdl
    public byte[] data() {
        return this.f7043a;
    }

    @Override // com.sunia.HTREnginev2.bdl
    public byte get(int i) {
        return this.f7043a[i];
    }

    @Override // com.sunia.HTREnginev2.bdl
    public boolean getBoolean(int i) {
        return this.f7043a[i] != 0;
    }

    @Override // com.sunia.HTREnginev2.bdl
    public double getDouble(int i) {
        return Double.longBitsToDouble(getLong(i));
    }

    @Override // com.sunia.HTREnginev2.bdl
    public float getFloat(int i) {
        return Float.intBitsToFloat(getInt(i));
    }

    @Override // com.sunia.HTREnginev2.bdl
    public int getInt(int i) {
        byte[] bArr = this.f7043a;
        return (bArr[i] & 255) | (bArr[i + 3] << 24) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 1] & 255) << 8);
    }

    @Override // com.sunia.HTREnginev2.bdl
    public long getLong(int i) {
        byte[] bArr = this.f7043a;
        long j = bArr[i] & 255;
        int i2 = i + 1 + 1 + 1;
        long j2 = j | ((bArr[r0] & 255) << 8) | ((bArr[r8] & 255) << 16);
        long j3 = j2 | ((bArr[i2] & 255) << 24);
        long j4 = j3 | ((bArr[r8] & 255) << 32);
        long j5 = j4 | ((bArr[r2] & 255) << 40);
        int i3 = i2 + 1 + 1 + 1 + 1;
        return (bArr[i3] << 56) | j5 | ((255 & bArr[r8]) << 48);
    }

    @Override // com.sunia.HTREnginev2.bdl
    public short getShort(int i) {
        byte[] bArr = this.f7043a;
        return (short) ((bArr[i] & 255) | (bArr[i + 1] << 8));
    }

    @Override // com.sunia.HTREnginev2.bdl
    public String getString(int i, int i2) {
        return Utf8Safe.decodeUtf8Array(this.f7043a, i, i2);
    }

    @Override // com.sunia.HTREnginev2.ddl, com.sunia.HTREnginev2.bdl
    public int limit() {
        return this.f7044b;
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void put(byte[] bArr, int i, int i2) {
        set(this.f7044b, bArr, i, i2);
        this.f7044b += i2;
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void putBoolean(boolean z) {
        setBoolean(this.f7044b, z);
        this.f7044b++;
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void putDouble(double d) {
        setDouble(this.f7044b, d);
        this.f7044b += 8;
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void putFloat(float f) {
        setFloat(this.f7044b, f);
        this.f7044b += 4;
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void putInt(int i) {
        setInt(this.f7044b, i);
        this.f7044b += 4;
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void putLong(long j) {
        setLong(this.f7044b, j);
        this.f7044b += 8;
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void putShort(short s) {
        setShort(this.f7044b, s);
        this.f7044b += 2;
    }

    @Override // com.sunia.HTREnginev2.ddl
    public boolean requestCapacity(int i) {
        byte[] bArr = this.f7043a;
        if (bArr.length > i) {
            return true;
        }
        int length = bArr.length;
        this.f7043a = Arrays.copyOf(bArr, length + (length >> 1));
        return true;
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void set(int i, byte b) {
        requestCapacity(i + 1);
        this.f7043a[i] = b;
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void setBoolean(int i, boolean z) {
        set(i, z ? (byte) 1 : (byte) 0);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void setDouble(int i, double d) {
        requestCapacity(i + 8);
        long doubleToRawLongBits = Double.doubleToRawLongBits(d);
        int i2 = (int) doubleToRawLongBits;
        byte[] bArr = this.f7043a;
        int i3 = i + 1;
        bArr[i] = (byte) (i2 & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i2 >> 8) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i2 >> 16) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((i2 >> 24) & 255);
        int i7 = (int) (doubleToRawLongBits >> 32);
        int i8 = i6 + 1;
        bArr[i6] = (byte) (i7 & 255);
        int i9 = i8 + 1;
        bArr[i8] = (byte) ((i7 >> 8) & 255);
        bArr[i9] = (byte) ((i7 >> 16) & 255);
        bArr[i9 + 1] = (byte) ((i7 >> 24) & 255);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void setFloat(int i, float f) {
        requestCapacity(i + 4);
        int floatToRawIntBits = Float.floatToRawIntBits(f);
        byte[] bArr = this.f7043a;
        int i2 = i + 1;
        bArr[i] = (byte) (floatToRawIntBits & 255);
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((floatToRawIntBits >> 8) & 255);
        bArr[i3] = (byte) ((floatToRawIntBits >> 16) & 255);
        bArr[i3 + 1] = (byte) ((floatToRawIntBits >> 24) & 255);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void setInt(int i, int i2) {
        requestCapacity(i + 4);
        byte[] bArr = this.f7043a;
        int i3 = i + 1;
        bArr[i] = (byte) (i2 & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i2 >> 8) & 255);
        bArr[i4] = (byte) ((i2 >> 16) & 255);
        bArr[i4 + 1] = (byte) ((i2 >> 24) & 255);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void setLong(int i, long j) {
        requestCapacity(i + 8);
        int i2 = (int) j;
        byte[] bArr = this.f7043a;
        int i3 = i + 1;
        bArr[i] = (byte) (i2 & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i2 >> 8) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i2 >> 16) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((i2 >> 24) & 255);
        int i7 = (int) (j >> 32);
        int i8 = i6 + 1;
        bArr[i6] = (byte) (i7 & 255);
        int i9 = i8 + 1;
        bArr[i8] = (byte) ((i7 >> 8) & 255);
        bArr[i9] = (byte) ((i7 >> 16) & 255);
        bArr[i9 + 1] = (byte) ((i7 >> 24) & 255);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void setShort(int i, short s) {
        requestCapacity(i + 2);
        byte[] bArr = this.f7043a;
        bArr[i] = (byte) (s & 255);
        bArr[i + 1] = (byte) ((s >> 8) & 255);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public int writePosition() {
        return this.f7044b;
    }

    public ArrayReadWriteBuf(int i) {
        this(new byte[i]);
    }

    public ArrayReadWriteBuf(byte[] bArr) {
        this.f7043a = bArr;
        this.f7044b = 0;
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void put(byte b) {
        set(this.f7044b, b);
        this.f7044b++;
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void set(int i, byte[] bArr, int i2, int i3) {
        requestCapacity((i3 - i2) + i);
        System.arraycopy(bArr, i2, this.f7043a, i, i3);
    }

    public ArrayReadWriteBuf(byte[] bArr, int i) {
        this.f7043a = bArr;
        this.f7044b = i;
    }
}
