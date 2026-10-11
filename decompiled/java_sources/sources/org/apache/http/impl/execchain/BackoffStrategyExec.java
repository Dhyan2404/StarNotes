package org.apache.http.impl.execchain;

import java.io.IOException;
import java.lang.reflect.UndeclaredThrowableException;
import org.apache.http.HttpException;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.client.BackoffManager;
import org.apache.http.client.ConnectionBackoffStrategy;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE_CONDITIONAL)
/* loaded from: classes12.dex */
public class BackoffStrategyExec implements ClientExecChain {

    /* renamed from: a */
    public final ClientExecChain f110908a;

    /* renamed from: b */
    public final ConnectionBackoffStrategy f110909b;

    /* renamed from: c */
    public final BackoffManager f110910c;

    public BackoffStrategyExec(ClientExecChain clientExecChain, ConnectionBackoffStrategy connectionBackoffStrategy, BackoffManager backoffManager) {
        Args.notNull(clientExecChain, "HTTP client request executor");
        Args.notNull(connectionBackoffStrategy, "Connection backoff strategy");
        Args.notNull(backoffManager, "Backoff manager");
        this.f110908a = clientExecChain;
        this.f110909b = connectionBackoffStrategy;
        this.f110910c = backoffManager;
    }

    @Override // org.apache.http.impl.execchain.ClientExecChain
    public CloseableHttpResponse execute(HttpRoute httpRoute, HttpRequestWrapper httpRequestWrapper, HttpClientContext httpClientContext, HttpExecutionAware httpExecutionAware) throws IOException, HttpException {
        Args.notNull(httpRoute, "HTTP route");
        Args.notNull(httpRequestWrapper, "HTTP request");
        Args.notNull(httpClientContext, "HTTP context");
        try {
            CloseableHttpResponse execute = this.f110908a.execute(httpRoute, httpRequestWrapper, httpClientContext, httpExecutionAware);
            if (this.f110909b.shouldBackoff(execute)) {
                this.f110910c.backOff(httpRoute);
            } else {
                this.f110910c.probe(httpRoute);
            }
            return execute;
        } catch (Exception e) {
            if (this.f110909b.shouldBackoff(e)) {
                this.f110910c.backOff(httpRoute);
            }
            if (e instanceof RuntimeException) {
                throw ((RuntimeException) e);
            }
            if (e instanceof HttpException) {
                throw ((HttpException) e);
            }
            if (e instanceof IOException) {
                throw ((IOException) e);
            }
            throw new UndeclaredThrowableException(e);
        }
    }
}
