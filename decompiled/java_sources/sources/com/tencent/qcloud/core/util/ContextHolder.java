package com.tencent.qcloud.core.util;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes10.dex */
public class ContextHolder {
    private static Context appContext;

    @Nullable
    public static Context getAppContext() {
        return appContext;
    }

    public static void setContext(@NonNull Context context) {
        appContext = context.getApplicationContext();
    }
}
