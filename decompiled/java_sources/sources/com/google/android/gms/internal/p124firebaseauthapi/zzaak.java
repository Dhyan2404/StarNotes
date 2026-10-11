package com.google.android.gms.internal.p124firebaseauthapi;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseError;
import com.google.firebase.auth.ActionCodeResult;
import com.google.firebase.auth.ActionCodeSettings;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.EmailAuthCredential;
import com.google.firebase.auth.FirebaseAuthProvider;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.GetTokenResult;
import com.google.firebase.auth.PhoneAuthCredential;
import com.google.firebase.auth.PhoneAuthProvider;
import com.google.firebase.auth.PhoneMultiFactorAssertion;
import com.google.firebase.auth.PhoneMultiFactorInfo;
import com.google.firebase.auth.SignInMethodQueryResult;
import com.google.firebase.auth.TotpMultiFactorAssertion;
import com.google.firebase.auth.UserProfileChangeRequest;
import com.google.firebase.auth.internal.zzac;
import com.google.firebase.auth.internal.zzae;
import com.google.firebase.auth.internal.zzaj;
import com.google.firebase.auth.internal.zzar;
import com.google.firebase.auth.internal.zzas;
import com.google.firebase.auth.internal.zzbh;
import com.google.firebase.auth.internal.zzbz;
import com.google.firebase.auth.internal.zzi;
import com.google.firebase.auth.internal.zzy;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes5.dex */
public final class zzaak extends zzadj {
    public zzaak(FirebaseApp firebaseApp, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        this.zza = new zzaci(firebaseApp, scheduledExecutorService);
        this.zzb = executor;
    }

    public final Task<Void> zza(FirebaseApp firebaseApp, String str, @Nullable String str2) {
        return zza((zzaaj) new zzaaj(str, str2).zza(firebaseApp));
    }

    public final Task<ActionCodeResult> zzb(FirebaseApp firebaseApp, String str, @Nullable String str2) {
        return zza((zzaam) new zzaam(str, str2).zza(firebaseApp));
    }

    public final Task<SignInMethodQueryResult> zzc(FirebaseApp firebaseApp, String str, @Nullable String str2) {
        return zza((zzaaq) new zzaaq(str, str2).zza(firebaseApp));
    }

    public final Task<Void> zzd(FirebaseApp firebaseApp, FirebaseUser firebaseUser, String str, zzbz zzbzVar) {
        return zza((zzaca) new zzaca(str).zza(firebaseApp).zza(firebaseUser).zza((zzacz<Void, zzi>) zzbzVar).zza((zzar) zzbzVar));
    }

    public final Task<Void> zza(FirebaseApp firebaseApp, String str, String str2, @Nullable String str3) {
        return zza((zzaal) new zzaal(str, str2, str3).zza(firebaseApp));
    }

    public final Task<Void> zzb(FirebaseApp firebaseApp, FirebaseUser firebaseUser, AuthCredential authCredential, @Nullable String str, zzbz zzbzVar) {
        return zza((zzaba) new zzaba(authCredential, str).zza(firebaseApp).zza(firebaseUser).zza((zzacz<Void, zzi>) zzbzVar).zza((zzar) zzbzVar));
    }

    public final Task<AuthResult> zzc(FirebaseApp firebaseApp, FirebaseUser firebaseUser, AuthCredential authCredential, @Nullable String str, zzbz zzbzVar) {
        return zza((zzaaz) new zzaaz(authCredential, str).zza(firebaseApp).zza(firebaseUser).zza((zzacz<AuthResult, zzi>) zzbzVar).zza((zzar) zzbzVar));
    }

    public final Task<AuthResult> zza(FirebaseApp firebaseApp, String str, String str2, String str3, @Nullable String str4, zzi zziVar) {
        return zza((zzaao) new zzaao(str, str2, str3, str4).zza(firebaseApp).zza((zzacz<AuthResult, zzi>) zziVar));
    }

    public final Task<String> zzd(FirebaseApp firebaseApp, String str, @Nullable String str2) {
        return zza((zzace) new zzace(str, str2).zza(firebaseApp));
    }

