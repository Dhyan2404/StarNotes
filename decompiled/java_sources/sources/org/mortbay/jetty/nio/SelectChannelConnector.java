package org.mortbay.jetty.nio;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.channels.SelectionKey;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import org.mortbay.io.Connection;
import org.mortbay.io.EndPoint;
import org.mortbay.io.nio.SelectChannelEndPoint;
import org.mortbay.io.nio.SelectorManager;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.RetryRequest;
import org.mortbay.log.Log;
import org.mortbay.thread.Timeout;
import org.mortbay.util.ajax.Continuation;

/* loaded from: classes13.dex */
public class SelectChannelConnector extends AbstractNIOConnector {

    /* renamed from: H0 */
    public long f114951H0;

    /* renamed from: I0 */
    public long f114952I0;

    /* renamed from: J0 */
    public SelectorManager f114953J0 = new C20394a(this);
    protected transient ServerSocketChannel _acceptChannel;

    /* loaded from: classes13.dex */
    public static class ConnectorEndPoint extends SelectChannelEndPoint {
        public ConnectorEndPoint(SocketChannel socketChannel, SelectorManager.SelectSet selectSet, SelectionKey selectionKey) {
            super(socketChannel, selectSet, selectionKey);
            scheduleIdle();
        }

        @Override // org.mortbay.io.nio.SelectChannelEndPoint, org.mortbay.io.nio.ChannelEndPoint, org.mortbay.io.EndPoint
        public void close() throws IOException {
            RetryContinuation retryContinuation;
            if ((getConnection() instanceof HttpConnection) && (retryContinuation = (RetryContinuation) ((HttpConnection) getConnection()).getRequest().getContinuation()) != null && retryContinuation.isPending()) {
                retryContinuation.reset();
            }
            super.close();
        }

        @Override // org.mortbay.io.nio.SelectChannelEndPoint
        public void undispatch() {
            if (!(getConnection() instanceof HttpConnection)) {
                super.undispatch();
                return;
            }
            RetryContinuation retryContinuation = (RetryContinuation) ((HttpConnection) getConnection()).getRequest().getContinuation();
            if (retryContinuation == null) {
                super.undispatch();
                return;
            }
            Log.debug("continuation {}", retryContinuation);
            if (retryContinuation.undispatch()) {
                super.undispatch();
            }
        }
    }

    /* loaded from: classes13.dex */
    public static class RetryContinuation extends Timeout.Task implements Continuation, Runnable {

        /* renamed from: m */
        public Object f114956m;

        /* renamed from: q */
        public RetryRequest f114960q;

        /* renamed from: r */
        public long f114961r;

        /* renamed from: k */
        public SelectChannelEndPoint f114954k = (SelectChannelEndPoint) HttpConnection.getCurrentConnection().getEndPoint();

        /* renamed from: l */
        public boolean f114955l = true;

        /* renamed from: n */
        public boolean f114957n = false;

        /* renamed from: o */
        public boolean f114958o = false;

        /* renamed from: p */
        public boolean f114959p = false;

        @Override // org.mortbay.thread.Timeout.Task
        public void expire() {
            boolean z;
            synchronized (this) {
                z = this.f114959p && this.f114957n && !this.f114958o;
                this.f114959p = false;
            }
            if (z) {
                this.f114954k.scheduleIdle();
                this.f114954k.getSelectSet().addChange(this);
                this.f114954k.getSelectSet().wakeup();
            }
        }

        @Override // org.mortbay.util.ajax.Continuation
        public Object getObject() {
            return this.f114956m;
        }

        public long getTimeout() {
            return this.f114961r;
        }

        @Override // org.mortbay.util.ajax.Continuation
        public boolean isNew() {
            return this.f114955l;
        }

        @Override // org.mortbay.util.ajax.Continuation
        public boolean isPending() {
            return this.f114957n;
        }

        @Override // org.mortbay.util.ajax.Continuation
        public boolean isResumed() {
            return this.f114958o;
        }

        @Override // org.mortbay.util.ajax.Continuation
        public void reset() {
            synchronized (this) {
                this.f114958o = false;
                this.f114957n = false;
                this.f114959p = false;
            }
            synchronized (this.f114954k.getSelectSet()) {
                cancel();
            }
        }

