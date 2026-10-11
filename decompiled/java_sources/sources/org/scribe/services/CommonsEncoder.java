package org.scribe.services;

import java.io.UnsupportedEncodingException;
import org.apache.commons.codec.binary.Base64;
import org.scribe.exceptions.OAuthSignatureException;

/* loaded from: classes16.dex */
public class CommonsEncoder extends Base64Encoder {
    public static boolean isPresent() {
        try {
            Class.forName("org.apache.commons.codec.binary.Base64");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @Override // org.scribe.services.Base64Encoder
    public String encode(byte[] bArr) {
        try {
            return new String(Base64.encodeBase64(bArr), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new OAuthSignatureException("Can't perform base64 encoding", e);
        }
    }

    @Override // org.scribe.services.Base64Encoder
    public String getType() {
        return "CommonsCodec";
    }
}
