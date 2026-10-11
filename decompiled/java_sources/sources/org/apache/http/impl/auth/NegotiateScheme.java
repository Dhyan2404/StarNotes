package org.apache.http.impl.auth;

import java.io.IOException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.Credentials;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.ietf.jgss.GSSException;
import org.ietf.jgss.Oid;

@Deprecated
/* loaded from: classes12.dex */
public class NegotiateScheme extends GGSSchemeBase {

    /* renamed from: m */
    public static final String f110509m = "1.3.6.1.5.5.2";

    /* renamed from: n */
    public static final String f110510n = "1.2.840.113554.1.2.2";

    /* renamed from: k */
    public final Log f110511k;

    /* renamed from: l */
    public final SpnegoTokenGenerator f110512l;

    public NegotiateScheme(SpnegoTokenGenerator spnegoTokenGenerator, boolean z) {
        super(z);
        this.f110511k = LogFactory.getLog(getClass());
        this.f110512l = spnegoTokenGenerator;
    }

    @Override // org.apache.http.impl.auth.GGSSchemeBase, org.apache.http.auth.AuthScheme
    public Header authenticate(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        return authenticate(credentials, httpRequest, null);
    }

    @Override // org.apache.http.impl.auth.GGSSchemeBase
    public byte[] generateToken(byte[] bArr, String str) throws GSSException {
        return super.generateToken(bArr, str);
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getParameter(String str) {
        Args.notNull(str, "Parameter name");
        return null;
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getRealm() {
        return null;
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getSchemeName() {
        return "Negotiate";
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isConnectionBased() {
        return true;
    }

    @Override // org.apache.http.impl.auth.GGSSchemeBase, org.apache.http.impl.auth.AuthSchemeBase, org.apache.http.auth.ContextAwareAuthScheme
    public Header authenticate(Credentials credentials, HttpRequest httpRequest, HttpContext httpContext) throws AuthenticationException {
        return super.authenticate(credentials, httpRequest, httpContext);
    }

    @Override // org.apache.http.impl.auth.GGSSchemeBase
    public byte[] generateToken(byte[] bArr, String str, Credentials credentials) throws GSSException {
        boolean z;
        SpnegoTokenGenerator spnegoTokenGenerator;
        try {
            bArr = generateGSSToken(bArr, new Oid("1.3.6.1.5.5.2"), str, credentials);
            z = false;
        } catch (GSSException e) {
            if (e.getMajor() == 2) {
                this.f110511k.debug("GSSException BAD_MECH, retry with Kerberos MECH");
                z = true;
            } else {
                throw e;
            }
        }
        if (!z) {
            return bArr;
        }
        this.f110511k.debug("Using Kerberos MECH 1.2.840.113554.1.2.2");
        byte[] generateGSSToken = generateGSSToken(bArr, new Oid("1.2.840.113554.1.2.2"), str, credentials);
        if (generateGSSToken == null || (spnegoTokenGenerator = this.f110512l) == null) {
            return generateGSSToken;
        }
        try {
            return spnegoTokenGenerator.generateSpnegoDERObject(generateGSSToken);
        } catch (IOException e2) {
            this.f110511k.error(e2.getMessage(), e2);
            return generateGSSToken;
        }
    }

    public NegotiateScheme(SpnegoTokenGenerator spnegoTokenGenerator) {
        this(spnegoTokenGenerator, false);
    }

    public NegotiateScheme() {
        this(null, false);
    }
}
