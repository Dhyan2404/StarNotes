package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.view.ViewGroup;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public class l3o {

    /* renamed from: a */
    public static boolean f76106a = true;

    /* renamed from: b */
    public static Method f76107b;

    /* renamed from: c */
    public static boolean f76108c;

    @RequiresApi(29)
    /* renamed from: com.sunia.HTREnginev2.l3o$a */
    /* loaded from: classes3.dex */
    public static class C14026a {
        @DoNotInline
        /* renamed from: a */
        public static int m55377a(ViewGroup viewGroup, int i) {
            return viewGroup.getChildDrawingOrder(i);
        }

        @DoNotInline
        /* renamed from: b */
        public static void m55378b(ViewGroup viewGroup, boolean z) {
            viewGroup.suppressLayout(z);
        }
    }

    /* renamed from: a */
    public static int m55374a(@NonNull ViewGroup viewGroup, int i) {
        return C14026a.m55377a(viewGroup, i);
    }

    @SuppressLint({"NewApi"})
    /* renamed from: b */
    public static void m55375b(@NonNull ViewGroup viewGroup, boolean z) {
        if (f76106a) {
            try {
                C14026a.m55378b(viewGroup, z);
            } catch (NoSuchMethodError unused) {
                f76106a = false;
            }
        }
    }

    /* renamed from: c */
    public static void m55376c(@NonNull ViewGroup viewGroup, boolean z) {
        C14026a.m55378b(viewGroup, z);
    }
}
