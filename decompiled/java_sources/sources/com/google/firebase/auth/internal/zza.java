package com.google.firebase.auth.internal;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p124firebaseauthapi.zzach;
import com.google.android.gms.internal.p124firebaseauthapi.zzadq;
import com.google.android.gms.internal.p124firebaseauthapi.zzaec;
import com.google.android.gms.internal.p124firebaseauthapi.zzafi;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.integrity.IntegrityManager;
import com.google.android.play.core.integrity.IntegrityManagerFactory;
import com.google.android.play.core.integrity.IntegrityTokenResponse;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseAuthException;
import com.google.firebase.auth.FirebaseAuthMissingActivityForRecaptchaException;
import com.sunia.HTREnginev2.qhp;
import com.sunia.HTREnginev2.sjp;
import com.sunia.HTREnginev2.xmp;
import com.sunia.HTREnginev2.zjp;

/* loaded from: classes6.dex */
public class zza {

    /* renamed from: b */
    public static final String f35701b = "zza";

    /* renamed from: c */
    public static final zza f35702c = new zza();

    /* renamed from: a */
    public String f35703a;

    /* renamed from: a */
    public final /* synthetic */ void m27979a(TaskCompletionSource taskCompletionSource, FirebaseAuth firebaseAuth, zzcb zzcbVar, Activity activity, Task task) {
        if ((!task.isSuccessful() || task.getResult() == null || TextUtils.isEmpty(((IntegrityTokenResponse) task.getResult()).token())) ? false : true) {
            taskCompletionSource.setResult(new xmp().zza(((IntegrityTokenResponse) task.getResult()).token()).zza());
            return;
        }
        String message = task.getException() == null ? "" : task.getException().getMessage();
        Log.e(f35701b, "Play Integrity Token fetch failed, falling back to Recaptcha" + message);
        m27980b(firebaseAuth, zzcbVar, activity, taskCompletionSource);
    }

    /* renamed from: b */
    public final void m27980b(FirebaseAuth firebaseAuth, zzcb zzcbVar, Activity activity, TaskCompletionSource<zzg> taskCompletionSource) {
        Task<String> task;
        if (activity == null) {
            taskCompletionSource.setException(new FirebaseAuthMissingActivityForRecaptchaException());
            return;
        }
        zzbi.zza(firebaseAuth.getApp().getApplicationContext(), firebaseAuth);
        Preconditions.checkNotNull(activity);
        TaskCompletionSource<String> taskCompletionSource2 = new TaskCompletionSource<>();
        if (zzau.zza().zza(activity, taskCompletionSource2)) {
            new zzadq(firebaseAuth, activity).zza();
            task = taskCompletionSource2.getTask();
        } else {
            task = Tasks.forException(zzach.zza(new Status(17057, "reCAPTCHA flow already in progress")));
        }
        task.addOnSuccessListener(new sjp(this, taskCompletionSource)).addOnFailureListener(new zjp(this, taskCompletionSource));
    }

    public final Task<zzg> zza(final FirebaseAuth firebaseAuth, @Nullable String str, @Nullable final Activity activity, boolean z, boolean z2) {
        Task<zzafi> zza;
        zzz zzzVar = (zzz) firebaseAuth.getFirebaseAuthSettings();
        final zzcb zzc = zzcb.zzc();
        if (!zzaec.zza(firebaseAuth.getApp()) && !zzzVar.zze()) {
            String str2 = f35701b;
            Log.i(str2, "ForceRecaptchaFlow from phoneAuthOptions = " + z2 + ", ForceRecaptchaFlow from firebaseSettings = " + zzzVar.zzc());
            boolean zzc2 = z2 | zzzVar.zzc();
            final TaskCompletionSource<zzg> taskCompletionSource = new TaskCompletionSource<>();
            Task<String> zzb = zzc.zzb();
            if (zzb != null) {
                if (zzb.isSuccessful()) {
                    return Tasks.forResult(new xmp().zzb(zzb.getResult()).zza());
                }
                Log.e(str2, "Error in previous reCAPTCHA flow: " + zzb.getException().getMessage());
                Log.e(str2, "Continuing with application verification as normal");
            }
            if (z && !zzc2) {
                IntegrityManager create = IntegrityManagerFactory.create(firebaseAuth.getApp().getApplicationContext());
                if (!TextUtils.isEmpty(this.f35703a)) {
                    zza = Tasks.forResult(new zzafi(this.f35703a));
                } else {
                    zza = firebaseAuth.zza();
                }
                zza.continueWithTask(firebaseAuth.zzf(), new qhp(this, str, create)).addOnCompleteListener(new OnCompleteListener() { // from class: com.google.firebase.auth.internal.zzc
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final void onComplete(Task task) {
                        zza.this.m27979a(taskCompletionSource, firebaseAuth, zzc, activity, task);
                    }
                });
            } else {
                m27980b(firebaseAuth, zzc, activity, taskCompletionSource);
            }
            return taskCompletionSource.getTask();
        }
        return Tasks.forResult(new xmp().zza());
    }

    public static zza zza() {
        return f35702c;
    }

    public static boolean zza(Exception exc) {
        if (exc instanceof FirebaseAuthMissingActivityForRecaptchaException) {
            return true;
        }
        return (exc instanceof FirebaseAuthException) && ((FirebaseAuthException) exc).getErrorCode().endsWith("UNAUTHORIZED_DOMAIN");
    }
}
