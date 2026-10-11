package com.sunia.HTREnginev2;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.google.android.material.internal.ViewOverlayImpl;

@RequiresApi(18)
/* loaded from: classes6.dex */
public class l4o implements ViewOverlayImpl {

    /* renamed from: a */
    public final ViewOverlay f76133a;

    public l4o(@NonNull View view) {
        this.f76133a = view.getOverlay();
    }

    @Override // com.google.android.material.internal.ViewOverlayImpl
    public void add(@NonNull Drawable drawable) {
        this.f76133a.add(drawable);
    }

    @Override // com.google.android.material.internal.ViewOverlayImpl
    public void remove(@NonNull Drawable drawable) {
        this.f76133a.remove(drawable);
    }
}