    public final Task<AuthResult> zzb(FirebaseApp firebaseApp, FirebaseUser firebaseUser, EmailAuthCredential emailAuthCredential, @Nullable String str, zzbz zzbzVar) {
        return zza((zzabb) new zzabb(emailAuthCredential, str).zza(firebaseApp).zza(firebaseUser).zza((zzacz<AuthResult, zzi>) zzbzVar).zza((zzar) zzbzVar));
    }

    public final Task<Void> zzc(FirebaseApp firebaseApp, FirebaseUser firebaseUser, String str, zzbz zzbzVar) {
        return zza((zzabx) new zzabx(str).zza(firebaseApp).zza(firebaseUser).zza((zzacz<Void, zzi>) zzbzVar).zza((zzar) zzbzVar));
    }

    @NonNull
    public final Task<Void> zza(FirebaseUser firebaseUser, zzas zzasVar) {
        return zza((zzaan) new zzaan().zza(firebaseUser).zza((zzacz<Void, zzas>) zzasVar).zza((zzar) zzasVar));
    }

    public final Task<Void> zza(FirebaseApp firebaseApp, PhoneMultiFactorAssertion phoneMultiFactorAssertion, FirebaseUser firebaseUser, @Nullable String str, zzi zziVar) {
        zzads.zza();
        zzaap zzaapVar = new zzaap(phoneMultiFactorAssertion, firebaseUser.zze(), str, null);
        zzaapVar.zza(firebaseApp).zza((zzacz<Void, zzi>) zziVar);
        return zza(zzaapVar);
    }

    public final Task<AuthResult> zzb(FirebaseApp firebaseApp, FirebaseUser firebaseUser, String str, String str2, @Nullable String str3, @Nullable String str4, zzbz zzbzVar) {
        return zza((zzabd) new zzabd(str, str2, str3, str4).zza(firebaseApp).zza(firebaseUser).zza((zzacz<AuthResult, zzi>) zzbzVar).zza((zzar) zzbzVar));
    }

    public final Task<Void> zza(FirebaseApp firebaseApp, TotpMultiFactorAssertion totpMultiFactorAssertion, FirebaseUser firebaseUser, @Nullable String str, @Nullable String str2, zzi zziVar) {
        zzaap zzaapVar = new zzaap(totpMultiFactorAssertion, firebaseUser.zze(), str, str2);
        zzaapVar.zza(firebaseApp).zza((zzacz<Void, zzi>) zziVar);
        return zza(zzaapVar);
    }

    public final Task<AuthResult> zzb(FirebaseApp firebaseApp, FirebaseUser firebaseUser, PhoneAuthCredential phoneAuthCredential, @Nullable String str, zzbz zzbzVar) {
        zzads.zza();
        return zza((zzabf) new zzabf(phoneAuthCredential, str).zza(firebaseApp).zza(firebaseUser).zza((zzacz<AuthResult, zzi>) zzbzVar).zza((zzar) zzbzVar));
    }

    public final Task<AuthResult> zza(FirebaseApp firebaseApp, @Nullable FirebaseUser firebaseUser, PhoneMultiFactorAssertion phoneMultiFactorAssertion, String str, zzi zziVar) {
        zzads.zza();
        zzaas zzaasVar = new zzaas(phoneMultiFactorAssertion, str, null);
        zzaasVar.zza(firebaseApp).zza((zzacz<AuthResult, zzi>) zziVar);
        if (firebaseUser != null) {
            zzaasVar.zza(firebaseUser);
        }
        return zza(zzaasVar);
    }

    public final Task<Void> zzb(FirebaseApp firebaseApp, String str, ActionCodeSettings actionCodeSettings, @Nullable String str2, @Nullable String str3) {
        actionCodeSettings.zza(6);
        return zza((zzabj) new zzabj(str, actionCodeSettings, str2, str3, "sendSignInLinkToEmail").zza(firebaseApp));
    }

    public final Task<AuthResult> zza(FirebaseApp firebaseApp, @Nullable FirebaseUser firebaseUser, TotpMultiFactorAssertion totpMultiFactorAssertion, String str, @Nullable String str2, zzi zziVar) {
        zzaas zzaasVar = new zzaas(totpMultiFactorAssertion, str, str2);
        zzaasVar.zza(firebaseApp).zza((zzacz<AuthResult, zzi>) zziVar);
        if (firebaseUser != null) {
            zzaasVar.zza(firebaseUser);
        }
        return zza(zzaasVar);
    }

