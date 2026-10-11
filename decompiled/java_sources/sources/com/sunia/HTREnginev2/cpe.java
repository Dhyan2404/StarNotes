package com.sunia.HTREnginev2;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;

/* loaded from: classes6.dex */
public class cpe extends MaterialShapeDrawable {

    /* renamed from: q0 */
    @NonNull
    public C13579b f67053q0;

    /* renamed from: com.sunia.HTREnginev2.cpe$c */
    /* loaded from: classes6.dex */
    public static class C13580c extends cpe {

        /* renamed from: t0 */
        public Paint f67055t0;

        /* renamed from: u0 */
        public int f67056u0;

        public C13580c(@NonNull C13579b c13579b) {
            super(c13579b);
        }

        /* renamed from: F */
        public final Paint m53491F() {
            if (this.f67055t0 == null) {
                Paint paint = new Paint(1);
                this.f67055t0 = paint;
                paint.setStyle(Paint.Style.FILL_AND_STROKE);
                this.f67055t0.setColor(-1);
                this.f67055t0.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            }
            return this.f67055t0;
        }

        /* renamed from: G */
        public final void m53492G(@NonNull Canvas canvas) {
            if (m53495J(getCallback())) {
                return;
            }
            canvas.restoreToCount(this.f67056u0);
        }

        /* renamed from: H */
        public final void m53493H(@NonNull Canvas canvas) {
            Drawable.Callback callback = getCallback();
            if (!m53495J(callback)) {
                m53494I(canvas);
                return;
            }
            View view = (View) callback;
            if (view.getLayerType() != 2) {
                view.setLayerType(2, null);
            }
        }

        /* renamed from: I */
        public final void m53494I(@NonNull Canvas canvas) {
            this.f67056u0 = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
        }

        /* renamed from: J */
        public final boolean m53495J(Drawable.Callback callback) {
            return callback instanceof View;
        }

        @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            m53493H(canvas);
            super.draw(canvas);
            m53492G(canvas);
        }

        @Override // com.google.android.material.shape.MaterialShapeDrawable
        public void drawStrokeShape(@NonNull Canvas canvas) {
            super.drawStrokeShape(canvas);
            canvas.drawRect(this.f67053q0.f67054w, m53491F());
        }
    }

    @TargetApi(18)
    /* renamed from: com.sunia.HTREnginev2.cpe$d */
    /* loaded from: classes6.dex */
    public static class C13581d extends cpe {
        public C13581d(@NonNull C13579b c13579b) {
            super(c13579b);
        }

        @Override // com.google.android.material.shape.MaterialShapeDrawable
        public void drawStrokeShape(@NonNull Canvas canvas) {
            if (this.f67053q0.f67054w.isEmpty()) {
                super.drawStrokeShape(canvas);
                return;
            }
            canvas.save();
            canvas.clipOutRect(this.f67053q0.f67054w);
            super.drawStrokeShape(canvas);
            canvas.restore();
        }
    }

    /* renamed from: A */
    public static cpe m53483A(@NonNull C13579b c13579b) {
        return new C13581d(c13579b);
    }

    /* renamed from: z */
    public static cpe m53485z(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        if (shapeAppearanceModel == null) {
            shapeAppearanceModel = new ShapeAppearanceModel();
        }
        return m53483A(new C13579b(shapeAppearanceModel, new RectF()));
    }

    /* renamed from: B */
    public boolean m53486B() {
        return !this.f67053q0.f67054w.isEmpty();
    }

    /* renamed from: C */
    public void m53487C() {
        m53488D(0.0f, 0.0f, 0.0f, 0.0f);
    }

    /* renamed from: D */
    public void m53488D(float f, float f2, float f3, float f4) {
        if (f == this.f67053q0.f67054w.left && f2 == this.f67053q0.f67054w.top && f3 == this.f67053q0.f67054w.right && f4 == this.f67053q0.f67054w.bottom) {
            return;
        }
        this.f67053q0.f67054w.set(f, f2, f3, f4);
        invalidateSelf();
    }

    /* renamed from: E */
    public void m53489E(@NonNull RectF rectF) {
        m53488D(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        this.f67053q0 = new C13579b(this.f67053q0);
        return this;
    }

    /* renamed from: com.sunia.HTREnginev2.cpe$b */
    /* loaded from: classes6.dex */
    public static final class C13579b extends MaterialShapeDrawable.MaterialShapeDrawableState {

        /* renamed from: w */
        @NonNull
        public final RectF f67054w;

        @Override // com.google.android.material.shape.MaterialShapeDrawable.MaterialShapeDrawableState, android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            cpe m53483A = cpe.m53483A(this);
            m53483A.invalidateSelf();
            return m53483A;
        }

        public C13579b(@NonNull ShapeAppearanceModel shapeAppearanceModel, @NonNull RectF rectF) {
            super(shapeAppearanceModel, null);
            this.f67054w = rectF;
        }

        public C13579b(@NonNull C13579b c13579b) {
            super(c13579b);
            this.f67054w = c13579b.f67054w;
        }
    }

    public cpe(@NonNull C13579b c13579b) {
        super(c13579b);
        this.f67053q0 = c13579b;
    }
}
