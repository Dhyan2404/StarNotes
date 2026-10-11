package com.google.firebase.installations.local;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.local.PersistedInstallationEntry;

/* renamed from: com.google.firebase.installations.local.a */
/* loaded from: classes6.dex */
public final class C6472a extends PersistedInstallationEntry {

    /* renamed from: a */
    public final String f35956a;

    /* renamed from: b */
    public final PersistedInstallation.RegistrationStatus f35957b;

    /* renamed from: c */
    public final String f35958c;

    /* renamed from: d */
    public final String f35959d;

    /* renamed from: e */
    public final long f35960e;

    /* renamed from: f */
    public final long f35961f;

    /* renamed from: g */
    public final String f35962g;

    /* renamed from: com.google.firebase.installations.local.a$b */
    /* loaded from: classes6.dex */
    public static final class b extends PersistedInstallationEntry.Builder {

        /* renamed from: a */
        public String f35963a;

        /* renamed from: b */
        public PersistedInstallation.RegistrationStatus f35964b;

        /* renamed from: c */
        public String f35965c;

        /* renamed from: d */
        public String f35966d;

        /* renamed from: e */
        public Long f35967e;

        /* renamed from: f */
        public Long f35968f;

        /* renamed from: g */
        public String f35969g;

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry build() {
            String str = "";
            if (this.f35964b == null) {
                str = " registrationStatus";
            }
            if (this.f35967e == null) {
                str = str + " expiresInSecs";
            }
            if (this.f35968f == null) {
                str = str + " tokenCreationEpochInSecs";
            }
            if (str.isEmpty()) {
                return new C6472a(this.f35963a, this.f35964b, this.f35965c, this.f35966d, this.f35967e.longValue(), this.f35968f.longValue(), this.f35969g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder setAuthToken(@Nullable String str) {
            this.f35965c = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder setExpiresInSecs(long j) {
            this.f35967e = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder setFirebaseInstallationId(String str) {
            this.f35963a = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder setFisError(@Nullable String str) {
            this.f35969g = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder setRefreshToken(@Nullable String str) {
            this.f35966d = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder setRegistrationStatus(PersistedInstallation.RegistrationStatus registrationStatus) {
            if (registrationStatus == null) {
                throw new NullPointerException("Null registrationStatus");
            }
            this.f35964b = registrationStatus;
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder setTokenCreationEpochInSecs(long j) {
            this.f35968f = Long.valueOf(j);
            return this;
        }

        public b() {
        }

        public b(PersistedInstallationEntry persistedInstallationEntry) {
            this.f35963a = persistedInstallationEntry.getFirebaseInstallationId();
            this.f35964b = persistedInstallationEntry.getRegistrationStatus();
            this.f35965c = persistedInstallationEntry.getAuthToken();
            this.f35966d = persistedInstallationEntry.getRefreshToken();
            this.f35967e = Long.valueOf(persistedInstallationEntry.getExpiresInSecs());
            this.f35968f = Long.valueOf(persistedInstallationEntry.getTokenCreationEpochInSecs());
            this.f35969g = persistedInstallationEntry.getFisError();
        }
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PersistedInstallationEntry)) {
            return false;
        }
        PersistedInstallationEntry persistedInstallationEntry = (PersistedInstallationEntry) obj;
        String str3 = this.f35956a;
        if (str3 != null ? str3.equals(persistedInstallationEntry.getFirebaseInstallationId()) : persistedInstallationEntry.getFirebaseInstallationId() == null) {
            if (this.f35957b.equals(persistedInstallationEntry.getRegistrationStatus()) && ((str = this.f35958c) != null ? str.equals(persistedInstallationEntry.getAuthToken()) : persistedInstallationEntry.getAuthToken() == null) && ((str2 = this.f35959d) != null ? str2.equals(persistedInstallationEntry.getRefreshToken()) : persistedInstallationEntry.getRefreshToken() == null) && this.f35960e == persistedInstallationEntry.getExpiresInSecs() && this.f35961f == persistedInstallationEntry.getTokenCreationEpochInSecs()) {
                String str4 = this.f35962g;
                if (str4 == null) {
                    if (persistedInstallationEntry.getFisError() == null) {
                        return true;
                    }
                } else if (str4.equals(persistedInstallationEntry.getFisError())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    @Nullable
    public String getAuthToken() {
        return this.f35958c;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public long getExpiresInSecs() {
        return this.f35960e;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    @Nullable
    public String getFirebaseInstallationId() {
        return this.f35956a;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    @Nullable
    public String getFisError() {
        return this.f35962g;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    @Nullable
    public String getRefreshToken() {
        return this.f35959d;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    @NonNull
    public PersistedInstallation.RegistrationStatus getRegistrationStatus() {
        return this.f35957b;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public long getTokenCreationEpochInSecs() {
        return this.f35961f;
    }

    public int hashCode() {
        String str = this.f35956a;
        int hashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ this.f35957b.hashCode()) * 1000003;
        String str2 = this.f35958c;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f35959d;
        int hashCode3 = (hashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        long j = this.f35960e;
        int i = (hashCode3 ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.f35961f;
        int i2 = (i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        String str4 = this.f35962g;
        return i2 ^ (str4 != null ? str4.hashCode() : 0);
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public PersistedInstallationEntry.Builder toBuilder() {
        return new b(this);
    }

    public String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.f35956a + ", registrationStatus=" + this.f35957b + ", authToken=" + this.f35958c + ", refreshToken=" + this.f35959d + ", expiresInSecs=" + this.f35960e + ", tokenCreationEpochInSecs=" + this.f35961f + ", fisError=" + this.f35962g + "}";
    }

    public C6472a(@Nullable String str, PersistedInstallation.RegistrationStatus registrationStatus, @Nullable String str2, @Nullable String str3, long j, long j2, @Nullable String str4) {
        this.f35956a = str;
        this.f35957b = registrationStatus;
        this.f35958c = str2;
        this.f35959d = str3;
        this.f35960e = j;
        this.f35961f = j2;
        this.f35962g = str4;
    }
}
