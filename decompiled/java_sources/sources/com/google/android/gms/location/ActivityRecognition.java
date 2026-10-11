package com.google.android.gms.location;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.location.zzg;
import com.sunia.HTREnginev2.ifp;

/* loaded from: classes5.dex */
public class ActivityRecognition {

    @NonNull
    public static final Api<Api.ApiOptions.NoOptions> API;

    @NonNull
    @Deprecated
    public static final ActivityRecognitionApi ActivityRecognitionApi;

    @NonNull
    public static final String CLIENT_NAME = "activity_recognition";

    /* renamed from: a */
    public static final Api.ClientKey<com.google.android.gms.internal.location.zzaz> f29619a;

    /* renamed from: b */
    public static final Api.AbstractClientBuilder<com.google.android.gms.internal.location.zzaz, Api.ApiOptions.NoOptions> f29620b;

    static {
        Api.ClientKey<com.google.android.gms.internal.location.zzaz> clientKey = new Api.ClientKey<>();
        f29619a = clientKey;
        ifp ifpVar = new ifp();
        f29620b = ifpVar;
        API = new Api<>("ActivityRecognition.API", ifpVar, clientKey);
        ActivityRecognitionApi = new zzg();
    }

    @NonNull
    public static ActivityRecognitionClient getClient(@NonNull Activity activity) {
        return new ActivityRecognitionClient(activity);
    }

    @NonNull
    public static ActivityRecognitionClient getClient(@NonNull Context context) {
        return new ActivityRecognitionClient(context);
    }
}
