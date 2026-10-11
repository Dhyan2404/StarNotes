package com.sunia.HTREnginev2;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.google.android.material.shape.ShapeableDelegate;

@RequiresApi(33)
/* loaded from: classes6.dex */
public class umm extends ShapeableDelegate {

    /* renamed from: com.sunia.HTREnginev2.umm$a */
    /* loaded from: classes6.dex */
    public class C14511a extends ViewOutlineProvider {
        public C14511a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            if (umm.this.f32332e.isEmpty()) {
                return;
            }
            outline.setPath(umm.this.f32332e);
        }
    }

    public umm(@NonNull View view) {
        m57646e(view);
    }

    @DoNotInline
    /* renamed from: e */
    private void m57646e(View view) {
        view.setOutlineProvider(new C14511a());
    }

    @Override // com.google.android.material.shape.ShapeableDelegate
    /* renamed from: a */
    public void mo24835a(@NonNull View view) {
        view.setClipToOutline(!mo24837c());
        if (mo24837c()) {
            view.invalidate();
        } else {
            view.invalidateOutline();
        }
    }

    @Override // com.google.android.material.shape.ShapeableDelegate
    /* renamed from: c */
    public boolean mo24837c() {
        return this.f32328a;
    }
}
