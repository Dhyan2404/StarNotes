package com.sunia.HTREnginev2;

import java.util.Queue;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.auth.AuthOption;
import org.apache.http.auth.AuthProtocolState;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthState;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.ContextAwareAuthScheme;
import org.apache.http.auth.Credentials;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Asserts;

@Deprecated
/* loaded from: classes12.dex */
public abstract class ukl implements HttpRequestInterceptor {

    /* renamed from: e */
    public final Log f86582e = LogFactory.getLog(getClass());

    /* renamed from: com.sunia.HTREnginev2.ukl$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C14508a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f86583a;

        static {
            int[] iArr = new int[AuthProtocolState.values().length];
            f86583a = iArr;
            try {
                iArr[AuthProtocolState.FAILURE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f86583a[AuthProtocolState.SUCCESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f86583a[AuthProtocolState.CHALLENGED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: a */
    public final Header m57637a(AuthScheme authScheme, Credentials credentials, HttpRequest httpRequest, HttpContext httpContext) throws AuthenticationException {
        Asserts.notNull(authScheme, "Auth scheme");
        return authScheme instanceof ContextAwareAuthScheme ? ((ContextAwareAuthScheme) authScheme).authenticate(credentials, httpRequest, httpContext) : authScheme.authenticate(credentials, httpRequest);
    }

    /* renamed from: b */
    public final void m57638b(AuthScheme authScheme) {
        Asserts.notNull(authScheme, "Auth scheme");
    }

    /* renamed from: c */
    public void m57639c(AuthState authState, HttpRequest httpRequest, HttpContext httpContext) {
        AuthScheme authScheme = authState.getAuthScheme();
        Credentials credentials = authState.getCredentials();
        int i = C14508a.f86583a[authState.getState().ordinal()];
        if (i != 1) {
            if (i == 2) {
                m57638b(authScheme);
                if (authScheme.isConnectionBased()) {
                    return;
                }
            } else if (i == 3) {
                Queue<AuthOption> authOptions = authState.getAuthOptions();
                if (authOptions != null) {
                    while (!authOptions.isEmpty()) {
                        AuthOption remove = authOptions.remove();
                        AuthScheme authScheme2 = remove.getAuthScheme();
                        Credentials credentials2 = remove.getCredentials();
                        authState.update(authScheme2, credentials2);
                        if (this.f86582e.isDebugEnabled()) {
                            this.f86582e.debug("Generating response to an authentication challenge using " + authScheme2.getSchemeName() + " scheme");
                        }
                        try {
                            httpRequest.addHeader(m57637a(authScheme2, credentials2, httpRequest, httpContext));
                            return;
                        } catch (AuthenticationException e) {
                            if (this.f86582e.isWarnEnabled()) {
                                this.f86582e.warn(authScheme2 + " authentication error: " + e.getMessage());
                            }
                        }
                    }
                    return;
                }
                m57638b(authScheme);
            }
            if (authScheme != null) {
                try {
                    httpRequest.addHeader(m57637a(authScheme, credentials, httpRequest, httpContext));
                } catch (AuthenticationException e2) {
                    if (this.f86582e.isErrorEnabled()) {
                        this.f86582e.error(authScheme + " authentication error: " + e2.getMessage());
                    }
                }
            }
        }
    }
}
