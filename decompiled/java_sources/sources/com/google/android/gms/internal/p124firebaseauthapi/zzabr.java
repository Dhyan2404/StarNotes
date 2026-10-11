package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.internal.zzaj;
import com.google.firebase.auth.internal.zzi;

/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes5.dex */
public final class zzabr extends zzacz<Void, zzi> {

    @Nullable
    private final String zzaa;
    private final long zzab;
    private final boolean zzac;
    private final boolean zzad;

    @Nullable
    private final String zzae;

    @Nullable
    private final String zzaf;
    private final boolean zzag;
    private final String zzy;
    private final String zzz;

    public zzabr(zzaj zzajVar, String str, @Nullable String str2, long j, boolean z, boolean z2, @Nullable String str3, @Nullable String str4, boolean z3) {
        super(8);
        Preconditions.checkNotNull(zzajVar);
        Preconditions.checkNotEmpty(str);
        this.zzy = Preconditions.checkNotEmpty(zzajVar.zzb());
        this.zzz = str;
        this.zzaa = str2;
        this.zzab = j;
        this.zzac = z;
        this.zzad = z2;
        this.zzae = str3;
        this.zzaf = str4;
        this.zzag = z3;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadl
    public final String zza() {
        return "startMfaEnrollment";
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacz
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadl
    public final void zza(TaskCompletionSource taskCompletionSource, zzaci zzaciVar) {
        this.zzg = new zzadg(this, taskCompletionSource);
        zzaciVar.zza(this.zzy, this.zzz, this.zzaa, this.zzab, this.zzac, this.zzad, this.zzae, this.zzaf, this.zzag, this.zzb);
    }
}
