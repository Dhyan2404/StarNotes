package com.google.android.material.shape;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.material.canvas.CanvasCompat;
import com.sunia.HTREnginev2.tmm;
import com.sunia.HTREnginev2.umm;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public abstract class ShapeableDelegate {

    /* renamed from: c */
    @Nullable
    public ShapeAppearanceModel f32330c;

    /* renamed from: a */
    public boolean f32328a = false;

    /* renamed from: b */
    public boolean f32329b = false;

    /* renamed from: d */
    public RectF f32331d = new RectF();

    /* renamed from: e */
    public final Path f32332e = new Path();

    @NonNull
    public static ShapeableDelegate create(@NonNull View view) {
        return Build.VERSION.SDK_INT >= 33 ? new umm(view) : new tmm(view);
    }

    /* renamed from: a */
    public abstract void mo24835a(@NonNull View view);

    /* renamed from: b */
    public final boolean m24836b() {
        RectF rectF = this.f32331d;
        return rectF.left <= rectF.right && rectF.top <= rectF.bottom;
    }

    /* renamed from: c */
    public abstract boolean mo24837c();

    /* renamed from: d */
    public final void m24838d() {
        if (!m24836b() || this.f32330c == null) {
            return;
        }
        ShapeAppearancePathProvider.getInstance().calculatePath(this.f32330c, 1.0f, this.f32331d, this.f32332e);
    }

    public boolean isForceCompatClippingEnabled() {
        return this.f32328a;
    }

    public void maybeClip(@NonNull Canvas canvas, @NonNull CanvasCompat.CanvasOperation canvasOperation) {
        if (!mo24837c() || this.f32332e.isEmpty()) {
            canvasOperation.run(canvas);
            return;
        }
        canvas.save();
        canvas.clipPath(this.f32332e);
        canvasOperation.run(canvas);
        canvas.restore();
    }

    public void onMaskChanged(@NonNull View view, @NonNull RectF rectF) {
        this.f32331d = rectF;
        m24838d();
        mo24835a(view);
    }

    public void onShapeAppearanceChanged(@NonNull View view, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f32330c = shapeAppearanceModel;
        m24838d();
        mo24835a(view);
    }

    public void setForceCompatClippingEnabled(@NonNull View view, boolean z) {
        if (z != this.f32328a) {
            this.f32328a = z;
            mo24835a(view);
        }
    }

    public void setOffsetZeroCornerEdgeBoundsEnabled(@NonNull View view, boolean z) {
        this.f32329b = z;
        mo24835a(view);
    }
}
