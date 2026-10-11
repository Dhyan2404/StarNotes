package com.sunia.HTREnginev2;

import java.net.URI;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
@Deprecated
/* loaded from: classes12.dex */
public class c0f implements RedirectStrategy {

    /* renamed from: a */
    public final RedirectHandler f66325a;

    public c0f(RedirectHandler redirectHandler) {
        this.f66325a = redirectHandler;
    }

    /* renamed from: a */
    public RedirectHandler m53379a() {
        return this.f66325a;
    }

    @Override // org.apache.http.client.RedirectStrategy
    public HttpUriRequest getRedirect(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) throws ProtocolException {
        URI locationURI = this.f66325a.getLocationURI(httpResponse, httpContext);
        return httpRequest.getRequestLine().getMethod().equalsIgnoreCase("HEAD") ? new HttpHead(locationURI) : new HttpGet(locationURI);
    }

    @Override // org.apache.http.client.RedirectStrategy
    public boolean isRedirected(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) throws ProtocolException {
        return this.f66325a.isRedirectRequested(httpResponse, httpContext);
    }
}
