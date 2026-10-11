package com.google.firebase.auth;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p124firebaseauthapi.zzaak;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.internal.zzbl;
import com.google.firebase.auth.internal.zzbz;

/* renamed from: com.google.firebase.auth.b */
/* loaded from: classes6.dex */
public final class C6436b extends zzbl<Void> {

    /* renamed from: a */
    public final /* synthetic */ boolean f35670a;

    /* renamed from: b */
    public final /* synthetic */ FirebaseUser f35671b;

    /* renamed from: c */
    public final /* synthetic */ EmailAuthCredential f35672c;

    /* renamed from: d */
    public final /* synthetic */ FirebaseAuth f35673d;

    public C6436b(FirebaseAuth firebaseAuth, boolean z, FirebaseUser firebaseUser, EmailAuthCredential emailAuthCredential) {
        this.f35670a = z;
        this.f35671b = firebaseUser;
        this.f35672c = emailAuthCredential;
        this.f35673d = firebaseAuth;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [com.google.firebase.auth.internal.zzbz, com.google.firebase.auth.FirebaseAuth$b] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.firebase.auth.internal.zzbz, com.google.firebase.auth.FirebaseAuth$b] */
    @Override // com.google.firebase.auth.internal.zzbl
    public final Task<Void> zza(@Nullable String str) {
        zzaak zzaakVar;
        FirebaseApp firebaseApp;
        zzaak zzaakVar2;
        FirebaseApp firebaseApp2;
        if (this.f35670a) {
            if (TextUtils.isEmpty(str)) {
                Log.i("FirebaseAuth", " Email link reauth with empty reCAPTCHA token");
            } else {
                Log.i("FirebaseAuth", "Got reCAPTCHA token for reauth with email link");
            }
            zzaakVar2 = this.f35673d.f35601e;
            firebaseApp2 = this.f35673d.f35597a;
            return zzaakVar2.zza(firebaseApp2, this.f35671b, this.f35672c, str, (zzbz) new FirebaseAuth.C6432b());
        }
        String zzc = this.f35672c.zzc();
        String zzd = this.f35672c.zzd();
        if (TextUtils.isEmpty(str)) {
            Log.i("FirebaseAuth", "Reauthenticating " + zzc + " with empty reCAPTCHA token");
        } else {
            Log.i("FirebaseAuth", "Got reCAPTCHA token for reauth with " + zzc);
        }
        zzaakVar = this.f35673d.f35601e;
        firebaseApp = this.f35673d.f35597a;
        return zzaakVar.zza(firebaseApp, this.f35671b, zzc, Preconditions.checkNotEmpty(zzd), this.f35671b.getTenantId(), str, new FirebaseAuth.C6432b());
    }
}
