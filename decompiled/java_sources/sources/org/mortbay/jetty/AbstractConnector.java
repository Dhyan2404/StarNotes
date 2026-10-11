package org.mortbay.jetty;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import org.mortbay.component.LifeCycle;
import org.mortbay.io.EndPoint;
import org.mortbay.io.Portable;
import org.mortbay.log.Log;
import org.mortbay.thread.ThreadPool;
import org.mortbay.util.ajax.Continuation;
import org.mortbay.util.ajax.WaitingContinuation;

/* loaded from: classes13.dex */
public abstract class AbstractConnector extends AbstractBuffers implements Connector {

    /* renamed from: A0 */
    public transient int f114538A0;

    /* renamed from: B0 */
    public transient long f114539B0;

    /* renamed from: C0 */
    public transient long f114540C0;

    /* renamed from: D0 */
    public transient long f114541D0;

    /* renamed from: E0 */
    public transient int f114542E0;

    /* renamed from: F0 */
    public transient int f114543F0;

    /* renamed from: J */
    public boolean f114544J;

    /* renamed from: O */
    public String f114545O;

    /* renamed from: n */
    public String f114549n;

    /* renamed from: o */
    public Server f114550o;

    /* renamed from: p */
    public ThreadPool f114551p;

    /* renamed from: q */
    public String f114552q;

    /* renamed from: t0 */
    public transient Thread[] f114557t0;

    /* renamed from: w0 */
    public transient int f114563w0;

    /* renamed from: x0 */
    public transient int f114565x0;

    /* renamed from: y0 */
    public transient int f114567y0;

    /* renamed from: z */
    public boolean f114568z;

    /* renamed from: z0 */
    public transient int f114569z0;

    /* renamed from: r */
    public int f114554r = 0;

    /* renamed from: s */
    public String f114555s = "https";

    /* renamed from: t */
    public int f114556t = 0;

    /* renamed from: u */
    public String f114558u = "https";

    /* renamed from: v */
    public int f114560v = 0;

    /* renamed from: w */
    public int f114562w = 0;

    /* renamed from: x */
    public int f114564x = 1;

    /* renamed from: y */
    public int f114566y = 0;

    /* renamed from: Q */
    public String f114546Q = com.google.common.net.HttpHeaders.X_FORWARDED_HOST;

    /* renamed from: Z */
    public String f114547Z = "X-Forwarded-Server";

    /* renamed from: k0 */
    public String f114548k0 = "X-Forwarded-For";

    /* renamed from: q0 */
    public boolean f114553q0 = true;
    protected int _maxIdleTime = 200000;
    protected int _lowResourceMaxIdleTime = -1;
    protected int _soLingerTime = -1;

    /* renamed from: u0 */
    public Object f114559u0 = new Object();

    /* renamed from: v0 */
    public transient long f114561v0 = -1;

    /* renamed from: org.mortbay.jetty.AbstractConnector$a */
    /* loaded from: classes13.dex */
    public class RunnableC20376a implements Runnable {

        /* renamed from: e */
        public int f114570e;

        public RunnableC20376a(int i) {
            this.f114570e = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            Thread currentThread = Thread.currentThread();
            synchronized (AbstractConnector.this) {
                if (AbstractConnector.this.f114557t0 == null) {
                    return;
                }
                AbstractConnector.this.f114557t0[this.f114570e] = currentThread;
                String name = AbstractConnector.this.f114557t0[this.f114570e].getName();
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(name);
                stringBuffer.append(" - Acceptor");
                stringBuffer.append(this.f114570e);
                stringBuffer.append(" ");
                stringBuffer.append(AbstractConnector.this);
                currentThread.setName(stringBuffer.toString());
                int priority = currentThread.getPriority();
                try {
                    currentThread.setPriority(priority - AbstractConnector.this.f114566y);
                    while (AbstractConnector.this.isRunning() && AbstractConnector.this.getConnection() != null) {
                        try {
                            try {
                                try {
                                    AbstractConnector.this.accept(this.f114570e);
                                } catch (EofException e) {
                                    Log.ignore(e);
                                }
                            } catch (IOException e2) {
                                Log.ignore(e2);
                            }
                        } catch (ThreadDeath e3) {
                            throw e3;
                        } catch (Throwable th) {
                            Log.warn(th);
                        }
                    }
                    currentThread.setPriority(priority);
                    currentThread.setName(name);
                    synchronized (AbstractConnector.this) {
                        if (AbstractConnector.this.f114557t0 != null) {
                            AbstractConnector.this.f114557t0[this.f114570e] = null;
                        }
                    }
                } catch (Throwable th2) {
                    currentThread.setPriority(priority);
                    currentThread.setName(name);
                    synchronized (AbstractConnector.this) {
                        if (AbstractConnector.this.f114557t0 != null) {
                            AbstractConnector.this.f114557t0[this.f114570e] = null;
                        }
                        throw th2;
                    }
                }
            }
        }
    }

