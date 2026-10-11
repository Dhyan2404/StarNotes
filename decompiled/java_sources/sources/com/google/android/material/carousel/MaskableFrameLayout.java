package com.google.android.material.carousel;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.math.MathUtils;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.canvas.CanvasCompat;
import com.google.android.material.carousel.MaskableFrameLayout;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.ClampedCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.shape.ShapeableDelegate;
import com.sunia.HTREnginev2.e9j;

/* loaded from: classes6.dex */
public class MaskableFrameLayout extends FrameLayout implements e9j, Shapeable {

    /* renamed from: k */
    public static final int f30657k = -1;

    /* renamed from: e */
    public float f30658e;

    /* renamed from: f */
    public final RectF f30659f;

    /* renamed from: g */
    @Nullable
    public OnMaskChangedListener f30660g;

    /* renamed from: h */
    @NonNull
    public ShapeAppearanceModel f30661h;

    /* renamed from: i */
    public final ShapeableDelegate f30662i;

    /* renamed from: j */
    @Nullable
    public Boolean f30663j;

    public MaskableFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m23352c(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    /* renamed from: d */
    public static /* synthetic */ CornerSize m23353d(CornerSize cornerSize) {
        return cornerSize instanceof AbsoluteCornerSize ? ClampedCornerSize.createFromCornerSize((AbsoluteCornerSize) cornerSize) : cornerSize;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        this.f30662i.maybeClip(canvas, new CanvasCompat.CanvasOperation() { // from class: com.sunia.HTREnginev2.f9j
            @Override // com.google.android.material.canvas.CanvasCompat.CanvasOperation
            public final void run(Canvas canvas2) {
                MaskableFrameLayout.this.m23352c(canvas2);
            }
        });
    }

    /* renamed from: e */
    public final void m23354e() {
        this.f30662i.onMaskChanged(this, this.f30659f);
        OnMaskChangedListener onMaskChangedListener = this.f30660g;
        if (onMaskChangedListener != null) {
            onMaskChangedListener.onMaskChanged(this.f30659f);
        }
    }

    /* renamed from: f */
    public final void m23355f() {
        if (this.f30658e != -1.0f) {
            float lerp = AnimationUtils.lerp(0.0f, getWidth() / 2.0f, 0.0f, 1.0f, this.f30658e);
            setMaskRectF(new RectF(lerp, 0.0f, getWidth() - lerp, getHeight()));
        }
    }

    @Override // android.view.View
    public void getFocusedRect(Rect rect) {
        RectF rectF = this.f30659f;
        rect.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    @Override // com.sunia.HTREnginev2.e9j
    @NonNull
    public RectF getMaskRectF() {
        return this.f30659f;
    }

    @Override // com.sunia.HTREnginev2.e9j
    @Deprecated
    public float getMaskXPercentage() {
        return this.f30658e;
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f30661h;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Boolean bool = this.f30663j;
        if (bool != null) {
            this.f30662i.setForceCompatClippingEnabled(this, bool.booleanValue());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.f30663j = Boolean.valueOf(this.f30662i.isForceCompatClippingEnabled());
        this.f30662i.setForceCompatClippingEnabled(this, true);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.f30658e != -1.0f) {
            m23355f();
        }
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f30659f.isEmpty() && motionEvent.getAction() == 0) {
            if (!this.f30659f.contains(motionEvent.getX(), motionEvent.getY())) {
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void setForceCompatClipping(boolean z) {
        this.f30662i.setForceCompatClippingEnabled(this, z);
    }

    @Override // com.sunia.HTREnginev2.e9j
    public void setMaskRectF(@NonNull RectF rectF) {
        this.f30659f.set(rectF);
        m23354e();
    }

    @Override // com.sunia.HTREnginev2.e9j
    @Deprecated
    public void setMaskXPercentage(float f) {
        float clamp = MathUtils.clamp(f, 0.0f, 1.0f);
        if (this.f30658e != clamp) {
            this.f30658e = clamp;
            m23355f();
        }
    }

    @Override // com.sunia.HTREnginev2.e9j
    public void setOnMaskChangedListener(@Nullable OnMaskChangedListener onMaskChangedListener) {
        this.f30660g = onMaskChangedListener;
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        ShapeAppearanceModel withTransformedCornerSizes = shapeAppearanceModel.withTransformedCornerSizes(new ShapeAppearanceModel.CornerSizeUnaryOperator() { // from class: com.sunia.HTREnginev2.g9j
            @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
            public final CornerSize apply(CornerSize cornerSize) {
                CornerSize m23353d;
                m23353d = MaskableFrameLayout.m23353d(cornerSize);
                return m23353d;
            }
        });
        this.f30661h = withTransformedCornerSizes;
        this.f30662i.onShapeAppearanceChanged(this, withTransformedCornerSizes);
    }

    public MaskableFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaskableFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f30658e = -1.0f;
        this.f30659f = new RectF();
        this.f30662i = ShapeableDelegate.create(this);
        this.f30663j = null;
        setShapeAppearanceModel(ShapeAppearanceModel.builder(context, attributeSet, i, 0, 0).build());
    }
}
