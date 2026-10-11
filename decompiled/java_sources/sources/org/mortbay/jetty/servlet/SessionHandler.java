package org.mortbay.jetty.servlet;

import java.util.EventListener;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.Server;
import org.mortbay.jetty.SessionManager;
import org.mortbay.jetty.handler.HandlerWrapper;
import org.mortbay.log.Log;

/* loaded from: classes13.dex */
public class SessionHandler extends HandlerWrapper {

    /* renamed from: g */
    public SessionManager f115190g;

    public SessionHandler() {
        this(new HashSessionManager());
    }

    public void addEventListener(EventListener eventListener) {
        SessionManager sessionManager = this.f115190g;
        if (sessionManager != null) {
            sessionManager.addEventListener(eventListener);
        }
    }

    public void clearEventListeners() {
        SessionManager sessionManager = this.f115190g;
        if (sessionManager != null) {
            sessionManager.clearEventListeners();
        }
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        this.f115190g.start();
        super.doStart();
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    public void doStop() throws Exception {
        super.doStop();
        this.f115190g.stop();
    }

    public SessionManager getSessionManager() {
        return this.f115190g;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00c7  */
    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handle(java.lang.String r8, javax.servlet.http.HttpServletRequest r9, javax.servlet.http.HttpServletResponse r10, int r11) throws java.io.IOException, javax.servlet.ServletException {
        /*
            r7 = this;
            r7.setRequestedId(r9, r11)
            boolean r0 = r9 instanceof org.mortbay.jetty.Request
            if (r0 == 0) goto Lb
            r0 = r9
            org.mortbay.jetty.Request r0 = (org.mortbay.jetty.Request) r0
            goto L13
        Lb:
            org.mortbay.jetty.HttpConnection r0 = org.mortbay.jetty.HttpConnection.getCurrentConnection()
            org.mortbay.jetty.Request r0 = r0.getRequest()
        L13:
            r1 = 0
            r2 = 0
            org.mortbay.jetty.SessionManager r3 = r0.getSessionManager()     // Catch: java.lang.Throwable -> La7 org.mortbay.jetty.RetryRequest -> Laa
            javax.servlet.http.HttpSession r4 = r0.getSession(r2)     // Catch: java.lang.Throwable -> L9f org.mortbay.jetty.RetryRequest -> La3
            org.mortbay.jetty.SessionManager r5 = r7.f115190g     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            if (r3 == r5) goto L27
            r0.setSessionManager(r5)     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            r0.setSession(r1)     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
        L27:
            org.mortbay.jetty.SessionManager r5 = r7.f115190g     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            if (r5 == 0) goto L4e
            javax.servlet.http.HttpSession r1 = r0.getSession(r2)     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            if (r1 == 0) goto L43
            if (r1 == r4) goto L4e
            org.mortbay.jetty.SessionManager r5 = r7.f115190g     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            boolean r6 = r9.isSecure()     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            javax.servlet.http.Cookie r5 = r5.access(r1, r6)     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            if (r5 == 0) goto L4e
            r10.addCookie(r5)     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            goto L4e
        L43:
            org.mortbay.jetty.SessionManager r1 = r7.f115190g     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            javax.servlet.http.HttpSession r1 = r0.recoverNewSession(r1)     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            if (r1 == 0) goto L4e
            r0.setSession(r1)     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
        L4e:
            boolean r5 = org.mortbay.log.Log.isDebugEnabled()     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            if (r5 == 0) goto L7e
            java.lang.StringBuffer r5 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            r5.<init>()     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            java.lang.String r6 = "sessionManager="
            r5.append(r6)     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            org.mortbay.jetty.SessionManager r6 = r7.f115190g     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            r5.append(r6)     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            org.mortbay.log.Log.debug(r5)     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            java.lang.StringBuffer r5 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            r5.<init>()     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            java.lang.String r6 = "session="
            r5.append(r6)     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            r5.append(r1)     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            java.lang.String r1 = r5.toString()     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            org.mortbay.log.Log.debug(r1)     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
        L7e:
            org.mortbay.jetty.Handler r1 = r7.getHandler()     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            r1.handle(r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L9b org.mortbay.jetty.RetryRequest -> L9d
            javax.servlet.http.HttpSession r8 = r9.getSession(r2)
            org.mortbay.jetty.SessionManager r7 = r7.f115190g
            if (r3 == r7) goto L9a
            if (r8 == 0) goto L92
            r7.complete(r8)
        L92:
            if (r3 == 0) goto L9a
            r0.setSessionManager(r3)
            r0.setSession(r4)
        L9a:
            return
        L9b:
            r8 = move-exception
            goto La1
        L9d:
            r8 = move-exception
            goto La5
        L9f:
            r8 = move-exception
            r4 = r1
        La1:
            r1 = r3
            goto Lbf
        La3:
            r8 = move-exception
            r4 = r1
        La5:
            r1 = r3
            goto Lac
        La7:
            r8 = move-exception
            r4 = r1
            goto Lbf
        Laa:
            r8 = move-exception
            r4 = r1
        Lac:
            javax.servlet.http.HttpSession r10 = r0.getSession(r2)     // Catch: java.lang.Throwable -> Lbe
            if (r10 == 0) goto Lbd
            boolean r11 = r10.isNew()     // Catch: java.lang.Throwable -> Lbe
            if (r11 == 0) goto Lbd
            org.mortbay.jetty.SessionManager r11 = r7.f115190g     // Catch: java.lang.Throwable -> Lbe
            r0.saveNewSession(r11, r10)     // Catch: java.lang.Throwable -> Lbe
        Lbd:
            throw r8     // Catch: java.lang.Throwable -> Lbe
        Lbe:
            r8 = move-exception
        Lbf:
            javax.servlet.http.HttpSession r9 = r9.getSession(r2)
            org.mortbay.jetty.SessionManager r7 = r7.f115190g
            if (r1 == r7) goto Ld4
            if (r9 == 0) goto Lcc
            r7.complete(r9)
        Lcc:
            if (r1 == 0) goto Ld4
            r0.setSessionManager(r1)
            r0.setSession(r4)
        Ld4:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.servlet.SessionHandler.handle(java.lang.String, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, int):void");
    }

    public void setRequestedId(HttpServletRequest httpServletRequest, int i) {
        boolean z;
        int indexOf;
        char charAt;
        Cookie[] cookies;
        Request request = httpServletRequest instanceof Request ? (Request) httpServletRequest : HttpConnection.getCurrentConnection().getRequest();
        String requestedSessionId = httpServletRequest.getRequestedSessionId();
        if (i == 1 && requestedSessionId == null) {
            SessionManager sessionManager = getSessionManager();
            HttpSession httpSession = null;
            if (!this.f115190g.isUsingCookies() || (cookies = httpServletRequest.getCookies()) == null || cookies.length <= 0) {
                z = false;
            } else {
                z = false;
                for (int i2 = 0; i2 < cookies.length; i2++) {
                    if (sessionManager.getSessionCookie().equalsIgnoreCase(cookies[i2].getName())) {
                        if (requestedSessionId != null && sessionManager.getHttpSession(requestedSessionId) != null) {
                            break;
                        }
                        requestedSessionId = cookies[i2].getValue();
                        if (Log.isDebugEnabled()) {
                            StringBuffer stringBuffer = new StringBuffer();
                            stringBuffer.append("Got Session ID ");
                            stringBuffer.append(requestedSessionId);
                            stringBuffer.append(" from cookie");
                            Log.debug(stringBuffer.toString());
                        }
                        httpSession = sessionManager.getHttpSession(requestedSessionId);
                        if (httpSession != null) {
                            request.setSession(httpSession);
                        }
                        z = true;
                    }
                }
            }
            if (requestedSessionId == null || httpSession == null) {
                String requestURI = httpServletRequest.getRequestURI();
                String sessionURLPrefix = sessionManager.getSessionURLPrefix();
                if (sessionURLPrefix != null && (indexOf = requestURI.indexOf(sessionURLPrefix)) >= 0) {
                    int length = indexOf + sessionURLPrefix.length();
                    int i3 = length;
                    while (i3 < requestURI.length() && (charAt = requestURI.charAt(i3)) != ';' && charAt != '#' && charAt != '?' && charAt != '/') {
                        i3++;
                    }
                    requestedSessionId = requestURI.substring(length, i3);
                    if (Log.isDebugEnabled()) {
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append("Got Session ID ");
                        stringBuffer2.append(requestedSessionId);
                        stringBuffer2.append(" from URL");
                        Log.debug(stringBuffer2.toString());
                    }
                    z = false;
                }
            }
            request.setRequestedSessionId(requestedSessionId);
            request.setRequestedSessionIdFromCookie(requestedSessionId != null && z);
        }
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.jetty.Handler
    public void setServer(Server server) {
        Server server2 = getServer();
        if (server2 != null && server2 != server) {
            server2.getContainer().update((Object) this, (Object) this.f115190g, (Object) null, "sessionManager", true);
        }
        super.setServer(server);
        if (server == null || server == server2) {
            return;
        }
        server.getContainer().update((Object) this, (Object) null, (Object) this.f115190g, "sessionManager", true);
    }

    public void setSessionManager(SessionManager sessionManager) {
        if (isStarted()) {
            throw new IllegalStateException();
        }
        SessionManager sessionManager2 = this.f115190g;
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object) sessionManager2, (Object) sessionManager, "sessionManager", true);
        }
        if (sessionManager != null) {
            sessionManager.setSessionHandler(this);
        }
        this.f115190g = sessionManager;
        if (sessionManager2 != null) {
            sessionManager2.setSessionHandler(null);
        }
    }

    public SessionHandler(SessionManager sessionManager) {
        setSessionManager(sessionManager);
    }
}
