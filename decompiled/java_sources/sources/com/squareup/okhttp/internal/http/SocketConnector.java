package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Address;
import com.squareup.okhttp.CertificatePinner;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.ConnectionPool;
import com.squareup.okhttp.ConnectionSpec;
import com.squareup.okhttp.Handshake;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.internal.ConnectionSpecSelector;
import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.tls.OkHostnameVerifier;
import java.io.IOException;
import java.net.Proxy;
import java.net.Socket;
import java.net.URL;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import okio.Source;

/* loaded from: classes9.dex */
public class SocketConnector {

    /* renamed from: a */
    public final Connection f63828a;

    /* renamed from: b */
    public final ConnectionPool f63829b;

    public SocketConnector(Connection connection, ConnectionPool connectionPool) {
        this.f63828a = connection;
        this.f63829b = connectionPool;
    }

    /* renamed from: a */
    public final Socket m52715a(int i, int i2, Route route) throws RouteException {
        Socket createSocket;
        Platform platform = Platform.get();
        try {
            Proxy proxy = route.getProxy();
            Address address = route.getAddress();
            if (proxy.type() != Proxy.Type.DIRECT && proxy.type() != Proxy.Type.HTTP) {
                createSocket = new Socket(proxy);
                createSocket.setSoTimeout(i);
                platform.connectSocket(createSocket, route.getSocketAddress(), i2);
                return createSocket;
            }
            createSocket = address.getSocketFactory().createSocket();
            createSocket.setSoTimeout(i);
            platform.connectSocket(createSocket, route.getSocketAddress(), i2);
            return createSocket;
        } catch (IOException e) {
            throw new RouteException(e);
        }
    }

    /* renamed from: b */
    public final void m52716b(int i, int i2, Request request, Route route, Socket socket) throws RouteException {
        try {
            Request m52717c = m52717c(request);
            HttpConnection httpConnection = new HttpConnection(this.f63829b, this.f63828a, socket);
            httpConnection.setTimeouts(i, i2);
            URL url = m52717c.url();
            String str = "CONNECT " + url.getHost() + ":" + Util.getEffectivePort(url) + " HTTP/1.1";
            do {
                httpConnection.writeRequest(m52717c.headers(), str);
                httpConnection.flush();
                Response build = httpConnection.readResponse().request(m52717c).build();
                long contentLength = OkHeaders.contentLength(build);
                if (contentLength == -1) {
                    contentLength = 0;
                }
                Source newFixedLengthSource = httpConnection.newFixedLengthSource(contentLength);
                Util.skipAll(newFixedLengthSource, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
                newFixedLengthSource.close();
                int code = build.code();
                if (code == 200) {
                    if (httpConnection.bufferSize() > 0) {
                        throw new IOException("TLS tunnel buffered too many bytes!");
                    }
                    return;
                } else {
                    if (code != 407) {
                        throw new IOException("Unexpected response code for CONNECT: " + build.code());
                    }
                    m52717c = OkHeaders.processAuthHeader(route.getAddress().getAuthenticator(), build, route.getProxy());
                }
            } while (m52717c != null);
            throw new IOException("Failed to authenticate with proxy");
        } catch (IOException e) {
            throw new RouteException(e);
        }
    }

    /* renamed from: c */
    public final Request m52717c(Request request) throws IOException {
        String str;
        String host = request.url().getHost();
        int effectivePort = Util.getEffectivePort(request.url());
        if (effectivePort == Util.getDefaultPort("https")) {
            str = host;
        } else {
            str = host + ":" + effectivePort;
        }
        Request.Builder header = new Request.Builder().url(new URL("https", host, effectivePort, "/")).header("Host", str).header("Proxy-Connection", "Keep-Alive");
        String header2 = request.header("User-Agent");
        if (header2 != null) {
            header.header("User-Agent", header2);
        }
        String header3 = request.header("Proxy-Authorization");
        if (header3 != null) {
            header.header("Proxy-Authorization", header3);
        }
        return header.build();
    }

    public ConnectedSocket connectCleartext(int i, int i2, Route route) throws RouteException {
        return new ConnectedSocket(route, m52715a(i2, i, route));
    }

    public ConnectedSocket connectTls(int i, int i2, int i3, Request request, Route route, List<ConnectionSpec> list, boolean z) throws RouteException {
        SSLSocket sSLSocket;
        boolean z2;
        String selectedProtocol;
        Address address = route.getAddress();
        ConnectionSpecSelector connectionSpecSelector = new ConnectionSpecSelector(list);
        RouteException routeException = null;
        do {
            Socket m52715a = m52715a(i2, i, route);
            if (route.requiresTunnel()) {
                m52716b(i2, i3, request, route, m52715a);
            }
            try {
                sSLSocket = (SSLSocket) address.getSslSocketFactory().createSocket(m52715a, address.getUriHost(), address.getUriPort(), true);
            } catch (IOException e) {
                e = e;
                sSLSocket = null;
            }
            try {
                ConnectionSpec configureSecureSocket = connectionSpecSelector.configureSecureSocket(sSLSocket);
                Platform platform = Platform.get();
                try {
                    if (configureSecureSocket.supportsTlsExtensions()) {
                        platform.configureTlsExtensions(sSLSocket, address.getUriHost(), address.getProtocols());
                    }
                    sSLSocket.startHandshake();
                    Handshake handshake = Handshake.get(sSLSocket.getSession());
                    Protocol protocol = (!configureSecureSocket.supportsTlsExtensions() || (selectedProtocol = platform.getSelectedProtocol(sSLSocket)) == null) ? null : Protocol.get(selectedProtocol);
                    platform.afterHandshake(sSLSocket);
                    if (address.getHostnameVerifier().verify(address.getUriHost(), sSLSocket.getSession())) {
                        address.getCertificatePinner().check(address.getUriHost(), handshake.peerCertificates());
                        return new ConnectedSocket(route, sSLSocket, protocol, handshake);
                    }
                    X509Certificate x509Certificate = (X509Certificate) sSLSocket.getSession().getPeerCertificates()[0];
                    throw new SSLPeerUnverifiedException("Hostname " + address.getUriHost() + " not verified:\n    certificate: " + CertificatePinner.pin(x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + OkHostnameVerifier.allSubjectAltNames(x509Certificate));
                } catch (Throwable th) {
                    platform.afterHandshake(sSLSocket);
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
                z2 = z && connectionSpecSelector.connectionFailed(e);
                Util.closeQuietly((Socket) sSLSocket);
                Util.closeQuietly(m52715a);
                if (routeException == null) {
                    routeException = new RouteException(e);
                } else {
                    routeException.addConnectException(e);
                }
            }
        } while (z2);
        throw routeException;
    }

    /* loaded from: classes9.dex */
    public static class ConnectedSocket {
        public final Protocol alpnProtocol;
        public final Handshake handshake;
        public final Route route;
        public final Socket socket;

        public ConnectedSocket(Route route, Socket socket) {
            this.route = route;
            this.socket = socket;
            this.alpnProtocol = null;
            this.handshake = null;
        }

        public ConnectedSocket(Route route, SSLSocket sSLSocket, Protocol protocol, Handshake handshake) {
            this.route = route;
            this.socket = sSLSocket;
            this.alpnProtocol = protocol;
            this.handshake = handshake;
        }
    }
}
