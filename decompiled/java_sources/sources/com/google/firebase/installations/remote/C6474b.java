package com.google.firebase.installations.remote;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.installations.remote.TokenResult;

/* renamed from: com.google.firebase.installations.remote.b */
/* loaded from: classes6.dex */
public final class C6474b extends TokenResult {

    /* renamed from: a */
    public final String f36016a;

    /* renamed from: b */
    public final long f36017b;

    /* renamed from: c */
    public final TokenResult.ResponseCode f36018c;

    /* renamed from: com.google.firebase.installations.remote.b$b */
    /* loaded from: classes6.dex */
    public static final class b extends TokenResult.Builder {

        /* renamed from: a */
        public String f36019a;

        /* renamed from: b */
        public Long f36020b;

        /* renamed from: c */
        public TokenResult.ResponseCode f36021c;

        @Override // com.google.firebase.installations.remote.TokenResult.Builder
        public TokenResult build() {
            String str = "";
            if (this.f36020b == null) {
                str = " tokenExpirationTimestamp";
            }
            if (str.isEmpty()) {
                return new C6474b(this.f36019a, this.f36020b.longValue(), this.f36021c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.installations.remote.TokenResult.Builder
        public TokenResult.Builder setResponseCode(TokenResult.ResponseCode responseCode) {
            this.f36021c = responseCode;
            return this;
        }

        @Override // com.google.firebase.installations.remote.TokenResult.Builder
        public TokenResult.Builder setToken(String str) {
            this.f36019a = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.TokenResult.Builder
        public TokenResult.Builder setTokenExpirationTimestamp(long j) {
            this.f36020b = Long.valueOf(j);
            return this;
        }

        public b() {
        }

        public b(TokenResult tokenResult) {
            this.f36019a = tokenResult.getToken();
            this.f36020b = Long.valueOf(tokenResult.getTokenExpirationTimestamp());
            this.f36021c = tokenResult.getResponseCode();
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TokenResult)) {
            return false;
        }
        TokenResult tokenResult = (TokenResult) obj;
        String str = this.f36016a;
        if (str != null ? str.equals(tokenResult.getToken()) : tokenResult.getToken() == null) {
            if (this.f36017b == tokenResult.getTokenExpirationTimestamp()) {
                TokenResult.ResponseCode responseCode = this.f36018c;
                if (responseCode == null) {
                    if (tokenResult.getResponseCode() == null) {
                        return true;
                    }
                } else if (responseCode.equals(tokenResult.getResponseCode())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    @Nullable
    public TokenResult.ResponseCode getResponseCode() {
        return this.f36018c;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    @Nullable
    public String getToken() {
        return this.f36016a;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    @NonNull
    public long getTokenExpirationTimestamp() {
        return this.f36017b;
    }

    public int hashCode() {
        String str = this.f36016a;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.f36017b;
        int i = (((hashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        TokenResult.ResponseCode responseCode = this.f36018c;
        return i ^ (responseCode != null ? responseCode.hashCode() : 0);
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    public TokenResult.Builder toBuilder() {
        return new b(this);
    }

    public String toString() {
        return "TokenResult{token=" + this.f36016a + ", tokenExpirationTimestamp=" + this.f36017b + ", responseCode=" + this.f36018c + "}";
    }

    public C6474b(@Nullable String str, long j, @Nullable TokenResult.ResponseCode responseCode) {
        this.f36016a = str;
        this.f36017b = j;
        this.f36018c = responseCode;
    }
}
