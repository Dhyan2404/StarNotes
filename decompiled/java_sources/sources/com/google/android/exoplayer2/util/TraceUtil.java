package com.google.android.exoplayer2.util;

import android.os.Trace;
import androidx.annotation.RequiresApi;

/* loaded from: classes5.dex */
public final class TraceUtil {
    @RequiresApi(18)
    /* renamed from: a */
    public static void m21538a(String str) {
        Trace.beginSection(str);
    }

    @RequiresApi(18)
    /* renamed from: b */
    public static void m21539b() {
        Trace.endSection();
    }

    public static void beginSection(String str) {
        if (Util.SDK_INT >= 18) {
            m21538a(str);
        }
    }

    public static void endSection() {
        if (Util.SDK_INT >= 18) {
            m21539b();
        }
    }
}
