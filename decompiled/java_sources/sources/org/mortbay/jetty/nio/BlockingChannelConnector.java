package org.mortbay.jetty.nio;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.channels.ByteChannel;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import org.mortbay.io.EndPoint;
import org.mortbay.io.nio.ChannelEndPoint;
import org.mortbay.jetty.EofException;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.HttpException;
import org.mortbay.jetty.Request;
import org.mortbay.log.Log;

/* loaded from: classes13.dex */
public class BlockingChannelConnector extends AbstractNIOConnector {

    /* renamed from: H0 */
    public transient ServerSocketChannel f114945H0;

    /* renamed from: org.mortbay.jetty.nio.BlockingChannelConnector$a */
    /* loaded from: classes13.dex */
    public class RunnableC20393a extends ChannelEndPoint implements Runnable {

        /* renamed from: e */
        public boolean f114946e;

        /* renamed from: f */
        public HttpConnection f114947f;

        /* renamed from: g */
        public int f114948g;

        public RunnableC20393a(ByteChannel byteChannel) {
            super(byteChannel);
            this.f114946e = false;
            this.f114947f = new HttpConnection(BlockingChannelConnector.this, this, BlockingChannelConnector.this.getServer());
        }

        /* renamed from: a */
        public void m71560a() throws IOException {
            if (BlockingChannelConnector.this.getThreadPool().dispatch(this)) {
                return;
            }
            Log.warn("dispatch failed for  {}", this.f114947f);
            close();
        }

        @Override // java.lang.Runnable
        public void run() {
            int lowResourceMaxIdleTime;
            try {
                try {
                    try {
                        BlockingChannelConnector.this.connectionOpened(this.f114947f);
                        while (isOpen()) {
                            if (this.f114947f.isIdle() && BlockingChannelConnector.this.getServer().getThreadPool().isLowOnThreads() && (lowResourceMaxIdleTime = BlockingChannelConnector.this.getLowResourceMaxIdleTime()) >= 0 && this.f114948g != lowResourceMaxIdleTime) {
                                this.f114948g = lowResourceMaxIdleTime;
                                ((SocketChannel) getTransport()).socket().setSoTimeout(this.f114948g);
                            }
                            this.f114947f.handle();
                        }
                    } catch (EofException e) {
                        Log.debug("EOF", e);
                        try {
                            close();
                        } catch (IOException e2) {
                            Log.ignore(e2);
                        }
                    }
                } catch (HttpException e3) {
                    Log.debug("BAD", e3);
                    try {
                        close();
                    } catch (IOException e4) {
                        Log.ignore(e4);
                    }
                } catch (Throwable th) {
                    Log.warn("handle failed", th);
                    try {
                        close();
                    } catch (IOException e5) {
                        Log.ignore(e5);
                    }
                }
                BlockingChannelConnector.this.connectionClosed(this.f114947f);
            } catch (Throwable th2) {
                BlockingChannelConnector.this.connectionClosed(this.f114947f);
                throw th2;
            }
        }
    }

    @Override // org.mortbay.jetty.AbstractConnector
    public void accept(int i) throws IOException, InterruptedException {
        SocketChannel accept = this.f114945H0.accept();
        accept.configureBlocking(true);
        configure(accept.socket());
        new RunnableC20393a(accept).m71560a();
    }

    @Override // org.mortbay.jetty.Connector
    public void close() throws IOException {
        ServerSocketChannel serverSocketChannel = this.f114945H0;
        if (serverSocketChannel != null) {
            serverSocketChannel.close();
        }
        this.f114945H0 = null;
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public void customize(EndPoint endPoint, Request request) throws IOException {
        RunnableC20393a runnableC20393a = (RunnableC20393a) endPoint;
        int i = runnableC20393a.f114948g;
        int i2 = this._maxIdleTime;
        if (i != i2) {
            runnableC20393a.f114948g = i2;
            ((SocketChannel) endPoint.getTransport()).socket().setSoTimeout(this._maxIdleTime);
        }
        super.customize(endPoint, request);
        configure(((SocketChannel) endPoint.getTransport()).socket());
    }

    @Override // org.mortbay.jetty.Connector
    public Object getConnection() {
        return this.f114945H0;
    }

    @Override // org.mortbay.jetty.Connector
    public int getLocalPort() {
        ServerSocketChannel serverSocketChannel = this.f114945H0;
        if (serverSocketChannel == null || !serverSocketChannel.isOpen()) {
            return -1;
        }
        return this.f114945H0.socket().getLocalPort();
    }

    @Override // org.mortbay.jetty.Connector
    public void open() throws IOException {
        ServerSocketChannel open = ServerSocketChannel.open();
        this.f114945H0 = open;
        open.configureBlocking(true);
        this.f114945H0.socket().bind(getHost() == null ? new InetSocketAddress(getPort()) : new InetSocketAddress(getHost(), getPort()), getAcceptQueueSize());
    }
}
