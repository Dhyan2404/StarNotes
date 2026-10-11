package com.google.firebase.auth.internal;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.VisibleForTesting;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.internal.p124firebaseauthapi.zzags;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.sunia.HTREnginev2.khp;
import com.sunia.HTREnginev2.whp;

/* loaded from: classes6.dex */
public final class zzau {

    /* renamed from: c */
    public static zzau f35714c;

    /* renamed from: a */
    public boolean f35715a = false;

    /* renamed from: b */
    public BroadcastReceiver f35716b;

    /* renamed from: a */
    public static AuthCredential m27985a(Intent intent) {
        Preconditions.checkNotNull(intent);
        return com.google.firebase.auth.zzf.zza(((zzags) SafeParcelableSerializer.deserializeFromIntentExtra(intent, "com.google.firebase.auth.internal.VERIFY_ASSERTION_REQUEST", zzags.CREATOR)).zzc(true));
    }

    @VisibleForTesting
    /* renamed from: c */
    public static void m27986c(Context context) {
        zzau zzauVar = f35714c;
        zzauVar.f35715a = false;
        if (zzauVar.f35716b != null) {
            LocalBroadcastManager.getInstance(context).unregisterReceiver(f35714c.f35716b);
        }
        f35714c.f35716b = null;
    }

    /* renamed from: d */
    public static /* synthetic */ void m27987d(zzau zzauVar, Intent intent, TaskCompletionSource taskCompletionSource, Context context) {
        taskCompletionSource.setResult(intent.getStringExtra("com.google.firebase.auth.internal.RECAPTCHA_TOKEN"));
        m27986c(context);
    }

    public static zzau zza() {
        if (f35714c == null) {
            f35714c = new zzau();
        }
        return f35714c;
    }

    /* renamed from: b */
    public final void m27991b(Activity activity, BroadcastReceiver broadcastReceiver) {
        this.f35716b = broadcastReceiver;
        LocalBroadcastManager.getInstance(activity).registerReceiver(broadcastReceiver, new IntentFilter("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"));
    }

    public final boolean zza(Activity activity, TaskCompletionSource<AuthResult> taskCompletionSource, FirebaseAuth firebaseAuth) {
        return zza(activity, taskCompletionSource, firebaseAuth, null);
    }

    public final boolean zza(Activity activity, TaskCompletionSource<AuthResult> taskCompletionSource, FirebaseAuth firebaseAuth, FirebaseUser firebaseUser) {
        if (this.f35715a) {
            return false;
        }
        m27991b(activity, new khp(this, activity, taskCompletionSource, firebaseAuth, firebaseUser));
        this.f35715a = true;
        return true;
    }

    public final boolean zza(Activity activity, TaskCompletionSource<String> taskCompletionSource) {
        if (this.f35715a) {
            return false;
        }
        m27991b(activity, new whp(this, activity, taskCompletionSource));
        this.f35715a = true;
        return true;
    }
}
