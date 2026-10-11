package com.google.android.gms.auth.account;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.auth.zzal;
import com.sunia.HTREnginev2.jkp;

/* loaded from: classes5.dex */
public class WorkAccount {

    @NonNull
    public static final Api<Api.ApiOptions.NoOptions> API;

    @NonNull
    @Deprecated
    public static final WorkAccountApi WorkAccountApi;

    /* renamed from: a */
    public static final Api.ClientKey f28854a;

    /* renamed from: b */
    public static final Api.AbstractClientBuilder f28855b;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        f28854a = clientKey;
        jkp jkpVar = new jkp();
        f28855b = jkpVar;
        API = new Api<>("WorkAccount.API", jkpVar, clientKey);
        WorkAccountApi = new zzal();
    }

    @NonNull
    public static WorkAccountClient getClient(@NonNull Activity activity) {
        return new WorkAccountClient(activity);
    }

    @NonNull
    public static WorkAccountClient getClient(@NonNull Context context) {
        return new WorkAccountClient(context);
    }
}
