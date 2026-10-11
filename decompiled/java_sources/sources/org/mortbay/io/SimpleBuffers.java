package org.mortbay.io;

/* loaded from: classes13.dex */
public class SimpleBuffers implements Buffers {

    /* renamed from: e */
    public Buffer[] f114472e;

    public SimpleBuffers(Buffer[] bufferArr) {
        this.f114472e = bufferArr;
    }

    @Override // org.mortbay.io.Buffers
    public Buffer getBuffer(int i) {
        if (this.f114472e != null) {
            int i2 = 0;
            while (true) {
                Buffer[] bufferArr = this.f114472e;
                if (i2 >= bufferArr.length) {
                    break;
                }
                Buffer buffer = bufferArr[i2];
                if (buffer != null && buffer.capacity() == i) {
                    Buffer[] bufferArr2 = this.f114472e;
                    Buffer buffer2 = bufferArr2[i2];
                    bufferArr2[i2] = null;
                    return buffer2;
                }
                i2++;
            }
        }
        return new ByteArrayBuffer(i);
    }

    @Override // org.mortbay.io.Buffers
    public void returnBuffer(Buffer buffer) {
        buffer.clear();
        if (this.f114472e == null) {
            return;
        }
        int i = 0;
        while (true) {
            Buffer[] bufferArr = this.f114472e;
            if (i >= bufferArr.length) {
                return;
            }
            if (bufferArr[i] == null) {
                bufferArr[i] = buffer;
            }
            i++;
        }
    }
}
