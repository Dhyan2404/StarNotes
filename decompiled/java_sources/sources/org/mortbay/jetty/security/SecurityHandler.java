package org.mortbay.jetty.security;

import java.io.IOException;
import java.security.Principal;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.Response;
import org.mortbay.jetty.handler.HandlerWrapper;
import org.mortbay.jetty.servlet.PathMap;
import org.mortbay.log.Log;
import org.mortbay.util.LazyList;

/* loaded from: classes13.dex */
public class SecurityHandler extends HandlerWrapper {

    /* renamed from: h */
    public UserRealm f115052h;

    /* renamed from: i */
    public ConstraintMapping[] f115053i;

    /* renamed from: k */
    public Authenticator f115055k;
    public static Principal __NO_USER = new C20405d();
    public static Principal __NOBODY = new C20406e();

    /* renamed from: g */
    public String f115051g = "BASIC";

    /* renamed from: j */
    public PathMap f115054j = new PathMap();

    /* renamed from: l */
    public NotChecked f115056l = new NotChecked();

    /* renamed from: m */
    public boolean f115057m = false;

    /* loaded from: classes13.dex */
    public class NotChecked implements Principal {
        public NotChecked() {
        }

        @Override // java.security.Principal
        public String getName() {
            return null;
        }

        public SecurityHandler getSecurityHandler() {
            return SecurityHandler.this;
        }

        @Override // java.security.Principal
        public String toString() {
            return "NOT CHECKED";
        }
    }

