package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.util.Strings;

/* loaded from: classes6.dex */
public final class FirebaseOptions {

    /* renamed from: h */
    public static final String f35529h = "google_api_key";

    /* renamed from: i */
    public static final String f35530i = "google_app_id";

    /* renamed from: j */
    public static final String f35531j = "firebase_database_url";

    /* renamed from: k */
    public static final String f35532k = "ga_trackingId";

    /* renamed from: l */
    public static final String f35533l = "gcm_defaultSenderId";

    /* renamed from: m */
    public static final String f35534m = "google_storage_bucket";

    /* renamed from: n */
    public static final String f35535n = "project_id";

    /* renamed from: a */
    public final String f35536a;

    /* renamed from: b */
    public final String f35537b;

    /* renamed from: c */
    public final String f35538c;

    /* renamed from: d */
    public final String f35539d;

    /* renamed from: e */
    public final String f35540e;

    /* renamed from: f */
    public final String f35541f;

    /* renamed from: g */
    public final String f35542g;

    /* loaded from: classes6.dex */
    public static final class Builder {

        /* renamed from: a */
        public String f35543a;

        /* renamed from: b */
        public String f35544b;

        /* renamed from: c */
        public String f35545c;

        /* renamed from: d */
        public String f35546d;

        /* renamed from: e */
        public String f35547e;

        /* renamed from: f */
        public String f35548f;

        /* renamed from: g */
        public String f35549g;

        public Builder() {
        }

        @NonNull
        public FirebaseOptions build() {
            return new FirebaseOptions(this.f35544b, this.f35543a, this.f35545c, this.f35546d, this.f35547e, this.f35548f, this.f35549g);
        }

        @NonNull
        public Builder setApiKey(@NonNull String str) {
            this.f35543a = Preconditions.checkNotEmpty(str, "ApiKey must be set.");
            return this;
        }

        @NonNull
        public Builder setApplicationId(@NonNull String str) {
            this.f35544b = Preconditions.checkNotEmpty(str, "ApplicationId must be set.");
            return this;
        }

        @NonNull
        public Builder setDatabaseUrl(@Nullable String str) {
            this.f35545c = str;
            return this;
        }

        @NonNull
        @KeepForSdk
        public Builder setGaTrackingId(@Nullable String str) {
            this.f35546d = str;
            return this;
        }

        @NonNull
        public Builder setGcmSenderId(@Nullable String str) {
            this.f35547e = str;
            return this;
        }

        @NonNull
        public Builder setProjectId(@Nullable String str) {
            this.f35549g = str;
            return this;
        }

        @NonNull
        public Builder setStorageBucket(@Nullable String str) {
            this.f35548f = str;
            return this;
        }

        public Builder(@NonNull FirebaseOptions firebaseOptions) {
            this.f35544b = firebaseOptions.f35537b;
            this.f35543a = firebaseOptions.f35536a;
            this.f35545c = firebaseOptions.f35538c;
            this.f35546d = firebaseOptions.f35539d;
            this.f35547e = firebaseOptions.f35540e;
            this.f35548f = firebaseOptions.f35541f;
            this.f35549g = firebaseOptions.f35542g;
        }
    }

    @Nullable
    public static FirebaseOptions fromResource(@NonNull Context context) {
        StringResourceValueReader stringResourceValueReader = new StringResourceValueReader(context);
        String string = stringResourceValueReader.getString(f35530i);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return new FirebaseOptions(string, stringResourceValueReader.getString(f35529h), stringResourceValueReader.getString(f35531j), stringResourceValueReader.getString(f35532k), stringResourceValueReader.getString(f35533l), stringResourceValueReader.getString(f35534m), stringResourceValueReader.getString(f35535n));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FirebaseOptions)) {
            return false;
        }
        FirebaseOptions firebaseOptions = (FirebaseOptions) obj;
        return Objects.equal(this.f35537b, firebaseOptions.f35537b) && Objects.equal(this.f35536a, firebaseOptions.f35536a) && Objects.equal(this.f35538c, firebaseOptions.f35538c) && Objects.equal(this.f35539d, firebaseOptions.f35539d) && Objects.equal(this.f35540e, firebaseOptions.f35540e) && Objects.equal(this.f35541f, firebaseOptions.f35541f) && Objects.equal(this.f35542g, firebaseOptions.f35542g);
    }

    @NonNull
    public String getApiKey() {
        return this.f35536a;
    }

    @NonNull
    public String getApplicationId() {
        return this.f35537b;
    }

    @Nullable
    public String getDatabaseUrl() {
        return this.f35538c;
    }

    @Nullable
    @KeepForSdk
    public String getGaTrackingId() {
        return this.f35539d;
    }

    @Nullable
    public String getGcmSenderId() {
        return this.f35540e;
    }

    @Nullable
    public String getProjectId() {
        return this.f35542g;
    }

    @Nullable
    public String getStorageBucket() {
        return this.f35541f;
    }

    public int hashCode() {
        return Objects.hashCode(this.f35537b, this.f35536a, this.f35538c, this.f35539d, this.f35540e, this.f35541f, this.f35542g);
    }

    public String toString() {
        return Objects.toStringHelper(this).add("applicationId", this.f35537b).add("apiKey", this.f35536a).add("databaseUrl", this.f35538c).add("gcmSenderId", this.f35540e).add("storageBucket", this.f35541f).add("projectId", this.f35542g).toString();
    }

    public FirebaseOptions(@NonNull String str, @NonNull String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
        Preconditions.checkState(!Strings.isEmptyOrWhitespace(str), "ApplicationId must be set.");
        this.f35537b = str;
        this.f35536a = str2;
        this.f35538c = str3;
        this.f35539d = str4;
        this.f35540e = str5;
        this.f35541f = str6;
        this.f35542g = str7;
    }
}
