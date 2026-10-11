package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.collection.ArraySet;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.signin.SignInOptions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

@KeepForSdk
/* loaded from: classes5.dex */
public final class ClientSettings {

    /* renamed from: a */
    @Nullable
    public final Account f29339a;

    /* renamed from: b */
    public final Set f29340b;

    /* renamed from: c */
    public final Set f29341c;

    /* renamed from: d */
    public final Map f29342d;

    /* renamed from: e */
    public final int f29343e;

    /* renamed from: f */
    @Nullable
    public final View f29344f;

    /* renamed from: g */
    public final String f29345g;

    /* renamed from: h */
    public final String f29346h;

    /* renamed from: i */
    public final SignInOptions f29347i;

    /* renamed from: j */
    public Integer f29348j;

    @KeepForSdk
    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        @Nullable
        public Account f29349a;

        /* renamed from: b */
        public ArraySet f29350b;

        /* renamed from: c */
        public String f29351c;

        /* renamed from: d */
        public String f29352d;

        /* renamed from: e */
        public final SignInOptions f29353e = SignInOptions.zaa;

        @NonNull
        @KeepForSdk
        public ClientSettings build() {
            return new ClientSettings(this.f29349a, this.f29350b, null, 0, null, this.f29351c, this.f29352d, this.f29353e, false);
        }

        @NonNull
        @CanIgnoreReturnValue
        @KeepForSdk
        public Builder setRealClientPackageName(@NonNull String str) {
            this.f29351c = str;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public final Builder zaa(@NonNull Collection collection) {
            if (this.f29350b == null) {
                this.f29350b = new ArraySet();
            }
            this.f29350b.addAll(collection);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public final Builder zab(@Nullable Account account) {
            this.f29349a = account;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public final Builder zac(@NonNull String str) {
            this.f29352d = str;
            return this;
        }
    }

    @KeepForSdk
    public ClientSettings(@NonNull Account account, @NonNull Set<Scope> set, @NonNull Map<Api<?>, zab> map, int i, @Nullable View view, @NonNull String str, @NonNull String str2, @Nullable SignInOptions signInOptions) {
        this(account, set, map, i, view, str, str2, signInOptions, false);
    }

    @NonNull
    @KeepForSdk
    public static ClientSettings createDefault(@NonNull Context context) {
        return new GoogleApiClient.Builder(context).zaa();
    }

    @androidx.annotation.Nullable
    @KeepForSdk
    public Account getAccount() {
        return this.f29339a;
    }

    @androidx.annotation.Nullable
    @KeepForSdk
    @Deprecated
    public String getAccountName() {
        Account account = this.f29339a;
        if (account != null) {
            return account.name;
        }
        return null;
    }

    @NonNull
    @KeepForSdk
    public Account getAccountOrDefault() {
        Account account = this.f29339a;
        return account != null ? account : new Account("<<default account>>", "com.google");
    }

    @NonNull
    @KeepForSdk
    public Set<Scope> getAllRequestedScopes() {
        return this.f29341c;
    }

    @NonNull
    @KeepForSdk
    public Set<Scope> getApplicableScopes(@NonNull Api<?> api) {
        zab zabVar = (zab) this.f29342d.get(api);
        if (zabVar == null || zabVar.zaa.isEmpty()) {
            return this.f29340b;
        }
        HashSet hashSet = new HashSet(this.f29340b);
        hashSet.addAll(zabVar.zaa);
        return hashSet;
    }

    @KeepForSdk
    public int getGravityForPopups() {
        return this.f29343e;
    }

    @NonNull
    @KeepForSdk
    public String getRealClientPackageName() {
        return this.f29345g;
    }

    @NonNull
    @KeepForSdk
    public Set<Scope> getRequiredScopes() {
        return this.f29340b;
    }

    @androidx.annotation.Nullable
    @KeepForSdk
    public View getViewForPopups() {
        return this.f29344f;
    }

    @NonNull
    public final SignInOptions zaa() {
        return this.f29347i;
    }

    @androidx.annotation.Nullable
    public final Integer zab() {
        return this.f29348j;
    }

    @androidx.annotation.Nullable
    public final String zac() {
        return this.f29346h;
    }

    @NonNull
    public final Map zad() {
        return this.f29342d;
    }

    public final void zae(@NonNull Integer num) {
        this.f29348j = num;
    }

    public ClientSettings(@Nullable Account account, @NonNull Set set, @NonNull Map map, int i, @Nullable View view, @NonNull String str, @NonNull String str2, @Nullable SignInOptions signInOptions, boolean z) {
        this.f29339a = account;
        Set emptySet = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.f29340b = emptySet;
        map = map == null ? Collections.emptyMap() : map;
        this.f29342d = map;
        this.f29344f = view;
        this.f29343e = i;
        this.f29345g = str;
        this.f29346h = str2;
        this.f29347i = signInOptions == null ? SignInOptions.zaa : signInOptions;
        HashSet hashSet = new HashSet(emptySet);
        Iterator it2 = map.values().iterator();
        while (it2.hasNext()) {
            hashSet.addAll(((zab) it2.next()).zaa);
        }
        this.f29341c = Collections.unmodifiableSet(hashSet);
    }
}