    public final Task<AuthResult> zzb(FirebaseApp firebaseApp, String str, String str2, @Nullable String str3, @Nullable String str4, zzi zziVar) {
        return zza((zzabq) new zzabq(str, str2, str3, str4).zza(firebaseApp).zza((zzacz<AuthResult, zzi>) zziVar));
    }

    public final Task<GetTokenResult> zza(FirebaseApp firebaseApp, FirebaseUser firebaseUser, String str, zzbz zzbzVar) {
        return zza((zzaar) new zzaar(str).zza(firebaseApp).zza(firebaseUser).zza((zzacz<GetTokenResult, zzi>) zzbzVar).zza((zzar) zzbzVar));
    }

    public final Task<AuthResult> zzb(FirebaseApp firebaseApp, FirebaseUser firebaseUser, String str, zzbz zzbzVar) {
        Preconditions.checkNotNull(firebaseApp);
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(firebaseUser);
        Preconditions.checkNotNull(zzbzVar);
        List<String> zzg = firebaseUser.zzg();
        if ((zzg != null && !zzg.contains(str)) || firebaseUser.isAnonymous()) {
            return Tasks.forException(zzach.zza(new Status(FirebaseError.ERROR_NO_SUCH_PROVIDER, str)));
        }
        str.hashCode();
        if (!str.equals("password")) {
            return zza((zzaby) new zzaby(str).zza(firebaseApp).zza(firebaseUser).zza((zzacz<AuthResult, zzi>) zzbzVar).zza((zzar) zzbzVar));
        }
        return zza((zzabv) new zzabv().zza(firebaseApp).zza(firebaseUser).zza((zzacz<AuthResult, zzi>) zzbzVar).zza((zzar) zzbzVar));
    }

    public final Task<zzafi> zza() {
        return zza(new zzaau());
    }

    public final Task<zzafn> zza(@Nullable String str, String str2) {
        return zza(new zzaat(str, str2));
    }

    public final Task<AuthResult> zza(FirebaseApp firebaseApp, FirebaseUser firebaseUser, AuthCredential authCredential, @Nullable String str, zzbz zzbzVar) {
        Preconditions.checkNotNull(firebaseApp);
        Preconditions.checkNotNull(authCredential);
        Preconditions.checkNotNull(firebaseUser);
        Preconditions.checkNotNull(zzbzVar);
        List<String> zzg = firebaseUser.zzg();
        if (zzg != null && zzg.contains(authCredential.getProvider())) {
            return Tasks.forException(zzach.zza(new Status(FirebaseError.ERROR_PROVIDER_ALREADY_LINKED)));
        }
        if (authCredential instanceof EmailAuthCredential) {
            EmailAuthCredential emailAuthCredential = (EmailAuthCredential) authCredential;
            if (!emailAuthCredential.zzf()) {
                return zza((zzaaw) new zzaaw(emailAuthCredential, str).zza(firebaseApp).zza(firebaseUser).zza((zzacz<AuthResult, zzi>) zzbzVar).zza((zzar) zzbzVar));
            }
            return zza((zzaax) new zzaax(emailAuthCredential).zza(firebaseApp).zza(firebaseUser).zza((zzacz<AuthResult, zzi>) zzbzVar).zza((zzar) zzbzVar));
        }
        if (authCredential instanceof PhoneAuthCredential) {
            zzads.zza();
            return zza((zzaay) new zzaay((PhoneAuthCredential) authCredential).zza(firebaseApp).zza(firebaseUser).zza((zzacz<AuthResult, zzi>) zzbzVar).zza((zzar) zzbzVar));
        }
        Preconditions.checkNotNull(firebaseApp);
        Preconditions.checkNotNull(authCredential);
        Preconditions.checkNotNull(firebaseUser);
        Preconditions.checkNotNull(zzbzVar);
        return zza((zzaav) new zzaav(authCredential).zza(firebaseApp).zza(firebaseUser).zza((zzacz<AuthResult, zzi>) zzbzVar).zza((zzar) zzbzVar));
    }

