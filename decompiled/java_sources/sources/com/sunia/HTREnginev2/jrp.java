package com.sunia.HTREnginev2;

import com.google.android.gms.common.api.Status;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.internal.zzas;

/* loaded from: classes6.dex */
public final class jrp implements zzas {

    /* renamed from: a */
    public final /* synthetic */ FirebaseUser f74636a;

    /* renamed from: b */
    public final /* synthetic */ FirebaseAuth f74637b;

    public jrp(FirebaseAuth firebaseAuth, FirebaseUser firebaseUser) {
        this.f74636a = firebaseUser;
        this.f74637b = firebaseAuth;
    }

    @Override // com.google.firebase.auth.internal.zzas
    public final void zza() {
        FirebaseUser firebaseUser;
        FirebaseUser firebaseUser2;
        firebaseUser = this.f74637b.f35602f;
        if (firebaseUser != null) {
            firebaseUser2 = this.f74637b.f35602f;
            if (firebaseUser2.getUid().equalsIgnoreCase(this.f74636a.getUid())) {
                this.f74637b.zzh();
            }
        }
    }

    @Override // com.google.firebase.auth.internal.zzar
    public final void zza(Status status) {
        if (status.getStatusCode() == 17011 || status.getStatusCode() == 17021 || status.getStatusCode() == 17005) {
            this.f74637b.signOut();
        }
    }
}
