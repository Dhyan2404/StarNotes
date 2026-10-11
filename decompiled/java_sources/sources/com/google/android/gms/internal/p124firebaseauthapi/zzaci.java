package com.google.android.gms.internal.p124firebaseauthapi;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.MultiFactorAssertion;
import com.google.firebase.auth.PhoneAuthCredential;
import com.google.firebase.auth.PhoneMultiFactorAssertion;
import com.google.firebase.auth.TotpMultiFactorAssertion;
import com.google.firebase.auth.TotpSecret;
import com.google.firebase.auth.UserProfileChangeRequest;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes5.dex */
public final class zzaci {
    private static final Logger zza = new Logger("FirebaseAuth", "FirebaseAuthFallback:");
    private final zzyl zzb;
    private final zzadx zzc;

    public zzaci(FirebaseApp firebaseApp, ScheduledExecutorService scheduledExecutorService) {
        Preconditions.checkNotNull(firebaseApp);
        Context applicationContext = firebaseApp.getApplicationContext();
        Preconditions.checkNotNull(applicationContext);
        this.zzb = new zzyl(new zzacw(firebaseApp, zzact.zza()));
        this.zzc = new zzadx(applicationContext, scheduledExecutorService);
    }

    public final void zza(String str, @Nullable String str2, zzacg zzacgVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zza(str, str2, new zzacf(zzacgVar, zza));
    }

    public final void zzb(String str, String str2, zzacg zzacgVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zzb(str, str2, new zzacf(zzacgVar, zza));
    }

    public final void zzc(String str, String str2, zzacg zzacgVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zzc(str, str2, new zzacf(zzacgVar, zza));
    }

    public final void zzd(String str, @Nullable String str2, zzacg zzacgVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zzd(str, str2, new zzacf(zzacgVar, zza));
    }

    public final void zze(String str, @Nullable String str2, zzacg zzacgVar) {
        Preconditions.checkNotEmpty(str);
        this.zzb.zze(str, str2, new zzacf(zzacgVar, zza));
    }

    public final void zzf(String str, String str2, zzacg zzacgVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zzf(str, str2, new zzacf(zzacgVar, zza));
    }

    public final void zze(String str, zzacg zzacgVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zzf(str, new zzacf(zzacgVar, zza));
    }

    public final void zza(zzxx zzxxVar, zzacg zzacgVar) {
        Preconditions.checkNotNull(zzxxVar);
        Preconditions.checkNotEmpty(zzxxVar.zza());
        Preconditions.checkNotEmpty(zzxxVar.zzb());
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zza(zzxxVar.zza(), zzxxVar.zzb(), zzxxVar.zzc(), new zzacf(zzacgVar, zza));
    }

    public final void zzd(@Nullable String str, zzacg zzacgVar) {
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zze(str, new zzacf(zzacgVar, zza));
    }

    public final void zzb(String str, zzacg zzacgVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zzb(str, new zzacf(zzacgVar, zza));
    }

    public final void zzc(String str, zzacg zzacgVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zzc(str, new zzacf(zzacgVar, zza));
    }

    public final void zzb(String str, String str2, @Nullable String str3, @Nullable String str4, zzacg zzacgVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(zzacgVar);
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zzb(str, str2, str3, str4, new zzacf(zzacgVar, zza));
    }

    public final void zza(String str, String str2, @Nullable String str3, @Nullable String str4, zzacg zzacgVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zza(str, str2, str3, str4, new zzacf(zzacgVar, zza));
    }

    public final void zza(String str, zzacg zzacgVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zza(str, new zzacf(zzacgVar, zza));
    }

    public final void zza(MultiFactorAssertion multiFactorAssertion, String str, @Nullable String str2, @Nullable String str3, zzacg zzacgVar) {
        zzaeq zza2;
        Preconditions.checkNotNull(multiFactorAssertion);
        Preconditions.checkNotEmpty(str, "cachedTokenState should not be empty.");
        Preconditions.checkNotNull(zzacgVar);
        if (multiFactorAssertion instanceof PhoneMultiFactorAssertion) {
            PhoneAuthCredential zza3 = ((PhoneMultiFactorAssertion) multiFactorAssertion).zza();
            zza2 = zzaeu.zza(str, (String) Preconditions.checkNotNull(zza3.zzc()), (String) Preconditions.checkNotNull(zza3.getSmsCode()), str2, str3);
        } else if (multiFactorAssertion instanceof TotpMultiFactorAssertion) {
            TotpMultiFactorAssertion totpMultiFactorAssertion = (TotpMultiFactorAssertion) multiFactorAssertion;
            zza2 = zzaew.zza(str, Preconditions.checkNotEmpty(str2), Preconditions.checkNotEmpty(((TotpSecret) Preconditions.checkNotNull(totpMultiFactorAssertion.zza())).getSessionInfo()), Preconditions.checkNotEmpty(totpMultiFactorAssertion.zzc()), str3);
        } else {
            throw new IllegalArgumentException("multiFactorAssertion must be either PhoneMultiFactorAssertion or TotpMultiFactorAssertion.");
        }
        this.zzb.zza(zza2, str, new zzacf(zzacgVar, zza));
    }

