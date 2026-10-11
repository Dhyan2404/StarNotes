package com.sunia.HTREnginev2;

import android.util.Base64;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.p124firebaseauthapi.zzafi;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.integrity.IntegrityManager;
import com.google.android.play.core.integrity.IntegrityTokenRequest;
import com.google.android.play.core.integrity.IntegrityTokenResponse;
import java.security.MessageDigest;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

/* loaded from: classes6.dex */
public final class qhp implements Continuation<zzafi, Task<IntegrityTokenResponse>> {

    /* renamed from: a */
    public final /* synthetic */ String f82065a;

    /* renamed from: b */
    public final /* synthetic */ IntegrityManager f82066b;

    /* renamed from: c */
    public final /* synthetic */ com.google.firebase.auth.internal.zza f82067c;

    public qhp(com.google.firebase.auth.internal.zza zzaVar, String str, IntegrityManager integrityManager) {
        this.f82065a = str;
        this.f82066b = integrityManager;
        this.f82067c = zzaVar;
    }

    @Override // com.google.android.gms.tasks.Continuation
    @Nullable
    public final /* synthetic */ Task<IntegrityTokenResponse> then(Task<zzafi> task) throws Exception {
        String str;
        if (task.isSuccessful()) {
            this.f82067c.f35703a = task.getResult().zza();
            return this.f82066b.requestIntegrityToken(IntegrityTokenRequest.builder().setCloudProjectNumber(Long.parseLong(task.getResult().zza())).setNonce(new String(Base64.encode(MessageDigest.getInstance(MessageDigestAlgorithms.SHA_256).digest(this.f82065a.getBytes("UTF-8")), 11))).build());
        }
        str = com.google.firebase.auth.internal.zza.f35701b;
        Log.e(str, "Problem retrieving Play Integrity producer project:  " + task.getException().getMessage());
        return Tasks.forException(task.getException());
    }
}