    public boolean checkSecurityConstraints(String str, Request request, Response response) throws IOException {
        Object lazyMatches = this.f115054j.getLazyMatches(str);
        if (lazyMatches == null) {
            request.setUserPrincipal(this.f115056l);
            return true;
        }
        String str2 = null;
        Object obj = null;
        loop0: for (int i = 0; i < LazyList.size(lazyMatches); i++) {
            Map.Entry entry = (Map.Entry) LazyList.get(lazyMatches, i);
            Object value = entry.getValue();
            String str3 = (String) entry.getKey();
            for (int i2 = 0; i2 < LazyList.size(value); i2++) {
                ConstraintMapping constraintMapping = (ConstraintMapping) LazyList.get(value, i2);
                if (constraintMapping.getMethod() == null || constraintMapping.getMethod().equalsIgnoreCase(request.getMethod())) {
                    if (str2 != null && !str2.equals(str3)) {
                        break loop0;
                    }
                    obj = LazyList.add(obj, constraintMapping.getConstraint());
                    str2 = str3;
                }
            }
        }
        return m71593f(obj, this.f115055k, this.f115052h, str, request, response);
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        if (this.f115055k == null) {
            if ("BASIC".equalsIgnoreCase(this.f115051g)) {
                this.f115055k = new BasicAuthenticator();
            } else if ("DIGEST".equalsIgnoreCase(this.f115051g)) {
                this.f115055k = new DigestAuthenticator();
            } else if ("CLIENT_CERT".equalsIgnoreCase(this.f115051g)) {
                this.f115055k = new ClientCertAuthenticator();
            } else if ("FORM".equalsIgnoreCase(this.f115051g)) {
                this.f115055k = new FormAuthenticator();
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Unknown Authentication method:");
                stringBuffer.append(this.f115051g);
                Log.warn(stringBuffer.toString());
            }
        }
        super.doStart();
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x007f, code lost:
    
        r6 = org.mortbay.jetty.HttpConnection.getCurrentConnection().getConnector();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008d, code lost:
    
        if (r7 == 1) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0090, code lost:
    
        if (r7 == 2) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0092, code lost:
    
        r22.sendError(403, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0095, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x009b, code lost:
    
        if (r6.isConfidential(r21) == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a3, code lost:
    
        if (r6.getConfidentialPort() <= 0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a5, code lost:
    
        r0 = new java.lang.StringBuffer();
        r0.append(r6.getConfidentialScheme());
        r0.append("://");
        r0.append(r21.getServerName());
        r0.append(":");
        r0.append(r6.getConfidentialPort());
        r0.append(r21.getRequestURI());
        r0 = r0.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00d4, code lost:
    
        if (r21.getQueryString() == null) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00d6, code lost:
    
        r1 = new java.lang.StringBuffer();
        r1.append(r0);
        r1.append("?");
        r1.append(r21.getQueryString());
        r0 = r1.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00ec, code lost:
    
        r22.setContentLength(0);
        r22.sendRedirect(r22.encodeRedirectURL(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00f8, code lost:
    
        r22.sendError(403, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00fc, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0101, code lost:
    
        if (r6.isIntegral(r21) == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0108, code lost:
    
        if (r6.getConfidentialPort() <= 0) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x010a, code lost:
    
        r0 = new java.lang.StringBuffer();
        r0.append(r6.getIntegralScheme());
        r0.append("://");
        r0.append(r21.getServerName());
        r0.append(":");
        r0.append(r6.getIntegralPort());
        r0.append(r21.getRequestURI());
        r0 = r0.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0139, code lost:
    
        if (r21.getQueryString() == null) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x013b, code lost:
    
        r1 = new java.lang.StringBuffer();
        r1.append(r0);
        r1.append("?");
        r1.append(r21.getQueryString());
        r0 = r1.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0151, code lost:
    
        r22.setContentLength(0);
        r22.sendRedirect(r22.encodeRedirectURL(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x015d, code lost:
    
        r22.sendError(403, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0161, code lost:
    
        return false;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m71593f(java.lang.Object r17, org.mortbay.jetty.security.Authenticator r18, org.mortbay.jetty.security.UserRealm r19, java.lang.String r20, org.mortbay.jetty.Request r21, org.mortbay.jetty.Response r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 553
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.security.SecurityHandler.m71593f(java.lang.Object, org.mortbay.jetty.security.Authenticator, org.mortbay.jetty.security.UserRealm, java.lang.String, org.mortbay.jetty.Request, org.mortbay.jetty.Response):boolean");
    }

    public String getAuthMethod() {
        return this.f115051g;
    }

    public Authenticator getAuthenticator() {
        return this.f115055k;
    }

    public ConstraintMapping[] getConstraintMappings() {
        return this.f115053i;
    }

    public UserRealm getUserRealm() {
        return this.f115052h;
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.Handler
    public void handle(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws IOException, ServletException {
        Request request = httpServletRequest instanceof Request ? (Request) httpServletRequest : HttpConnection.getCurrentConnection().getRequest();
        Response response = httpServletResponse instanceof Response ? (Response) httpServletResponse : HttpConnection.getCurrentConnection().getResponse();
        UserRealm userRealm = request.getUserRealm();
        try {
            request.setUserRealm(getUserRealm());
            if (i == 1 && !checkSecurityConstraints(str, request, response)) {
                request.setHandled(true);
                return;
            }
            if (i == 2 && this.f115057m && httpServletRequest.getAttribute("org.mortbay.jetty.welcome") != null) {
                httpServletRequest.removeAttribute("org.mortbay.jetty.welcome");
                if (!checkSecurityConstraints(str, request, response)) {
                    request.setHandled(true);
                    UserRealm userRealm2 = this.f115052h;
                    if (userRealm2 != null && i == 1) {
                        userRealm2.disassociate(request.getUserPrincipal());
                    }
                    request.setUserRealm(userRealm);
                    return;
                }
            }
            if ((this.f115055k instanceof FormAuthenticator) && str.endsWith(FormAuthenticator.__J_SECURITY_CHECK)) {
                this.f115055k.authenticate(getUserRealm(), str, request, response);
                request.setHandled(true);
                UserRealm userRealm3 = this.f115052h;
                if (userRealm3 != null && i == 1) {
                    userRealm3.disassociate(request.getUserPrincipal());
                }
                request.setUserRealm(userRealm);
                return;
            }
            if (getHandler() != null) {
                getHandler().handle(str, httpServletRequest, httpServletResponse, i);
            }
            UserRealm userRealm4 = this.f115052h;
            if (userRealm4 != null && i == 1) {
                userRealm4.disassociate(request.getUserPrincipal());
            }
            request.setUserRealm(userRealm);
        } finally {
            UserRealm userRealm5 = this.f115052h;
            if (userRealm5 != null && i == 1) {
                userRealm5.disassociate(request.getUserPrincipal());
            }
            request.setUserRealm(userRealm);
        }
    }

    public boolean hasConstraints() {
        ConstraintMapping[] constraintMappingArr = this.f115053i;
        return constraintMappingArr != null && constraintMappingArr.length > 0;
    }

    public boolean isCheckWelcomeFiles() {
        return this.f115057m;
    }

    public void setAuthMethod(String str) {
        String str2;
        if (isStarted() && (str2 = this.f115051g) != null && !str2.equals(str)) {
            throw new IllegalStateException("Handler started");
        }
        this.f115051g = str;
    }

    public void setAuthenticator(Authenticator authenticator) {
        this.f115055k = authenticator;
    }

    public void setCheckWelcomeFiles(boolean z) {
        this.f115057m = z;
    }

    public void setConstraintMappings(ConstraintMapping[] constraintMappingArr) {
        this.f115053i = constraintMappingArr;
        if (constraintMappingArr == null) {
            return;
        }
        this.f115053i = constraintMappingArr;
        this.f115054j.clear();
        int i = 0;
        while (true) {
            ConstraintMapping[] constraintMappingArr2 = this.f115053i;
            if (i >= constraintMappingArr2.length) {
                return;
            }
            this.f115054j.put(this.f115053i[i].getPathSpec(), LazyList.add(this.f115054j.get(constraintMappingArr2[i].getPathSpec()), this.f115053i[i]));
            i++;
        }
    }

    public void setUserRealm(UserRealm userRealm) {
        this.f115052h = userRealm;
    }
}
