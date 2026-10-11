package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(23)
/* loaded from: classes3.dex */
public class a5o extends z4o {

    /* renamed from: m */
    public static boolean f64354m = true;

    @RequiresApi(29)
    /* renamed from: com.sunia.HTREnginev2.a5o$a */
    /* loaded from: classes3.dex */
    public static class C13472a {
        @DoNotInline
        /* renamed from: a */
        public static void m52973a(View view, int i) {
            view.setTransitionVisibility(i);
        }
    }

    @Override // com.sunia.HTREnginev2.x4o
    @SuppressLint({"NewApi"})
    /* renamed from: h */
    public void mo52972h(@NonNull View view, int i) {
        if (f64354m) {
            try {
                C13472a.m52973a(view, i);
            } catch (NoSuchMethodError unused) {
                f64354m = false;
            }
        }
    }
}
