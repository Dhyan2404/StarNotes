package org.mortbay.jetty.security;

import com.couchbase.lite.internal.core.C4Replicator;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.Principal;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.Response;
import org.mortbay.jetty.security.Credential;
import org.mortbay.log.Log;
import org.mortbay.util.QuotedStringTokenizer;
import org.mortbay.util.StringUtil;
import org.mortbay.util.TypeUtil;
import org.scribe.model.OAuthConstants;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes13.dex */
public class DigestAuthenticator implements Authenticator {
    protected long maxNonceAge = 0;
    protected long nonceSecret = hashCode() ^ System.currentTimeMillis();
    protected boolean useStale = false;

    /* renamed from: org.mortbay.jetty.security.DigestAuthenticator$a */
    /* loaded from: classes13.dex */
    public static class C20395a extends Credential {

        /* renamed from: a */
        public String f114972a;

        /* renamed from: b */
        public String f114973b = null;

        /* renamed from: c */
        public String f114974c = null;

        /* renamed from: d */
        public String f114975d = null;

        /* renamed from: e */
        public String f114976e = null;

        /* renamed from: f */
        public String f114977f = null;

        /* renamed from: g */
        public String f114978g = null;

        /* renamed from: h */
        public String f114979h = null;

        /* renamed from: i */
        public String f114980i = null;

        public C20395a(String str) {
            this.f114972a = str;
        }

