package com.oplus.ocs.ipemanager.sdk;

import android.annotation.TargetApi;
import android.content.Context;

/* loaded from: classes9.dex */
public final class PencilManagerUnit {
    @TargetApi(23)
    public static PencilManagerUnitClient getPencilManagerClient(Context context) {
        return PencilManagerUnitClient.initialize(context);
    }
}
