package com.google.firebase.auth.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.MultiFactor;
import com.google.firebase.auth.MultiFactorAssertion;
import com.google.firebase.auth.MultiFactorInfo;
import com.google.firebase.auth.MultiFactorSession;
import com.sunia.HTREnginev2.vfp;
import java.util.List;

/* loaded from: classes6.dex */
public final class zzag extends MultiFactor {

    /* renamed from: a */
    public final zzac f35704a;

    public zzag(zzac zzacVar) {
        Preconditions.checkNotNull(zzacVar);
        this.f35704a = zzacVar;
    }

    @Override // com.google.firebase.auth.MultiFactor
    public final Task<Void> enroll(MultiFactorAssertion multiFactorAssertion, @Nullable String str) {
        Preconditions.checkNotNull(multiFactorAssertion);
        zzac zzacVar = this.f35704a;
        return FirebaseAuth.getInstance(zzacVar.zza()).zza(zzacVar, multiFactorAssertion, str);
    }

    @Override // com.google.firebase.auth.MultiFactor
    public final List<MultiFactorInfo> getEnrolledFactors() {
        return this.f35704a.zzi();
    }

    @Override // com.google.firebase.auth.MultiFactor
    public final Task<MultiFactorSession> getSession() {
        return this.f35704a.getIdToken(false).continueWithTask(new vfp(this));
    }

    @Override // com.google.firebase.auth.MultiFactor
    public final Task<Void> unenroll(MultiFactorInfo multiFactorInfo) {
        Preconditions.checkNotNull(multiFactorInfo);
        return unenroll(multiFactorInfo.getUid());
    }

    @Override // com.google.firebase.auth.MultiFactor
    public final Task<Void> unenroll(String str) {
        Preconditions.checkNotEmpty(str);
        zzac zzacVar = this.f35704a;
        return FirebaseAuth.getInstance(zzacVar.zza()).zza(zzacVar, str);
    }
}
