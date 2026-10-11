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
import com.google.firebase.auth.internal.zzal;
import com.google.firebase.auth.internal.zzau;
import com.google.firebase.auth.internal.zzcc;
import java.lang.ref.WeakReference;

/* loaded from: classes6.dex */
public final class whp extends BroadcastReceiver {

    /* renamed from: a */
    public final WeakReference<Activity> f88641a;

    /* renamed from: b */
    public final TaskCompletionSource<String> f88642b;

    /* renamed from: c */
    public final /* synthetic */ zzau f88643c;

    public whp(zzau zzauVar, Activity activity, TaskCompletionSource<String> taskCompletionSource) {
        this.f88643c = zzauVar;
        this.f88641a = new WeakReference<>(activity);
        this.f88642b = taskCompletionSource;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.f88641a.get() == null) {
            Log.e("FederatedAuthReceiver", "Failed to unregister BroadcastReceiver because the Activity that launched this flow has been garbage collected; please do not finish() your Activity while performing a FederatedAuthProvider operation.");
            this.f88642b.setException(zzach.zza(new Status(FirebaseError.ERROR_INTERNAL_ERROR, "Activity that started the web operation is no longer alive; see logcat for details")));
            zzau.m27986c(context);
            return;
        }
        if (intent.hasExtra("com.google.firebase.auth.internal.OPERATION")) {
            String stringExtra = intent.getStringExtra("com.google.firebase.auth.internal.OPERATION");
            if ("com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA".equals(stringExtra)) {
                zzau.m27987d(this.f88643c, intent, this.f88642b, context);
                return;
            }
            this.f88642b.setException(zzach.zza(zzal.zza("WEB_CONTEXT_CANCELED:Unknown operation received (" + stringExtra + MotionUtils.f31762d)));
            return;
        }
        if (zzcc.zzb(intent)) {
            this.f88642b.setException(zzach.zza(zzcc.zza(intent)));
            zzau.m27986c(context);
        } else if (intent.hasExtra("com.google.firebase.auth.internal.EXTRA_CANCELED")) {
            this.f88642b.setException(zzach.zza(zzal.zza("WEB_CONTEXT_CANCELED")));
            zzau.m27986c(context);
        }
    }
}
