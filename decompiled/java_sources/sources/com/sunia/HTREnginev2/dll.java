package com.sunia.HTREnginev2;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.ExceptionLogger;
import org.apache.http.HttpConnectionFactory;
import org.apache.http.HttpServerConnection;
import org.apache.http.config.SocketConfig;
import org.apache.http.protocol.HttpService;

/* loaded from: classes12.dex */
public class dll implements Runnable {

    /* renamed from: e */
    public final SocketConfig f67987e;

    /* renamed from: f */
    public final ServerSocket f67988f;

    /* renamed from: g */
    public final HttpService f67989g;

    /* renamed from: h */
    public final HttpConnectionFactory<? extends HttpServerConnection> f67990h;

    /* renamed from: i */
    public final ExceptionLogger f67991i;

    /* renamed from: j */
    public final ExecutorService f67992j;

    /* renamed from: k */
    public final AtomicBoolean f67993k = new AtomicBoolean(false);

    public dll(SocketConfig socketConfig, ServerSocket serverSocket, HttpService httpService, HttpConnectionFactory<? extends HttpServerConnection> httpConnectionFactory, ExceptionLogger exceptionLogger, ExecutorService executorService) {
        this.f67987e = socketConfig;
        this.f67988f = serverSocket;
        this.f67990h = httpConnectionFactory;
        this.f67989g = httpService;
        this.f67991i = exceptionLogger;
        this.f67992j = executorService;
    }

    /* renamed from: a */
    public boolean m53675a() {
        return this.f67993k.get();
    }

    /* renamed from: b */
    public void m53676b() throws IOException {
        if (this.f67993k.compareAndSet(false, true)) {
            this.f67988f.close();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (!m53675a() && !Thread.interrupted()) {
            try {
                Socket accept = this.f67988f.accept();
                accept.setSoTimeout(this.f67987e.getSoTimeout());
                accept.setKeepAlive(this.f67987e.isSoKeepAlive());
                accept.setTcpNoDelay(this.f67987e.isTcpNoDelay());
                if (this.f67987e.getRcvBufSize() > 0) {
                    accept.setReceiveBufferSize(this.f67987e.getRcvBufSize());
                }
                if (this.f67987e.getSndBufSize() > 0) {
                    accept.setSendBufferSize(this.f67987e.getSndBufSize());
                }
                if (this.f67987e.getSoLinger() >= 0) {
                    accept.setSoLinger(true, this.f67987e.getSoLinger());
                }
                this.f67992j.execute(new qao(this.f67989g, this.f67990h.createConnection(accept), this.f67991i));
            } catch (Exception e) {
                this.f67991i.log(e);
                return;
            }
        }
    }
}
