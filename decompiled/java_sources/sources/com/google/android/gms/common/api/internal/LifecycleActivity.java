package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.ContextWrapper;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;

@KeepForSdk
/* loaded from: classes5.dex */
public class LifecycleActivity {

    /* renamed from: a */
    public final Object f29114a;

    public LifecycleActivity(@NonNull Activity activity) {
        Preconditions.checkNotNull(activity, "Activity must not be null");
        this.f29114a = activity;
    }

    @NonNull
    public final Activity zza() {
        return (Activity) this.f29114a;
    }

    @NonNull
    public final FragmentActivity zzb() {
        return (FragmentActivity) this.f29114a;
    }

    public final boolean zzc() {
        return this.f29114a instanceof Activity;
    }

    public final boolean zzd() {
        return this.f29114a instanceof FragmentActivity;
    }

    @KeepForSdk
    public LifecycleActivity(@NonNull ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }
}
