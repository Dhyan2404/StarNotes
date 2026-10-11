package org.apache.http.client.protocol;

import com.sunia.HTREnginev2.ukl;
import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.auth.AuthState;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
@Deprecated
/* loaded from: classes12.dex */
public class RequestTargetAuthentication extends ukl {
    @Override // org.apache.http.HttpRequestInterceptor
    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        Args.notNull(httpRequest, "HTTP request");
        Args.notNull(httpContext, "HTTP context");
        if (httpRequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT") || httpRequest.containsHeader("Authorization")) {
            return;
        }
        AuthState authState = (AuthState) httpContext.getAttribute("http.auth.target-scope");
        if (authState == null) {
            this.f86582e.debug("Target auth state not set in the context");
            return;
        }
        if (this.f86582e.isDebugEnabled()) {
            this.f86582e.debug("Target auth state: " + authState.getState());
        }
        m57639c(authState, httpRequest, httpContext);
    }
}
