package com.google.android.gms.auth.api;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zbd;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.p122authapi.zbl;
import com.sunia.HTREnginev2.scp;

/* loaded from: classes5.dex */
public final class Auth {

    @NonNull
    public static final Api<AuthCredentialsOptions> CREDENTIALS_API;

    @NonNull
    public static final CredentialsApi CredentialsApi;

    @NonNull
    public static final Api<GoogleSignInOptions> GOOGLE_SIGN_IN_API;

    @NonNull
    public static final GoogleSignInApi GoogleSignInApi;

    @NonNull
    @Deprecated
    @ShowFirstParty
    @KeepForSdk
    public static final Api<AuthProxyOptions> PROXY_API;

    @NonNull
    @Deprecated
    @ShowFirstParty
    @KeepForSdk
    public static final ProxyApi ProxyApi;

    /* renamed from: a */
    public static final Api.AbstractClientBuilder f28857a;

    /* renamed from: b */
    public static final Api.AbstractClientBuilder f28858b;

    @NonNull
    public static final Api.ClientKey zba;

    @NonNull
    public static final Api.ClientKey zbb;

    @Deprecated
    /* loaded from: classes5.dex */
    public static class AuthCredentialsOptions implements Api.ApiOptions.Optional {

        @NonNull
        public static final AuthCredentialsOptions zba = new AuthCredentialsOptions(new Builder());

        /* renamed from: e */
        public final String f28859e = null;

        /* renamed from: f */
        public final boolean f28860f;

        /* renamed from: g */
        @Nullable
        public final String f28861g;

        @Deprecated
        /* loaded from: classes5.dex */
        public static class Builder {

            @NonNull
            protected Boolean zba;

            @Nullable
            protected String zbb;

            public Builder() {
                this.zba = Boolean.FALSE;
            }

            @NonNull
            public Builder forceEnableSaveDialog() {
                this.zba = Boolean.TRUE;
                return this;
            }

            @NonNull
            @ShowFirstParty
            public final Builder zba(@NonNull String str) {
                this.zbb = str;
                return this;
            }

            @ShowFirstParty
            public Builder(@NonNull AuthCredentialsOptions authCredentialsOptions) {
                this.zba = Boolean.FALSE;
                AuthCredentialsOptions.m21888a(authCredentialsOptions);
                this.zba = Boolean.valueOf(authCredentialsOptions.f28860f);
                this.zbb = authCredentialsOptions.f28861g;
            }
        }

        public AuthCredentialsOptions(@NonNull Builder builder) {
            this.f28860f = builder.zba.booleanValue();
            this.f28861g = builder.zbb;
        }

        /* renamed from: a */
        public static /* bridge */ /* synthetic */ String m21888a(AuthCredentialsOptions authCredentialsOptions) {
            String str = authCredentialsOptions.f28859e;
            return null;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AuthCredentialsOptions)) {
                return false;
            }
            AuthCredentialsOptions authCredentialsOptions = (AuthCredentialsOptions) obj;
            String str = authCredentialsOptions.f28859e;
            return Objects.equal(null, null) && this.f28860f == authCredentialsOptions.f28860f && Objects.equal(this.f28861g, authCredentialsOptions.f28861g);
        }

        public int hashCode() {
            return Objects.hashCode(null, Boolean.valueOf(this.f28860f), this.f28861g);
        }

        @NonNull
        public final Bundle zba() {
            Bundle bundle = new Bundle();
            bundle.putString("consumer_package", null);
            bundle.putBoolean("force_save_dialog", this.f28860f);
            bundle.putString("log_session_id", this.f28861g);
            return bundle;
        }

        @Nullable
        public final String zbd() {
            return this.f28861g;
        }
    }

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zba = clientKey;
        Api.ClientKey clientKey2 = new Api.ClientKey();
        zbb = clientKey2;
        C5048a c5048a = new C5048a();
        f28857a = c5048a;
        scp scpVar = new scp();
        f28858b = scpVar;
        PROXY_API = AuthProxy.API;
        CREDENTIALS_API = new Api<>("Auth.CREDENTIALS_API", c5048a, clientKey);
        GOOGLE_SIGN_IN_API = new Api<>("Auth.GOOGLE_SIGN_IN_API", scpVar, clientKey2);
        ProxyApi = AuthProxy.ProxyApi;
        CredentialsApi = new zbl();
        GoogleSignInApi = new zbd();
    }
}