    public abstract void accept(int i) throws IOException, InterruptedException;

    public void checkForwardedHeaders(EndPoint endPoint, Request request) throws IOException {
        HttpFields requestFields = request.getConnection().getRequestFields();
        String leftMostValue = getLeftMostValue(requestFields.getStringField(getForwardedHostHeader()));
        String leftMostValue2 = getLeftMostValue(requestFields.getStringField(getForwardedServerHeader()));
        String leftMostValue3 = getLeftMostValue(requestFields.getStringField(getForwardedForHeader()));
        String str = this.f114545O;
        InetAddress inetAddress = null;
        if (str != null) {
            requestFields.put(HttpHeaders.HOST_BUFFER, str);
            request.setServerName(null);
            request.setServerPort(-1);
            request.getServerName();
        } else if (leftMostValue != null) {
            requestFields.put(HttpHeaders.HOST_BUFFER, leftMostValue);
            request.setServerName(null);
            request.setServerPort(-1);
            request.getServerName();
        } else if (leftMostValue2 != null) {
            request.setServerName(leftMostValue2);
        }
        if (leftMostValue3 != null) {
            request.setRemoteAddr(leftMostValue3);
            if (this.f114568z) {
                try {
                    inetAddress = InetAddress.getByName(leftMostValue3);
                } catch (UnknownHostException e) {
                    Log.ignore(e);
                }
            }
            if (inetAddress != null) {
                leftMostValue3 = inetAddress.getHostName();
            }
            request.setRemoteHost(leftMostValue3);
        }
    }

    public void configure(Socket socket) throws IOException {
        try {
            socket.setTcpNoDelay(true);
            int i = this._maxIdleTime;
            if (i >= 0) {
                socket.setSoTimeout(i);
            }
            int i2 = this._soLingerTime;
            if (i2 >= 0) {
                socket.setSoLinger(true, i2 / 1000);
            } else {
                socket.setSoLinger(false, 0);
            }
        } catch (Exception e) {
            Log.ignore(e);
        }
    }

    public void connectionClosed(HttpConnection httpConnection) {
        if (this.f114561v0 >= 0) {
            long currentTimeMillis = System.currentTimeMillis() - httpConnection.getTimeStamp();
            int requests = httpConnection.getRequests();
            synchronized (this.f114559u0) {
                this.f114563w0 += requests;
                this.f114565x0++;
                int i = this.f114567y0 - 1;
                this.f114567y0 = i;
                this.f114541D0 += currentTimeMillis;
                if (i < 0) {
                    this.f114567y0 = 0;
                }
                int i2 = this.f114567y0;
                if (i2 < this.f114569z0) {
                    this.f114569z0 = i2;
                }
                long j = this.f114539B0;
                if (j == 0 || currentTimeMillis < j) {
                    this.f114539B0 = currentTimeMillis;
                }
                if (currentTimeMillis > this.f114540C0) {
                    this.f114540C0 = currentTimeMillis;
                }
                int i3 = this.f114542E0;
                if (i3 == 0 || requests < i3) {
                    this.f114542E0 = requests;
                }
                if (requests > this.f114543F0) {
                    this.f114543F0 = requests;
                }
            }
        }
        httpConnection.destroy();
    }

    public void connectionOpened(HttpConnection httpConnection) {
        if (this.f114561v0 == -1) {
            return;
        }
        synchronized (this.f114559u0) {
            int i = this.f114567y0 + 1;
            this.f114567y0 = i;
            if (i > this.f114538A0) {
                this.f114538A0 = i;
            }
        }
    }

    @Override // org.mortbay.jetty.Connector
    public void customize(EndPoint endPoint, Request request) throws IOException {
        if (isForwarded()) {
            checkForwardedHeaders(endPoint, request);
        }
    }

