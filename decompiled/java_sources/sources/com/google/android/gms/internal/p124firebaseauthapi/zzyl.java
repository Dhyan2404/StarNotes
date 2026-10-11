package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.FirebaseError;
import com.google.firebase.auth.ActionCodeSettings;
import com.google.firebase.auth.EmailAuthCredential;
import com.google.firebase.auth.UserProfileChangeRequest;
import com.google.firebase.auth.internal.zzal;
import com.google.firebase.auth.zzf;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;

/* loaded from: classes5.dex */
public final class zzyl {
    private final zzadk zza;

    public zzyl(zzadk zzadkVar) {
        this.zza = (zzadk) Preconditions.checkNotNull(zzadkVar);
    }

    public final void zzb(String str, String str2, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(zzacfVar);
        zza(str, new zzaad(this, str2, zzacfVar));
    }

    public final void zzc(String str, String str2, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(zzacfVar);
        zza(str, new zzaag(this, str2, zzacfVar));
    }

    public final void zzd(String str, @Nullable String str2, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzacfVar);
        this.zza.zza(new zzafw(str, null, str2), new zzyy(this, zzacfVar));
    }

    public final void zze(String str, @Nullable String str2, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzacfVar);
        this.zza.zza(new zzaen(str, str2), new zzyw(this, zzacfVar));
    }

    public final void zzf(String str, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzacfVar);
        zza(str, new zzzh(this, zzacfVar));
    }

    public static /* synthetic */ void zza(zzyl zzylVar, zzagu zzaguVar, zzacf zzacfVar, zzadn zzadnVar) {
        Status zza;
        if (zzaguVar.zzo()) {
            zzf zzb = zzaguVar.zzb();
            String zzc = zzaguVar.zzc();
            String zzj = zzaguVar.zzj();
            if (zzaguVar.zzm()) {
                zza = new Status(FirebaseError.ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL);
            } else {
                zza = zzal.zza(zzaguVar.zzd());
            }
            zzacfVar.zza(new zzyj(zza, zzb, zzc, zzj));
            return;
        }
        zzylVar.zza(new zzafm(zzaguVar.zzi(), zzaguVar.zze(), Long.valueOf(zzaguVar.zza()), CloudStorageConstants.BEARER), zzaguVar.zzh(), zzaguVar.zzg(), Boolean.valueOf(zzaguVar.zzn()), zzaguVar.zzb(), zzacfVar, zzadnVar);
    }

    public final void zzf(String str, String str2, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(zzacfVar);
        zza(str2, new zzzk(this, str, zzacfVar));
    }

    public final void zzb(String str, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzacfVar);
        this.zza.zza(new zzafa(str), new zzyo(this, zzacfVar));
    }

    public final void zzc(String str, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzacfVar);
        zza(str, new zzzw(this, zzacfVar));
    }

    public final void zzd(@Nullable String str, zzacf zzacfVar) {
        Preconditions.checkNotNull(zzacfVar);
        this.zza.zza(str, new zzaaa(this, zzacfVar));
    }

    public final void zze(@Nullable String str, zzacf zzacfVar) {
        Preconditions.checkNotNull(zzacfVar);
        this.zza.zza(new zzagh(str), new zzaac(this, zzacfVar));
    }

    private final void zzb(zzafh zzafhVar, zzacf zzacfVar) {
        Preconditions.checkNotNull(zzafhVar);
        Preconditions.checkNotNull(zzacfVar);
        this.zza.zza(zzafhVar, new zzzz(this, zzacfVar));
    }

    public final void zzb(String str, String str2, @Nullable String str3, @Nullable String str4, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(zzacfVar);
        this.zza.zza(new zzagz(str, str2, str3, str4), new zzyq(this, zzacfVar));
    }

    public final void zzb(String str, String str2, @Nullable String str3, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(zzacfVar);
        zza(str, new zzzm(this, str2, str3, zzacfVar));
    }

    public static /* synthetic */ void zza(zzyl zzylVar, zzacf zzacfVar, zzagh zzaghVar, zzadn zzadnVar) {
        Preconditions.checkNotNull(zzacfVar);
        Preconditions.checkNotNull(zzaghVar);
        Preconditions.checkNotNull(zzadnVar);
        zzylVar.zza.zza(zzaghVar, new zzze(zzylVar, zzacfVar, zzadnVar));
    }

    public static /* synthetic */ void zza(zzyl zzylVar, zzacf zzacfVar, zzafm zzafmVar, zzagf zzagfVar, zzadn zzadnVar) {
        Preconditions.checkNotNull(zzacfVar);
        Preconditions.checkNotNull(zzafmVar);
        Preconditions.checkNotNull(zzagfVar);
        Preconditions.checkNotNull(zzadnVar);
        zzylVar.zza.zza(new zzafd(zzafmVar.zzc()), new zzyr(zzylVar, zzadnVar, zzacfVar, zzafmVar, zzagfVar));
    }

    public static /* synthetic */ void zza(zzyl zzylVar, zzacf zzacfVar, zzafm zzafmVar, zzaff zzaffVar, zzagf zzagfVar, zzadn zzadnVar) {
        Preconditions.checkNotNull(zzacfVar);
        Preconditions.checkNotNull(zzafmVar);
        Preconditions.checkNotNull(zzaffVar);
        Preconditions.checkNotNull(zzagfVar);
        Preconditions.checkNotNull(zzadnVar);
        zzylVar.zza.zza(zzagfVar, new zzyu(zzylVar, zzagfVar, zzaffVar, zzacfVar, zzafmVar, zzadnVar));
    }

    public final void zza(String str, @Nullable String str2, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzacfVar);
        zzagf zzagfVar = new zzagf();
        zzagfVar.zze(str);
        zzagfVar.zzh(str2);
        this.zza.zza(zzagfVar, new zzaaf(this, zzacfVar));
    }

    public final void zza(String str, String str2, @Nullable String str3, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(zzacfVar);
        this.zza.zza(new zzafw(str, str2, str3), new zzza(this, zzacfVar));
    }

    public final void zza(String str, String str2, @Nullable String str3, @Nullable String str4, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(zzacfVar);
        this.zza.zza(new zzagh(str, str2, null, str3, str4, null), new zzyn(this, zzacfVar));
    }

    public final void zza(String str, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzacfVar);
        zza(str, new zzzy(this, zzacfVar));
    }

    private final void zza(String str, zzadm<zzafm> zzadmVar) {
        Preconditions.checkNotNull(zzadmVar);
        Preconditions.checkNotEmpty(str);
        zzafm zzb = zzafm.zzb(str);
        if (zzb.zzg()) {
            zzadmVar.zza((zzadm<zzafm>) zzb);
        } else {
            this.zza.zza(new zzafa(zzb.zzd()), new zzaai(this, zzadmVar));
        }
    }

    public final void zza(zzaeq zzaeqVar, String str, zzacf zzacfVar) {
        Preconditions.checkNotNull(zzaeqVar);
        Preconditions.checkNotNull(zzacfVar);
        zza(str, new zzzq(this, zzaeqVar, zzacfVar));
    }

    public final void zza(zzaes zzaesVar, zzacf zzacfVar) {
        Preconditions.checkNotNull(zzaesVar);
        Preconditions.checkNotNull(zzacfVar);
        this.zza.zza(zzaesVar, new zzzs(this, zzacfVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzaeo zzaeoVar, zzacf zzacfVar) {
        Preconditions.checkNotNull(zzaeoVar);
        Preconditions.checkNotNull(zzacfVar);
        this.zza.zza(zzaeoVar, new zzys(this, zzacfVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzafm zzafmVar, @Nullable String str, @Nullable String str2, @Nullable Boolean bool, @Nullable zzf zzfVar, zzacf zzacfVar, zzadn zzadnVar) {
        Preconditions.checkNotNull(zzafmVar);
        Preconditions.checkNotNull(zzadnVar);
        Preconditions.checkNotNull(zzacfVar);
        this.zza.zza(new zzafd(zzafmVar.zzc()), new zzyt(this, zzadnVar, str2, str, bool, zzfVar, zzacfVar, zzafmVar));
    }

    public final void zza(zzafj zzafjVar, zzacf zzacfVar) {
        Preconditions.checkNotNull(zzafjVar);
        Preconditions.checkNotNull(zzacfVar);
        this.zza.zza(zzafjVar, new zzzt(this, zzacfVar));
    }

    public final void zza(zzafk zzafkVar, zzacf zzacfVar) {
        Preconditions.checkNotNull(zzafkVar);
        Preconditions.checkNotNull(zzacfVar);
        this.zza.zza(zzafkVar, new zzzu(this, zzacfVar));
    }

    public final void zza(String str, String str2, String str3, @Nullable String str4, @Nullable String str5, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(zzacfVar);
        zza(str3, new zzzb(this, str, str2, str4, str5, zzacfVar));
    }

    public final void zza(String str, zzags zzagsVar, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzagsVar);
        Preconditions.checkNotNull(zzacfVar);
        zza(str, new zzzf(this, zzagsVar, zzacfVar));
    }

    public final void zza(String str, zzahb zzahbVar, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzahbVar);
        Preconditions.checkNotNull(zzacfVar);
        zza(str, new zzzd(this, zzahbVar, zzacfVar));
    }

    public final void zza(zzafy zzafyVar, zzacf zzacfVar) {
        this.zza.zza(zzafyVar, new zzaab(this, zzacfVar));
    }

    public final void zza(String str, @Nullable ActionCodeSettings actionCodeSettings, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzacfVar);
        zzafh zzafhVar = new zzafh(4);
        zzafhVar.zzd(str);
        if (actionCodeSettings != null) {
            zzafhVar.zza(actionCodeSettings);
        }
        zzb(zzafhVar, zzacfVar);
    }

    public final void zza(String str, ActionCodeSettings actionCodeSettings, @Nullable String str2, @Nullable String str3, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzacfVar);
        zzafh zzafhVar = new zzafh(actionCodeSettings.zza());
        zzafhVar.zzb(str);
        zzafhVar.zza(actionCodeSettings);
        zzafhVar.zzc(str2);
        zzafhVar.zza(str3);
        this.zza.zza(zzafhVar, new zzyv(this, zzacfVar));
    }

    public final void zza(zzagd zzagdVar, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(zzagdVar.zzd());
        Preconditions.checkNotNull(zzacfVar);
        this.zza.zza(zzagdVar, new zzyz(this, zzacfVar));
    }

    public final void zza(zzags zzagsVar, zzacf zzacfVar) {
        Preconditions.checkNotNull(zzagsVar);
        Preconditions.checkNotNull(zzacfVar);
        zzagsVar.zzb(true);
        this.zza.zza(zzagsVar, new zzzo(this, zzacfVar));
    }

    public final void zza(zzagx zzagxVar, zzacf zzacfVar) {
        Preconditions.checkNotNull(zzagxVar);
        Preconditions.checkNotNull(zzacfVar);
        this.zza.zza(zzagxVar, new zzyx(this, zzacfVar));
    }

    public final void zza(EmailAuthCredential emailAuthCredential, @Nullable String str, zzacf zzacfVar) {
        Preconditions.checkNotNull(emailAuthCredential);
        Preconditions.checkNotNull(zzacfVar);
        if (emailAuthCredential.zzg()) {
            zza(emailAuthCredential.zzb(), new zzyp(this, emailAuthCredential, str, zzacfVar));
        } else {
            zza(new zzaeo(emailAuthCredential, null, str), zzacfVar);
        }
    }

    public final void zza(zzahb zzahbVar, zzacf zzacfVar) {
        Preconditions.checkNotNull(zzahbVar);
        Preconditions.checkNotNull(zzacfVar);
        this.zza.zza(zzahbVar, new zzzc(this, zzacfVar));
    }

    public final void zza(zzagj zzagjVar, zzacf zzacfVar) {
        Preconditions.checkNotNull(zzagjVar);
        Preconditions.checkNotNull(zzacfVar);
        this.zza.zza(zzagjVar, new zzzn(this, zzagjVar, zzacfVar));
    }

    public final void zza(zzagl zzaglVar, zzacf zzacfVar) {
        Preconditions.checkNotNull(zzaglVar);
        Preconditions.checkNotNull(zzacfVar);
        this.zza.zza(zzaglVar, new zzzr(this, zzacfVar));
    }

    public final void zza(String str, UserProfileChangeRequest userProfileChangeRequest, zzacf zzacfVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(userProfileChangeRequest);
        Preconditions.checkNotNull(zzacfVar);
        zza(str, new zzaae(this, userProfileChangeRequest, zzacfVar));
    }

    public final void zza(zzafh zzafhVar, zzacf zzacfVar) {
        zzb(zzafhVar, zzacfVar);
    }
}
