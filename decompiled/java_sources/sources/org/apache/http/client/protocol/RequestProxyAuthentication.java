package org.apache.http.client.protocol;

import com.sunia.HTREnginev2.ukl;
import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.auth.AuthState;
import org.apache.http.conn.HttpRoutedConnection;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
@Deprecated
/* loaded from: classes12.dex */
public class RequestProxyAuthentication extends ukl {
    @Override // org.apache.http.HttpRequestInterceptor
    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        Args.notNull(httpRequest, "HTTP request");
        Args.notNull(httpContext, "HTTP context");
        if (httpRequest.containsHeader("Proxy-Authorization")) {
            return;
        }
        HttpRoutedConnection httpRoutedConnection = (HttpRoutedConnection) httpContext.getAttribute("http.connection");
        if (httpRoutedConnection == null) {
            this.f86582e.debug("HTTP connection not set in the context");
            return;
        }
        if (httpRoutedConnection.getRoute().isTunnelled()) {
            return;
        }
        AuthState authState = (AuthState) httpContext.getAttribute("http.auth.proxy-scope");
        if (authState == null) {
            this.f86582e.debug("Proxy auth state not set in the context");
            return;
        }
        if (this.f86582e.isDebugEnabled()) {
            this.f86582e.debug("Proxy auth state: " + authState.getState());
        }
        m57639c(authState, httpRequest, httpContext);
    }
}