    @Override // org.mortbay.jetty.AbstractBuffers, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        if (this.f114550o == null) {
            throw new IllegalStateException("No server");
        }
        open();
        super.doStart();
        if (this.f114551p == null) {
            this.f114551p = this.f114550o.getThreadPool();
        }
        if (this.f114551p != this.f114550o.getThreadPool()) {
            ThreadPool threadPool = this.f114551p;
            if (threadPool instanceof LifeCycle) {
                ((LifeCycle) threadPool).start();
            }
        }
        synchronized (this) {
            this.f114557t0 = new Thread[getAcceptors()];
            int i = 0;
            while (true) {
                if (i >= this.f114557t0.length) {
                    break;
                }
                if (!this.f114551p.dispatch(new RunnableC20376a(i))) {
                    Log.warn("insufficient maxThreads configured for {}", this);
                    break;
                }
                i++;
            }
        }
        Log.info("Started {}", this);
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStop() throws Exception {
        Thread[] threadArr;
        Log.info("Stopped {}", this);
        try {
            close();
        } catch (IOException e) {
            Log.warn(e);
        }
        if (this.f114551p == this.f114550o.getThreadPool()) {
            this.f114551p = null;
        } else {
            ThreadPool threadPool = this.f114551p;
            if (threadPool instanceof LifeCycle) {
                ((LifeCycle) threadPool).stop();
            }
        }
        super.doStop();
        synchronized (this) {
            threadArr = this.f114557t0;
            this.f114557t0 = null;
        }
        if (threadArr != null) {
            for (Thread thread : threadArr) {
                if (thread != null) {
                    thread.interrupt();
                }
            }
        }
    }

    public int getAcceptQueueSize() {
        return this.f114562w;
    }

    public int getAcceptorPriorityOffset() {
        return this.f114566y;
    }

    public int getAcceptors() {
        return this.f114564x;
    }

    @Override // org.mortbay.jetty.Connector
    public int getConfidentialPort() {
        return this.f114560v;
    }

    @Override // org.mortbay.jetty.Connector
    public String getConfidentialScheme() {
        return this.f114558u;
    }

    @Override // org.mortbay.jetty.Connector
    public int getConnections() {
        return this.f114565x0;
    }

    @Override // org.mortbay.jetty.Connector
    public long getConnectionsDurationAve() {
        int i = this.f114565x0;
        if (i == 0) {
            return 0L;
        }
        return this.f114541D0 / i;
    }

    @Override // org.mortbay.jetty.Connector
    public long getConnectionsDurationMax() {
        return this.f114540C0;
    }

    @Override // org.mortbay.jetty.Connector
    public long getConnectionsDurationMin() {
        return this.f114539B0;
    }

    @Override // org.mortbay.jetty.Connector
    public long getConnectionsDurationTotal() {
        return this.f114541D0;
    }

    @Override // org.mortbay.jetty.Connector
    public int getConnectionsOpen() {
        return this.f114567y0;
    }

    @Override // org.mortbay.jetty.Connector
    public int getConnectionsOpenMax() {
        return this.f114538A0;
    }

    @Override // org.mortbay.jetty.Connector
    public int getConnectionsOpenMin() {
        return this.f114569z0;
    }

    @Override // org.mortbay.jetty.Connector
    public int getConnectionsRequestsAve() {
        int i = this.f114565x0;
        if (i == 0) {
            return 0;
        }
        return this.f114563w0 / i;
    }

    @Override // org.mortbay.jetty.Connector
    public int getConnectionsRequestsMax() {
        return this.f114543F0;
    }

    @Override // org.mortbay.jetty.Connector
    public int getConnectionsRequestsMin() {
        return this.f114542E0;
    }

    public String getForwardedForHeader() {
        return this.f114548k0;
    }

    public String getForwardedHostHeader() {
        return this.f114546Q;
    }

    public String getForwardedServerHeader() {
        return this.f114547Z;
    }

    @Override // org.mortbay.jetty.Connector
    public String getHost() {
        return this.f114552q;
    }

    public String getHostHeader() {
        return this.f114545O;
    }

    @Override // org.mortbay.jetty.Connector
    public int getIntegralPort() {
        return this.f114556t;
    }

    @Override // org.mortbay.jetty.Connector
    public String getIntegralScheme() {
        return this.f114555s;
    }

    public String getLeftMostValue(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(44);
        return indexOf == -1 ? str : str.substring(0, indexOf);
    }

    @Override // org.mortbay.jetty.Connector
    public int getLowResourceMaxIdleTime() {
        return this._lowResourceMaxIdleTime;
    }

    @Override // org.mortbay.jetty.Connector
    public int getMaxIdleTime() {
        return this._maxIdleTime;
    }

    @Override // org.mortbay.jetty.Connector
    public String getName() {
        if (this.f114549n == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(getHost() == null ? Portable.ALL_INTERFACES : getHost());
            stringBuffer.append(":");
            stringBuffer.append(getLocalPort() <= 0 ? getPort() : getLocalPort());
            this.f114549n = stringBuffer.toString();
        }
        return this.f114549n;
    }

    @Override // org.mortbay.jetty.Connector
    public int getPort() {
        return this.f114554r;
    }

    @Override // org.mortbay.jetty.Connector
    public int getRequests() {
        return this.f114563w0;
    }

    @Override // org.mortbay.jetty.Connector
    public boolean getResolveNames() {
        return this.f114568z;
    }

    public boolean getReuseAddress() {
        return this.f114553q0;
    }

    @Override // org.mortbay.jetty.Connector
    public Server getServer() {
        return this.f114550o;
    }

    public int getSoLingerTime() {
        return this._soLingerTime;
    }

    @Override // org.mortbay.jetty.Connector
    public boolean getStatsOn() {
        return this.f114561v0 != -1;
    }

    @Override // org.mortbay.jetty.Connector
    public long getStatsOnMs() {
        if (this.f114561v0 != -1) {
            return System.currentTimeMillis() - this.f114561v0;
        }
        return 0L;
    }

    public ThreadPool getThreadPool() {
        return this.f114551p;
    }

    @Override // org.mortbay.jetty.Connector
    public boolean isConfidential(Request request) {
        return false;
    }

    public boolean isForwarded() {
        return this.f114544J;
    }

    @Override // org.mortbay.jetty.Connector
    public boolean isIntegral(Request request) {
        return false;
    }

    public void join() throws InterruptedException {
        Thread[] threadArr = this.f114557t0;
        if (threadArr != null) {
            for (Thread thread : threadArr) {
                if (thread != null) {
                    thread.join();
                }
            }
        }
    }

    @Override // org.mortbay.jetty.Connector
    public Continuation newContinuation() {
        return new WaitingContinuation();
    }

    @Override // org.mortbay.jetty.Connector
    public void persist(EndPoint endPoint) throws IOException {
    }

    public void setAcceptQueueSize(int i) {
        this.f114562w = i;
    }

    public void setAcceptorPriorityOffset(int i) {
        this.f114566y = i;
    }

    public void setAcceptors(int i) {
        this.f114564x = i;
    }

    public void setConfidentialPort(int i) {
        this.f114560v = i;
    }

    public void setConfidentialScheme(String str) {
        this.f114558u = str;
    }

    public void setForwarded(boolean z) {
        if (z) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this);
            stringBuffer.append(" is forwarded");
            Log.debug(stringBuffer.toString());
        }
        this.f114544J = z;
    }

    public void setForwardedForHeader(String str) {
        this.f114548k0 = str;
    }

    public void setForwardedHostHeader(String str) {
        this.f114546Q = str;
    }

    public void setForwardedServerHeader(String str) {
        this.f114547Z = str;
    }

    @Override // org.mortbay.jetty.Connector
    public void setHost(String str) {
        this.f114552q = str;
    }

    public void setHostHeader(String str) {
        this.f114545O = str;
    }

    public void setIntegralPort(int i) {
        this.f114556t = i;
    }

    public void setIntegralScheme(String str) {
        this.f114555s = str;
    }

    @Override // org.mortbay.jetty.Connector
    public void setLowResourceMaxIdleTime(int i) {
        this._lowResourceMaxIdleTime = i;
    }

    @Override // org.mortbay.jetty.Connector
    public void setMaxIdleTime(int i) {
        this._maxIdleTime = i;
    }

    public void setName(String str) {
        this.f114549n = str;
    }

    @Override // org.mortbay.jetty.Connector
    public void setPort(int i) {
        this.f114554r = i;
    }

    public void setResolveNames(boolean z) {
        this.f114568z = z;
    }

    public void setReuseAddress(boolean z) {
        this.f114553q0 = z;
    }

    @Override // org.mortbay.jetty.Connector
    public void setServer(Server server) {
        this.f114550o = server;
    }

    public void setSoLingerTime(int i) {
        this._soLingerTime = i;
    }

    @Override // org.mortbay.jetty.Connector
    public void setStatsOn(boolean z) {
        if (!z || this.f114561v0 == -1) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Statistics on = ");
            stringBuffer.append(z);
            stringBuffer.append(" for ");
            stringBuffer.append(this);
            Log.debug(stringBuffer.toString());
            statsReset();
            this.f114561v0 = z ? System.currentTimeMillis() : -1L;
        }
    }

    public void setThreadPool(ThreadPool threadPool) {
        this.f114551p = threadPool;
    }

    @Override // org.mortbay.jetty.Connector
    public void statsReset() {
        this.f114561v0 = this.f114561v0 != -1 ? System.currentTimeMillis() : -1L;
        this.f114565x0 = 0;
        int i = this.f114567y0;
        this.f114569z0 = i;
        this.f114538A0 = i;
        this.f114567y0 = 0;
        this.f114539B0 = 0L;
        this.f114540C0 = 0L;
        this.f114541D0 = 0L;
        this.f114563w0 = 0;
        this.f114542E0 = 0;
        this.f114543F0 = 0;
    }

    public void stopAccept(int i) throws Exception {
    }

    @Override // org.mortbay.jetty.AbstractBuffers
    public String toString() {
        String name = getClass().getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf > 0) {
            name = name.substring(lastIndexOf + 1);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(name);
        stringBuffer.append("@");
        stringBuffer.append(getHost() == null ? Portable.ALL_INTERFACES : getHost());
        stringBuffer.append(":");
        stringBuffer.append(getLocalPort() <= 0 ? getPort() : getLocalPort());
        return stringBuffer.toString();
    }
}
