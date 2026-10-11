package com.sunia.HTREnginev2;

import java.io.IOException;
import org.apache.http.ExceptionLogger;
import org.apache.http.HttpServerConnection;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpCoreContext;
import org.apache.http.protocol.HttpService;

/* loaded from: classes12.dex */
public class qao implements Runnable {

    /* renamed from: e */
    public final HttpService f81824e;

    /* renamed from: f */
    public final HttpServerConnection f81825f;

    /* renamed from: g */
    public final ExceptionLogger f81826g;

    public qao(HttpService httpService, HttpServerConnection httpServerConnection, ExceptionLogger exceptionLogger) {
        this.f81824e = httpService;
        this.f81825f = httpServerConnection;
        this.f81826g = exceptionLogger;
    }

    /* renamed from: a */
    public HttpServerConnection m56665a() {
        return this.f81825f;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                try {
                    BasicHttpContext basicHttpContext = new BasicHttpContext();
                    HttpCoreContext adapt = HttpCoreContext.adapt(basicHttpContext);
                    while (!Thread.interrupted() && this.f81825f.isOpen()) {
                        this.f81824e.handleRequest(this.f81825f, adapt);
                        basicHttpContext.clear();
                    }
                    this.f81825f.close();
                    this.f81825f.shutdown();
                } catch (Exception e) {
                    this.f81826g.log(e);
                    this.f81825f.shutdown();
                }
            } catch (Throwable th) {
                try {
                    this.f81825f.shutdown();
                } catch (IOException e2) {
                    this.f81826g.log(e2);
                }
                throw th;
            }
        } catch (IOException e3) {
            this.f81826g.log(e3);
        }
    }
}
