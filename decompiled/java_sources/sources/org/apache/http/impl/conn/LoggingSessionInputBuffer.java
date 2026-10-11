package org.apache.http.impl.conn;

import java.io.IOException;
import org.apache.http.Consts;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.io.EofSensor;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.CharArrayBuffer;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
@Deprecated
/* loaded from: classes12.dex */
public class LoggingSessionInputBuffer implements SessionInputBuffer, EofSensor {

    /* renamed from: a */
    public final SessionInputBuffer f110762a;

    /* renamed from: b */
    public final EofSensor f110763b;

    /* renamed from: c */
    public final Wire f110764c;

    /* renamed from: d */
    public final String f110765d;

    public LoggingSessionInputBuffer(SessionInputBuffer sessionInputBuffer, Wire wire, String str) {
        this.f110762a = sessionInputBuffer;
        this.f110763b = sessionInputBuffer instanceof EofSensor ? (EofSensor) sessionInputBuffer : null;
        this.f110764c = wire;
        this.f110765d = str == null ? Consts.ASCII.name() : str;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public HttpTransportMetrics getMetrics() {
        return this.f110762a.getMetrics();
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public boolean isDataAvailable(int i) throws IOException {
        return this.f110762a.isDataAvailable(i);
    }

    @Override // org.apache.http.io.EofSensor
    public boolean isEof() {
        EofSensor eofSensor = this.f110763b;
        if (eofSensor != null) {
            return eofSensor.isEof();
        }
        return false;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.f110762a.read(bArr, i, i2);
        if (this.f110764c.enabled() && read > 0) {
            this.f110764c.input(bArr, i, read);
        }
        return read;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public String readLine() throws IOException {
        String readLine = this.f110762a.readLine();
        if (this.f110764c.enabled() && readLine != null) {
            this.f110764c.input((readLine + "\r\n").getBytes(this.f110765d));
        }
        return readLine;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read() throws IOException {
        int read = this.f110762a.read();
        if (this.f110764c.enabled() && read != -1) {
            this.f110764c.input(read);
        }
        return read;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int readLine(CharArrayBuffer charArrayBuffer) throws IOException {
        int readLine = this.f110762a.readLine(charArrayBuffer);
        if (this.f110764c.enabled() && readLine >= 0) {
            this.f110764c.input((new String(charArrayBuffer.buffer(), charArrayBuffer.length() - readLine, readLine) + "\r\n").getBytes(this.f110765d));
        }
        return readLine;
    }

    public LoggingSessionInputBuffer(SessionInputBuffer sessionInputBuffer, Wire wire) {
        this(sessionInputBuffer, wire, null);
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read(byte[] bArr) throws IOException {
        int read = this.f110762a.read(bArr);
        if (this.f110764c.enabled() && read > 0) {
            this.f110764c.input(bArr, 0, read);
        }
        return read;
    }
}
