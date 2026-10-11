package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class ClippableRoundedCornerLayout extends FrameLayout {

    /* renamed from: e */
    @Nullable
    public Path f31467e;

    /* renamed from: f */
    public float f31468f;

    public ClippableRoundedCornerLayout(@NonNull Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.f31467e == null) {
            super.dispatchDraw(canvas);
            return;
        }
        int save = canvas.save();
        canvas.clipPath(this.f31467e);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(save);
    }

    public float getCornerRadius() {
        return this.f31468f;
    }

    public void resetClipBoundsAndCornerRadius() {
        this.f31467e = null;
        this.f31468f = 0.0f;
        invalidate();
    }

    public void updateClipBoundsAndCornerRadius(@NonNull Rect rect, float f) {
        updateClipBoundsAndCornerRadius(rect.left, rect.top, rect.right, rect.bottom, f);
    }

    public void updateCornerRadius(float f) {
        updateClipBoundsAndCornerRadius(getLeft(), getTop(), getRight(), getBottom(), f);
    }

    public ClippableRoundedCornerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void updateClipBoundsAndCornerRadius(float f, float f2, float f3, float f4, float f5) {
        updateClipBoundsAndCornerRadius(new RectF(f, f2, f3, f4), f5);
    }

    public ClippableRoundedCornerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void updateClipBoundsAndCornerRadius(@NonNull RectF rectF, float f) {
        if (this.f31467e == null) {
            this.f31467e = new Path();
        }
        this.f31468f = f;
        this.f31467e.reset();
        this.f31467e.addRoundRect(rectF, f, f, Path.Direction.CW);
        this.f31467e.close();
        invalidate();
    }
}
