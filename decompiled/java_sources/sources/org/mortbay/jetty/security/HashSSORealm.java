package org.mortbay.jetty.security;

import java.security.Principal;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Random;
import javax.servlet.http.Cookie;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.Response;
import org.mortbay.jetty.webapp.WebAppContext;
import org.mortbay.log.Log;

/* loaded from: classes13.dex */
public class HashSSORealm implements SSORealm {
    public static final String SSO_COOKIE_NAME = "SSO_ID";

    /* renamed from: e */
    public HashMap f115013e = new HashMap();

    /* renamed from: f */
    public HashMap f115014f = new HashMap();

    /* renamed from: g */
    public HashMap f115015g = new HashMap();

    /* renamed from: h */
    public transient Random f115016h = new SecureRandom();

    @Override // org.mortbay.jetty.security.SSORealm
    public void clearSingleSignOn(String str) {
        synchronized (this.f115013e) {
            this.f115015g.remove(this.f115013e.remove(this.f115014f.remove(str)));
        }
    }

    @Override // org.mortbay.jetty.security.SSORealm
    public Credential getSingleSignOn(Request request, Response response) {
        String str;
        Principal principal;
        Credential credential;
        Cookie[] cookies = request.getCookies();
        for (int i = 0; cookies != null && i < cookies.length; i++) {
            if (cookies[i].getName().equals(SSO_COOKIE_NAME)) {
                str = cookies[i].getValue();
                break;
            }
        }
        str = null;
        if (Log.isDebugEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("get ssoID=");
            stringBuffer.append(str);
            Log.debug(stringBuffer.toString());
        }
        synchronized (this.f115013e) {
            principal = (Principal) this.f115013e.get(str);
            credential = (Credential) this.f115015g.get(principal);
        }
        if (Log.isDebugEnabled()) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("SSO principal=");
            stringBuffer2.append(principal);
            Log.debug(stringBuffer2.toString());
        }
        if (principal != null && credential != null) {
            Principal authenticate = ((WebAppContext) request.getContext().getContextHandler()).getSecurityHandler().getUserRealm().authenticate(principal.getName(), credential, request);
            if (authenticate != null) {
                request.setUserPrincipal(authenticate);
                return credential;
            }
            synchronized (this.f115013e) {
                this.f115013e.remove(str);
                this.f115015g.remove(principal);
                this.f115014f.remove(principal.getName());
            }
        }
        return null;
    }

    @Override // org.mortbay.jetty.security.SSORealm
    public void setSingleSignOn(Request request, Response response, Principal principal, Credential credential) {
        String l;
        synchronized (this.f115013e) {
            do {
                l = Long.toString(Math.abs(this.f115016h.nextLong()), ((int) (System.currentTimeMillis() % 7)) + 30);
            } while (this.f115013e.containsKey(l));
            if (Log.isDebugEnabled()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("set ssoID=");
                stringBuffer.append(l);
                Log.debug(stringBuffer.toString());
            }
            this.f115013e.put(l, principal);
            this.f115015g.put(principal, credential);
            this.f115014f.put(principal.getName(), l);
        }
        Cookie cookie = new Cookie(SSO_COOKIE_NAME, l);
        cookie.setPath("/");
        response.addCookie(cookie);
    }
}
