package com.alibaba.sdk.android.oss.common.auth;

import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.utils.BinaryUtil;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public class HmacSHA1Signature {

    /* renamed from: a */
    public static final String f12933a = "UTF-8";

    /* renamed from: b */
    public static final String f12934b = "HmacSHA1";

    /* renamed from: c */
    public static final String f12935c = "1";

    /* renamed from: d */
    public static final Object f12936d = new Object();

    /* renamed from: e */
    public static Mac f12937e;

    /* renamed from: a */
    public final byte[] m7652a(byte[] bArr, byte[] bArr2) {
        Mac mac;
        try {
            if (f12937e == null) {
                synchronized (f12936d) {
                    if (f12937e == null) {
                        f12937e = Mac.getInstance(getAlgorithm());
                    }
                }
            }
            try {
                mac = (Mac) f12937e.clone();
            } catch (CloneNotSupportedException unused) {
                mac = Mac.getInstance(getAlgorithm());
            }
            mac.init(new SecretKeySpec(bArr, getAlgorithm()));
            return mac.doFinal(bArr2);
        } catch (InvalidKeyException unused2) {
            throw new RuntimeException("key must not be null");
        } catch (NoSuchAlgorithmException unused3) {
            throw new RuntimeException("Unsupported algorithm: HmacSHA1");
        }
    }

    public String computeSignature(String str, String str2) {
        OSSLog.logDebug(getAlgorithm(), false);
        OSSLog.logDebug(getVersion(), false);
        try {
            OSSLog.logDebug("sign start");
            byte[] m7652a = m7652a(str.getBytes("UTF-8"), str2.getBytes("UTF-8"));
            OSSLog.logDebug("base64 start");
            return BinaryUtil.toBase64String(m7652a);
        } catch (UnsupportedEncodingException unused) {
            throw new RuntimeException("Unsupported algorithm: UTF-8");
        }
    }

    public String getAlgorithm() {
        return "HmacSHA1";
    }

    public String getVersion() {
        return "1";
    }
}
