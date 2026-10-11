package com.alibaba.sdk.android.oss.common.auth;

/* loaded from: classes3.dex */
public class OSSStsTokenCredentialProvider implements OSSCredentialProvider {

    /* renamed from: a */
    public String f12946a;

    /* renamed from: b */
    public String f12947b;

    /* renamed from: c */
    public String f12948c;

    public OSSStsTokenCredentialProvider(String str, String str2, String str3) {
        setAccessKeyId(str.trim());
        setSecretKeyId(str2.trim());
        setSecurityToken(str3.trim());
    }

    public String getAccessKeyId() {
        return this.f12946a;
    }

    @Override // com.alibaba.sdk.android.oss.common.auth.OSSCredentialProvider
    public OSSFederationToken getFederationToken() {
        return new OSSFederationToken(this.f12946a, this.f12947b, this.f12948c, Long.MAX_VALUE);
    }

    public String getSecretKeyId() {
        return this.f12947b;
    }

    public String getSecurityToken() {
        return this.f12948c;
    }

    public void setAccessKeyId(String str) {
        this.f12946a = str;
    }

    public void setSecretKeyId(String str) {
        this.f12947b = str;
    }

    public void setSecurityToken(String str) {
        this.f12948c = str;
    }

    public OSSStsTokenCredentialProvider(OSSFederationToken oSSFederationToken) {
        setAccessKeyId(oSSFederationToken.getTempAK().trim());
        setSecretKeyId(oSSFederationToken.getTempSK().trim());
        setSecurityToken(oSSFederationToken.getSecurityToken().trim());
    }
}
