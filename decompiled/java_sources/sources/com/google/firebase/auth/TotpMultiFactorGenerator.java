package com.google.firebase.auth;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.internal.zzaj;

/* loaded from: classes6.dex */
public final class TotpMultiFactorGenerator {

    @NonNull
    public static final String FACTOR_ID = "totp";

    @NonNull
    public static Task<TotpSecret> generateSecret(@NonNull MultiFactorSession multiFactorSession) {
        Preconditions.checkNotNull(multiFactorSession);
        zzaj zzajVar = (zzaj) multiFactorSession;
        return FirebaseAuth.getInstance(zzajVar.zza().zza()).zza(zzajVar);
    }

    @NonNull
    public static TotpMultiFactorAssertion getAssertionForEnrollment(@NonNull TotpSecret totpSecret, @NonNull String str) {
        return new TotpMultiFactorAssertion((String) Preconditions.checkNotNull(str), (TotpSecret) Preconditions.checkNotNull(totpSecret), null);
    }

    @NonNull
    public static TotpMultiFactorAssertion getAssertionForSignIn(@NonNull String str, @NonNull String str2) {
        return new TotpMultiFactorAssertion((String) Preconditions.checkNotNull(str2), null, (String) Preconditions.checkNotNull(str));
    }
}
