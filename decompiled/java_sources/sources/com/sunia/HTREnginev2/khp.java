package com.sunia.HTREnginev2;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.p124firebaseauthapi.zzach;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.material.motion.MotionUtils;
import com.google.firebase.FirebaseError;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.internal.zzal;
import com.google.firebase.auth.internal.zzau;
import com.google.firebase.auth.internal.zzcc;
import java.lang.ref.WeakReference;

/* loaded from: classes6.dex */
public final class khp extends BroadcastReceiver {

    /* renamed from: a */
    public final WeakReference<Activity> f75432a;

    /* renamed from: b */
    public final TaskCompletionSource<AuthResult> f75433b;

    /* renamed from: c */
    public final FirebaseAuth f75434c;

    /* renamed from: d */
    public final FirebaseUser f75435d;

    /* renamed from: e */
    public final /* synthetic */ zzau f75436e;

    public khp(zzau zzauVar, Activity activity, TaskCompletionSource<AuthResult> taskCompletionSource, FirebaseAuth firebaseAuth, FirebaseUser firebaseUser) {
        this.f75436e = zzauVar;
        this.f75432a = new WeakReference<>(activity);
        this.f75433b = taskCompletionSource;
        this.f75434c = firebaseAuth;
        this.f75435d = firebaseUser;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.f75432a.get() == null) {
            Log.e("FederatedAuthReceiver", "Failed to unregister BroadcastReceiver because the Activity that launched this flow has been garbage collected; please do not finish() your Activity while performing a FederatedAuthProvider operation.");
            this.f75433b.setException(zzach.zza(new Status(FirebaseError.ERROR_INTERNAL_ERROR, "Activity that started the web operation is no longer alive; see logcat for details")));
            zzau.m27986c(context);
            return;
        }
        if (!intent.hasExtra("com.google.firebase.auth.internal.OPERATION")) {
            if (zzcc.zzb(intent)) {
                this.f75433b.setException(zzach.zza(zzcc.zza(intent)));
                zzau.m27986c(context);
                return;
            } else {
                if (intent.hasExtra("com.google.firebase.auth.internal.EXTRA_CANCELED")) {
                    this.f75433b.setException(zzach.zza(zzal.zza("WEB_CONTEXT_CANCELED")));
                    zzau.m27986c(context);
                    return;
                }
                return;
            }
        }
        String stringExtra = intent.getStringExtra("com.google.firebase.auth.internal.OPERATION");
        if ("com.google.firebase.auth.internal.NONGMSCORE_SIGN_IN".equals(stringExtra)) {
            this.f75434c.signInWithCredential(zzau.m27985a(intent)).addOnSuccessListener(new fhp(r0, r1, context)).addOnFailureListener(new zgp(this.f75436e, this.f75433b, context));
            return;
        }
        if ("com.google.firebase.auth.internal.NONGMSCORE_LINK".equals(stringExtra)) {
            this.f75435d.linkWithCredential(zzau.m27985a(intent)).addOnSuccessListener(new ihp(r0, r1, context)).addOnFailureListener(new dhp(this.f75436e, this.f75433b, context));
        } else if ("com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE".equals(stringExtra)) {
            this.f75435d.reauthenticateAndRetrieveData(zzau.m27985a(intent)).addOnSuccessListener(new thp(r0, r1, context)).addOnFailureListener(new hhp(this.f75436e, this.f75433b, context));
        } else {
            this.f75433b.setException(zzach.zza(zzal.zza("WEB_CONTEXT_CANCELED:Unknown operation received (" + stringExtra + MotionUtils.f31762d)));
        }
    }
}
