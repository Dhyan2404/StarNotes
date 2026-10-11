package com.sunia.HTREnginev2;

import android.util.Log;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseException;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.PhoneAuthOptions;

/* loaded from: classes6.dex */
public final class hop implements OnCompleteListener<com.google.firebase.auth.internal.zzg> {

    /* renamed from: a */
    public final /* synthetic */ PhoneAuthOptions f72426a;

    /* renamed from: b */
    public final /* synthetic */ String f72427b;

    /* renamed from: c */
    public final /* synthetic */ FirebaseAuth f72428c;

    public hop(FirebaseAuth firebaseAuth, PhoneAuthOptions phoneAuthOptions, String str) {
        this.f72426a = phoneAuthOptions;
        this.f72427b = str;
        this.f72428c = firebaseAuth;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task<com.google.firebase.auth.internal.zzg> task) {
        String zza;
        String str;
        if (task.isSuccessful()) {
            String zzc = task.getResult().zzc();
            zza = task.getResult().zza();
            str = zzc;
        } else {
            Exception exception = task.getException();
            Log.e("FirebaseAuth", "Error while validating application identity: " + (exception != null ? exception.getMessage() : ""));
            if (exception != null && com.google.firebase.auth.internal.zza.zza(exception)) {
                FirebaseAuth.zza((FirebaseException) exception, this.f72426a, this.f72427b);
                return;
            } else {
                Log.e("FirebaseAuth", "Proceeding without any application identifier.");
                str = null;
                zza = null;
            }
        }
        this.f72428c.zza(this.f72426a, str, zza);
    }
}
