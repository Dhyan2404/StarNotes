package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class BaseVector {

    /* renamed from: a */
    public int f7045a;

    /* renamed from: b */
    public int f7046b;

    /* renamed from: bb */
    protected ByteBuffer f7047bb;

    /* renamed from: c */
    public int f7048c;

    public int __element(int i) {
        return this.f7045a + (i * this.f7048c);
    }

    public void __reset(int i, int i2, ByteBuffer byteBuffer) {
        this.f7047bb = byteBuffer;
        if (byteBuffer != null) {
            this.f7045a = i;
            this.f7046b = byteBuffer.getInt(i - 4);
            this.f7048c = i2;
        } else {
            this.f7045a = 0;
            this.f7046b = 0;
            this.f7048c = 0;
        }
    }

    public int __vector() {
        return this.f7045a;
    }

    public int length() {
        return this.f7046b;
    }

    public void reset() {
        __reset(0, 0, null);
    }
}
