package com.sunia.HTREnginev2;

import android.view.View;
import androidx.annotation.NonNull;
import com.google.android.material.shape.ShapeableDelegate;

/* loaded from: classes6.dex */
public class smm extends ShapeableDelegate {
    @Override // com.google.android.material.shape.ShapeableDelegate
    /* renamed from: a */
    public void mo24835a(@NonNull View view) {
        if (this.f32330c == null || this.f32331d.isEmpty() || !mo24837c()) {
            return;
        }
        view.invalidate();
    }

    @Override // com.google.android.material.shape.ShapeableDelegate
    /* renamed from: c */
    public boolean mo24837c() {
        return true;
    }
}
