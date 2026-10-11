package org.scribe.services;

import java.security.PrivateKey;
import java.security.Signature;
import java.security.SignatureException;
import org.scribe.exceptions.OAuthSignatureException;

/* loaded from: classes16.dex */
public class RSASha1SignatureService implements SignatureService {

    /* renamed from: b */
    public static final String f115994b = "RSA-SHA1";

    /* renamed from: c */
    public static final String f115995c = "SHA1withRSA";

    /* renamed from: d */
    public static final String f115996d = "UTF-8";

    /* renamed from: a */
    public PrivateKey f115997a;

    public RSASha1SignatureService(PrivateKey privateKey) {
        this.f115997a = privateKey;
    }

    /* renamed from: a */
    public final String m71889a(Signature signature) throws SignatureException {
        return Base64Encoder.getInstance().encode(signature.sign());
    }

    @Override // org.scribe.services.SignatureService
    public String getSignature(String str, String str2, String str3) {
        try {
            Signature signature = Signature.getInstance(f115995c);
            signature.initSign(this.f115997a);
            signature.update(str.getBytes("UTF-8"));
            return m71889a(signature);
        } catch (Exception e) {
            throw new OAuthSignatureException(str, e);
        }
    }

    @Override // org.scribe.services.SignatureService
    public String getSignatureMethod() {
        return f115994b;
    }
}
