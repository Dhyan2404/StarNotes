package org.mortbay.jetty.bio;

import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.mortbay.io.Buffer;
import org.mortbay.io.ByteArrayBuffer;
import org.mortbay.io.EndPoint;
import org.mortbay.io.bio.SocketEndPoint;
import org.mortbay.jetty.AbstractConnector;
import org.mortbay.jetty.EofException;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.HttpException;
import org.mortbay.jetty.Request;
import org.mortbay.log.Log;

/* loaded from: classes13.dex */
public class SocketConnector extends AbstractConnector {
    protected Set _connections;
    protected ServerSocket _serverSocket;

    /* loaded from: classes13.dex */
    public class Connection extends SocketEndPoint implements Runnable {
        protected Socket _socket;

        /* renamed from: j */
        public boolean f114822j;

        /* renamed from: k */
        public HttpConnection f114823k;

        /* renamed from: l */
        public int f114824l;

        public Connection(Socket socket) throws IOException {
            super(socket);
            this.f114822j = false;
            this.f114823k = SocketConnector.this.newHttpConnection(this);
            this.f114824l = socket.getSoTimeout();
            this._socket = socket;
        }

        public void dispatch() throws InterruptedException, IOException {
            if (SocketConnector.this.getThreadPool() == null || !SocketConnector.this.getThreadPool().dispatch(this)) {
                Log.warn("dispatch failed for {}", this.f114823k);
                close();
            }
        }

        @Override // org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
        public int fill(Buffer buffer) throws IOException {
            int fill = super.fill(buffer);
            if (fill < 0) {
                close();
            }
            return fill;
        }

        @Override // java.lang.Runnable
        public void run() {
            int lowResourceMaxIdleTime;
            try {
                try {
                    try {
                        try {
                            SocketConnector.this.connectionOpened(this.f114823k);
                            synchronized (SocketConnector.this._connections) {
                                SocketConnector.this._connections.add(this);
                            }
                            while (SocketConnector.this.isStarted() && !isClosed()) {
                                if (this.f114823k.isIdle() && SocketConnector.this.getServer().getThreadPool().isLowOnThreads() && (lowResourceMaxIdleTime = SocketConnector.this.getLowResourceMaxIdleTime()) >= 0 && this.f114824l != lowResourceMaxIdleTime) {
                                    this.f114824l = lowResourceMaxIdleTime;
                                    this._socket.setSoTimeout(lowResourceMaxIdleTime);
                                }
                                this.f114823k.handle();
                            }
                            SocketConnector.this.connectionClosed(this.f114823k);
                            synchronized (SocketConnector.this._connections) {
                                SocketConnector.this._connections.remove(this);
                            }
                        } catch (HttpException e) {
                            Log.debug("BAD", e);
                            try {
                                close();
                            } catch (IOException e2) {
                                Log.ignore(e2);
                            }
                            SocketConnector.this.connectionClosed(this.f114823k);
                            synchronized (SocketConnector.this._connections) {
                                SocketConnector.this._connections.remove(this);
                            }
                        }
                    } catch (EofException e3) {
                        Log.debug("EOF", e3);
                        try {
                            close();
                        } catch (IOException e4) {
                            Log.ignore(e4);
                        }
                        SocketConnector.this.connectionClosed(this.f114823k);
                        synchronized (SocketConnector.this._connections) {
                            SocketConnector.this._connections.remove(this);
                        }
                    }
                } catch (Throwable th) {
                    Log.warn("handle failed", th);
                    try {
                        close();
                    } catch (IOException e5) {
                        Log.ignore(e5);
                    }
                    SocketConnector.this.connectionClosed(this.f114823k);
                    synchronized (SocketConnector.this._connections) {
                        SocketConnector.this._connections.remove(this);
                    }
                }
            } catch (Throwable th2) {
                SocketConnector.this.connectionClosed(this.f114823k);
                synchronized (SocketConnector.this._connections) {
                    SocketConnector.this._connections.remove(this);
                    throw th2;
                }
            }
        }
    }

    @Override // org.mortbay.jetty.AbstractConnector
    public void accept(int i) throws IOException, InterruptedException {
        Socket accept = this._serverSocket.accept();
        configure(accept);
        new Connection(accept).dispatch();
    }

    @Override // org.mortbay.jetty.Connector
    public void close() throws IOException {
        ServerSocket serverSocket = this._serverSocket;
        if (serverSocket != null) {
            serverSocket.close();
        }
        this._serverSocket = null;
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public void customize(EndPoint endPoint, Request request) throws IOException {
        Connection connection = (Connection) endPoint;
        int i = connection.f114824l;
        int i2 = this._maxIdleTime;
        if (i != i2) {
            connection.f114824l = i2;
            ((Socket) endPoint.getTransport()).setSoTimeout(this._maxIdleTime);
        }
        super.customize(endPoint, request);
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.AbstractBuffers, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        this._connections = new HashSet();
        super.doStart();
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.component.AbstractLifeCycle
    public void doStop() throws Exception {
        HashSet hashSet;
        super.doStop();
        synchronized (this._connections) {
            hashSet = new HashSet(this._connections);
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            ((Connection) it2.next()).close();
        }
    }

    @Override // org.mortbay.jetty.Connector
    public Object getConnection() {
        return this._serverSocket;
    }

    @Override // org.mortbay.jetty.Connector
    public int getLocalPort() {
        ServerSocket serverSocket = this._serverSocket;
        if (serverSocket == null || serverSocket.isClosed()) {
            return -1;
        }
        return this._serverSocket.getLocalPort();
    }

    @Override // org.mortbay.jetty.AbstractBuffers
    public Buffer newBuffer(int i) {
        return new ByteArrayBuffer(i);
    }

    public HttpConnection newHttpConnection(EndPoint endPoint) {
        return new HttpConnection(this, endPoint, getServer());
    }

    public ServerSocket newServerSocket(String str, int i, int i2) throws IOException {
        return str == null ? new ServerSocket(i, i2) : new ServerSocket(i, i2, InetAddress.getByName(str));
    }

    @Override // org.mortbay.jetty.Connector
    public void open() throws IOException {
        ServerSocket serverSocket = this._serverSocket;
        if (serverSocket == null || serverSocket.isClosed()) {
            this._serverSocket = newServerSocket(getHost(), getPort(), getAcceptQueueSize());
        }
        this._serverSocket.setReuseAddress(getReuseAddress());
    }
}
