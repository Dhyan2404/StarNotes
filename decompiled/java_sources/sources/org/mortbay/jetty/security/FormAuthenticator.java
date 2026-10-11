package org.mortbay.jetty.security;

import java.io.IOException;
import java.io.Serializable;
import java.security.Principal;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;
import org.apache.commons.collections4.IteratorUtils;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.Response;
import org.mortbay.log.Log;
import org.mortbay.util.StringUtil;
import org.mortbay.util.URIUtil;

/* loaded from: classes13.dex */
public class FormAuthenticator implements Authenticator {
    public static final String __J_AUTHENTICATED = "org.mortbay.jetty.Auth";
    public static final String __J_PASSWORD = "j_password";
    public static final String __J_SECURITY_CHECK = "/j_security_check";
    public static final String __J_URI = "org.mortbay.jetty.URI";
    public static final String __J_USERNAME = "j_username";
    private String _formErrorPage;
    private String _formErrorPath;
    private String _formLoginPage;
    private String _formLoginPath;

    @Override // org.mortbay.jetty.security.Authenticator
    public Principal authenticate(UserRealm userRealm, String str, Request request, Response response) throws IOException {
        HttpSession session = request.getSession(response != null);
        if (session == null) {
            return null;
        }
        if (isJSecurityCheck(str)) {
            FormCredential formCredential = new FormCredential();
            formCredential.authenticate(userRealm, request.getParameter(__J_USERNAME), request.getParameter(__J_PASSWORD), request);
            String str2 = (String) session.getAttribute(__J_URI);
            if (str2 == null || str2.length() == 0) {
                str2 = request.getContextPath();
                if (str2.length() == 0) {
                    str2 = "/";
                }
            }
            if (formCredential._userPrincipal != null) {
                if (Log.isDebugEnabled()) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Form authentication OK for ");
                    stringBuffer.append(formCredential._jUserName);
                    Log.debug(stringBuffer.toString());
                }
                session.removeAttribute(__J_URI);
                request.setAuthType("FORM");
                request.setUserPrincipal(formCredential._userPrincipal);
                session.setAttribute(__J_AUTHENTICATED, formCredential);
                if (userRealm instanceof SSORealm) {
                    ((SSORealm) userRealm).setSingleSignOn(request, response, formCredential._userPrincipal, new Password(formCredential._jPassword));
                }
                if (response != null) {
                    response.setContentLength(0);
                    response.sendRedirect(response.encodeRedirectURL(str2));
                }
            } else {
                if (Log.isDebugEnabled()) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Form authentication FAILED for ");
                    stringBuffer2.append(StringUtil.printable(formCredential._jUserName));
                    Log.debug(stringBuffer2.toString());
                }
                if (response != null) {
                    if (this._formErrorPage == null) {
                        response.sendError(403);
                    } else {
                        response.setContentLength(0);
                        response.sendRedirect(response.encodeRedirectURL(URIUtil.addPaths(request.getContextPath(), this._formErrorPage)));
                    }
                }
            }
            return null;
        }
        FormCredential formCredential2 = (FormCredential) session.getAttribute(__J_AUTHENTICATED);
        if (formCredential2 != null) {
            Principal principal = formCredential2._userPrincipal;
            if (principal == null) {
                formCredential2.authenticate(userRealm, request);
                Principal principal2 = formCredential2._userPrincipal;
                if (principal2 != null && (userRealm instanceof SSORealm)) {
                    ((SSORealm) userRealm).setSingleSignOn(request, response, principal2, new Password(formCredential2._jPassword));
                }
            } else if (!userRealm.reauthenticate(principal)) {
                formCredential2._userPrincipal = null;
            }
            if (formCredential2._userPrincipal != null) {
                if (Log.isDebugEnabled()) {
                    StringBuffer stringBuffer3 = new StringBuffer();
                    stringBuffer3.append("FORM Authenticated for ");
                    stringBuffer3.append(formCredential2._userPrincipal.getName());
                    Log.debug(stringBuffer3.toString());
                }
                request.setAuthType("FORM");
                request.setUserPrincipal(formCredential2._userPrincipal);
                return formCredential2._userPrincipal;
            }
            session.setAttribute(__J_AUTHENTICATED, null);
        } else if (userRealm instanceof SSORealm) {
            Credential singleSignOn = ((SSORealm) userRealm).getSingleSignOn(request, response);
            if (request.getUserPrincipal() != null) {
                FormCredential formCredential3 = new FormCredential();
                Principal userPrincipal = request.getUserPrincipal();
                formCredential3._userPrincipal = userPrincipal;
                formCredential3._jUserName = userPrincipal.getName();
                if (singleSignOn != null) {
                    formCredential3._jPassword = singleSignOn.toString();
                }
                if (Log.isDebugEnabled()) {
                    StringBuffer stringBuffer4 = new StringBuffer();
                    stringBuffer4.append("SSO for ");
                    stringBuffer4.append(formCredential3._userPrincipal);
                    Log.debug(stringBuffer4.toString());
                }
                request.setAuthType("FORM");
                session.setAttribute(__J_AUTHENTICATED, formCredential3);
                return formCredential3._userPrincipal;
            }
        }
        if (isLoginOrErrorPage(str)) {
            return SecurityHandler.__NOBODY;
        }
        if (response != null) {
            if (request.getQueryString() != null) {
                StringBuffer stringBuffer5 = new StringBuffer();
                stringBuffer5.append(str);
                stringBuffer5.append("?");
                stringBuffer5.append(request.getQueryString());
                str = stringBuffer5.toString();
            }
            StringBuffer stringBuffer6 = new StringBuffer();
            stringBuffer6.append(request.getScheme());
            stringBuffer6.append("://");
            stringBuffer6.append(request.getServerName());
            stringBuffer6.append(":");
            stringBuffer6.append(request.getServerPort());
            stringBuffer6.append(URIUtil.addPaths(request.getContextPath(), str));
            session.setAttribute(__J_URI, stringBuffer6.toString());
            response.setContentLength(0);
            response.sendRedirect(response.encodeRedirectURL(URIUtil.addPaths(request.getContextPath(), this._formLoginPage)));
        }
        return null;
    }

    @Override // org.mortbay.jetty.security.Authenticator
    public String getAuthMethod() {
        return "FORM";
    }

    public String getErrorPage() {
        return this._formErrorPage;
    }

    public String getLoginPage() {
        return this._formLoginPage;
    }

    public boolean isJSecurityCheck(String str) {
        int indexOf = str.indexOf(__J_SECURITY_CHECK);
        if (indexOf < 0) {
            return false;
        }
        int i = indexOf + 17;
        if (i == str.length()) {
            return true;
        }
        char charAt = str.charAt(i);
        return charAt == ';' || charAt == '#' || charAt == '/' || charAt == '?';
    }

    public boolean isLoginOrErrorPage(String str) {
        return str != null && (str.equals(this._formErrorPath) || str.equals(this._formLoginPath));
    }

    public void setErrorPage(String str) {
        if (str == null || str.trim().length() == 0) {
            this._formErrorPath = null;
            this._formErrorPage = null;
            return;
        }
        if (!str.startsWith("/")) {
            Log.warn("form-error-page must start with /");
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("/");
            stringBuffer.append(str);
            str = stringBuffer.toString();
        }
        this._formErrorPage = str;
        this._formErrorPath = str;
        if (str == null || str.indexOf(63) <= 0) {
            return;
        }
        String str2 = this._formErrorPath;
        this._formErrorPath = str2.substring(0, str2.indexOf(63));
    }

    public void setLoginPage(String str) {
        if (!str.startsWith("/")) {
            Log.warn("form-login-page must start with /");
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("/");
            stringBuffer.append(str);
            str = stringBuffer.toString();
        }
        this._formLoginPage = str;
        this._formLoginPath = str;
        if (str.indexOf(63) > 0) {
            String str2 = this._formLoginPath;
            this._formLoginPath = str2.substring(0, str2.indexOf(63));
        }
    }

    /* loaded from: classes13.dex */
    public static class FormCredential implements Serializable, HttpSessionBindingListener {
        String _jPassword;
        String _jUserName;
        transient UserRealm _realm;
        transient Principal _userPrincipal;

        private FormCredential() {
        }

        public void authenticate(UserRealm userRealm, String str, String str2, Request request) {
            this._jUserName = str;
            this._jPassword = str2;
            Principal authenticate = userRealm.authenticate(str, str2, request);
            this._userPrincipal = authenticate;
            if (authenticate != null) {
                this._realm = userRealm;
            } else {
                Log.warn("AUTH FAILURE: user {}", StringUtil.printable(str));
                request.setUserPrincipal(null);
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof FormCredential)) {
                return false;
            }
            FormCredential formCredential = (FormCredential) obj;
            return this._jUserName.equals(formCredential._jUserName) && this._jPassword.equals(formCredential._jPassword);
        }

        public int hashCode() {
            return this._jUserName.hashCode() + this._jPassword.hashCode();
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Cred[");
            stringBuffer.append(this._jUserName);
            stringBuffer.append(IteratorUtils.f104924b);
            return stringBuffer.toString();
        }

        @Override // javax.servlet.http.HttpSessionBindingListener
        public void valueBound(HttpSessionBindingEvent httpSessionBindingEvent) {
        }

        @Override // javax.servlet.http.HttpSessionBindingListener
        public void valueUnbound(HttpSessionBindingEvent httpSessionBindingEvent) {
            Principal principal;
            if (Log.isDebugEnabled()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Logout ");
                stringBuffer.append(this._jUserName);
                Log.debug(stringBuffer.toString());
            }
            UserRealm userRealm = this._realm;
            if (userRealm instanceof SSORealm) {
                ((SSORealm) userRealm).clearSingleSignOn(this._jUserName);
            }
            UserRealm userRealm2 = this._realm;
            if (userRealm2 == null || (principal = this._userPrincipal) == null) {
                return;
            }
            userRealm2.logout(principal);
        }

        public void authenticate(UserRealm userRealm, Request request) {
            Principal authenticate = userRealm.authenticate(this._jUserName, this._jPassword, request);
            this._userPrincipal = authenticate;
            if (authenticate != null) {
                this._realm = userRealm;
            } else {
                Log.warn("AUTH FAILURE: user {}", StringUtil.printable(this._jUserName));
                request.setUserPrincipal(null);
            }
        }
    }
}
