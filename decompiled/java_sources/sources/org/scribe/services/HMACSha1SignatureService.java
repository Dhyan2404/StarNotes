package org.scribe.services;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.scribe.exceptions.OAuthSignatureException;
import org.scribe.utils.OAuthEncoder;
import org.scribe.utils.Preconditions;

/* loaded from: classes16.dex */
public class HMACSha1SignatureService implements SignatureService {

    /* renamed from: a */
    public static final String f115988a = "";

    /* renamed from: b */
    public static final String f115989b = "\r\n";

    /* renamed from: c */
    public static final String f115990c = "UTF-8";

    /* renamed from: d */
    public static final String f115991d = "HmacSHA1";

    /* renamed from: e */
    public static final String f115992e = "HMAC-SHA1";

    /* renamed from: a */
    public final String m71887a(byte[] bArr) {
        return Base64Encoder.getInstance().encode(bArr);
    }

    /* renamed from: b */
    public final String m71888b(String str, String str2) throws Exception {
        SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes("UTF-8"), "HmacSHA1");
        Mac mac = Mac.getInstance("HmacSHA1");
        mac.init(secretKeySpec);
        return m71887a(mac.doFinal(str.getBytes("UTF-8"))).replace("\r\n", "");
    }

    @Override // org.scribe.services.SignatureService
    public String getSignature(String str, String str2, String str3) {
        try {
            Preconditions.checkEmptyString(str, "Base string cant be null or empty string");
            Preconditions.checkEmptyString(str2, "Api secret cant be null or empty string");
            return m71888b(str, OAuthEncoder.encode(str2) + '&' + OAuthEncoder.encode(str3));
        } catch (Exception e) {
            throw new OAuthSignatureException(str, e);
        }
    }

    @Override // org.scribe.services.SignatureService
    public String getSignatureMethod() {
        return f115992e;
    }
}
