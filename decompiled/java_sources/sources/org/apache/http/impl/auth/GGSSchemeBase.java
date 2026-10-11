package org.apache.http.impl.auth;

import java.net.InetAddress;
import java.net.UnknownHostException;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.InvalidCredentialsException;
import org.apache.http.auth.KerberosCredentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.message.BufferedHeader;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
import org.ietf.jgss.GSSContext;
import org.ietf.jgss.GSSCredential;
import org.ietf.jgss.GSSException;
import org.ietf.jgss.GSSManager;
import org.ietf.jgss.GSSName;
import org.ietf.jgss.Oid;

/* loaded from: classes12.dex */
public abstract class GGSSchemeBase extends AuthSchemeBase {

    /* renamed from: e */
    public final Log f110418e;

    /* renamed from: f */
    public final Base64 f110419f;

    /* renamed from: g */
    public final boolean f110420g;

    /* renamed from: h */
    public final boolean f110421h;

    /* renamed from: i */
    public State f110422i;

    /* renamed from: j */
    public byte[] f110423j;

    /* loaded from: classes12.dex */
    public enum State {
        UNINITIATED,
        CHALLENGE_RECEIVED,
        TOKEN_GENERATED,
        FAILED
    }

    /* renamed from: org.apache.http.impl.auth.GGSSchemeBase$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19349a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f110424a;

        static {
            int[] iArr = new int[State.values().length];
            f110424a = iArr;
            try {
                iArr[State.UNINITIATED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f110424a[State.FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f110424a[State.CHALLENGE_RECEIVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f110424a[State.TOKEN_GENERATED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public GGSSchemeBase(boolean z, boolean z2) {
        this.f110418e = LogFactory.getLog(getClass());
        this.f110419f = new Base64(0);
        this.f110420g = z;
        this.f110421h = z2;
        this.f110422i = State.UNINITIATED;
    }

    /* renamed from: a */
    public GSSContext m68368a(GSSManager gSSManager, Oid oid, GSSName gSSName, GSSCredential gSSCredential) throws GSSException {
        GSSContext createContext = gSSManager.createContext(gSSName.canonicalize(oid), oid, gSSCredential, 0);
        createContext.requestMutualAuth(true);
        return createContext;
    }

    @Override // org.apache.http.auth.AuthScheme
    @Deprecated
    public Header authenticate(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        return authenticate(credentials, httpRequest, null);
    }

    /* renamed from: b */
    public final String m68369b(String str) throws UnknownHostException {
        InetAddress byName = InetAddress.getByName(str);
        String canonicalHostName = byName.getCanonicalHostName();
        return byName.getHostAddress().contentEquals(canonicalHostName) ? str : canonicalHostName;
    }

    public byte[] generateGSSToken(byte[] bArr, Oid oid, String str) throws GSSException {
        return generateGSSToken(bArr, oid, str, null);
    }

    @Deprecated
    public byte[] generateToken(byte[] bArr, String str) throws GSSException {
        return null;
    }

    public GSSManager getManager() {
        return GSSManager.getInstance();
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isComplete() {
        State state = this.f110422i;
        return state == State.TOKEN_GENERATED || state == State.FAILED;
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBase
    public void parseChallenge(CharArrayBuffer charArrayBuffer, int i, int i2) throws MalformedChallengeException {
        String substringTrimmed = charArrayBuffer.substringTrimmed(i, i2);
        if (this.f110418e.isDebugEnabled()) {
            this.f110418e.debug("Received challenge '" + substringTrimmed + "' from the auth server");
        }
        if (this.f110422i == State.UNINITIATED) {
            this.f110423j = Base64.decodeBase64(substringTrimmed.getBytes());
            this.f110422i = State.CHALLENGE_RECEIVED;
        } else {
            this.f110418e.debug("Authentication already attempted");
            this.f110422i = State.FAILED;
        }
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBase, org.apache.http.auth.ContextAwareAuthScheme
    public Header authenticate(Credentials credentials, HttpRequest httpRequest, HttpContext httpContext) throws AuthenticationException {
        HttpHost targetHost;
        Args.notNull(httpRequest, "HTTP request");
        int i = C19349a.f110424a[this.f110422i.ordinal()];
        if (i == 1) {
            throw new AuthenticationException(getSchemeName() + " authentication has not been initiated");
        }
        if (i != 2) {
            if (i == 3) {
                try {
                    HttpRoute httpRoute = (HttpRoute) httpContext.getAttribute("http.route");
                    if (httpRoute != null) {
                        if (isProxy()) {
                            targetHost = httpRoute.getProxyHost();
                            if (targetHost == null) {
                                targetHost = httpRoute.getTargetHost();
                            }
                        } else {
                            targetHost = httpRoute.getTargetHost();
                        }
                        String hostName = targetHost.getHostName();
                        if (this.f110421h) {
                            try {
                                hostName = m68369b(hostName);
                            } catch (UnknownHostException unused) {
                            }
                        }
                        if (!this.f110420g) {
                            hostName = hostName + ":" + targetHost.getPort();
                        }
                        if (this.f110418e.isDebugEnabled()) {
                            this.f110418e.debug("init " + hostName);
                        }
                        this.f110423j = generateToken(this.f110423j, hostName, credentials);
                        this.f110422i = State.TOKEN_GENERATED;
                    } else {
                        throw new AuthenticationException("Connection route is not available");
                    }
                } catch (GSSException e) {
                    this.f110422i = State.FAILED;
                    if (e.getMajor() != 9 && e.getMajor() != 8) {
                        if (e.getMajor() != 13) {
                            if (e.getMajor() != 10 && e.getMajor() != 19 && e.getMajor() != 20) {
                                throw new AuthenticationException(e.getMessage());
                            }
                            throw new AuthenticationException(e.getMessage(), e);
                        }
                        throw new InvalidCredentialsException(e.getMessage(), e);
                    }
                    throw new InvalidCredentialsException(e.getMessage(), e);
                }
            } else if (i != 4) {
                throw new IllegalStateException("Illegal state: " + this.f110422i);
            }
            String str = new String(this.f110419f.encode(this.f110423j));
            if (this.f110418e.isDebugEnabled()) {
                this.f110418e.debug("Sending response '" + str + "' back to the auth server");
            }
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer(32);
            if (isProxy()) {
                charArrayBuffer.append("Proxy-Authorization");
            } else {
                charArrayBuffer.append("Authorization");
            }
            charArrayBuffer.append(": Negotiate ");
            charArrayBuffer.append(str);
            return new BufferedHeader(charArrayBuffer);
        }
        throw new AuthenticationException(getSchemeName() + " authentication has failed");
    }

    public byte[] generateGSSToken(byte[] bArr, Oid oid, String str, Credentials credentials) throws GSSException {
        GSSManager manager = getManager();
        GSSContext m68368a = m68368a(manager, oid, manager.createName("HTTP@" + str, GSSName.NT_HOSTBASED_SERVICE), credentials instanceof KerberosCredentials ? ((KerberosCredentials) credentials).getGSSCredential() : null);
        return bArr != null ? m68368a.initSecContext(bArr, 0, bArr.length) : m68368a.initSecContext(new byte[0], 0, 0);
    }

    public byte[] generateToken(byte[] bArr, String str, Credentials credentials) throws GSSException {
        return generateToken(bArr, str);
    }

    public GGSSchemeBase(boolean z) {
        this(z, true);
    }

    public GGSSchemeBase() {
        this(true, true);
    }
}
