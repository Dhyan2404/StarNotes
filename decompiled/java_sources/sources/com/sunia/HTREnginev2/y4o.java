package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes3.dex */
public class y4o extends x4o {

    /* renamed from: i */
    public static boolean f90392i = true;

    /* renamed from: j */
    public static boolean f90393j = true;

    /* renamed from: k */
    public static boolean f90394k = true;

    @RequiresApi(29)
    /* renamed from: com.sunia.HTREnginev2.y4o$a */
    /* loaded from: classes3.dex */
    public static class C14690a {
        @DoNotInline
        /* renamed from: a */
        public static void m58381a(View view, Matrix matrix) {
            view.setAnimationMatrix(matrix);
        }

        @DoNotInline
        /* renamed from: b */
        public static void m58382b(View view, Matrix matrix) {
            view.transformMatrixToGlobal(matrix);
        }

        @DoNotInline
        /* renamed from: c */
        public static void m58383c(View view, Matrix matrix) {
            view.transformMatrixToLocal(matrix);
        }
    }

    @Override // com.sunia.HTREnginev2.x4o
    @SuppressLint({"NewApi"})
    /* renamed from: e */
    public void mo53173e(@NonNull View view, @Nullable Matrix matrix) {
        if (f90392i) {
            try {
                C14690a.m58381a(view, matrix);
            } catch (NoSuchMethodError unused) {
                f90392i = false;
            }
        }
    }

    @Override // com.sunia.HTREnginev2.x4o
    @SuppressLint({"NewApi"})
    /* renamed from: i */
    public void mo53176i(@NonNull View view, @NonNull Matrix matrix) {
        if (f90393j) {
            try {
                C14690a.m58382b(view, matrix);
            } catch (NoSuchMethodError unused) {
                f90393j = false;
            }
        }
    }

    @Override // com.sunia.HTREnginev2.x4o
    @SuppressLint({"NewApi"})
    /* renamed from: j */
    public void mo53177j(@NonNull View view, @NonNull Matrix matrix) {
        if (f90394k) {
            try {
                C14690a.m58383c(view, matrix);
            } catch (NoSuchMethodError unused) {
                f90394k = false;
            }
        }
    }
}
