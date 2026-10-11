package com.sunia.HTREnginev2;

import android.app.Application;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.Recaptcha;
import com.google.android.recaptcha.RecaptchaTasksClient;
import com.google.firebase.auth.internal.zzbp;

/* loaded from: classes6.dex */
public final class jip implements zzbp {
    @Override // com.google.firebase.auth.internal.zzbp
    public final Task<RecaptchaTasksClient> zza(Application application, String str) {
        return Recaptcha.getTasksClient(application, str);
    }
}
