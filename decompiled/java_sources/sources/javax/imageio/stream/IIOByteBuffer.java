package javax.imageio.stream;

/* loaded from: classes5.dex */
public class IIOByteBuffer {

    /* renamed from: a */
    public byte[] f97989a;

    /* renamed from: b */
    public int f97990b;

    /* renamed from: c */
    public int f97991c;

    public IIOByteBuffer(byte[] bArr, int i, int i2) {
        this.f97989a = bArr;
        this.f97990b = i;
        this.f97991c = i2;
    }

    public byte[] getData() {
        return this.f97989a;
    }

    public int getLength() {
        return this.f97991c;
    }

    public int getOffset() {
        return this.f97990b;
    }

    public void setData(byte[] bArr) {
        this.f97989a = bArr;
    }

    public void setLength(int i) {
        this.f97991c = i;
    }

    public void setOffset(int i) {
        this.f97990b = i;
    }
}
