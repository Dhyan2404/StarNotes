package com.sunia.HTREnginev2;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import androidx.annotation.Nullable;

/* loaded from: classes7.dex */
public class hzn {
    @Nullable
    /* renamed from: a */
    public static Activity m54661a(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return m54661a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }
}
