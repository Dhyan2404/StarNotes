package org.apache.http.client.protocol;

import org.apache.http.auth.AuthSchemeRegistry;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.cookie.CookieSpecRegistry;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Deprecated
/* loaded from: classes12.dex */
public class ClientContextConfigurer implements ClientContext {

    /* renamed from: a */
    public final HttpContext f110187a;

    public ClientContextConfigurer(HttpContext httpContext) {
        Args.notNull(httpContext, "HTTP context");
        this.f110187a = httpContext;
    }

    public void setAuthSchemeRegistry(AuthSchemeRegistry authSchemeRegistry) {
        this.f110187a.setAttribute("http.authscheme-registry", authSchemeRegistry);
    }

    public void setCookieSpecRegistry(CookieSpecRegistry cookieSpecRegistry) {
        this.f110187a.setAttribute("http.cookiespec-registry", cookieSpecRegistry);
    }

    public void setCookieStore(CookieStore cookieStore) {
        this.f110187a.setAttribute("http.cookie-store", cookieStore);
    }

    public void setCredentialsProvider(CredentialsProvider credentialsProvider) {
        this.f110187a.setAttribute("http.auth.credentials-provider", credentialsProvider);
    }
}
