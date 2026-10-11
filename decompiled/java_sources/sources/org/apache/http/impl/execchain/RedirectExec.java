package org.apache.http.impl.execchain;

import com.sunia.HTREnginev2.wkl;
import java.io.IOException;
import java.net.URI;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.auth.AuthState;
import org.apache.http.client.RedirectException;
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.util.Args;
import org.apache.http.util.EntityUtils;

@Contract(threading = ThreadingBehavior.IMMUTABLE_CONDITIONAL)
/* loaded from: classes12.dex */
public class RedirectExec implements ClientExecChain {

    /* renamed from: a */
    public final Log f110931a = LogFactory.getLog(getClass());

    /* renamed from: b */
    public final ClientExecChain f110932b;

    /* renamed from: c */
    public final RedirectStrategy f110933c;

    /* renamed from: d */
    public final HttpRoutePlanner f110934d;

    public RedirectExec(ClientExecChain clientExecChain, HttpRoutePlanner httpRoutePlanner, RedirectStrategy redirectStrategy) {
        Args.notNull(clientExecChain, "HTTP client request executor");
        Args.notNull(httpRoutePlanner, "HTTP route planner");
        Args.notNull(redirectStrategy, "HTTP redirect strategy");
        this.f110932b = clientExecChain;
        this.f110934d = httpRoutePlanner;
        this.f110933c = redirectStrategy;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.http.impl.execchain.ClientExecChain
    public CloseableHttpResponse execute(HttpRoute httpRoute, HttpRequestWrapper httpRequestWrapper, HttpClientContext httpClientContext, HttpExecutionAware httpExecutionAware) throws IOException, HttpException {
        CloseableHttpResponse execute;
        Args.notNull(httpRoute, "HTTP route");
        Args.notNull(httpRequestWrapper, "HTTP request");
        Args.notNull(httpClientContext, "HTTP context");
        List<URI> redirectLocations = httpClientContext.getRedirectLocations();
        if (redirectLocations != null) {
            redirectLocations.clear();
        }
        RequestConfig requestConfig = httpClientContext.getRequestConfig();
        int maxRedirects = requestConfig.getMaxRedirects() > 0 ? requestConfig.getMaxRedirects() : 50;
        int i = 0;
        HttpRequestWrapper httpRequestWrapper2 = httpRequestWrapper;
        while (true) {
            execute = this.f110932b.execute(httpRoute, httpRequestWrapper2, httpClientContext, httpExecutionAware);
            try {
                if (!requestConfig.isRedirectsEnabled() || !this.f110933c.isRedirected(httpRequestWrapper2.getOriginal(), execute, httpClientContext)) {
                    break;
                }
                if (!wkl.m58083e(httpRequestWrapper2)) {
                    if (this.f110931a.isDebugEnabled()) {
                        this.f110931a.debug("Cannot redirect non-repeatable request");
                    }
                    return execute;
                }
                if (i >= maxRedirects) {
                    throw new RedirectException("Maximum redirects (" + maxRedirects + ") exceeded");
                }
                i++;
                HttpUriRequest redirect = this.f110933c.getRedirect(httpRequestWrapper2.getOriginal(), execute, httpClientContext);
                if (!redirect.headerIterator().hasNext()) {
                    redirect.setHeaders(httpRequestWrapper.getOriginal().getAllHeaders());
                }
                HttpRequestWrapper wrap = HttpRequestWrapper.wrap(redirect);
                if (wrap instanceof HttpEntityEnclosingRequest) {
                    wkl.m58081a((HttpEntityEnclosingRequest) wrap);
                }
                URI uri = wrap.getURI();
                HttpHost extractHost = URIUtils.extractHost(uri);
                if (extractHost == null) {
                    throw new ProtocolException("Redirect URI does not specify a valid host name: " + uri);
                }
                if (!httpRoute.getTargetHost().equals(extractHost)) {
                    AuthState targetAuthState = httpClientContext.getTargetAuthState();
                    if (targetAuthState != null) {
                        this.f110931a.debug("Resetting target auth state");
                        targetAuthState.reset();
                    }
                    AuthState proxyAuthState = httpClientContext.getProxyAuthState();
                    if (proxyAuthState != null && proxyAuthState.isConnectionBased()) {
                        this.f110931a.debug("Resetting proxy auth state");
                        proxyAuthState.reset();
                    }
                }
                httpRoute = this.f110934d.determineRoute(extractHost, wrap, httpClientContext);
                if (this.f110931a.isDebugEnabled()) {
                    this.f110931a.debug("Redirecting to '" + uri + "' via " + httpRoute);
                }
                EntityUtils.consume(execute.getEntity());
                execute.close();
                httpRequestWrapper2 = wrap;
            } catch (IOException e) {
                execute.close();
                throw e;
            } catch (RuntimeException e2) {
                execute.close();
                throw e2;
            } catch (HttpException e3) {
                try {
                    try {
                        EntityUtils.consume(execute.getEntity());
                    } catch (IOException e4) {
                        this.f110931a.debug("I/O error while releasing connection", e4);
                    }
                    execute.close();
                    throw e3;
                } catch (Throwable th) {
                    execute.close();
                    throw th;
                }
            }
        }
        return execute;
    }
}
