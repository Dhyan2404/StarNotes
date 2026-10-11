package org.apache.http.protocol;

import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes12.dex */
public class ResponseServer implements HttpResponseInterceptor {

    /* renamed from: e */
    public final String f111145e;

    public ResponseServer(String str) {
        this.f111145e = str;
    }

    @Override // org.apache.http.HttpResponseInterceptor
    public void process(HttpResponse httpResponse, HttpContext httpContext) throws HttpException, IOException {
        String str;
        Args.notNull(httpResponse, "HTTP response");
        if (httpResponse.containsHeader("Server") || (str = this.f111145e) == null) {
            return;
        }
        httpResponse.addHeader("Server", str);
    }

    public ResponseServer() {
        this(null);
    }
}
