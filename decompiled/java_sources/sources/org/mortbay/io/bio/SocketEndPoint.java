package org.mortbay.io.bio;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import org.mortbay.io.Portable;

/* loaded from: classes13.dex */
public class SocketEndPoint extends StreamEndPoint {

    /* renamed from: g */
    public final Socket f114477g;

    /* renamed from: h */
    public final InetSocketAddress f114478h;

    /* renamed from: i */
    public final InetSocketAddress f114479i;

    public SocketEndPoint(Socket socket) throws IOException {
        super(socket.getInputStream(), socket.getOutputStream());
        this.f114477g = socket;
        this.f114478h = (InetSocketAddress) socket.getLocalSocketAddress();
        this.f114479i = (InetSocketAddress) socket.getRemoteSocketAddress();
    }

    @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
    public void close() throws IOException {
        this.f114477g.close();
        this.f114480e = null;
        this.f114481f = null;
    }

    @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
    public String getLocalAddr() {
        InetSocketAddress inetSocketAddress = this.f114478h;
        return (inetSocketAddress == null || inetSocketAddress.getAddress() == null || this.f114478h.getAddress().isAnyLocalAddress()) ? Portable.ALL_INTERFACES : this.f114478h.getAddress().getHostAddress();
    }

    @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
    public String getLocalHost() {
        InetSocketAddress inetSocketAddress = this.f114478h;
        return (inetSocketAddress == null || inetSocketAddress.getAddress() == null || this.f114478h.getAddress().isAnyLocalAddress()) ? Portable.ALL_INTERFACES : this.f114478h.getAddress().getCanonicalHostName();
    }

    @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
    public int getLocalPort() {
        InetSocketAddress inetSocketAddress = this.f114478h;
        if (inetSocketAddress == null) {
            return -1;
        }
        return inetSocketAddress.getPort();
    }

    @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
    public String getRemoteAddr() {
        InetAddress address;
        InetSocketAddress inetSocketAddress = this.f114479i;
        if (inetSocketAddress == null || (address = inetSocketAddress.getAddress()) == null) {
            return null;
        }
        return address.getHostAddress();
    }

    @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
    public String getRemoteHost() {
        InetSocketAddress inetSocketAddress = this.f114479i;
        if (inetSocketAddress == null) {
            return null;
        }
        return inetSocketAddress.getAddress().getCanonicalHostName();
    }

    @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
    public int getRemotePort() {
        InetSocketAddress inetSocketAddress = this.f114479i;
        if (inetSocketAddress == null) {
            return -1;
        }
        return inetSocketAddress.getPort();
    }

    @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
    public Object getTransport() {
        return this.f114477g;
    }

    @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
    public boolean isOpen() {
        Socket socket;
        return (!super.isOpen() || (socket = this.f114477g) == null || socket.isClosed() || this.f114477g.isInputShutdown() || this.f114477g.isOutputShutdown()) ? false : true;
    }

    @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
    public void shutdownOutput() throws IOException {
        if (this.f114477g.isClosed() || this.f114477g.isOutputShutdown()) {
            return;
        }
        this.f114477g.shutdownOutput();
    }
}
