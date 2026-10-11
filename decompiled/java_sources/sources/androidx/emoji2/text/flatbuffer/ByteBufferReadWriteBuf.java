package androidx.emoji2.text.flatbuffer;

import com.sunia.HTREnginev2.ddl;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes3.dex */
public class ByteBufferReadWriteBuf implements ddl {

    /* renamed from: a */
    public final ByteBuffer f7049a;

    public ByteBufferReadWriteBuf(ByteBuffer byteBuffer) {
        this.f7049a = byteBuffer;
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    }

    @Override // com.sunia.HTREnginev2.bdl
    public byte[] data() {
        return this.f7049a.array();
    }

    @Override // com.sunia.HTREnginev2.bdl
    public byte get(int i) {
        return this.f7049a.get(i);
    }

    @Override // com.sunia.HTREnginev2.bdl
    public boolean getBoolean(int i) {
        return get(i) != 0;
    }

    @Override // com.sunia.HTREnginev2.bdl
    public double getDouble(int i) {
        return this.f7049a.getDouble(i);
    }

    @Override // com.sunia.HTREnginev2.bdl
    public float getFloat(int i) {
        return this.f7049a.getFloat(i);
    }

    @Override // com.sunia.HTREnginev2.bdl
    public int getInt(int i) {
        return this.f7049a.getInt(i);
    }

    @Override // com.sunia.HTREnginev2.bdl
    public long getLong(int i) {
        return this.f7049a.getLong(i);
    }

    @Override // com.sunia.HTREnginev2.bdl
    public short getShort(int i) {
        return this.f7049a.getShort(i);
    }

    @Override // com.sunia.HTREnginev2.bdl
    public String getString(int i, int i2) {
        return Utf8Safe.decodeUtf8Buffer(this.f7049a, i, i2);
    }

    @Override // com.sunia.HTREnginev2.ddl, com.sunia.HTREnginev2.bdl
    public int limit() {
        return this.f7049a.limit();
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void put(byte[] bArr, int i, int i2) {
        this.f7049a.put(bArr, i, i2);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void putBoolean(boolean z) {
        this.f7049a.put(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void putDouble(double d) {
        this.f7049a.putDouble(d);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void putFloat(float f) {
        this.f7049a.putFloat(f);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void putInt(int i) {
        this.f7049a.putInt(i);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void putLong(long j) {
        this.f7049a.putLong(j);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void putShort(short s) {
        this.f7049a.putShort(s);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public boolean requestCapacity(int i) {
        return i <= this.f7049a.limit();
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void set(int i, byte b) {
        requestCapacity(i + 1);
        this.f7049a.put(i, b);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void setBoolean(int i, boolean z) {
        set(i, z ? (byte) 1 : (byte) 0);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void setDouble(int i, double d) {
        requestCapacity(i + 8);
        this.f7049a.putDouble(i, d);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void setFloat(int i, float f) {
        requestCapacity(i + 4);
        this.f7049a.putFloat(i, f);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void setInt(int i, int i2) {
        requestCapacity(i + 4);
        this.f7049a.putInt(i, i2);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void setLong(int i, long j) {
        requestCapacity(i + 8);
        this.f7049a.putLong(i, j);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void setShort(int i, short s) {
        requestCapacity(i + 2);
        this.f7049a.putShort(i, s);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public int writePosition() {
        return this.f7049a.position();
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void put(byte b) {
        this.f7049a.put(b);
    }

    @Override // com.sunia.HTREnginev2.ddl
    public void set(int i, byte[] bArr, int i2, int i3) {
        requestCapacity((i3 - i2) + i);
        int position = this.f7049a.position();
        this.f7049a.position(i);
        this.f7049a.put(bArr, i2, i3);
        this.f7049a.position(position);
    }
}
