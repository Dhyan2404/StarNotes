package com.google.firebase.auth;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes6.dex */
public class TotpMultiFactorAssertion extends MultiFactorAssertion {

    /* renamed from: a */
    public final String f35657a;

    /* renamed from: b */
    @Nullable
    public final TotpSecret f35658b;

    /* renamed from: c */
    @Nullable
    public final String f35659c;

    public TotpMultiFactorAssertion(@NonNull String str, @Nullable TotpSecret totpSecret, @Nullable String str2) {
        this.f35657a = Preconditions.checkNotEmpty(str);
        this.f35658b = totpSecret;
        this.f35659c = str2;
    }

    @Override // com.google.firebase.auth.MultiFactorAssertion
    @NonNull
    public String getFactorId() {
        return TotpMultiFactorGenerator.FACTOR_ID;
    }

    @Nullable
    public final TotpSecret zza() {
        return this.f35658b;
    }

    @Nullable
    public final String zzb() {
        return this.f35659c;
    }

    @NonNull
    public final String zzc() {
        return this.f35657a;
    }
}
