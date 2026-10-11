package com.sunia.HTREnginev2;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.p124firebaseauthapi.zzaak;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.ActionCodeSettings;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.internal.zzbl;

/* loaded from: classes6.dex */
public final class drp extends zzbl<Void> {

    /* renamed from: a */
    public final /* synthetic */ String f68166a;

    /* renamed from: b */
    public final /* synthetic */ ActionCodeSettings f68167b;

    /* renamed from: c */
    public final /* synthetic */ FirebaseAuth f68168c;

    public drp(FirebaseAuth firebaseAuth, String str, ActionCodeSettings actionCodeSettings) {
        this.f68166a = str;
        this.f68167b = actionCodeSettings;
        this.f68168c = firebaseAuth;
    }

    @Override // com.google.firebase.auth.internal.zzbl
    public final Task<Void> zza(@Nullable String str) {
        zzaak zzaakVar;
        FirebaseApp firebaseApp;
        String str2;
        if (TextUtils.isEmpty(str)) {
            Log.i("FirebaseAuth", "Email link sign in for " + this.f68166a + " with empty reCAPTCHA token");
        } else {
            Log.i("FirebaseAuth", "Got reCAPTCHA token for email link sign in for " + this.f68166a);
        }
        zzaakVar = this.f68168c.f35601e;
        firebaseApp = this.f68168c.f35597a;
        String str3 = this.f68166a;
        ActionCodeSettings actionCodeSettings = this.f68167b;
        str2 = this.f68168c.f35607k;
        return zzaakVar.zzb(firebaseApp, str3, actionCodeSettings, str2, str);
    }
}
