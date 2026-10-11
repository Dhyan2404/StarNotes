package org.apache.http.impl.conn;

import java.io.IOException;
import org.apache.http.Consts;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.CharArrayBuffer;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
@Deprecated
/* loaded from: classes12.dex */
public class LoggingSessionOutputBuffer implements SessionOutputBuffer {

    /* renamed from: a */
    public final SessionOutputBuffer f110766a;

    /* renamed from: b */
    public final Wire f110767b;

    /* renamed from: c */
    public final String f110768c;

    public LoggingSessionOutputBuffer(SessionOutputBuffer sessionOutputBuffer, Wire wire, String str) {
        this.f110766a = sessionOutputBuffer;
        this.f110767b = wire;
        this.f110768c = str == null ? Consts.ASCII.name() : str;
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void flush() throws IOException {
        this.f110766a.flush();
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public HttpTransportMetrics getMetrics() {
        return this.f110766a.getMetrics();
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f110766a.write(bArr, i, i2);
        if (this.f110767b.enabled()) {
            this.f110767b.output(bArr, i, i2);
        }
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void writeLine(CharArrayBuffer charArrayBuffer) throws IOException {
        this.f110766a.writeLine(charArrayBuffer);
        if (this.f110767b.enabled()) {
            this.f110767b.output((new String(charArrayBuffer.buffer(), 0, charArrayBuffer.length()) + "\r\n").getBytes(this.f110768c));
        }
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void write(int i) throws IOException {
        this.f110766a.write(i);
        if (this.f110767b.enabled()) {
            this.f110767b.output(i);
        }
    }

    public LoggingSessionOutputBuffer(SessionOutputBuffer sessionOutputBuffer, Wire wire) {
        this(sessionOutputBuffer, wire, null);
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void writeLine(String str) throws IOException {
        this.f110766a.writeLine(str);
        if (this.f110767b.enabled()) {
            this.f110767b.output((str + "\r\n").getBytes(this.f110768c));
        }
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void write(byte[] bArr) throws IOException {
        this.f110766a.write(bArr);
        if (this.f110767b.enabled()) {
            this.f110767b.output(bArr);
        }
    }
}
