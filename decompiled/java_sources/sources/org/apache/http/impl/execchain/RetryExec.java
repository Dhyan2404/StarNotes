package org.apache.http.impl.execchain;

import com.sunia.HTREnginev2.wkl;
import java.io.IOException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.NonRepeatableRequestException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE_CONDITIONAL)
/* loaded from: classes12.dex */
public class RetryExec implements ClientExecChain {

    /* renamed from: a */
    public final Log f110935a = LogFactory.getLog(getClass());

    /* renamed from: b */
    public final ClientExecChain f110936b;

    /* renamed from: c */
    public final HttpRequestRetryHandler f110937c;

    public RetryExec(ClientExecChain clientExecChain, HttpRequestRetryHandler httpRequestRetryHandler) {
        Args.notNull(clientExecChain, "HTTP request executor");
        Args.notNull(httpRequestRetryHandler, "HTTP request retry handler");
        this.f110936b = clientExecChain;
        this.f110937c = httpRequestRetryHandler;
    }

    @Override // org.apache.http.impl.execchain.ClientExecChain
    public CloseableHttpResponse execute(HttpRoute httpRoute, HttpRequestWrapper httpRequestWrapper, HttpClientContext httpClientContext, HttpExecutionAware httpExecutionAware) throws IOException, HttpException {
        Args.notNull(httpRoute, "HTTP route");
        Args.notNull(httpRequestWrapper, "HTTP request");
        Args.notNull(httpClientContext, "HTTP context");
        Header[] allHeaders = httpRequestWrapper.getAllHeaders();
        int i = 1;
        while (true) {
            try {
                return this.f110936b.execute(httpRoute, httpRequestWrapper, httpClientContext, httpExecutionAware);
            } catch (IOException e) {
                if (httpExecutionAware != null && httpExecutionAware.isAborted()) {
                    this.f110935a.debug("Request has been aborted");
                    throw e;
                }
                if (!this.f110937c.retryRequest(e, i, httpClientContext)) {
                    if (!(e instanceof NoHttpResponseException)) {
                        throw e;
                    }
                    NoHttpResponseException noHttpResponseException = new NoHttpResponseException(httpRoute.getTargetHost().toHostString() + " failed to respond");
                    noHttpResponseException.setStackTrace(e.getStackTrace());
                    throw noHttpResponseException;
                }
                if (this.f110935a.isInfoEnabled()) {
                    this.f110935a.info("I/O exception (" + e.getClass().getName() + ") caught when processing request to " + httpRoute + ": " + e.getMessage());
                }
                if (this.f110935a.isDebugEnabled()) {
                    this.f110935a.debug(e.getMessage(), e);
                }
                if (!wkl.m58083e(httpRequestWrapper)) {
                    this.f110935a.debug("Cannot retry non-repeatable request");
                    throw new NonRepeatableRequestException("Cannot retry request with a non-repeatable request entity", e);
                }
                httpRequestWrapper.setHeaders(allHeaders);
                if (this.f110935a.isInfoEnabled()) {
                    this.f110935a.info("Retrying request to " + httpRoute);
                }
                i++;
            }
        }
    }
}