    public final Task<Void> zza(FirebaseApp firebaseApp, FirebaseUser firebaseUser, EmailAuthCredential emailAuthCredential, @Nullable String str, zzbz zzbzVar) {
        return zza((zzabc) new zzabc(emailAuthCredential, str).zza(firebaseApp).zza(firebaseUser).zza((zzacz<Void, zzi>) zzbzVar).zza((zzar) zzbzVar));
    }

    public final Task<Void> zza(FirebaseApp firebaseApp, FirebaseUser firebaseUser, String str, String str2, @Nullable String str3, @Nullable String str4, zzbz zzbzVar) {
        return zza((zzabe) new zzabe(str, str2, str3, str4).zza(firebaseApp).zza(firebaseUser).zza((zzacz<Void, zzi>) zzbzVar).zza((zzar) zzbzVar));
    }

    public final Task<Void> zza(FirebaseApp firebaseApp, FirebaseUser firebaseUser, PhoneAuthCredential phoneAuthCredential, @Nullable String str, zzbz zzbzVar) {
        zzads.zza();
        return zza((zzabg) new zzabg(phoneAuthCredential, str).zza(firebaseApp).zza(firebaseUser).zza((zzacz<Void, zzi>) zzbzVar).zza((zzar) zzbzVar));
    }

    @NonNull
    public final Task<Void> zza(FirebaseApp firebaseApp, FirebaseUser firebaseUser, zzbz zzbzVar) {
        return zza((zzabi) new zzabi().zza(firebaseApp).zza(firebaseUser).zza((zzacz<Void, zzi>) zzbzVar).zza((zzar) zzbzVar));
    }

    public final Task<Void> zza(String str, String str2, String str3, @Nullable String str4) {
        return zza(new zzabh(str, str2, str3, str4));
    }

    public final Task<Void> zza(FirebaseApp firebaseApp, @Nullable ActionCodeSettings actionCodeSettings, String str) {
        return zza((zzabk) new zzabk(str, actionCodeSettings).zza(firebaseApp));
    }

    public final Task<Void> zza(FirebaseApp firebaseApp, String str, ActionCodeSettings actionCodeSettings, @Nullable String str2, @Nullable String str3) {
        actionCodeSettings.zza(1);
        return zza((zzabj) new zzabj(str, actionCodeSettings, str2, str3, "sendPasswordResetEmail").zza(firebaseApp));
    }

    @NonNull
    public final Task<Void> zza(@Nullable String str) {
        return zza(new zzabm(str));
    }

    public final Task<AuthResult> zza(FirebaseApp firebaseApp, zzi zziVar, @Nullable String str) {
        return zza((zzabl) new zzabl(str).zza(firebaseApp).zza((zzacz<AuthResult, zzi>) zziVar));
    }

    public final Task<AuthResult> zza(FirebaseApp firebaseApp, AuthCredential authCredential, @Nullable String str, zzi zziVar) {
        return zza((zzabo) new zzabo(authCredential, str).zza(firebaseApp).zza((zzacz<AuthResult, zzi>) zziVar));
    }

    public final Task<AuthResult> zza(FirebaseApp firebaseApp, String str, @Nullable String str2, zzi zziVar) {
        return zza((zzabn) new zzabn(str, str2).zza(firebaseApp).zza((zzacz<AuthResult, zzi>) zziVar));
    }

    public final Task<AuthResult> zza(FirebaseApp firebaseApp, EmailAuthCredential emailAuthCredential, @Nullable String str, zzi zziVar) {
        return zza((zzabp) new zzabp(emailAuthCredential, str).zza(firebaseApp).zza((zzacz<AuthResult, zzi>) zziVar));
    }

    public final Task<AuthResult> zza(FirebaseApp firebaseApp, PhoneAuthCredential phoneAuthCredential, @Nullable String str, zzi zziVar) {
        zzads.zza();
        return zza((zzabs) new zzabs(phoneAuthCredential, str).zza(firebaseApp).zza((zzacz<AuthResult, zzi>) zziVar));
    }

