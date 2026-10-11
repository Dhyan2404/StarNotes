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

/* renamed from: com.google.firebase.auth.a */
/* loaded from: classes6.dex */
public final class C6435a extends zzbl<AuthResult> {

    /* renamed from: a */
    public final /* synthetic */ String f35664a;

    /* renamed from: b */
    public final /* synthetic */ boolean f35665b;

    /* renamed from: c */
    public final /* synthetic */ FirebaseUser f35666c;

    /* renamed from: d */
    public final /* synthetic */ String f35667d;

    /* renamed from: e */
    public final /* synthetic */ String f35668e;

    /* renamed from: f */
    public final /* synthetic */ FirebaseAuth f35669f;

    public C6435a(FirebaseAuth firebaseAuth, String str, boolean z, FirebaseUser firebaseUser, String str2, String str3) {
        this.f35664a = str;
        this.f35665b = z;
        this.f35666c = firebaseUser;
        this.f35667d = str2;
        this.f35668e = str3;
        this.f35669f = firebaseAuth;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.google.firebase.auth.internal.zzbz, com.google.firebase.auth.FirebaseAuth$b] */
    @Override // com.google.firebase.auth.internal.zzbl
    public final Task<AuthResult> zza(@Nullable String str) {
        zzaak zzaakVar;
        FirebaseApp firebaseApp;
        zzaak zzaakVar2;
        FirebaseApp firebaseApp2;
        if (TextUtils.isEmpty(str)) {
            Log.i("FirebaseAuth", "Logging in as " + this.f35664a + " with empty reCAPTCHA token");
        } else {
            Log.i("FirebaseAuth", "Got reCAPTCHA token for login with email " + this.f35664a);
        }
        if (this.f35665b) {
            zzaakVar2 = this.f35669f.f35601e;
            firebaseApp2 = this.f35669f.f35597a;
            return zzaakVar2.zzb(firebaseApp2, (FirebaseUser) Preconditions.checkNotNull(this.f35666c), this.f35664a, this.f35667d, this.f35668e, str, new FirebaseAuth.C6432b());
        }
        zzaakVar = this.f35669f.f35601e;
        firebaseApp = this.f35669f.f35597a;
        return zzaakVar.zzb(firebaseApp, this.f35664a, this.f35667d, this.f35668e, str, new FirebaseAuth.C6431a());
    }
}
