package com.google.firebase.auth;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p124firebaseauthapi.zzact;
import com.google.android.gms.internal.p124firebaseauthapi.zzaec;
import com.google.firebase.auth.internal.GenericIdpActivity;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes6.dex */
public class OAuthProvider extends FederatedAuthProvider {

    /* renamed from: a */
    public final Bundle f35626a;

    /* loaded from: classes6.dex */
    public static class Builder {

        /* renamed from: a */
        public final FirebaseAuth f35627a;

        /* renamed from: b */
        @VisibleForTesting
        public final Bundle f35628b;

        /* renamed from: c */
        public final Bundle f35629c;

        @NonNull
        public Builder addCustomParameter(@NonNull String str, @NonNull String str2) {
            this.f35629c.putString(str, str2);
            return this;
        }

        @NonNull
        public Builder addCustomParameters(@NonNull Map<String, String> map) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                this.f35629c.putString(entry.getKey(), entry.getValue());
            }
            return this;
        }

        @NonNull
        public OAuthProvider build() {
            return new OAuthProvider(this.f35628b);
        }

        @NonNull
        @KeepForSdk
        public List<String> getScopes() {
            ArrayList<String> stringArrayList = this.f35628b.getStringArrayList("com.google.firebase.auth.KEY_PROVIDER_SCOPES");
            return stringArrayList != null ? stringArrayList : Collections.emptyList();
        }

        @NonNull
        public Builder setScopes(@NonNull List<String> list) {
            this.f35628b.putStringArrayList("com.google.firebase.auth.KEY_PROVIDER_SCOPES", new ArrayList<>(list));
            return this;
        }

        public Builder(String str, FirebaseAuth firebaseAuth) {
            Bundle bundle = new Bundle();
            this.f35628b = bundle;
            Bundle bundle2 = new Bundle();
            this.f35629c = bundle2;
            this.f35627a = firebaseAuth;
            bundle.putString("com.google.firebase.auth.KEY_API_KEY", firebaseAuth.getApp().getOptions().getApiKey());
            bundle.putString("com.google.firebase.auth.KEY_PROVIDER_ID", str);
            bundle.putBundle("com.google.firebase.auth.KEY_PROVIDER_CUSTOM_PARAMS", bundle2);
            bundle.putString("com.google.firebase.auth.internal.CLIENT_VERSION", zzact.zza().zzb());
            bundle.putString("com.google.firebase.auth.KEY_TENANT_ID", firebaseAuth.getTenantId());
            bundle.putString("com.google.firebase.auth.KEY_FIREBASE_APP_NAME", firebaseAuth.getApp().getName());
            bundle.putString("com.google.firebase.auth.KEY_CUSTOM_AUTH_DOMAIN", firebaseAuth.getCustomAuthDomain());
        }
    }

    /* loaded from: classes6.dex */
    public static class CredentialBuilder {

        /* renamed from: a */
        public final String f35630a;

        /* renamed from: b */
        @Nullable
        public String f35631b;

        /* renamed from: c */
        @Nullable
        public String f35632c;

        /* renamed from: d */
        @Nullable
        public String f35633d;

        @NonNull
        public AuthCredential build() {
            return zzf.zza(this.f35630a, this.f35631b, this.f35632c, this.f35633d);
        }

        @Nullable
        @KeepForSdk
        public String getAccessToken() {
            return this.f35632c;
        }

        @Nullable
        @KeepForSdk
        public String getIdToken() {
            return this.f35631b;
        }

        @NonNull
        public CredentialBuilder setAccessToken(@Nullable String str) {
            this.f35632c = str;
            return this;
        }

        @NonNull
        public CredentialBuilder setIdToken(@Nullable String str) {
            this.f35631b = str;
            return this;
        }

        @NonNull
        public CredentialBuilder setIdTokenWithRawNonce(@NonNull String str, @Nullable String str2) {
            this.f35631b = str;
            this.f35633d = str2;
            return this;
        }

        public CredentialBuilder(String str) {
            this.f35630a = str;
        }
    }

    @NonNull
    @Deprecated
    public static AuthCredential getCredential(@NonNull String str, @NonNull String str2, @NonNull String str3) {
        return zzf.zza(str, str2, str3);
    }

    @NonNull
    public static Builder newBuilder(@NonNull String str) {
        return newBuilder(str, FirebaseAuth.getInstance());
    }

    @NonNull
    public static CredentialBuilder newCredentialBuilder(@NonNull String str) {
        return new CredentialBuilder(Preconditions.checkNotEmpty(str));
    }

    @Nullable
    public String getProviderId() {
        Bundle bundle = this.f35626a;
        if (bundle == null) {
            return null;
        }
        return bundle.getString("com.google.firebase.auth.KEY_PROVIDER_ID");
    }

    @Override // com.google.firebase.auth.FederatedAuthProvider
    public final void zza(@NonNull Activity activity) {
        Intent intent = new Intent("com.google.firebase.auth.internal.NONGMSCORE_LINK");
        intent.setClass(activity, GenericIdpActivity.class);
        intent.setPackage(activity.getPackageName());
        intent.putExtras(this.f35626a);
        activity.startActivity(intent);
    }

    @Override // com.google.firebase.auth.FederatedAuthProvider
    public final void zzb(@NonNull Activity activity) {
        Intent intent = new Intent("com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE");
        intent.setClass(activity, GenericIdpActivity.class);
        intent.setPackage(activity.getPackageName());
        intent.putExtras(this.f35626a);
        activity.startActivity(intent);
    }

    @Override // com.google.firebase.auth.FederatedAuthProvider
    public final void zzc(@NonNull Activity activity) {
        Intent intent = new Intent("com.google.firebase.auth.internal.NONGMSCORE_SIGN_IN");
        intent.setClass(activity, GenericIdpActivity.class);
        intent.setPackage(activity.getPackageName());
        intent.putExtras(this.f35626a);
        activity.startActivity(intent);
    }

    public OAuthProvider(Bundle bundle) {
        this.f35626a = bundle;
    }

    @NonNull
    public static Builder newBuilder(@NonNull String str, @NonNull FirebaseAuth firebaseAuth) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(firebaseAuth);
        if ("facebook.com".equals(str) && !zzaec.zza(firebaseAuth.getApp())) {
            throw new IllegalArgumentException("Sign in with Facebook is not supported via this method; the Facebook TOS dictate that you must use the Facebook Android SDK for Facebook login.");
        }
        return new Builder(str, firebaseAuth);
    }
}
