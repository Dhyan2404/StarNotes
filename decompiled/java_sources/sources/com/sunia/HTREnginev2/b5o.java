package com.sunia.HTREnginev2;

import android.graphics.Matrix;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(29)
/* loaded from: classes3.dex */
public class b5o extends a5o {
    @Override // com.sunia.HTREnginev2.x4o
    /* renamed from: c */
    public float mo53172c(@NonNull View view) {
        return view.getTransitionAlpha();
    }

    @Override // com.sunia.HTREnginev2.y4o, com.sunia.HTREnginev2.x4o
    /* renamed from: e */
    public void mo53173e(@NonNull View view, @Nullable Matrix matrix) {
        view.setAnimationMatrix(matrix);
    }

    @Override // com.sunia.HTREnginev2.z4o, com.sunia.HTREnginev2.x4o
    /* renamed from: f */
    public void mo53174f(@NonNull View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    @Override // com.sunia.HTREnginev2.x4o
    /* renamed from: g */
    public void mo53175g(@NonNull View view, float f) {
        view.setTransitionAlpha(f);
    }

    @Override // com.sunia.HTREnginev2.a5o, com.sunia.HTREnginev2.x4o
    /* renamed from: h */
    public void mo52972h(@NonNull View view, int i) {
        view.setTransitionVisibility(i);
    }

    @Override // com.sunia.HTREnginev2.y4o, com.sunia.HTREnginev2.x4o
    /* renamed from: i */
    public void mo53176i(@NonNull View view, @NonNull Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // com.sunia.HTREnginev2.y4o, com.sunia.HTREnginev2.x4o
    /* renamed from: j */
    public void mo53177j(@NonNull View view, @NonNull Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}
