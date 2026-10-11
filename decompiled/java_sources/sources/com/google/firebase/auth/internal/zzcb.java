package com.google.firebase.auth.internal;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;

/* loaded from: classes6.dex */
public final class zzcb {

    /* renamed from: c */
    public static final zzcb f35759c = new zzcb();

    /* renamed from: a */
    public final zzbi f35760a;

    /* renamed from: b */
    public final zzau f35761b;

    public zzcb() {
        this(zzbi.zzc(), zzau.zza());
    }

    public static zzcb zzc() {
        return f35759c;
    }

    public final Task<AuthResult> zza() {
        return this.f35760a.zza();
    }

    public final Task<String> zzb() {
        return this.f35760a.zzb();
    }

    @VisibleForTesting
    public zzcb(zzbi zzbiVar, zzau zzauVar) {
        this.f35760a = zzbiVar;
        this.f35761b = zzauVar;
    }

    public final void zza(Context context) {
        this.f35760a.zza(context);
    }

    public final void zza(FirebaseAuth firebaseAuth) {
        this.f35760a.zza(firebaseAuth);
    }

    public final boolean zza(Activity activity, TaskCompletionSource<AuthResult> taskCompletionSource, FirebaseAuth firebaseAuth) {
        return this.f35761b.zza(activity, taskCompletionSource, firebaseAuth);
    }

    public final boolean zza(Activity activity, TaskCompletionSource<AuthResult> taskCompletionSource, FirebaseAuth firebaseAuth, FirebaseUser firebaseUser) {
        return this.f35761b.zza(activity, taskCompletionSource, firebaseAuth, firebaseUser);
    }
}
