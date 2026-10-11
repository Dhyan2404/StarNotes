package com.sunia.HTREnginev2;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public class zmd {
    @NonNull
    /* renamed from: a */
    public static Handler m58730a() {
        return Looper.myLooper() == null ? new Handler(Looper.getMainLooper()) : new Handler();
    }
}
