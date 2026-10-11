package com.google.firebase.auth;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.p124firebaseauthapi.zzaak;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.internal.zzbl;

/* renamed from: com.google.firebase.auth.h */
/* loaded from: classes6.dex */
public final class C6442h extends zzbl<AuthResult> {

    /* renamed from: a */
    public final /* synthetic */ String f35688a;

    /* renamed from: b */
    public final /* synthetic */ String f35689b;

    /* renamed from: c */
    public final /* synthetic */ FirebaseAuth f35690c;

    public C6442h(FirebaseAuth firebaseAuth, String str, String str2) {
        this.f35688a = str;
        this.f35689b = str2;
        this.f35690c = firebaseAuth;
    }

    @Override // com.google.firebase.auth.internal.zzbl
    public final Task<AuthResult> zza(@Nullable String str) {
        zzaak zzaakVar;
        FirebaseApp firebaseApp;
        String str2;
        if (TextUtils.isEmpty(str)) {
            Log.i("FirebaseAuth", "Creating user with " + this.f35688a + " with empty reCAPTCHA token");
        } else {
            Log.i("FirebaseAuth", "Got reCAPTCHA token for sign up with email " + this.f35688a);
        }
        zzaakVar = this.f35690c.f35601e;
        firebaseApp = this.f35690c.f35597a;
        String str3 = this.f35688a;
        String str4 = this.f35689b;
        str2 = this.f35690c.f35607k;
        return zzaakVar.zza(firebaseApp, str3, str4, str2, str, new FirebaseAuth.C6431a());
    }
}
