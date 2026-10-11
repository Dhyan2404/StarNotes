package com.sunia.HTREnginev2;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(18)
/* loaded from: classes6.dex */
public class j3o implements k3o {

    /* renamed from: a */
    public final ViewGroupOverlay f73900a;

    public j3o(@NonNull ViewGroup viewGroup) {
        this.f73900a = viewGroup.getOverlay();
    }

    @Override // com.sunia.HTREnginev2.k3o
    /* renamed from: a */
    public void mo54673a(@NonNull View view) {
        this.f73900a.add(view);
    }

    @Override // com.google.android.material.internal.ViewOverlayImpl
    public void add(@NonNull Drawable drawable) {
        this.f73900a.add(drawable);
    }

    @Override // com.sunia.HTREnginev2.k3o
    /* renamed from: b */
    public void mo54674b(@NonNull View view) {
        this.f73900a.remove(view);
    }

    @Override // com.google.android.material.internal.ViewOverlayImpl
    public void remove(@NonNull Drawable drawable) {
        this.f73900a.remove(drawable);
    }
}
