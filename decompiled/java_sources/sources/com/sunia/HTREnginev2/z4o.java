package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(22)
/* loaded from: classes3.dex */
public class z4o extends y4o {

    /* renamed from: l */
    public static boolean f91418l = true;

    @RequiresApi(29)
    /* renamed from: com.sunia.HTREnginev2.z4o$a */
    /* loaded from: classes3.dex */
    public static class C14743a {
        @DoNotInline
        /* renamed from: a */
        public static void m58629a(View view, int i, int i2, int i3, int i4) {
            view.setLeftTopRightBottom(i, i2, i3, i4);
        }
    }

    @Override // com.sunia.HTREnginev2.x4o
    @SuppressLint({"NewApi"})
    /* renamed from: f */
    public void mo53174f(@NonNull View view, int i, int i2, int i3, int i4) {
        if (f91418l) {
            try {
                C14743a.m58629a(view, i, i2, i3, i4);
            } catch (NoSuchMethodError unused) {
                f91418l = false;
            }
        }
    }
}
