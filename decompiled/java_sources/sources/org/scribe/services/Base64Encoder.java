package org.scribe.services;

/* loaded from: classes16.dex */
public abstract class Base64Encoder {

    /* renamed from: a */
    public static Base64Encoder f115987a;

    /* renamed from: a */
    public static Base64Encoder m71886a() {
        return CommonsEncoder.isPresent() ? new CommonsEncoder() : new DatatypeConverterEncoder();
    }

    public static synchronized Base64Encoder getInstance() {
        Base64Encoder base64Encoder;
        synchronized (Base64Encoder.class) {
            if (f115987a == null) {
                f115987a = m71886a();
            }
            base64Encoder = f115987a;
        }
        return base64Encoder;
    }

    public static String type() {
        return getInstance().getType();
    }

    public abstract String encode(byte[] bArr);

    public abstract String getType();
}
