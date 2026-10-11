package com.google.android.gms.common.util;

import android.app.Application;
import com.google.android.gms.common.annotation.KeepForSdk;
import javax.annotation.Nullable;

@KeepForSdk
/* loaded from: classes5.dex */
public class ProcessUtils {

    /* renamed from: a */
    @Nullable
    public static String f29491a;

    /* renamed from: b */
    public static int f29492b;

    @androidx.annotation.Nullable
    @KeepForSdk
    public static String getMyProcessName() {
        if (f29491a == null) {
            f29491a = Application.getProcessName();
        }
        return f29491a;
    }
}
