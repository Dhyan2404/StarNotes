package com.google.android.play.core.integrity;

import android.content.Context;
import androidx.annotation.NonNull;

/* loaded from: classes6.dex */
public class IntegrityManagerFactory {
    private IntegrityManagerFactory() {
    }

    @NonNull
    public static IntegrityManager create(Context context) {
        return C5538v.m25697a(context).m25694a();
    }

    @NonNull
    public static StandardIntegrityManager createStandard(Context context) {
        return C5493aj.m25671a(context).m25696a();
    }
}
