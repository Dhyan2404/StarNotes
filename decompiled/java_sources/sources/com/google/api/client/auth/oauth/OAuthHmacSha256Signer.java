package com.google.api.client.auth.oauth;

import com.google.api.client.util.StringUtils;
import com.google.common.io.BaseEncoding;
import com.onyx.android.sdk.data.utils.EncryptUtils;
import java.security.GeneralSecurityException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes6.dex */
public final class OAuthHmacSha256Signer implements OAuthSigner {
    private final String clientSharedSecret;
    private String tokenSharedSecret;

    public OAuthHmacSha256Signer(String str) {
        this.clientSharedSecret = str;
    }

    @Override // com.google.api.client.auth.oauth.OAuthSigner
    public String computeSignature(String str) throws GeneralSecurityException {
        StringBuilder sb = new StringBuilder();
        String str2 = this.clientSharedSecret;
        if (str2 != null) {
            sb.append(OAuthParameters.escape(str2));
        }
        sb.append('&');
        String str3 = this.tokenSharedSecret;
        if (str3 != null) {
            sb.append(OAuthParameters.escape(str3));
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(StringUtils.getBytesUtf8(sb.toString()), EncryptUtils.HMACSHA256);
        Mac mac = Mac.getInstance(EncryptUtils.HMACSHA256);
        mac.init(secretKeySpec);
        return BaseEncoding.base64().encode(mac.doFinal(StringUtils.getBytesUtf8(str)));
    }

    @Override // com.google.api.client.auth.oauth.OAuthSigner
    public String getSignatureMethod() {
        return "HMAC-SHA256";
    }

    public void setTokenSecret(String str) {
        this.tokenSharedSecret = str;
    }
}
