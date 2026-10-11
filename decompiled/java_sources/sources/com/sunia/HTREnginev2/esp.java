package com.sunia.HTREnginev2;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.p124firebaseauthapi.zzafm;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.internal.zzar;

/* loaded from: classes6.dex */
public final class esp implements zzar, com.google.firebase.auth.internal.zzi {

    /* renamed from: a */
    public final /* synthetic */ FirebaseAuth f69295a;

    public esp(FirebaseAuth firebaseAuth) {
        this.f69295a = firebaseAuth;
    }

    @Override // com.google.firebase.auth.internal.zzi
    public final void zza(zzafm zzafmVar, FirebaseUser firebaseUser) {
        this.f69295a.m27960k(firebaseUser, zzafmVar, true, true);
    }

    @Override // com.google.firebase.auth.internal.zzar
    public final void zza(Status status) {
        int statusCode = status.getStatusCode();
        if (statusCode == 17011 || statusCode == 17021 || statusCode == 17005) {
            this.f69295a.signOut();
        }
    }
}
