package com.sunia.HTREnginev2;

import android.os.Trace;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(29)
/* loaded from: classes3.dex */
public final class skn {
    /* renamed from: a */
    public static void m57169a(@NonNull String str, int i) {
        Trace.beginAsyncSection(str, i);
    }

    /* renamed from: b */
    public static void m57170b(@NonNull String str, int i) {
        Trace.endAsyncSection(str, i);
    }

    /* renamed from: c */
    public static void m57171c(@NonNull String str, int i) {
        Trace.setCounter(str, i);
    }
}
