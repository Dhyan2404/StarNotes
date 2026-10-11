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
import com.google.firebase.auth.internal.zzi;

/* renamed from: com.google.firebase.auth.c */
/* loaded from: classes6.dex */
public final class C6437c extends zzbl<AuthResult> {

    /* renamed from: a */
    public final /* synthetic */ boolean f35674a;

    /* renamed from: b */
    public final /* synthetic */ FirebaseUser f35675b;

    /* renamed from: c */
    public final /* synthetic */ EmailAuthCredential f35676c;

    /* renamed from: d */
    public final /* synthetic */ FirebaseAuth f35677d;

    public C6437c(FirebaseAuth firebaseAuth, boolean z, FirebaseUser firebaseUser, EmailAuthCredential emailAuthCredential) {
        this.f35674a = z;
        this.f35675b = firebaseUser;
        this.f35676c = emailAuthCredential;
        this.f35677d = firebaseAuth;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.google.firebase.auth.internal.zzbz, com.google.firebase.auth.FirebaseAuth$b] */
    @Override // com.google.firebase.auth.internal.zzbl
    public final Task<AuthResult> zza(@Nullable String str) {
        zzaak zzaakVar;
        FirebaseApp firebaseApp;
        zzaak zzaakVar2;
        FirebaseApp firebaseApp2;
        if (TextUtils.isEmpty(str)) {
            Log.i("FirebaseAuth", "Email link login/reauth with empty reCAPTCHA token");
        } else {
            Log.i("FirebaseAuth", "Got reCAPTCHA token for login/reauth with email link");
        }
        if (this.f35674a) {
            zzaakVar2 = this.f35677d.f35601e;
            firebaseApp2 = this.f35677d.f35597a;
            return zzaakVar2.zzb(firebaseApp2, (FirebaseUser) Preconditions.checkNotNull(this.f35675b), this.f35676c, str, (zzbz) new FirebaseAuth.C6432b());
        }
        zzaakVar = this.f35677d.f35601e;
        firebaseApp = this.f35677d.f35597a;
        return zzaakVar.zza(firebaseApp, this.f35676c, str, (zzi) new FirebaseAuth.C6431a());
    }
}