    public final void zza(String str, MultiFactorAssertion multiFactorAssertion, @Nullable String str2, zzacg zzacgVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(multiFactorAssertion);
        Preconditions.checkNotNull(zzacgVar);
        if (multiFactorAssertion instanceof PhoneMultiFactorAssertion) {
            PhoneAuthCredential zza2 = ((PhoneMultiFactorAssertion) multiFactorAssertion).zza();
            this.zzb.zza(zzaex.zza(str, (String) Preconditions.checkNotNull(zza2.zzc()), (String) Preconditions.checkNotNull(zza2.getSmsCode()), str2), new zzacf(zzacgVar, zza));
        } else {
            if (multiFactorAssertion instanceof TotpMultiFactorAssertion) {
                TotpMultiFactorAssertion totpMultiFactorAssertion = (TotpMultiFactorAssertion) multiFactorAssertion;
                this.zzb.zza(zzaez.zza(str, Preconditions.checkNotEmpty(totpMultiFactorAssertion.zzc()), str2, Preconditions.checkNotEmpty(totpMultiFactorAssertion.zzb())), new zzacf(zzacgVar, zza));
                return;
            }
            throw new IllegalArgumentException("multiFactorAssertion must be either PhoneMultiFactorAssertion or TotpMultiFactorAssertion.");
        }
    }

    public final void zza(zzya zzyaVar, zzacg zzacgVar) {
        Preconditions.checkNotNull(zzyaVar);
        this.zzb.zza(zzafj.zzb(), new zzacf(zzacgVar, zza));
    }

    public final void zza(zzxz zzxzVar, zzacg zzacgVar) {
        Preconditions.checkNotNull(zzxzVar);
        this.zzb.zza(zzafk.zza(zzxzVar.zzb(), zzxzVar.zza()), new zzacf(zzacgVar, zza));
    }

    public final void zza(String str, String str2, String str3, @Nullable String str4, @Nullable String str5, zzacg zzacgVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zza(str, str2, str3, str4, str5, new zzacf(zzacgVar, zza));
    }

