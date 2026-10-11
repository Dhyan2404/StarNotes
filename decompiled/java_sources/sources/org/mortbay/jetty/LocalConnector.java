package org.mortbay.jetty;

import java.io.IOException;
import org.mortbay.io.Buffer;
import org.mortbay.io.ByteArrayBuffer;
import org.mortbay.io.ByteArrayEndPoint;

/* loaded from: classes13.dex */
public class LocalConnector extends AbstractConnector {

    /* renamed from: G0 */
    public ByteArrayEndPoint f114684G0;

    /* renamed from: H0 */
    public ByteArrayBuffer f114685H0;

    /* renamed from: I0 */
    public ByteArrayBuffer f114686I0;

    /* renamed from: J0 */
    public Server f114687J0;

    /* renamed from: K0 */
    public boolean f114688K0;

    /* renamed from: L0 */
    public boolean f114689L0;

    public LocalConnector() {
        setPort(1);
    }

    @Override // org.mortbay.jetty.AbstractConnector
    public void accept(int i) throws IOException, InterruptedException {
        HttpConnection httpConnection = null;
        while (isRunning()) {
            synchronized (this) {
                while (!this.f114688K0) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                        return;
                    }
                }
            }
            if (httpConnection == null) {
                try {
                    HttpConnection httpConnection2 = new HttpConnection(this, this.f114684G0, getServer());
                    try {
                        connectionOpened(httpConnection2);
                        httpConnection = httpConnection2;
                    } catch (Throwable th) {
                        th = th;
                        httpConnection = httpConnection2;
                        if (!this.f114689L0) {
                            connectionClosed(httpConnection);
                            httpConnection.destroy();
                        }
                        synchronized (this) {
                            this.f114688K0 = false;
                            notify();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            while (this.f114685H0.length() > 0) {
                httpConnection.handle();
            }
            if (!this.f114689L0) {
                connectionClosed(httpConnection);
                httpConnection.destroy();
                httpConnection = null;
            }
            synchronized (this) {
                this.f114688K0 = false;
                notify();
            }
        }
    }

    public void clear() {
        this.f114685H0.clear();
        this.f114686I0.clear();
    }

    @Override // org.mortbay.jetty.Connector
    public void close() throws IOException {
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.AbstractBuffers, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        this.f114685H0 = new ByteArrayBuffer(8192);
        this.f114686I0 = new ByteArrayBuffer(8192);
        ByteArrayEndPoint byteArrayEndPoint = new ByteArrayEndPoint();
        this.f114684G0 = byteArrayEndPoint;
        byteArrayEndPoint.setIn(this.f114685H0);
        this.f114684G0.setOut(this.f114686I0);
        this.f114684G0.setGrowOutput(true);
        this.f114688K0 = false;
        super.doStart();
    }

    @Override // org.mortbay.jetty.Connector
    public Object getConnection() {
        return this.f114684G0;
    }

    @Override // org.mortbay.jetty.Connector
    public int getLocalPort() {
        return -1;
    }

    public String getResponses(String str) throws Exception {
        return getResponses(str, false);
    }

    @Override // org.mortbay.jetty.AbstractBuffers
    public Buffer newBuffer(int i) {
        return new ByteArrayBuffer(i);
    }

    @Override // org.mortbay.jetty.Connector
    public void open() throws IOException {
    }

    public void reopen() {
        this.f114685H0.clear();
        this.f114686I0.clear();
        ByteArrayEndPoint byteArrayEndPoint = new ByteArrayEndPoint();
        this.f114684G0 = byteArrayEndPoint;
        byteArrayEndPoint.setIn(this.f114685H0);
        this.f114684G0.setOut(this.f114686I0);
        this.f114684G0.setGrowOutput(true);
        this.f114688K0 = false;
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public void setServer(Server server) {
        super.setServer(server);
        this.f114687J0 = server;
    }

    public String getResponses(String str, boolean z) throws Exception {
        ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(str);
        if (this.f114685H0.space() < byteArrayBuffer.length()) {
            ByteArrayBuffer byteArrayBuffer2 = new ByteArrayBuffer(this.f114685H0.length() + byteArrayBuffer.length());
            byteArrayBuffer2.put(this.f114685H0);
            this.f114685H0 = byteArrayBuffer2;
            this.f114684G0.setIn(byteArrayBuffer2);
        }
        this.f114685H0.put(byteArrayBuffer);
        synchronized (this) {
            this.f114689L0 = z;
            this.f114688K0 = true;
            notify();
            while (this.f114688K0) {
                wait();
            }
        }
        ByteArrayBuffer out = this.f114684G0.getOut();
        this.f114686I0 = out;
        return out.toString();
    }

    public ByteArrayBuffer getResponses(ByteArrayBuffer byteArrayBuffer, boolean z) throws Exception {
        if (this.f114685H0.space() < byteArrayBuffer.length()) {
            ByteArrayBuffer byteArrayBuffer2 = new ByteArrayBuffer(this.f114685H0.length() + byteArrayBuffer.length());
            byteArrayBuffer2.put(this.f114685H0);
            this.f114685H0 = byteArrayBuffer2;
            this.f114684G0.setIn(byteArrayBuffer2);
        }
        this.f114685H0.put(byteArrayBuffer);
        synchronized (this) {
            this.f114689L0 = z;
            this.f114688K0 = true;
            notify();
            while (this.f114688K0) {
                wait();
            }
        }
        ByteArrayBuffer out = this.f114684G0.getOut();
        this.f114686I0 = out;
        return out;
    }
}
