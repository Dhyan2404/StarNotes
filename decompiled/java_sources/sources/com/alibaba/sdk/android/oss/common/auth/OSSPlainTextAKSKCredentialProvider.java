package com.alibaba.sdk.android.oss.common.auth;

@Deprecated
/* loaded from: classes3.dex */
public class OSSPlainTextAKSKCredentialProvider implements OSSCredentialProvider {

    /* renamed from: a */
    public String f12944a;

    /* renamed from: b */
    public String f12945b;

    public OSSPlainTextAKSKCredentialProvider(String str, String str2) {
        setAccessKeyId(str.trim());
        setAccessKeySecret(str2.trim());
    }

    public String getAccessKeyId() {
        return this.f12944a;
    }

    public String getAccessKeySecret() {
        return this.f12945b;
    }

    @Override // com.alibaba.sdk.android.oss.common.auth.OSSCredentialProvider
    public OSSFederationToken getFederationToken() {
        return null;
    }

    public void setAccessKeyId(String str) {
        this.f12944a = str;
    }

    public void setAccessKeySecret(String str) {
        this.f12945b = str;
    }
}
