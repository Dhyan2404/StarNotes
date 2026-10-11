package com.onyx.common.util;

import android.content.Context;

/* loaded from: classes8.dex */
public class ContextUtils {
    private static Context context;

    public static Context getContext() {
        return context;
    }

    public static void initContext(Context context2) {
        context = context2.getApplicationContext();
    }
}