    public final Task<Void> zza(zzaj zzajVar, String str, @Nullable String str2, long j, boolean z, boolean z2, @Nullable String str3, @Nullable String str4, boolean z3, PhoneAuthProvider.OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, Executor executor, @Nullable Activity activity) {
        zzabr zzabrVar = new zzabr(zzajVar, str, str2, j, z, z2, str3, str4, z3);
        zzabrVar.zza(onVerificationStateChangedCallbacks, activity, executor, str);
        return zza(zzabrVar);
    }

    public final Task<zzagi> zza(zzaj zzajVar, @Nullable String str) {
        return zza(new zzabu(zzajVar, str));
    }

    public final Task<Void> zza(zzaj zzajVar, PhoneMultiFactorInfo phoneMultiFactorInfo, @Nullable String str, long j, boolean z, boolean z2, @Nullable String str2, @Nullable String str3, boolean z3, PhoneAuthProvider.OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, Executor executor, @Nullable Activity activity) {
        zzabt zzabtVar = new zzabt(phoneMultiFactorInfo, Preconditions.checkNotEmpty(zzajVar.zzc()), str, j, z, z2, str2, str3, z3);
        zzabtVar.zza(onVerificationStateChangedCallbacks, activity, executor, phoneMultiFactorInfo.getUid());
        return zza(zzabtVar);
    }

    public final Task<Void> zza(FirebaseApp firebaseApp, FirebaseUser firebaseUser, String str, @Nullable String str2, zzbz zzbzVar) {
        return zza((zzabw) new zzabw(firebaseUser.zze(), str, str2).zza(firebaseApp).zza(firebaseUser).zza((zzacz<Void, zzi>) zzbzVar).zza((zzar) zzbzVar));
    }

    public final Task<Void> zza(FirebaseApp firebaseApp, FirebaseUser firebaseUser, PhoneAuthCredential phoneAuthCredential, zzbz zzbzVar) {
        zzads.zza();
        return zza((zzabz) new zzabz(phoneAuthCredential).zza(firebaseApp).zza(firebaseUser).zza((zzacz<Void, zzi>) zzbzVar).zza((zzar) zzbzVar));
    }

    public final Task<Void> zza(FirebaseApp firebaseApp, FirebaseUser firebaseUser, UserProfileChangeRequest userProfileChangeRequest, zzbz zzbzVar) {
        return zza((zzacc) new zzacc(userProfileChangeRequest).zza(firebaseApp).zza(firebaseUser).zza((zzacz<Void, zzi>) zzbzVar).zza((zzar) zzbzVar));
    }

    public final Task<Void> zza(String str, String str2, ActionCodeSettings actionCodeSettings) {
        actionCodeSettings.zza(7);
        return zza(new zzacb(str, str2, actionCodeSettings));
    }

    @NonNull
    @VisibleForTesting
    public static zzac zza(FirebaseApp firebaseApp, zzaff zzaffVar) {
        Preconditions.checkNotNull(firebaseApp);
        Preconditions.checkNotNull(zzaffVar);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new zzy(zzaffVar, FirebaseAuthProvider.PROVIDER_ID));
        List<zzafv> zzl = zzaffVar.zzl();
        if (zzl != null && !zzl.isEmpty()) {
            for (int i = 0; i < zzl.size(); i++) {
                arrayList.add(new zzy(zzl.get(i)));
            }
        }
        zzac zzacVar = new zzac(firebaseApp, arrayList);
        zzacVar.zza(new zzae(zzaffVar.zzb(), zzaffVar.zza()));
        zzacVar.zza(zzaffVar.zzn());
        zzacVar.zza(zzaffVar.zze());
        zzacVar.zzc(zzbh.zza(zzaffVar.zzk()));
        zzacVar.zzb(zzaffVar.zzd());
        return zzacVar;
    }

    public final void zza(FirebaseApp firebaseApp, zzagd zzagdVar, PhoneAuthProvider.OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, @Nullable Activity activity, Executor executor) {
        zza((zzacd) new zzacd(zzagdVar).zza(firebaseApp).zza(onVerificationStateChangedCallbacks, activity, executor, zzagdVar.zzd()));
    }
}
