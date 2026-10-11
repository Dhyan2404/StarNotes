package com.google.android.material.sidesheet;

import android.view.View;
import androidx.annotation.NonNull;
import com.sunia.HTREnginev2.tnm;

/* loaded from: classes6.dex */
public abstract class SideSheetCallback implements tnm {
    /* renamed from: a */
    public void m24902a(@NonNull View view) {
    }

    @Override // com.sunia.HTREnginev2.tnm
    public abstract void onSlide(@NonNull View view, float f);

    @Override // com.sunia.HTREnginev2.tnm
    public abstract void onStateChanged(@NonNull View view, int i);
}
