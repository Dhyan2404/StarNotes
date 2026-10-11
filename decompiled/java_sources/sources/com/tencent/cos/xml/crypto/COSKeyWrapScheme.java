package com.tencent.cos.xml.crypto;

import java.security.Key;

/* loaded from: classes10.dex */
class COSKeyWrapScheme {
    public static final String AESWrap = "AESWrap";
    public static final String RSA_ECB_OAEPWithSHA256AndMGF1Padding = "RSA/ECB/OAEPWithSHA-256AndMGF1Padding";

    public String getKeyWrapAlgorithm(Key key) {
        String algorithm = key.getAlgorithm();
        if ("AES".equals(algorithm)) {
            return AESWrap;
        }
        if ("RSA".equals(algorithm)) {
            return RSA_ECB_OAEPWithSHA256AndMGF1Padding;
        }
        throw new IllegalArgumentException("Unsupported key wrap algorithm " + algorithm);
    }

    public String toString() {
        return "COSKeyWrapScheme";
    }
}
