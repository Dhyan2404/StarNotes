package org.apache.http.client.protocol;

import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.client.params.ClientPNames;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE_CONDITIONAL)
/* loaded from: classes12.dex */
public class RequestDefaultHeaders implements HttpRequestInterceptor {

    /* renamed from: e */
    public final Collection<? extends Header> f110193e;

    public RequestDefaultHeaders(Collection<? extends Header> collection) {
        this.f110193e = collection;
    }

    @Override // org.apache.http.HttpRequestInterceptor
    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        Args.notNull(httpRequest, "HTTP request");
        if (httpRequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT")) {
            return;
        }
        Collection<? extends Header> collection = (Collection) httpRequest.getParams().getParameter(ClientPNames.DEFAULT_HEADERS);
        if (collection == null) {
            collection = this.f110193e;
        }
        if (collection != null) {
            Iterator<? extends Header> it2 = collection.iterator();
            while (it2.hasNext()) {
                httpRequest.addHeader(it2.next());
            }
        }
    }

    public RequestDefaultHeaders() {
        this(null);
    }
}
