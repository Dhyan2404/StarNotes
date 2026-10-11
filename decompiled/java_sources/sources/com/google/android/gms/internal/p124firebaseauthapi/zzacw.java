package com.google.android.gms.internal.p124firebaseauthapi;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.FirebaseApp;

/* loaded from: classes5.dex */
final class zzacw extends zzadk implements zzaee {
    private zzacq zza;
    private zzacp zzb;
    private zzadt zzc;
    private final zzact zzd;
    private final FirebaseApp zze;
    private String zzf;

    @VisibleForTesting
    private zzacv zzg;

    public zzacw(FirebaseApp firebaseApp, zzact zzactVar) {
        this(firebaseApp, zzactVar, null, null, null);
    }

    @NonNull
    private final zzacv zzb() {
        if (this.zzg == null) {
            this.zzg = new zzacv(this.zze, this.zzd.zzb());
        }
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzaen zzaenVar, zzadm<zzaem> zzadmVar) {
        Preconditions.checkNotNull(zzaenVar);
        Preconditions.checkNotNull(zzadmVar);
        zzacq zzacqVar = this.zza;
        zzadp.zza(zzacqVar.zza("/createAuthUri", this.zzf), zzaenVar, zzadmVar, zzaem.class, zzacqVar.zza);
    }

    @VisibleForTesting
    private zzacw(FirebaseApp firebaseApp, zzact zzactVar, zzadt zzadtVar, zzacq zzacqVar, zzacp zzacpVar) {
        this.zze = firebaseApp;
        this.zzf = firebaseApp.getOptions().getApiKey();
        this.zzd = (zzact) Preconditions.checkNotNull(zzactVar);
        zza(null, null, null);
        zzaec.zza(this.zzf, this);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzaep zzaepVar, zzadm<Void> zzadmVar) {
        Preconditions.checkNotNull(zzaepVar);
        Preconditions.checkNotNull(zzadmVar);
        zzacq zzacqVar = this.zza;
        zzadp.zza(zzacqVar.zza("/deleteAccount", this.zzf), zzaepVar, zzadmVar, Void.class, zzacqVar.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzaeo zzaeoVar, zzadm<zzaer> zzadmVar) {
        Preconditions.checkNotNull(zzaeoVar);
        Preconditions.checkNotNull(zzadmVar);
        zzacq zzacqVar = this.zza;
        zzadp.zza(zzacqVar.zza("/emailLinkSignin", this.zzf), zzaeoVar, zzadmVar, zzaer.class, zzacqVar.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzaeq zzaeqVar, zzadm<zzaet> zzadmVar) {
        Preconditions.checkNotNull(zzaeqVar);
        Preconditions.checkNotNull(zzadmVar);
        zzacp zzacpVar = this.zzb;
        zzadp.zza(zzacpVar.zza("/accounts/mfaEnrollment:finalize", this.zzf), zzaeqVar, zzadmVar, zzaet.class, zzacpVar.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzaes zzaesVar, zzadm<zzaev> zzadmVar) {
        Preconditions.checkNotNull(zzaesVar);
        Preconditions.checkNotNull(zzadmVar);
        zzacp zzacpVar = this.zzb;
        zzadp.zza(zzacpVar.zza("/accounts/mfaSignIn:finalize", this.zzf), zzaesVar, zzadmVar, zzaev.class, zzacpVar.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzafa zzafaVar, zzadm<zzafm> zzadmVar) {
        Preconditions.checkNotNull(zzafaVar);
        Preconditions.checkNotNull(zzadmVar);
        zzadt zzadtVar = this.zzc;
        zzadp.zza(zzadtVar.zza("/token", this.zzf), zzafaVar, zzadmVar, zzafm.class, zzadtVar.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzafd zzafdVar, zzadm<zzafc> zzadmVar) {
        Preconditions.checkNotNull(zzafdVar);
        Preconditions.checkNotNull(zzadmVar);
        zzacq zzacqVar = this.zza;
        zzadp.zza(zzacqVar.zza("/getAccountInfo", this.zzf), zzafdVar, zzadmVar, zzafc.class, zzacqVar.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzafh zzafhVar, zzadm<zzafg> zzadmVar) {
        Preconditions.checkNotNull(zzafhVar);
        Preconditions.checkNotNull(zzadmVar);
        if (zzafhVar.zzb() != null) {
            zzb().zzb(zzafhVar.zzb().zze());
        }
        zzacq zzacqVar = this.zza;
        zzadp.zza(zzacqVar.zza("/getOobConfirmationCode", this.zzf), zzafhVar, zzadmVar, zzafg.class, zzacqVar.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzafj zzafjVar, zzadm<zzafi> zzadmVar) {
        Preconditions.checkNotNull(zzafjVar);
        Preconditions.checkNotNull(zzadmVar);
        zzacq zzacqVar = this.zza;
        zzadp.zza(zzacqVar.zza("/getRecaptchaParam", this.zzf), zzadmVar, zzafi.class, zzacqVar.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzafk zzafkVar, zzadm<zzafn> zzadmVar) {
        Preconditions.checkNotNull(zzafkVar);
        Preconditions.checkNotNull(zzadmVar);
        zzacp zzacpVar = this.zzb;
        zzadp.zza(zzacpVar.zza("/recaptchaConfig", this.zzf) + "&clientType=" + zzafkVar.zzb() + "&version=" + zzafkVar.zzc(), zzadmVar, zzafn.class, zzacpVar.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaee
    public final void zza() {
        zza(null, null, null);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzafw zzafwVar, zzadm<zzafz> zzadmVar) {
        Preconditions.checkNotNull(zzafwVar);
        Preconditions.checkNotNull(zzadmVar);
        zzacq zzacqVar = this.zza;
        zzadp.zza(zzacqVar.zza("/resetPassword", this.zzf), zzafwVar, zzadmVar, zzafz.class, zzacqVar.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzafy zzafyVar, zzadm<zzaga> zzadmVar) {
        Preconditions.checkNotNull(zzafyVar);
        Preconditions.checkNotNull(zzadmVar);
        zzacp zzacpVar = this.zzb;
        zzadp.zza(zzacpVar.zza("/accounts:revokeToken", this.zzf), zzafyVar, zzadmVar, zzaga.class, zzacpVar.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzagd zzagdVar, zzadm<zzagc> zzadmVar) {
        Preconditions.checkNotNull(zzagdVar);
        Preconditions.checkNotNull(zzadmVar);
        if (!TextUtils.isEmpty(zzagdVar.zzc())) {
            zzb().zzb(zzagdVar.zzc());
        }
        zzacq zzacqVar = this.zza;
        zzadp.zza(zzacqVar.zza("/sendVerificationCode", this.zzf), zzagdVar, zzadmVar, zzagc.class, zzacqVar.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzagf zzagfVar, zzadm<zzage> zzadmVar) {
        Preconditions.checkNotNull(zzagfVar);
        Preconditions.checkNotNull(zzadmVar);
        zzacq zzacqVar = this.zza;
        zzadp.zza(zzacqVar.zza("/setAccountInfo", this.zzf), zzagfVar, zzadmVar, zzage.class, zzacqVar.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(@Nullable String str, zzadm<Void> zzadmVar) {
        Preconditions.checkNotNull(zzadmVar);
        zzb().zza(str);
        zzadmVar.zza((zzadm<Void>) null);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzagh zzaghVar, zzadm<zzagg> zzadmVar) {
        Preconditions.checkNotNull(zzaghVar);
        Preconditions.checkNotNull(zzadmVar);
        zzacq zzacqVar = this.zza;
        zzadp.zza(zzacqVar.zza("/signupNewUser", this.zzf), zzaghVar, zzadmVar, zzagg.class, zzacqVar.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzagj zzagjVar, zzadm<zzagi> zzadmVar) {
        Preconditions.checkNotNull(zzagjVar);
        Preconditions.checkNotNull(zzadmVar);
        if (zzagjVar instanceof zzagn) {
            zzagn zzagnVar = (zzagn) zzagjVar;
            if (!TextUtils.isEmpty(zzagnVar.zzb())) {
                zzb().zzb(zzagnVar.zzb());
            }
        }
        zzacp zzacpVar = this.zzb;
        zzadp.zza(zzacpVar.zza("/accounts/mfaEnrollment:start", this.zzf), zzagjVar, zzadmVar, zzagi.class, zzacpVar.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzagl zzaglVar, zzadm<zzagk> zzadmVar) {
        Preconditions.checkNotNull(zzaglVar);
        Preconditions.checkNotNull(zzadmVar);
        if (!TextUtils.isEmpty(zzaglVar.zzb())) {
            zzb().zzb(zzaglVar.zzb());
        }
        zzacp zzacpVar = this.zzb;
        zzadp.zza(zzacpVar.zza("/accounts/mfaSignIn:start", this.zzf), zzaglVar, zzadmVar, zzagk.class, zzacpVar.zza);
    }

    private final void zza(zzadt zzadtVar, zzacq zzacqVar, zzacp zzacpVar) {
        this.zzc = null;
        this.zza = null;
        this.zzb = null;
        String zza = zzaed.zza("firebear.secureToken");
        if (TextUtils.isEmpty(zza)) {
            zza = zzaec.zzd(this.zzf);
        } else {
            Log.e("LocalClient", "Found hermetic configuration for secureToken URL: " + zza);
        }
        if (this.zzc == null) {
            this.zzc = new zzadt(zza, zzb());
        }
        String zza2 = zzaed.zza("firebear.identityToolkit");
        if (TextUtils.isEmpty(zza2)) {
            zza2 = zzaec.zzb(this.zzf);
        } else {
            Log.e("LocalClient", "Found hermetic configuration for identityToolkit URL: " + zza2);
        }
        if (this.zza == null) {
            this.zza = new zzacq(zza2, zzb());
        }
        String zza3 = zzaed.zza("firebear.identityToolkitV2");
        if (TextUtils.isEmpty(zza3)) {
            zza3 = zzaec.zzc(this.zzf);
        } else {
            Log.e("LocalClient", "Found hermetic configuration for identityToolkitV2 URL: " + zza3);
        }
        if (this.zzb == null) {
            this.zzb = new zzacp(zza3, zzb());
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzags zzagsVar, zzadm<zzagu> zzadmVar) {
        Preconditions.checkNotNull(zzagsVar);
        Preconditions.checkNotNull(zzadmVar);
        zzacq zzacqVar = this.zza;
        zzadp.zza(zzacqVar.zza("/verifyAssertion", this.zzf), zzagsVar, zzadmVar, zzagu.class, zzacqVar.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzagx zzagxVar, zzadm<zzagw> zzadmVar) {
        Preconditions.checkNotNull(zzagxVar);
        Preconditions.checkNotNull(zzadmVar);
        zzacq zzacqVar = this.zza;
        zzadp.zza(zzacqVar.zza("/verifyCustomToken", this.zzf), zzagxVar, zzadmVar, zzagw.class, zzacqVar.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzagz zzagzVar, zzadm<zzagy> zzadmVar) {
        Preconditions.checkNotNull(zzagzVar);
        Preconditions.checkNotNull(zzadmVar);
        zzacq zzacqVar = this.zza;
        zzadp.zza(zzacqVar.zza("/verifyPassword", this.zzf), zzagzVar, zzadmVar, zzagy.class, zzacqVar.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzahb zzahbVar, zzadm<zzaha> zzadmVar) {
        Preconditions.checkNotNull(zzahbVar);
        Preconditions.checkNotNull(zzadmVar);
        zzacq zzacqVar = this.zza;
        zzadp.zza(zzacqVar.zza("/verifyPhoneNumber", this.zzf), zzahbVar, zzadmVar, zzaha.class, zzacqVar.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadk
    public final void zza(zzahd zzahdVar, zzadm<zzahc> zzadmVar) {
        Preconditions.checkNotNull(zzahdVar);
        Preconditions.checkNotNull(zzadmVar);
        zzacp zzacpVar = this.zzb;
        zzadp.zza(zzacpVar.zza("/accounts/mfaEnrollment:withdraw", this.zzf), zzahdVar, zzadmVar, zzahc.class, zzacpVar.zza);
    }
}
