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
public final class grp extends zzbl<Void> {

    /* renamed from: a */
    public final /* synthetic */ String f71402a;

    /* renamed from: b */
    public final /* synthetic */ ActionCodeSettings f71403b;

    /* renamed from: c */
    public final /* synthetic */ FirebaseAuth f71404c;

    public grp(FirebaseAuth firebaseAuth, String str, ActionCodeSettings actionCodeSettings) {
        this.f71402a = str;
        this.f71403b = actionCodeSettings;
        this.f71404c = firebaseAuth;
    }

    @Override // com.google.firebase.auth.internal.zzbl
    public final Task<Void> zza(@Nullable String str) {
        zzaak zzaakVar;
        FirebaseApp firebaseApp;
        String str2;
        if (TextUtils.isEmpty(str)) {
            Log.i("FirebaseAuth", "Password reset request " + this.f71402a + " with empty reCAPTCHA token");
        } else {
            Log.i("FirebaseAuth", "Got reCAPTCHA token for password reset of email " + this.f71402a);
        }
        zzaakVar = this.f71404c.f35601e;
        firebaseApp = this.f71404c.f35597a;
        String str3 = this.f71402a;
        ActionCodeSettings actionCodeSettings = this.f71403b;
        str2 = this.f71404c.f35607k;
        return zzaakVar.zza(firebaseApp, str3, actionCodeSettings, str2, str);
    }
}
