package com.google.firebase.installations.remote;

import androidx.annotation.Nullable;
import com.google.firebase.installations.remote.InstallationResponse;

/* renamed from: com.google.firebase.installations.remote.a */
/* loaded from: classes6.dex */
public final class C6473a extends InstallationResponse {

    /* renamed from: a */
    public final String f36006a;

    /* renamed from: b */
    public final String f36007b;

    /* renamed from: c */
    public final String f36008c;

    /* renamed from: d */
    public final TokenResult f36009d;

    /* renamed from: e */
    public final InstallationResponse.ResponseCode f36010e;

    /* renamed from: com.google.firebase.installations.remote.a$b */
    /* loaded from: classes6.dex */
    public static final class b extends InstallationResponse.Builder {

        /* renamed from: a */
        public String f36011a;

        /* renamed from: b */
        public String f36012b;

        /* renamed from: c */
        public String f36013c;

        /* renamed from: d */
        public TokenResult f36014d;

        /* renamed from: e */
        public InstallationResponse.ResponseCode f36015e;

        @Override // com.google.firebase.installations.remote.InstallationResponse.Builder
        public InstallationResponse build() {
            return new C6473a(this.f36011a, this.f36012b, this.f36013c, this.f36014d, this.f36015e);
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.Builder
        public InstallationResponse.Builder setAuthToken(TokenResult tokenResult) {
            this.f36014d = tokenResult;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.Builder
        public InstallationResponse.Builder setFid(String str) {
            this.f36012b = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.Builder
        public InstallationResponse.Builder setRefreshToken(String str) {
            this.f36013c = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.Builder
        public InstallationResponse.Builder setResponseCode(InstallationResponse.ResponseCode responseCode) {
            this.f36015e = responseCode;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.Builder
        public InstallationResponse.Builder setUri(String str) {
            this.f36011a = str;
            return this;
        }

        public b() {
        }

        public b(InstallationResponse installationResponse) {
            this.f36011a = installationResponse.getUri();
            this.f36012b = installationResponse.getFid();
            this.f36013c = installationResponse.getRefreshToken();
            this.f36014d = installationResponse.getAuthToken();
            this.f36015e = installationResponse.getResponseCode();
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InstallationResponse)) {
            return false;
        }
        InstallationResponse installationResponse = (InstallationResponse) obj;
        String str = this.f36006a;
        if (str != null ? str.equals(installationResponse.getUri()) : installationResponse.getUri() == null) {
            String str2 = this.f36007b;
            if (str2 != null ? str2.equals(installationResponse.getFid()) : installationResponse.getFid() == null) {
                String str3 = this.f36008c;
                if (str3 != null ? str3.equals(installationResponse.getRefreshToken()) : installationResponse.getRefreshToken() == null) {
                    TokenResult tokenResult = this.f36009d;
                    if (tokenResult != null ? tokenResult.equals(installationResponse.getAuthToken()) : installationResponse.getAuthToken() == null) {
                        InstallationResponse.ResponseCode responseCode = this.f36010e;
                        if (responseCode == null) {
                            if (installationResponse.getResponseCode() == null) {
                                return true;
                            }
                        } else if (responseCode.equals(installationResponse.getResponseCode())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    @Nullable
    public TokenResult getAuthToken() {
        return this.f36009d;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    @Nullable
    public String getFid() {
        return this.f36007b;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    @Nullable
    public String getRefreshToken() {
        return this.f36008c;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    @Nullable
    public InstallationResponse.ResponseCode getResponseCode() {
        return this.f36010e;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    @Nullable
    public String getUri() {
        return this.f36006a;
    }

    public int hashCode() {
        String str = this.f36006a;
        int hashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.f36007b;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f36008c;
        int hashCode3 = (hashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        TokenResult tokenResult = this.f36009d;
        int hashCode4 = (hashCode3 ^ (tokenResult == null ? 0 : tokenResult.hashCode())) * 1000003;
        InstallationResponse.ResponseCode responseCode = this.f36010e;
        return hashCode4 ^ (responseCode != null ? responseCode.hashCode() : 0);
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    public InstallationResponse.Builder toBuilder() {
        return new b(this);
    }

    public String toString() {
        return "InstallationResponse{uri=" + this.f36006a + ", fid=" + this.f36007b + ", refreshToken=" + this.f36008c + ", authToken=" + this.f36009d + ", responseCode=" + this.f36010e + "}";
    }

    public C6473a(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable TokenResult tokenResult, @Nullable InstallationResponse.ResponseCode responseCode) {
        this.f36006a = str;
        this.f36007b = str2;
        this.f36008c = str3;
        this.f36009d = tokenResult;
        this.f36010e = responseCode;
    }
}
