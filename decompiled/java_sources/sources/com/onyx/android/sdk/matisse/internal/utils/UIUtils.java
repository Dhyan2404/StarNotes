package com.onyx.android.sdk.matisse.internal.utils;

import android.content.Context;

/* loaded from: classes7.dex */
public class UIUtils {
    public static int spanCount(Context context, int i) {
        int round = Math.round(context.getResources().getDisplayMetrics().widthPixels / i);
        if (round == 0) {
            return 1;
        }
        return round;
    }
}
