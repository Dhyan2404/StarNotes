package com.google.firebase.auth;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p124firebaseauthapi.zzaak;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseException;
import com.google.firebase.auth.PhoneAuthProvider;
import com.google.firebase.auth.internal.zzaj;

/* renamed from: com.google.firebase.auth.e */
/* loaded from: classes6.dex */
public final class C6439e implements OnCompleteListener<com.google.firebase.auth.internal.zzg> {

    /* renamed from: a */
    public final /* synthetic */ PhoneAuthOptions f35680a;

    /* renamed from: b */
    public final /* synthetic */ String f35681b;

    /* renamed from: c */
    public final /* synthetic */ FirebaseAuth f35682c;

    public C6439e(FirebaseAuth firebaseAuth, PhoneAuthOptions phoneAuthOptions, String str) {
        this.f35680a = phoneAuthOptions;
        this.f35681b = str;
        this.f35682c = firebaseAuth;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task<com.google.firebase.auth.internal.zzg> task) {
        String zzc;
        String zza;
        PhoneAuthProvider.OnVerificationStateChangedCallbacks m27959h;
        zzaak zzaakVar;
        String str;
        zzaak zzaakVar2;
        String str2;
        if (task.isSuccessful()) {
            zzc = task.getResult().zzc();
            zza = task.getResult().zza();
        } else {
            Exception exception = task.getException();
            String str3 = "Error while validating application identity: ";
            if (exception != null) {
                str3 = "Error while validating application identity: " + exception.getMessage();
            }
            Log.e("FirebaseAuth", str3);
            if (exception != null && com.google.firebase.auth.internal.zza.zza(exception)) {
                FirebaseAuth.zza((FirebaseException) exception, this.f35680a, this.f35681b);
                return;
            } else {
                Log.e("FirebaseAuth", "Proceeding without any application identifier.");
                zzc = null;
                zza = null;
            }
        }
        long longValue = this.f35680a.zzg().longValue();
        m27959h = this.f35682c.m27959h(this.f35680a.zzh(), this.f35680a.zze());
        if (TextUtils.isEmpty(zzc)) {
            m27959h = this.f35682c.m27958g(this.f35680a, m27959h);
        }
        PhoneAuthProvider.OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks = m27959h;
        zzaj zzajVar = (zzaj) Preconditions.checkNotNull(this.f35680a.zzc());
        if (zzajVar.zzd()) {
            zzaakVar2 = this.f35682c.f35601e;
            String str4 = (String) Preconditions.checkNotNull(this.f35680a.zzh());
            str2 = this.f35682c.f35605i;
            zzaakVar2.zza(zzajVar, str4, str2, longValue, this.f35680a.zzd() != null, this.f35680a.zzk(), zzc, zza, this.f35682c.m27962v(), onVerificationStateChangedCallbacks, this.f35680a.zzi(), this.f35680a.zza());
            return;
        }
        zzaakVar = this.f35682c.f35601e;
        PhoneMultiFactorInfo phoneMultiFactorInfo = (PhoneMultiFactorInfo) Preconditions.checkNotNull(this.f35680a.zzf());
        str = this.f35682c.f35605i;
        zzaakVar.zza(zzajVar, phoneMultiFactorInfo, str, longValue, this.f35680a.zzd() != null, this.f35680a.zzk(), zzc, zza, this.f35682c.m27962v(), onVerificationStateChangedCallbacks, this.f35680a.zzi(), this.f35680a.zza());
    }
}
