package com.blankj.utilcode.util;

import android.os.Vibrator;
import androidx.annotation.RequiresPermission;

/* loaded from: classes3.dex */
public final class VibrateUtils {

    /* renamed from: a */
    public static Vibrator f14219a;

    public VibrateUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    public static Vibrator m8400a() {
        if (f14219a == null) {
            f14219a = (Vibrator) Utils.getApp().getSystemService("vibrator");
        }
        return f14219a;
    }

    @RequiresPermission("android.permission.VIBRATE")
    public static void cancel() {
        Vibrator m8400a = m8400a();
        if (m8400a == null) {
            return;
        }
        m8400a.cancel();
    }

    @RequiresPermission("android.permission.VIBRATE")
    public static void vibrate(long j) {
        Vibrator m8400a = m8400a();
        if (m8400a == null) {
            return;
        }
        m8400a.vibrate(j);
    }

    @RequiresPermission("android.permission.VIBRATE")
    public static void vibrate(long[] jArr, int i) {
        Vibrator m8400a = m8400a();
        if (m8400a == null) {
            return;
        }
        m8400a.vibrate(jArr, i);
    }
}
