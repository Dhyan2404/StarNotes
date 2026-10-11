package org.mortbay.jetty;

import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.io.Buffer;
import org.mortbay.io.Buffers;

/* loaded from: classes13.dex */
public abstract class AbstractBuffers extends AbstractLifeCycle implements Buffers {

    /* renamed from: j */
    public static final int f114528j = 0;

    /* renamed from: k */
    public static final int f114529k = 1;

    /* renamed from: l */
    public static final int f114530l = 2;

    /* renamed from: m */
    public static final int f114531m = 3;

    /* renamed from: e */
    public int f114532e = 4096;

    /* renamed from: f */
    public int f114533f = 8192;

    /* renamed from: g */
    public int f114534g = 24576;

    /* renamed from: h */
    public final int[] f114535h = {2, 1, 1, 2};

    /* renamed from: i */
    public final ThreadLocal f114536i = new C20380a(this);

    /* loaded from: classes13.dex */
    public static class ThreadBuffers {

        /* renamed from: a */
        public final Buffer[][] f114537a;

        public ThreadBuffers(int i, int i2, int i3, int i4) {
            this.f114537a = r0;
            Buffer[][] bufferArr = {new Buffer[i], new Buffer[i2], new Buffer[i3], new Buffer[i4]};
        }
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        super.doStart();
        int i = this.f114532e;
        int i2 = this.f114533f;
        if (i == i2 && i == this.f114534g) {
            int[] iArr = this.f114535h;
            iArr[0] = iArr[0] + iArr[1] + iArr[2];
            iArr[1] = 0;
            iArr[2] = 0;
            return;
        }
        if (i == i2) {
            int[] iArr2 = this.f114535h;
            iArr2[0] = iArr2[0] + iArr2[1];
            iArr2[1] = 0;
            return;
        }
        int i3 = this.f114534g;
        if (i == i3) {
            int[] iArr3 = this.f114535h;
            iArr3[0] = iArr3[0] + iArr3[2];
            iArr3[2] = 0;
        } else if (i2 == i3) {
            int[] iArr4 = this.f114535h;
            iArr4[2] = iArr4[2] + iArr4[1];
            iArr4[1] = 0;
        }
    }

    @Override // org.mortbay.io.Buffers
    public Buffer getBuffer(int i) {
        Buffer[] bufferArr = ((ThreadBuffers) this.f114536i.get()).f114537a[i == this.f114532e ? (char) 0 : i == this.f114534g ? (char) 2 : i == this.f114533f ? (char) 1 : (char) 3];
        for (int i2 = 0; i2 < bufferArr.length; i2++) {
            Buffer buffer = bufferArr[i2];
            if (buffer != null && buffer.capacity() == i) {
                bufferArr[i2] = null;
                return buffer;
            }
        }
        return newBuffer(i);
    }

    public int getHeaderBufferSize() {
        return this.f114532e;
    }

    public int getRequestBufferSize() {
        return this.f114533f;
    }

    public int getResponseBufferSize() {
        return this.f114534g;
    }

    public abstract Buffer newBuffer(int i);

    @Override // org.mortbay.io.Buffers
    public void returnBuffer(Buffer buffer) {
        buffer.clear();
        if (buffer.isVolatile() || buffer.isImmutable()) {
            return;
        }
        int capacity = buffer.capacity();
        Buffer[] bufferArr = ((ThreadBuffers) this.f114536i.get()).f114537a[capacity == this.f114532e ? (char) 0 : capacity == this.f114534g ? (char) 2 : capacity == this.f114533f ? (char) 1 : (char) 3];
        for (int i = 0; i < bufferArr.length; i++) {
            if (bufferArr[i] == null) {
                bufferArr[i] = buffer;
                return;
            }
        }
    }

    public void setHeaderBufferSize(int i) {
        if (isStarted()) {
            throw new IllegalStateException();
        }
        this.f114532e = i;
    }

    public void setRequestBufferSize(int i) {
        if (isStarted()) {
            throw new IllegalStateException();
        }
        this.f114533f = i;
    }

    public void setResponseBufferSize(int i) {
        if (isStarted()) {
            throw new IllegalStateException();
        }
        this.f114534g = i;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("{{");
        stringBuffer.append(this.f114532e);
        stringBuffer.append(",");
        stringBuffer.append(this.f114533f);
        stringBuffer.append(",");
        stringBuffer.append(this.f114534g);
        stringBuffer.append("}}");
        return stringBuffer.toString();
    }
}
