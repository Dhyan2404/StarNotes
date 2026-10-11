package com.google.firebase.auth.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.internal.p124firebaseauthapi.zzafn;
import com.google.android.gms.internal.p124firebaseauthapi.zzah;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.RecaptchaAction;
import com.google.android.recaptcha.RecaptchaTasksClient;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseAuth;
import com.sunia.HTREnginev2.jip;
import com.sunia.HTREnginev2.lip;
import com.sunia.HTREnginev2.nip;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes6.dex */
public final class zzbu {

    /* renamed from: a */
    public Map<String, Task<RecaptchaTasksClient>> f35735a;

    /* renamed from: b */
    @Nullable
    public zzafn f35736b;

    /* renamed from: c */
    public FirebaseApp f35737c;

    /* renamed from: d */
    public FirebaseAuth f35738d;

    /* renamed from: e */
    public zzbp f35739e;

    public zzbu(FirebaseApp firebaseApp, FirebaseAuth firebaseAuth) {
        this(firebaseApp, firebaseAuth, new jip());
    }

    /* renamed from: c */
    public static String m27996c(@Nullable String str) {
        return zzah.zzc(str) ? "*" : str;
    }

    @Nullable
    /* renamed from: b */
    public final Task<RecaptchaTasksClient> m27997b(String str) {
        return this.f35735a.get(str);
    }

    public final Task<String> zza(@Nullable String str, Boolean bool, RecaptchaAction recaptchaAction) {
        String m27996c = m27996c(str);
        Task<RecaptchaTasksClient> m27997b = m27997b(m27996c);
        if (bool.booleanValue() || m27997b == null) {
            m27997b = zza(m27996c, bool);
        }
        return m27997b.continueWithTask(new nip(this, recaptchaAction));
    }

    public zzbu(FirebaseApp firebaseApp, FirebaseAuth firebaseAuth, zzbp zzbpVar) {
        this.f35735a = new HashMap();
        this.f35737c = firebaseApp;
        this.f35738d = firebaseAuth;
        this.f35739e = zzbpVar;
    }

    public final Task<RecaptchaTasksClient> zza(@Nullable String str, Boolean bool) {
        Task<RecaptchaTasksClient> m27997b;
        String m27996c = m27996c(str);
        return (bool.booleanValue() || (m27997b = m27997b(m27996c)) == null) ? this.f35738d.zza("RECAPTCHA_ENTERPRISE").continueWithTask(new lip(this, m27996c)) : m27997b;
    }

    public final boolean zza(String str) {
        zzafn zzafnVar = this.f35736b;
        return zzafnVar != null && zzafnVar.zzb(str);
    }
}