    public final void zza(String str, zzags zzagsVar, zzacg zzacgVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzagsVar);
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zza(str, zzagsVar, new zzacf(zzacgVar, zza));
    }

    public final void zza(zzyc zzycVar, zzacg zzacgVar) {
        Preconditions.checkNotNull(zzacgVar);
        Preconditions.checkNotNull(zzycVar);
        PhoneAuthCredential phoneAuthCredential = (PhoneAuthCredential) Preconditions.checkNotNull(zzycVar.zza());
        this.zzb.zza(Preconditions.checkNotEmpty(zzycVar.zzb()), zzadr.zza(phoneAuthCredential), new zzacf(zzacgVar, zza));
    }

    public final void zza(zzafy zzafyVar, zzacg zzacgVar) {
        Preconditions.checkNotNull(zzafyVar);
        this.zzb.zza(zzafyVar, new zzacf(zzacgVar, zza));
    }

    public final void zza(@NonNull zzyb zzybVar, zzacg zzacgVar) {
        Preconditions.checkNotNull(zzybVar);
        Preconditions.checkNotEmpty(zzybVar.zzb());
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zza(zzybVar.zzb(), zzybVar.zza(), new zzacf(zzacgVar, zza));
    }

    public final void zza(@NonNull zzye zzyeVar, zzacg zzacgVar) {
        Preconditions.checkNotNull(zzyeVar);
        Preconditions.checkNotEmpty(zzyeVar.zzc());
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zza(zzyeVar.zzc(), zzyeVar.zza(), zzyeVar.zzd(), zzyeVar.zzb(), new zzacf(zzacgVar, zza));
    }

    public final void zza(zzyd zzydVar, zzacg zzacgVar) {
        Preconditions.checkNotNull(zzacgVar);
        Preconditions.checkNotNull(zzydVar);
        zzagd zzagdVar = (zzagd) Preconditions.checkNotNull(zzydVar.zza());
        String zzd = zzagdVar.zzd();
        zzacf zzacfVar = new zzacf(zzacgVar, zza);
        if (this.zzc.zzd(zzd)) {
            if (zzagdVar.zze()) {
                this.zzc.zzc(zzd);
            } else {
                this.zzc.zzb(zzacfVar, zzd);
                return;
            }
        }
        long zzb = zzagdVar.zzb();
        boolean zzf = zzagdVar.zzf();
        if (zza(zzb, zzf)) {
            zzagdVar.zza(new zzaeh(this.zzc.zzb()));
        }
        this.zzc.zza(zzd, zzacfVar, zzb, zzf);
        this.zzb.zza(zzagdVar, this.zzc.zza(zzacfVar, zzd));
    }

    public final void zza(zzyg zzygVar, zzacg zzacgVar) {
        Preconditions.checkNotNull(zzygVar);
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zzd(zzygVar.zza(), new zzacf(zzacgVar, zza));
    }

    public final void zza(zzags zzagsVar, zzacg zzacgVar) {
        Preconditions.checkNotNull(zzagsVar);
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zza(zzagsVar, new zzacf(zzacgVar, zza));
    }

    public final void zza(zzagx zzagxVar, zzacg zzacgVar) {
        Preconditions.checkNotNull(zzagxVar);
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zza(zzagxVar, new zzacf(zzacgVar, zza));
    }

    public final void zza(zzyf zzyfVar, zzacg zzacgVar) {
        Preconditions.checkNotNull(zzyfVar);
        Preconditions.checkNotNull(zzyfVar.zza());
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zza(zzyfVar.zza(), zzyfVar.zzb(), new zzacf(zzacgVar, zza));
    }

    public final void zza(zzyi zzyiVar, zzacg zzacgVar) {
        Preconditions.checkNotNull(zzacgVar);
        Preconditions.checkNotNull(zzyiVar);
        this.zzb.zza(zzadr.zza((PhoneAuthCredential) Preconditions.checkNotNull(zzyiVar.zza())), new zzacf(zzacgVar, zza));
    }

    public final void zza(String str, String str2, @Nullable String str3, long j, boolean z, boolean z2, @Nullable String str4, @Nullable String str5, boolean z3, zzacg zzacgVar) {
        Preconditions.checkNotEmpty(str, "idToken should not be empty.");
        Preconditions.checkNotNull(zzacgVar);
        zzacf zzacfVar = new zzacf(zzacgVar, zza);
        if (this.zzc.zzd(str2)) {
            if (z) {
                this.zzc.zzc(str2);
            } else {
                this.zzc.zzb(zzacfVar, str2);
                return;
            }
        }
        zzagn zza2 = zzagn.zza(str, str2, str3, str4, str5, null);
        if (zza(j, z3)) {
            zza2.zza(new zzaeh(this.zzc.zzb()));
        }
        this.zzc.zza(str2, zzacfVar, j, z3);
        this.zzb.zza(zza2, this.zzc.zza(zzacfVar, str2));
    }

    public final void zza(zzyh zzyhVar, zzacg zzacgVar) {
        Preconditions.checkNotNull(zzyhVar);
        Preconditions.checkNotNull(zzacgVar);
        String phoneNumber = zzyhVar.zzb().getPhoneNumber();
        zzacf zzacfVar = new zzacf(zzacgVar, zza);
        if (this.zzc.zzd(phoneNumber)) {
            if (zzyhVar.zzg()) {
                this.zzc.zzc(phoneNumber);
            } else {
                this.zzc.zzb(zzacfVar, phoneNumber);
                return;
            }
        }
        long zza2 = zzyhVar.zza();
        boolean zzh = zzyhVar.zzh();
        zzagl zza3 = zzagl.zza(zzyhVar.zzd(), zzyhVar.zzb().getUid(), zzyhVar.zzb().getPhoneNumber(), zzyhVar.zzc(), zzyhVar.zzf(), zzyhVar.zze());
        if (zza(zza2, zzh)) {
            zza3.zza(new zzaeh(this.zzc.zzb()));
        }
        this.zzc.zza(phoneNumber, zzacfVar, zza2, zzh);
        this.zzb.zza(zza3, this.zzc.zza(zzacfVar, phoneNumber));
    }

    public final void zza(zzagp zzagpVar, zzacg zzacgVar) {
        this.zzb.zza(zzagpVar, new zzacf((zzacg) Preconditions.checkNotNull(zzacgVar), zza));
    }

    public final void zza(String str, String str2, @Nullable String str3, zzacg zzacgVar) {
        Preconditions.checkNotEmpty(str, "cachedTokenState should not be empty.");
        Preconditions.checkNotEmpty(str2, "uid should not be empty.");
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zzb(str, str2, str3, new zzacf(zzacgVar, zza));
    }

    public final void zza(String str, UserProfileChangeRequest userProfileChangeRequest, zzacg zzacgVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(userProfileChangeRequest);
        Preconditions.checkNotNull(zzacgVar);
        this.zzb.zza(str, userProfileChangeRequest, new zzacf(zzacgVar, zza));
    }

    public final void zza(zzyk zzykVar, zzacg zzacgVar) {
        Preconditions.checkNotNull(zzykVar);
        this.zzb.zza(zzafh.zza(zzykVar.zza(), zzykVar.zzb(), zzykVar.zzc()), new zzacf(zzacgVar, zza));
    }

    private static boolean zza(long j, boolean z) {
        if (j > 0 && z) {
            return true;
        }
        zza.m22195w("App hash will not be appended to the request.", new Object[0]);
        return false;
    }
}