        @Override // org.mortbay.jetty.security.Credential
        public boolean check(Object obj) {
            byte[] digest;
            String obj2 = obj instanceof String ? (String) obj : obj.toString();
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                if (obj instanceof Credential.MD5) {
                    digest = ((Credential.MD5) obj).getDigest();
                } else {
                    String str = this.f114973b;
                    String str2 = StringUtil.__ISO_8859_1;
                    messageDigest.update(str.getBytes(str2));
                    messageDigest.update((byte) 58);
                    messageDigest.update(this.f114974c.getBytes(str2));
                    messageDigest.update((byte) 58);
                    messageDigest.update(obj2.getBytes(str2));
                    digest = messageDigest.digest();
                }
                messageDigest.reset();
                String str3 = this.f114972a;
                String str4 = StringUtil.__ISO_8859_1;
                messageDigest.update(str3.getBytes(str4));
                messageDigest.update((byte) 58);
                messageDigest.update(this.f114979h.getBytes(str4));
                byte[] digest2 = messageDigest.digest();
                messageDigest.update(TypeUtil.toString(digest, 16).getBytes(str4));
                messageDigest.update((byte) 58);
                messageDigest.update(this.f114975d.getBytes(str4));
                messageDigest.update((byte) 58);
                messageDigest.update(this.f114976e.getBytes(str4));
                messageDigest.update((byte) 58);
                messageDigest.update(this.f114977f.getBytes(str4));
                messageDigest.update((byte) 58);
                messageDigest.update(this.f114978g.getBytes(str4));
                messageDigest.update((byte) 58);
                messageDigest.update(TypeUtil.toString(digest2, 16).getBytes(str4));
                return TypeUtil.toString(messageDigest.digest(), 16).equalsIgnoreCase(this.f114980i);
            } catch (Exception e) {
                Log.warn(e);
                return false;
            }
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.f114973b);
            stringBuffer.append(",");
            stringBuffer.append(this.f114980i);
            return stringBuffer.toString();
        }
    }

    @Override // org.mortbay.jetty.security.Authenticator
    public Principal authenticate(UserRealm userRealm, String str, Request request, Response response) throws IOException {
        String header = request.getHeader("Authorization");
        boolean z = false;
        Principal principal = null;
        if (header != null) {
            if (Log.isDebugEnabled()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Credentials: ");
                stringBuffer.append(header);
                Log.debug(stringBuffer.toString());
            }
            QuotedStringTokenizer quotedStringTokenizer = new QuotedStringTokenizer(header, "=, ", true, false);
            C20395a c20395a = new C20395a(request.getMethod());
            String str2 = null;
            String str3 = null;
            while (quotedStringTokenizer.hasMoreTokens()) {
                String nextToken = quotedStringTokenizer.nextToken();
                char charAt = nextToken.length() == 1 ? nextToken.charAt(0) : (char) 0;
                if (charAt != ' ') {
                    if (charAt != ',') {
                        if (charAt == '=') {
                            str3 = str2;
                        } else if (str3 != null) {
                            if (C4Replicator.REPLICATOR_AUTH_USER_NAME.equalsIgnoreCase(str3)) {
                                c20395a.f114973b = nextToken;
                            } else if (OAuthConstants.REALM.equalsIgnoreCase(str3)) {
                                c20395a.f114974c = nextToken;
                            } else if ("nonce".equalsIgnoreCase(str3)) {
                                c20395a.f114975d = nextToken;
                            } else if ("nc".equalsIgnoreCase(str3)) {
                                c20395a.f114976e = nextToken;
                            } else if ("cnonce".equalsIgnoreCase(str3)) {
                                c20395a.f114977f = nextToken;
                            } else if ("qop".equalsIgnoreCase(str3)) {
                                c20395a.f114978g = nextToken;
                            } else if ("uri".equalsIgnoreCase(str3)) {
                                c20395a.f114979h = nextToken;
                            } else if (AbstractLogger.RESPONSE.equalsIgnoreCase(str3)) {
                                c20395a.f114980i = nextToken;
                            }
                            str3 = null;
                        }
                        str2 = nextToken;
                    } else {
                        str3 = null;
                    }
                }
            }
            int checkNonce = checkNonce(c20395a.f114975d, request);
            if (checkNonce > 0) {
                principal = userRealm.authenticate(c20395a.f114973b, c20395a, request);
            } else if (checkNonce == 0) {
                z = true;
            }
            if (principal == null) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("AUTH FAILURE: user ");
                stringBuffer2.append(StringUtil.printable(c20395a.f114973b));
                Log.warn(stringBuffer2.toString());
            } else {
                request.setAuthType("DIGEST");
                request.setUserPrincipal(principal);
            }
        }
        if (principal == null && response != null) {
            sendChallenge(userRealm, request, response, z);
        }
        return principal;
    }

    public int checkNonce(String str, Request request) {
        byte[] bArr;
        try {
            byte[] decode = B64Code.decode(str.toCharArray());
            if (decode.length != 24) {
                return -1;
            }
            long j = this.nonceSecret;
            byte[] bArr2 = new byte[16];
            System.arraycopy(decode, 0, bArr2, 0, 8);
            long j2 = 0;
            for (int i = 0; i < 8; i++) {
                bArr2[i + 8] = (byte) (j & 255);
                j >>= 8;
                j2 = (decode[7 - i] & 255) + (j2 << 8);
            }
            long timeStamp = request.getTimeStamp() - j2;
            if (Log.isDebugEnabled()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("age=");
                stringBuffer.append(timeStamp);
                Log.debug(stringBuffer.toString());
            }
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.reset();
                messageDigest.update(bArr2, 0, 16);
                bArr = messageDigest.digest();
            } catch (Exception e) {
                Log.warn(e);
                bArr = null;
            }
            for (int i2 = 0; i2 < 16; i2++) {
                if (decode[i2 + 8] != bArr[i2]) {
                    return -1;
                }
            }
            long j3 = this.maxNonceAge;
            if (j3 > 0) {
                return (timeStamp < 0 || timeStamp > j3) ? 0 : 1;
            }
            return 1;
        } catch (Exception e2) {
            Log.ignore(e2);
            return -1;
        }
    }

    @Override // org.mortbay.jetty.security.Authenticator
    public String getAuthMethod() {
        return "DIGEST";
    }

    public long getMaxNonceAge() {
        return this.maxNonceAge;
    }

    public long getNonceSecret() {
        return this.nonceSecret;
    }

    public boolean getUseStale() {
        return this.useStale;
    }

    public String newNonce(Request request) {
        byte[] bArr;
        long timeStamp = request.getTimeStamp();
        long j = this.nonceSecret;
        byte[] bArr2 = new byte[24];
        for (int i = 0; i < 8; i++) {
            bArr2[i] = (byte) (timeStamp & 255);
            timeStamp >>= 8;
            bArr2[i + 8] = (byte) (255 & j);
            j >>= 8;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(bArr2, 0, 16);
            bArr = messageDigest.digest();
        } catch (Exception e) {
            Log.warn(e);
            bArr = null;
        }
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr2[i2 + 8] = bArr[i2];
            if (i2 == 23) {
                break;
            }
        }
        return new String(B64Code.encode(bArr2));
    }

    public void sendChallenge(UserRealm userRealm, Request request, Response response, boolean z) throws IOException {
        String str;
        String contextPath = request.getContextPath();
        if (contextPath == null) {
            contextPath = "/";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Digest realm=\"");
        stringBuffer.append(userRealm.getName());
        stringBuffer.append("\", domain=\"");
        stringBuffer.append(contextPath);
        stringBuffer.append("\", nonce=\"");
        stringBuffer.append(newNonce(request));
        stringBuffer.append("\", algorithm=MD5, qop=\"auth\"");
        if (this.useStale) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(" stale=");
            stringBuffer2.append(z);
            str = stringBuffer2.toString();
        } else {
            str = "";
        }
        stringBuffer.append(str);
        response.setHeader("WWW-Authenticate", stringBuffer.toString());
        response.sendError(401);
    }

    public void setMaxNonceAge(long j) {
        this.maxNonceAge = j;
    }

    public void setNonceSecret(long j) {
        this.nonceSecret = j;
    }

    public void setUseStale(boolean z) {
        this.useStale = z;
    }
}
