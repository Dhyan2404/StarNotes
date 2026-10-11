package org.mortbay.io;

import java.io.IOException;

/* loaded from: classes13.dex */
public class ByteArrayEndPoint implements EndPoint {

    /* renamed from: e */
    public byte[] f114466e;

    /* renamed from: f */
    public ByteArrayBuffer f114467f;

    /* renamed from: g */
    public ByteArrayBuffer f114468g;

    /* renamed from: h */
    public boolean f114469h;

    /* renamed from: i */
    public boolean f114470i;

    /* renamed from: j */
    public boolean f114471j;

    public ByteArrayEndPoint() {
    }

    @Override // org.mortbay.io.EndPoint
    public boolean blockReadable(long j) {
        return true;
    }

    @Override // org.mortbay.io.EndPoint
    public boolean blockWritable(long j) {
        return true;
    }

    @Override // org.mortbay.io.EndPoint
    public void close() throws IOException {
        this.f114469h = true;
    }

    @Override // org.mortbay.io.EndPoint
    public int fill(Buffer buffer) throws IOException {
        if (this.f114469h) {
            throw new IOException("CLOSED");
        }
        ByteArrayBuffer byteArrayBuffer = this.f114467f;
        if (byteArrayBuffer == null) {
            return -1;
        }
        if (byteArrayBuffer.length() <= 0) {
            return this.f114470i ? 0 : -1;
        }
        int put = buffer.put(this.f114467f);
        this.f114467f.skip(put);
        return put;
    }

    @Override // org.mortbay.io.EndPoint
    public void flush() throws IOException {
    }

    public ByteArrayBuffer getIn() {
        return this.f114467f;
    }

    @Override // org.mortbay.io.EndPoint
    public String getLocalAddr() {
        return null;
    }

    @Override // org.mortbay.io.EndPoint
    public String getLocalHost() {
        return null;
    }

    @Override // org.mortbay.io.EndPoint
    public int getLocalPort() {
        return 0;
    }

    public ByteArrayBuffer getOut() {
        return this.f114468g;
    }

    @Override // org.mortbay.io.EndPoint
    public String getRemoteAddr() {
        return null;
    }

    @Override // org.mortbay.io.EndPoint
    public String getRemoteHost() {
        return null;
    }

    @Override // org.mortbay.io.EndPoint
    public int getRemotePort() {
        return 0;
    }

    @Override // org.mortbay.io.EndPoint
    public Object getTransport() {
        return this.f114466e;
    }

    @Override // org.mortbay.io.EndPoint
    public boolean isBlocking() {
        return !this.f114470i;
    }

    @Override // org.mortbay.io.EndPoint
    public boolean isBufferingInput() {
        return false;
    }

    @Override // org.mortbay.io.EndPoint
    public boolean isBufferingOutput() {
        return false;
    }

    @Override // org.mortbay.io.EndPoint
    public boolean isBufferred() {
        return false;
    }

    public boolean isGrowOutput() {
        return this.f114471j;
    }

    public boolean isNonBlocking() {
        return this.f114470i;
    }

    @Override // org.mortbay.io.EndPoint
    public boolean isOpen() {
        return !this.f114469h;
    }

    public void reset() {
        this.f114469h = false;
        this.f114467f.clear();
        this.f114468g.clear();
        byte[] bArr = this.f114466e;
        if (bArr != null) {
            this.f114467f.setPutIndex(bArr.length);
        }
    }

    public void setGrowOutput(boolean z) {
        this.f114471j = z;
    }

    public void setIn(ByteArrayBuffer byteArrayBuffer) {
        this.f114467f = byteArrayBuffer;
    }

    public void setNonBlocking(boolean z) {
        this.f114470i = z;
    }

    public void setOut(ByteArrayBuffer byteArrayBuffer) {
        this.f114468g = byteArrayBuffer;
    }

    @Override // org.mortbay.io.EndPoint
    public void shutdownOutput() throws IOException {
    }

    public ByteArrayEndPoint(byte[] bArr, int i) {
        this.f114466e = bArr;
        this.f114467f = new ByteArrayBuffer(bArr);
        this.f114468g = new ByteArrayBuffer(i);
    }

    @Override // org.mortbay.io.EndPoint
    public int flush(Buffer buffer) throws IOException {
        if (!this.f114469h) {
            if (this.f114471j && buffer.length() > this.f114468g.space()) {
                this.f114468g.compact();
                if (buffer.length() > this.f114468g.space()) {
                    ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(this.f114468g.putIndex() + buffer.length());
                    ByteArrayBuffer byteArrayBuffer2 = this.f114468g;
                    byteArrayBuffer.put(byteArrayBuffer2.peek(0, byteArrayBuffer2.putIndex()));
                    if (this.f114468g.getIndex() > 0) {
                        byteArrayBuffer.mark();
                        byteArrayBuffer.setGetIndex(this.f114468g.getIndex());
                    }
                    this.f114468g = byteArrayBuffer;
                }
            }
            int put = this.f114468g.put(buffer);
            buffer.skip(put);
            return put;
        }
        throw new IOException("CLOSED");
    }

    @Override // org.mortbay.io.EndPoint
    public int flush(Buffer buffer, Buffer buffer2, Buffer buffer3) throws IOException {
        if (!this.f114469h) {
            int flush = (buffer == null || buffer.length() <= 0) ? 0 : flush(buffer);
            if (buffer != null && buffer.length() != 0) {
                return flush;
            }
            if (buffer2 != null && buffer2.length() > 0) {
                flush += flush(buffer2);
            }
            return ((buffer2 == null || buffer2.length() == 0) && buffer3 != null && buffer3.length() > 0) ? flush + flush(buffer3) : flush;
        }
        throw new IOException("CLOSED");
    }
}
