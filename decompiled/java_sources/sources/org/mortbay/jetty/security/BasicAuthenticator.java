package org.mortbay.jetty.security;

import java.io.IOException;
import java.security.Principal;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.Response;
import org.mortbay.log.Log;
import org.mortbay.util.StringUtil;

/* loaded from: classes13.dex */
public class BasicAuthenticator implements Authenticator {
    @Override // org.mortbay.jetty.security.Authenticator
    public Principal authenticate(UserRealm userRealm, String str, Request request, Response response) throws IOException {
        String header = request.getHeader("Authorization");
        Principal principal = null;
        if (header != null) {
            try {
                if (Log.isDebugEnabled()) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Credentials: ");
                    stringBuffer.append(header);
                    Log.debug(stringBuffer.toString());
                }
                String decode = B64Code.decode(header.substring(header.indexOf(32) + 1), StringUtil.__ISO_8859_1);
                int indexOf = decode.indexOf(58);
                String substring = decode.substring(0, indexOf);
                principal = userRealm.authenticate(substring, decode.substring(indexOf + 1), request);
                if (principal == null) {
                    Log.warn("AUTH FAILURE: user {}", StringUtil.printable(substring));
                } else {
                    request.setAuthType("BASIC");
                    request.setUserPrincipal(principal);
                }
            } catch (Exception e) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("AUTH FAILURE: ");
                stringBuffer2.append(e.toString());
                Log.warn(stringBuffer2.toString());
                Log.ignore(e);
            }
        }
        if (principal == null && response != null) {
            sendChallenge(userRealm, response);
        }
        return principal;
    }

    @Override // org.mortbay.jetty.security.Authenticator
    public String getAuthMethod() {
        return "BASIC";
    }

    public void sendChallenge(UserRealm userRealm, Response response) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Basic realm=\"");
        stringBuffer.append(userRealm.getName());
        stringBuffer.append('\"');
        response.setHeader("WWW-Authenticate", stringBuffer.toString());
        response.sendError(401);
    }
}
