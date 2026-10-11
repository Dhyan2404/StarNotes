package com.google.android.gms.internal.p124firebaseauthapi;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.PhoneAuthCredential;
import com.google.firebase.auth.internal.zzal;
import com.google.firebase.auth.internal.zzar;

/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes5.dex */
public final class zzadb implements zzacg {
    final /* synthetic */ zzacz zza;

    public zzadb(zzacz zzaczVar) {
        this.zza = zzaczVar;
    }

    private final void zza(zzadh zzadhVar) {
        this.zza.zzi.execute(new zzade(this, zzadhVar));
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacg
    public final void zzb(String str) throws RemoteException {
        int i = this.zza.zza;
        Preconditions.checkState(i == 8, "Unexpected response type " + i);
        this.zza.zzo = str;
        zza(new zzada(this, str));
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacg
    public final void zzc(String str) throws RemoteException {
        int i = this.zza.zza;
        Preconditions.checkState(i == 7, "Unexpected response type " + i);
        zzacz zzaczVar = this.zza;
        zzaczVar.zzn = str;
        zzacz.zza(zzaczVar);
    }

    private final void zza(Status status, AuthCredential authCredential, @Nullable String str, @Nullable String str2) {
        zzacz.zza(this.zza, status);
        zzacz zzaczVar = this.zza;
        zzaczVar.zzp = authCredential;
        zzaczVar.zzq = str;
        zzaczVar.zzr = str2;
        zzar zzarVar = zzaczVar.zzf;
        if (zzarVar != null) {
            zzarVar.zza(status);
        }
        this.zza.zza(status);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacg
    public final void zzb() throws RemoteException {
        int i = this.zza.zza;
        Preconditions.checkState(i == 6, "Unexpected response type " + i);
        zzacz.zza(this.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacg
    public final void zzc() throws RemoteException {
        int i = this.zza.zza;
        Preconditions.checkState(i == 9, "Unexpected response type " + i);
        zzacz.zza(this.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacg
    public final void zza(String str) throws RemoteException {
        int i = this.zza.zza;
        Preconditions.checkState(i == 8, "Unexpected response type " + i);
        zzacz zzaczVar = this.zza;
        zzaczVar.zzo = str;
        zzaczVar.zzz = true;
        this.zza.zzx = true;
        zza(new zzadc(this, str));
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacg
    public final void zza(zzaem zzaemVar) throws RemoteException {
        int i = this.zza.zza;
        Preconditions.checkState(i == 3, "Unexpected response type " + i);
        zzacz zzaczVar = this.zza;
        zzaczVar.zzl = zzaemVar;
        zzacz.zza(zzaczVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacg
    public final void zza() throws RemoteException {
        int i = this.zza.zza;
        Preconditions.checkState(i == 5, "Unexpected response type " + i);
        zzacz.zza(this.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacg
    public final void zza(zzyj zzyjVar) {
        zza(zzyjVar.zza(), zzyjVar.zzb(), zzyjVar.zzc(), zzyjVar.zzd());
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacg
    public final void zza(zzym zzymVar) {
        zzacz zzaczVar = this.zza;
        zzaczVar.zzs = zzymVar;
        zzaczVar.zza(zzal.zza("REQUIRES_SECOND_FACTOR_AUTH"));
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacg
    public final void zza(Status status, PhoneAuthCredential phoneAuthCredential) throws RemoteException {
        int i = this.zza.zza;
        Preconditions.checkState(i == 2, "Unexpected response type " + i);
        zza(status, phoneAuthCredential, null, null);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacg
    public final void zza(Status status) throws RemoteException {
        String statusMessage = status.getStatusMessage();
        if (statusMessage != null) {
            if (statusMessage.contains("MISSING_MFA_PENDING_CREDENTIAL")) {
                status = new Status(17081);
            } else if (statusMessage.contains("MISSING_MFA_ENROLLMENT_ID")) {
                status = new Status(17082);
            } else if (statusMessage.contains("INVALID_MFA_PENDING_CREDENTIAL")) {
                status = new Status(17083);
            } else if (statusMessage.contains("MFA_ENROLLMENT_NOT_FOUND")) {
                status = new Status(17084);
            } else if (statusMessage.contains("ADMIN_ONLY_OPERATION")) {
                status = new Status(17085);
            } else if (statusMessage.contains("UNVERIFIED_EMAIL")) {
                status = new Status(17086);
            } else if (statusMessage.contains("SECOND_FACTOR_EXISTS")) {
                status = new Status(17087);
            } else if (statusMessage.contains("SECOND_FACTOR_LIMIT_EXCEEDED")) {
                status = new Status(17088);
            } else if (statusMessage.contains("UNSUPPORTED_FIRST_FACTOR")) {
                status = new Status(17089);
            } else if (statusMessage.contains("EMAIL_CHANGE_NEEDS_VERIFICATION")) {
                status = new Status(17090);
            }
        }
        zzacz zzaczVar = this.zza;
        if (zzaczVar.zza == 8) {
            zzaczVar.zzz = true;
            this.zza.zzx = false;
            zza(new zzadf(this, status));
        } else {
            zzacz.zza(zzaczVar, status);
            this.zza.zza(status);
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacg
    public final void zza(zzafi zzafiVar) throws RemoteException {
        zzacz zzaczVar = this.zza;
        zzaczVar.zzu = zzafiVar;
        zzacz.zza(zzaczVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacg
    public final void zza(zzafn zzafnVar) throws RemoteException {
        zzacz zzaczVar = this.zza;
        zzaczVar.zzt = zzafnVar;
        zzacz.zza(zzaczVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacg
    public final void zza(zzafm zzafmVar, zzaff zzaffVar) throws RemoteException {
        int i = this.zza.zza;
        Preconditions.checkState(i == 2, "Unexpected response type: " + i);
        zzacz zzaczVar = this.zza;
        zzaczVar.zzj = zzafmVar;
        zzaczVar.zzk = zzaffVar;
        zzacz.zza(zzaczVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacg
    public final void zza(@Nullable zzafz zzafzVar) throws RemoteException {
        int i = this.zza.zza;
        Preconditions.checkState(i == 4, "Unexpected response type " + i);
        zzacz zzaczVar = this.zza;
        zzaczVar.zzm = zzafzVar;
        zzacz.zza(zzaczVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacg
    public final void zza(zzaga zzagaVar) throws RemoteException {
        zzacz zzaczVar = this.zza;
        zzaczVar.zzw = zzagaVar;
        zzacz.zza(zzaczVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacg
    public final void zza(zzagi zzagiVar) throws RemoteException {
        zzacz zzaczVar = this.zza;
        zzaczVar.zzv = zzagiVar;
        zzacz.zza(zzaczVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacg
    public final void zza(zzafm zzafmVar) throws RemoteException {
        int i = this.zza.zza;
        Preconditions.checkState(i == 1, "Unexpected response type: " + i);
        zzacz zzaczVar = this.zza;
        zzaczVar.zzj = zzafmVar;
        zzacz.zza(zzaczVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacg
    public final void zza(PhoneAuthCredential phoneAuthCredential) throws RemoteException {
        int i = this.zza.zza;
        Preconditions.checkState(i == 8, "Unexpected response type " + i);
        this.zza.zzz = true;
        this.zza.zzx = true;
        zza(new zzadd(this, phoneAuthCredential));
    }
}
