package org.apache.http.impl.pool;

import com.google.android.exoplayer2.extractor.p007ts.PsExtractor;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpConnectionFactory;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.config.SocketConfig;
import org.apache.http.impl.DefaultBHttpClientConnection;
import org.apache.http.impl.DefaultBHttpClientConnectionFactory;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.params.HttpParamConfig;
import org.apache.http.params.HttpParams;
import org.apache.http.pool.ConnFactory;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Contract(threading = ThreadingBehavior.IMMUTABLE_CONDITIONAL)
/* loaded from: classes12.dex */
public class BasicConnFactory implements ConnFactory<HttpHost, HttpClientConnection> {

    /* renamed from: a */
    public final SocketFactory f111039a;

    /* renamed from: b */
    public final SSLSocketFactory f111040b;

    /* renamed from: c */
    public final int f111041c;

    /* renamed from: d */
    public final SocketConfig f111042d;

    /* renamed from: e */
    public final HttpConnectionFactory<? extends HttpClientConnection> f111043e;

    /* renamed from: org.apache.http.impl.pool.BasicConnFactory$a */
    /* loaded from: classes12.dex */
    public class C19385a implements PrivilegedExceptionAction<Object> {

        /* renamed from: a */
        public final /* synthetic */ Socket f111044a;

        /* renamed from: b */
        public final /* synthetic */ InetSocketAddress f111045b;

        public C19385a(Socket socket, InetSocketAddress inetSocketAddress) {
            this.f111044a = socket;
            this.f111045b = inetSocketAddress;
        }

        @Override // java.security.PrivilegedExceptionAction
        public Object run() throws IOException {
            this.f111044a.connect(this.f111045b, BasicConnFactory.this.f111041c);
            return null;
        }
    }

    @Deprecated
    public BasicConnFactory(SSLSocketFactory sSLSocketFactory, HttpParams httpParams) {
        Args.notNull(httpParams, "HTTP params");
        this.f111039a = null;
        this.f111040b = sSLSocketFactory;
        this.f111041c = httpParams.getIntParameter(CoreConnectionPNames.CONNECTION_TIMEOUT, 0);
        this.f111042d = HttpParamConfig.getSocketConfig(httpParams);
        this.f111043e = new DefaultBHttpClientConnectionFactory(HttpParamConfig.getConnectionConfig(httpParams));
    }

    @Deprecated
    public HttpClientConnection create(Socket socket, HttpParams httpParams) throws IOException {
        DefaultBHttpClientConnection defaultBHttpClientConnection = new DefaultBHttpClientConnection(httpParams.getIntParameter(CoreConnectionPNames.SOCKET_BUFFER_SIZE, 8192));
        defaultBHttpClientConnection.bind(socket);
        return defaultBHttpClientConnection;
    }

    @Override // org.apache.http.pool.ConnFactory
    public HttpClientConnection create(HttpHost httpHost) throws IOException {
        Socket createSocket;
        String schemeName = httpHost.getSchemeName();
        if ("http".equalsIgnoreCase(schemeName)) {
            SocketFactory socketFactory = this.f111039a;
            createSocket = socketFactory != null ? socketFactory.createSocket() : new Socket();
        } else if ("https".equalsIgnoreCase(schemeName)) {
            SocketFactory socketFactory2 = this.f111040b;
            if (socketFactory2 == null) {
                socketFactory2 = SSLSocketFactory.getDefault();
            }
            createSocket = socketFactory2.createSocket();
        } else {
            throw new IOException(schemeName + " scheme is not supported");
        }
        String hostName = httpHost.getHostName();
        int port = httpHost.getPort();
        if (port == -1) {
            if (httpHost.getSchemeName().equalsIgnoreCase("http")) {
                port = 80;
            } else if (httpHost.getSchemeName().equalsIgnoreCase("https")) {
                port = PsExtractor.f24604m;
            }
        }
        createSocket.setSoTimeout(this.f111042d.getSoTimeout());
        if (this.f111042d.getSndBufSize() > 0) {
            createSocket.setSendBufferSize(this.f111042d.getSndBufSize());
        }
        if (this.f111042d.getRcvBufSize() > 0) {
            createSocket.setReceiveBufferSize(this.f111042d.getRcvBufSize());
        }
        createSocket.setTcpNoDelay(this.f111042d.isTcpNoDelay());
        int soLinger = this.f111042d.getSoLinger();
        if (soLinger >= 0) {
            createSocket.setSoLinger(true, soLinger);
        }
        createSocket.setKeepAlive(this.f111042d.isSoKeepAlive());
        try {
            AccessController.doPrivileged(new C19385a(createSocket, new InetSocketAddress(hostName, port)));
            return this.f111043e.createConnection(createSocket);
        } catch (PrivilegedActionException e) {
            Asserts.check(e.getCause() instanceof IOException, "method contract violation only checked exceptions are wrapped: " + e.getCause());
            throw ((IOException) e.getCause());
        }
    }

    @Deprecated
    public BasicConnFactory(HttpParams httpParams) {
        this((SSLSocketFactory) null, httpParams);
    }

    public BasicConnFactory(SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, int i, SocketConfig socketConfig, ConnectionConfig connectionConfig) {
        this.f111039a = socketFactory;
        this.f111040b = sSLSocketFactory;
        this.f111041c = i;
        this.f111042d = socketConfig == null ? SocketConfig.DEFAULT : socketConfig;
        this.f111043e = new DefaultBHttpClientConnectionFactory(connectionConfig == null ? ConnectionConfig.DEFAULT : connectionConfig);
    }

    public BasicConnFactory(int i, SocketConfig socketConfig, ConnectionConfig connectionConfig) {
        this(null, null, i, socketConfig, connectionConfig);
    }

    public BasicConnFactory(SocketConfig socketConfig, ConnectionConfig connectionConfig) {
        this(null, null, 0, socketConfig, connectionConfig);
    }

    public BasicConnFactory() {
        this(null, null, 0, SocketConfig.DEFAULT, ConnectionConfig.DEFAULT);
    }
}
