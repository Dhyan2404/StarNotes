package com.google.firebase.auth;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.p124firebaseauthapi.zzaak;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.internal.zzbl;
import com.google.firebase.auth.internal.zzbz;

/* renamed from: com.google.firebase.auth.i */
/* loaded from: classes6.dex */
public final class C6443i extends zzbl<AuthResult> {

    /* renamed from: a */
    public final /* synthetic */ FirebaseUser f35691a;

    /* renamed from: b */
    public final /* synthetic */ EmailAuthCredential f35692b;

    /* renamed from: c */
    public final /* synthetic */ FirebaseAuth f35693c;

    public C6443i(FirebaseAuth firebaseAuth, FirebaseUser firebaseUser, EmailAuthCredential emailAuthCredential) {
        this.f35691a = firebaseUser;
        this.f35692b = emailAuthCredential;
        this.f35693c = firebaseAuth;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.google.firebase.auth.internal.zzbz, com.google.firebase.auth.FirebaseAuth$b] */
    @Override // com.google.firebase.auth.internal.zzbl
    public final Task<AuthResult> zza(@Nullable String str) {
        zzaak zzaakVar;
        FirebaseApp firebaseApp;
        if (TextUtils.isEmpty(str)) {
            Log.i("FirebaseAuth", "Linking email account with empty reCAPTCHA token");
        } else {
            Log.i("FirebaseAuth", "Got reCAPTCHA token for linking email account");
        }
        zzaakVar = this.f35693c.f35601e;
        firebaseApp = this.f35693c.f35597a;
        return zzaakVar.zza(firebaseApp, this.f35691a, (AuthCredential) this.f35692b, str, (zzbz) new FirebaseAuth.C6432b());
    }
}
