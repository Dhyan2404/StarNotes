package com.sunia.HTREnginev2;

import android.app.Application;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p124firebaseauthapi.zzac;
import com.google.android.gms.internal.p124firebaseauthapi.zzafn;
import com.google.android.gms.internal.p124firebaseauthapi.zzah;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.recaptcha.RecaptchaTasksClient;
import com.google.firebase.auth.internal.zzbr;
import com.google.firebase.auth.internal.zzbu;
import java.util.List;

/* loaded from: classes6.dex */
public final class lip implements Continuation<zzafn, Task<RecaptchaTasksClient>> {

    /* renamed from: a */
    public final /* synthetic */ String f76514a;

    /* renamed from: b */
    public final /* synthetic */ zzbu f76515b;

    public lip(zzbu zzbuVar, String str) {
        this.f76514a = str;
        this.f76515b = zzbuVar;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Task<RecaptchaTasksClient> then(Task<zzafn> task) throws Exception {
        if (!task.isSuccessful()) {
            return Tasks.forException(new zzbr((String) Preconditions.checkNotNull(((Exception) Preconditions.checkNotNull(task.getException())).getMessage())));
        }
        zzafn result = task.getResult();
        String zza = result.zza();
        if (zzah.zzc(zza)) {
            return Tasks.forException(new zzbr("No Recaptcha Enterprise siteKey configured for tenant/project " + this.f76514a));
        }
        List<String> zza2 = zzac.zza('/').zza((CharSequence) zza);
        String str = zza2.size() != 4 ? null : zza2.get(3);
        if (TextUtils.isEmpty(str)) {
            return Tasks.forException(new Exception("Invalid siteKey format " + zza));
        }
        if (Log.isLoggable("RecaptchaHandler", 4)) {
            Log.i("RecaptchaHandler", "Successfully obtained site key for tenant " + this.f76514a);
        }
        this.f76515b.f35736b = result;
        zzbu zzbuVar = this.f76515b;
        Task<RecaptchaTasksClient> zza3 = zzbuVar.f35739e.zza((Application) zzbuVar.f35737c.getApplicationContext(), str);
        this.f76515b.f35735a.put(this.f76514a, zza3);
        return zza3;
    }
}