        @Override // org.mortbay.util.ajax.Continuation
        public void resume() {
            boolean z;
            synchronized (this) {
                z = false;
                if (this.f114957n && !isExpired()) {
                    this.f114958o = true;
                    boolean z2 = this.f114959p;
                    this.f114959p = false;
                    z = z2;
                }
            }
            if (z) {
                SelectorManager.SelectSet selectSet = this.f114954k.getSelectSet();
                synchronized (selectSet) {
                    cancel();
                }
                this.f114954k.scheduleIdle();
                selectSet.addChange(this);
                selectSet.wakeup();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f114954k.run();
        }

        @Override // org.mortbay.util.ajax.Continuation
        public void setObject(Object obj) {
            this.f114956m = obj;
        }

        @Override // org.mortbay.util.ajax.Continuation
        public boolean suspend(long j) {
            boolean z;
            synchronized (this) {
                z = this.f114958o;
                this.f114958o = false;
                this.f114955l = false;
                if (!this.f114957n && !z && j >= 0) {
                    this.f114957n = true;
                    this.f114959p = false;
                    this.f114961r = j;
                    if (this.f114960q == null) {
                        this.f114960q = new RetryRequest();
                    }
                    throw this.f114960q;
                }
                this.f114958o = false;
                this.f114957n = false;
                this.f114959p = false;
            }
            synchronized (this.f114954k.getSelectSet()) {
                cancel();
            }
            return z;
        }

        public String toString() {
            String stringBuffer;
            synchronized (this) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("RetryContinuation@");
                stringBuffer2.append(hashCode());
                stringBuffer2.append(this.f114955l ? ",new" : "");
                stringBuffer2.append(this.f114957n ? ",pending" : "");
                stringBuffer2.append(this.f114958o ? ",resumed" : "");
                stringBuffer2.append(isExpired() ? ",expired" : "");
                stringBuffer2.append(this.f114959p ? ",parked" : "");
                stringBuffer = stringBuffer2.toString();
            }
            return stringBuffer;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0019  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0020  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x002f  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x001a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean undispatch() {
            /*
                r5 = this;
                monitor-enter(r5)
                boolean r0 = r5.f114957n     // Catch: java.lang.Throwable -> L4c
                r1 = 1
                if (r0 != 0) goto L8
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L4c
                return r1
            L8:
                boolean r0 = r5.isExpired()     // Catch: java.lang.Throwable -> L4c
                r2 = 0
                if (r0 != 0) goto L16
                boolean r0 = r5.f114958o     // Catch: java.lang.Throwable -> L4c
                if (r0 == 0) goto L14
                goto L16
            L14:
                r0 = r2
                goto L17
            L16:
                r0 = r1
            L17:
                if (r0 != 0) goto L1a
                goto L1b
            L1a:
                r1 = r2
            L1b:
                r5.f114959p = r1     // Catch: java.lang.Throwable -> L4c
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L4c
                if (r0 == 0) goto L2f
                org.mortbay.io.nio.SelectChannelEndPoint r0 = r5.f114954k
                r0.scheduleIdle()
                org.mortbay.io.nio.SelectChannelEndPoint r0 = r5.f114954k
                org.mortbay.io.nio.SelectorManager$SelectSet r0 = r0.getSelectSet()
                r0.addChange(r5)
                goto L42
            L2f:
                long r0 = r5.f114961r
                r3 = 0
                int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
                if (r0 <= 0) goto L42
                org.mortbay.io.nio.SelectChannelEndPoint r0 = r5.f114954k
                org.mortbay.io.nio.SelectorManager$SelectSet r0 = r0.getSelectSet()
                long r3 = r5.f114961r
                r0.scheduleTimeout(r5, r3)
            L42:
                org.mortbay.io.nio.SelectChannelEndPoint r5 = r5.f114954k
                org.mortbay.io.nio.SelectorManager$SelectSet r5 = r5.getSelectSet()
                r5.wakeup()
                return r2
            L4c:
                r0 = move-exception
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L4c
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.nio.SelectChannelConnector.RetryContinuation.undispatch():boolean");
        }
    }

    @Override // org.mortbay.jetty.AbstractConnector
    public void accept(int i) throws IOException {
        this.f114953J0.doSelect(i);
    }

    @Override // org.mortbay.jetty.Connector
    public void close() throws IOException {
        synchronized (this) {
            if (this.f114953J0.isRunning()) {
                try {
                    this.f114953J0.stop();
                } catch (Exception e) {
                    Log.warn(e);
                }
            }
            ServerSocketChannel serverSocketChannel = this._acceptChannel;
            if (serverSocketChannel != null) {
                serverSocketChannel.close();
            }
            this._acceptChannel = null;
        }
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public void customize(EndPoint endPoint, Request request) throws IOException {
        ConnectorEndPoint connectorEndPoint = (ConnectorEndPoint) endPoint;
        connectorEndPoint.cancelIdle();
        request.setTimeStamp(connectorEndPoint.getSelectSet().getNow());
        super.customize(endPoint, request);
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.AbstractBuffers, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        this.f114953J0.setSelectSets(getAcceptors());
        this.f114953J0.setMaxIdleTime(getMaxIdleTime());
        this.f114953J0.setLowResourcesConnections(getLowResourcesConnections());
        this.f114953J0.setLowResourcesMaxIdleTime(getLowResourcesMaxIdleTime());
        this.f114953J0.start();
        open();
        this.f114953J0.register(this._acceptChannel);
        super.doStart();
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.component.AbstractLifeCycle
    public void doStop() throws Exception {
        super.doStop();
    }

    @Override // org.mortbay.jetty.Connector
    public Object getConnection() {
        return this._acceptChannel;
    }

    public boolean getDelaySelectKeyUpdate() {
        return this.f114953J0.isDelaySelectKeyUpdate();
    }

    @Override // org.mortbay.jetty.Connector
    public int getLocalPort() {
        synchronized (this) {
            ServerSocketChannel serverSocketChannel = this._acceptChannel;
            if (serverSocketChannel != null && serverSocketChannel.isOpen()) {
                return this._acceptChannel.socket().getLocalPort();
            }
            return -1;
        }
    }

    public long getLowResourcesConnections() {
        return this.f114951H0;
    }

    public long getLowResourcesMaxIdleTime() {
        return this.f114952I0;
    }

    public Connection newConnection(SocketChannel socketChannel, SelectChannelEndPoint selectChannelEndPoint) {
        return new HttpConnection(this, selectChannelEndPoint, getServer());
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public Continuation newContinuation() {
        return new RetryContinuation();
    }

    public SelectChannelEndPoint newEndPoint(SocketChannel socketChannel, SelectorManager.SelectSet selectSet, SelectionKey selectionKey) throws IOException {
        return new ConnectorEndPoint(socketChannel, selectSet, selectionKey);
    }

    public void open() throws IOException {
        synchronized (this) {
            if (this._acceptChannel == null) {
                ServerSocketChannel open = ServerSocketChannel.open();
                this._acceptChannel = open;
                open.socket().setReuseAddress(getReuseAddress());
                this._acceptChannel.socket().bind(getHost() == null ? new InetSocketAddress(getPort()) : new InetSocketAddress(getHost(), getPort()), getAcceptQueueSize());
                this._acceptChannel.configureBlocking(false);
            }
        }
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public void persist(EndPoint endPoint) throws IOException {
        ((ConnectorEndPoint) endPoint).scheduleIdle();
        super.persist(endPoint);
    }

    public void setDelaySelectKeyUpdate(boolean z) {
        this.f114953J0.setDelaySelectKeyUpdate(z);
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public void setLowResourceMaxIdleTime(int i) {
        this.f114952I0 = i;
        super.setLowResourceMaxIdleTime(i);
    }

    public void setLowResourcesConnections(long j) {
        this.f114951H0 = j;
    }

    public void setLowResourcesMaxIdleTime(long j) {
        this.f114952I0 = j;
        super.setLowResourceMaxIdleTime((int) j);
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public void setMaxIdleTime(int i) {
        this.f114953J0.setMaxIdleTime(i);
        super.setMaxIdleTime(i);
    }
}
