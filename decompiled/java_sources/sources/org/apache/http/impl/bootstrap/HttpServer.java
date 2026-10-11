package org.apache.http.impl.bootstrap;

import com.sunia.HTREnginev2.cyi;
import com.sunia.HTREnginev2.dll;
import com.sunia.HTREnginev2.qao;
import com.sunia.HTREnginev2.rao;
import com.sunia.HTREnginev2.zgn;
import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.util.Iterator;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import javax.net.ServerSocketFactory;
import javax.net.ssl.SSLServerSocket;
import org.apache.http.ExceptionLogger;
import org.apache.http.HttpConnectionFactory;
import org.apache.http.config.SocketConfig;
import org.apache.http.impl.DefaultBHttpServerConnection;
import org.apache.http.protocol.HttpService;

/* loaded from: classes12.dex */
public class HttpServer {

    /* renamed from: a */
    public final int f110518a;

    /* renamed from: b */
    public final InetAddress f110519b;

    /* renamed from: c */
    public final SocketConfig f110520c;

    /* renamed from: d */
    public final ServerSocketFactory f110521d;

    /* renamed from: e */
    public final HttpService f110522e;

    /* renamed from: f */
    public final HttpConnectionFactory<? extends DefaultBHttpServerConnection> f110523f;

    /* renamed from: g */
    public final SSLServerSetupHandler f110524g;

    /* renamed from: h */
    public final ExceptionLogger f110525h;

    /* renamed from: i */
    public final ThreadPoolExecutor f110526i;

    /* renamed from: j */
    public final ThreadGroup f110527j;

    /* renamed from: k */
    public final rao f110528k;

    /* renamed from: l */
    public final AtomicReference<Status> f110529l;

    /* renamed from: m */
    public volatile ServerSocket f110530m;

    /* renamed from: n */
    public volatile dll f110531n;

    /* loaded from: classes12.dex */
    public enum Status {
        READY,
        ACTIVE,
        STOPPING
    }

    public HttpServer(int i, InetAddress inetAddress, SocketConfig socketConfig, ServerSocketFactory serverSocketFactory, HttpService httpService, HttpConnectionFactory<? extends DefaultBHttpServerConnection> httpConnectionFactory, SSLServerSetupHandler sSLServerSetupHandler, ExceptionLogger exceptionLogger) {
        this.f110518a = i;
        this.f110519b = inetAddress;
        this.f110520c = socketConfig;
        this.f110521d = serverSocketFactory;
        this.f110522e = httpService;
        this.f110523f = httpConnectionFactory;
        this.f110524g = sSLServerSetupHandler;
        this.f110525h = exceptionLogger;
        this.f110526i = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new SynchronousQueue(), new zgn("HTTP-listener-" + i));
        ThreadGroup threadGroup = new ThreadGroup("HTTP-workers");
        this.f110527j = threadGroup;
        this.f110528k = new rao(0, Integer.MAX_VALUE, 1L, TimeUnit.SECONDS, new SynchronousQueue(), new zgn("HTTP-worker", threadGroup));
        this.f110529l = new AtomicReference<>(Status.READY);
    }

    public void awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        this.f110528k.awaitTermination(j, timeUnit);
    }

    public InetAddress getInetAddress() {
        ServerSocket serverSocket = this.f110530m;
        if (serverSocket != null) {
            return serverSocket.getInetAddress();
        }
        return null;
    }

    public int getLocalPort() {
        ServerSocket serverSocket = this.f110530m;
        if (serverSocket != null) {
            return serverSocket.getLocalPort();
        }
        return -1;
    }

    public void shutdown(long j, TimeUnit timeUnit) {
        stop();
        if (j > 0) {
            try {
                awaitTermination(j, timeUnit);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        Iterator<qao> it2 = this.f110528k.m56938a().iterator();
        while (it2.hasNext()) {
            try {
                it2.next().m56665a().shutdown();
            } catch (IOException e) {
                this.f110525h.log(e);
            }
        }
    }

    public void start() throws IOException {
        if (cyi.m53538a(this.f110529l, Status.READY, Status.ACTIVE)) {
            this.f110530m = this.f110521d.createServerSocket(this.f110518a, this.f110520c.getBacklogSize(), this.f110519b);
            this.f110530m.setReuseAddress(this.f110520c.isSoReuseAddress());
            if (this.f110520c.getRcvBufSize() > 0) {
                this.f110530m.setReceiveBufferSize(this.f110520c.getRcvBufSize());
            }
            if (this.f110524g != null && (this.f110530m instanceof SSLServerSocket)) {
                this.f110524g.initialize((SSLServerSocket) this.f110530m);
            }
            this.f110531n = new dll(this.f110520c, this.f110530m, this.f110522e, this.f110523f, this.f110525h, this.f110528k);
            this.f110526i.execute(this.f110531n);
        }
    }

    public void stop() {
        if (cyi.m53538a(this.f110529l, Status.ACTIVE, Status.STOPPING)) {
            this.f110526i.shutdown();
            this.f110528k.shutdown();
            dll dllVar = this.f110531n;
            if (dllVar != null) {
                try {
                    dllVar.m53676b();
                } catch (IOException e) {
                    this.f110525h.log(e);
                }
            }
            this.f110527j.interrupt();
        }
    }
}
