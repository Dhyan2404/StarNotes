package org.scribe.services;

import org.scribe.exceptions.OAuthSignatureException;
import org.scribe.utils.OAuthEncoder;
import org.scribe.utils.Preconditions;

/* loaded from: classes16.dex */
public class PlaintextSignatureService implements SignatureService {

    /* renamed from: a */
    public static final String f115993a = "PLAINTEXT";

    @Override // org.scribe.services.SignatureService
    public String getSignature(String str, String str2, String str3) {
        try {
            Preconditions.checkEmptyString(str2, "Api secret cant be null or empty string");
            return OAuthEncoder.encode(str2) + '&' + OAuthEncoder.encode(str3);
        } catch (Exception e) {
            throw new OAuthSignatureException(str, e);
        }
    }

    @Override // org.scribe.services.SignatureService
    public String getSignatureMethod() {
        return f115993a;
    }
}
