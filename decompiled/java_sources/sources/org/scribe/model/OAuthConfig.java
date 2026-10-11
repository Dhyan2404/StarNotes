package org.scribe.model;

import java.io.OutputStream;

/* loaded from: classes16.dex */
public class OAuthConfig {

    /* renamed from: a */
    public final String f115938a;

    /* renamed from: b */
    public final String f115939b;

    /* renamed from: c */
    public final String f115940c;

    /* renamed from: d */
    public final SignatureType f115941d;

    /* renamed from: e */
    public final String f115942e;

    /* renamed from: f */
    public final OutputStream f115943f;

    public OAuthConfig(String str, String str2) {
        this(str, str2, null, null, null, null);
    }

    public String getApiKey() {
        return this.f115938a;
    }

    public String getApiSecret() {
        return this.f115939b;
    }

    public String getCallback() {
        return this.f115940c;
    }

    public String getScope() {
        return this.f115942e;
    }

    public SignatureType getSignatureType() {
        return this.f115941d;
    }

    public boolean hasScope() {
        return this.f115942e != null;
    }

    public void log(String str) {
        if (this.f115943f != null) {
            try {
                this.f115943f.write((str + "\n").getBytes("UTF8"));
            } catch (Exception e) {
                throw new RuntimeException("there were problems while writing to the debug stream", e);
            }
        }
    }

    public OAuthConfig(String str, String str2, String str3, SignatureType signatureType, String str4, OutputStream outputStream) {
        this.f115938a = str;
        this.f115939b = str2;
        this.f115940c = str3;
        this.f115941d = signatureType;
        this.f115942e = str4;
        this.f115943f = outputStream;
    }
}
