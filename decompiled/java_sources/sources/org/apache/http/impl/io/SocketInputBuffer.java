package org.apache.http.impl.io;

import java.io.IOException;
import java.net.Socket;
import org.apache.http.io.EofSensor;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;

@Deprecated
/* loaded from: classes12.dex */
public class SocketInputBuffer extends AbstractSessionInputBuffer implements EofSensor {

    /* renamed from: o */
    public final Socket f111037o;

    /* renamed from: p */
    public boolean f111038p;

    public SocketInputBuffer(Socket socket, int i, HttpParams httpParams) throws IOException {
        Args.notNull(socket, "Socket");
        this.f111037o = socket;
        this.f111038p = false;
        i = i < 0 ? socket.getReceiveBufferSize() : i;
        init(socket.getInputStream(), i < 1024 ? 1024 : i, httpParams);
    }

    @Override // org.apache.http.impl.io.AbstractSessionInputBuffer
    public int fillBuffer() throws IOException {
        int fillBuffer = super.fillBuffer();
        this.f111038p = fillBuffer == -1;
        return fillBuffer;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public boolean isDataAvailable(int i) throws IOException {
        boolean hasBufferedData = hasBufferedData();
        if (hasBufferedData) {
            return hasBufferedData;
        }
        int soTimeout = this.f111037o.getSoTimeout();
        try {
            this.f111037o.setSoTimeout(i);
            fillBuffer();
            return hasBufferedData();
        } finally {
            this.f111037o.setSoTimeout(soTimeout);
        }
    }

    @Override // org.apache.http.io.EofSensor
    public boolean isEof() {
        return this.f111038p;
    }
}
