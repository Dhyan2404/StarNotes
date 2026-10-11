package com.google.firebase.installations;

import androidx.annotation.NonNull;
import com.google.firebase.installations.InstallationTokenResult;

/* renamed from: com.google.firebase.installations.a */
/* loaded from: classes6.dex */
public final class C6469a extends InstallationTokenResult {

    /* renamed from: a */
    public final String f35928a;

    /* renamed from: b */
    public final long f35929b;

    /* renamed from: c */
    public final long f35930c;

    /* renamed from: com.google.firebase.installations.a$b */
    /* loaded from: classes6.dex */
    public static final class b extends InstallationTokenResult.Builder {

        /* renamed from: a */
        public String f35931a;

        /* renamed from: b */
        public Long f35932b;

        /* renamed from: c */
        public Long f35933c;

        @Override // com.google.firebase.installations.InstallationTokenResult.Builder
        public InstallationTokenResult build() {
            String str = "";
            if (this.f35931a == null) {
                str = " token";
            }
            if (this.f35932b == null) {
                str = str + " tokenExpirationTimestamp";
            }
            if (this.f35933c == null) {
                str = str + " tokenCreationTimestamp";
            }
            if (str.isEmpty()) {
                return new C6469a(this.f35931a, this.f35932b.longValue(), this.f35933c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.installations.InstallationTokenResult.Builder
        public InstallationTokenResult.Builder setToken(String str) {
            if (str == null) {
                throw new NullPointerException("Null token");
            }
            this.f35931a = str;
            return this;
        }

        @Override // com.google.firebase.installations.InstallationTokenResult.Builder
        public InstallationTokenResult.Builder setTokenCreationTimestamp(long j) {
            this.f35933c = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.installations.InstallationTokenResult.Builder
        public InstallationTokenResult.Builder setTokenExpirationTimestamp(long j) {
            this.f35932b = Long.valueOf(j);
            return this;
        }

        public b() {
        }

        public b(InstallationTokenResult installationTokenResult) {
            this.f35931a = installationTokenResult.getToken();
            this.f35932b = Long.valueOf(installationTokenResult.getTokenExpirationTimestamp());
            this.f35933c = Long.valueOf(installationTokenResult.getTokenCreationTimestamp());
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InstallationTokenResult)) {
            return false;
        }
        InstallationTokenResult installationTokenResult = (InstallationTokenResult) obj;
        return this.f35928a.equals(installationTokenResult.getToken()) && this.f35929b == installationTokenResult.getTokenExpirationTimestamp() && this.f35930c == installationTokenResult.getTokenCreationTimestamp();
    }

    @Override // com.google.firebase.installations.InstallationTokenResult
    @NonNull
    public String getToken() {
        return this.f35928a;
    }

    @Override // com.google.firebase.installations.InstallationTokenResult
    @NonNull
    public long getTokenCreationTimestamp() {
        return this.f35930c;
    }

    @Override // com.google.firebase.installations.InstallationTokenResult
    @NonNull
    public long getTokenExpirationTimestamp() {
        return this.f35929b;
    }

    public int hashCode() {
        int hashCode = (this.f35928a.hashCode() ^ 1000003) * 1000003;
        long j = this.f35929b;
        long j2 = this.f35930c;
        return ((int) (j2 ^ (j2 >>> 32))) ^ ((hashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003);
    }

    @Override // com.google.firebase.installations.InstallationTokenResult
    public InstallationTokenResult.Builder toBuilder() {
        return new b(this);
    }

    public String toString() {
        return "InstallationTokenResult{token=" + this.f35928a + ", tokenExpirationTimestamp=" + this.f35929b + ", tokenCreationTimestamp=" + this.f35930c + "}";
    }

    public C6469a(String str, long j, long j2) {
        this.f35928a = str;
        this.f35929b = j;
        this.f35930c = j2;
    }
}
