package com.sunia.HTREnginev2;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.sunia.HTREnginev2.tt */
/* loaded from: classes6.dex */
public class C14472tt extends Drawable {

    /* renamed from: q */
    public static final float f85722q = 1.3333f;

    /* renamed from: b */
    @NonNull
    public final Paint f85724b;

    /* renamed from: h */
    @Dimension
    public float f85730h;

    /* renamed from: i */
    @ColorInt
    public int f85731i;

    /* renamed from: j */
    @ColorInt
    public int f85732j;

    /* renamed from: k */
    @ColorInt
    public int f85733k;

    /* renamed from: l */
    @ColorInt
    public int f85734l;

    /* renamed from: m */
    @ColorInt
    public int f85735m;

    /* renamed from: o */
    public ShapeAppearanceModel f85737o;

    /* renamed from: p */
    @Nullable
    public ColorStateList f85738p;

    /* renamed from: a */
    public final ShapeAppearancePathProvider f85723a = ShapeAppearancePathProvider.getInstance();

    /* renamed from: c */
    public final Path f85725c = new Path();

    /* renamed from: d */
    public final Rect f85726d = new Rect();

    /* renamed from: e */
    public final RectF f85727e = new RectF();

    /* renamed from: f */
    public final RectF f85728f = new RectF();

    /* renamed from: g */
    public final b f85729g = new b();

    /* renamed from: n */
    public boolean f85736n = true;

    /* renamed from: com.sunia.HTREnginev2.tt$b */
    /* loaded from: classes6.dex */
    public class b extends Drawable.ConstantState {
        public b() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return C14472tt.this;
        }
    }

    public C14472tt(ShapeAppearanceModel shapeAppearanceModel) {
        this.f85737o = shapeAppearanceModel;
        Paint paint = new Paint(1);
        this.f85724b = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    @NonNull
    /* renamed from: a */
    public final Shader m57444a() {
        copyBounds(this.f85726d);
        float height = this.f85730h / r0.height();
        return new LinearGradient(0.0f, r0.top, 0.0f, r0.bottom, new int[]{ColorUtils.compositeColors(this.f85731i, this.f85735m), ColorUtils.compositeColors(this.f85732j, this.f85735m), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.f85732j, 0), this.f85735m), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.f85734l, 0), this.f85735m), ColorUtils.compositeColors(this.f85734l, this.f85735m), ColorUtils.compositeColors(this.f85733k, this.f85735m)}, new float[]{0.0f, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP);
    }

    @NonNull
    /* renamed from: b */
    public RectF m57445b() {
        this.f85728f.set(getBounds());
        return this.f85728f;
    }

    /* renamed from: c */
    public ShapeAppearanceModel m57446c() {
        return this.f85737o;
    }

    /* renamed from: d */
    public void m57447d(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f85735m = colorStateList.getColorForState(getState(), this.f85735m);
        }
        this.f85738p = colorStateList;
        this.f85736n = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.f85736n) {
            this.f85724b.setShader(m57444a());
            this.f85736n = false;
        }
        float strokeWidth = this.f85724b.getStrokeWidth() / 2.0f;
        copyBounds(this.f85726d);
        this.f85727e.set(this.f85726d);
        float min = Math.min(this.f85737o.getTopLeftCornerSize().getCornerSize(m57445b()), this.f85727e.width() / 2.0f);
        if (this.f85737o.isRoundRect(m57445b())) {
            this.f85727e.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(this.f85727e, min, min, this.f85724b);
        }
    }

    /* renamed from: e */
    public void m57448e(@Dimension float f) {
        if (this.f85730h != f) {
            this.f85730h = f;
            this.f85724b.setStrokeWidth(f * 1.3333f);
            this.f85736n = true;
            invalidateSelf();
        }
    }

    /* renamed from: f */
    public void m57449f(@ColorInt int i, @ColorInt int i2, @ColorInt int i3, @ColorInt int i4) {
        this.f85731i = i;
        this.f85732j = i2;
        this.f85733k = i3;
        this.f85734l = i4;
    }

    /* renamed from: g */
    public void m57450g(ShapeAppearanceModel shapeAppearanceModel) {
        this.f85737o = shapeAppearanceModel;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f85729g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f85730h > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.f85737o.isRoundRect(m57445b())) {
            outline.setRoundRect(getBounds(), this.f85737o.getTopLeftCornerSize().getCornerSize(m57445b()));
        } else {
            copyBounds(this.f85726d);
            this.f85727e.set(this.f85726d);
            this.f85723a.calculatePath(this.f85737o, 1.0f, this.f85727e, this.f85725c);
            DrawableUtils.setOutlineToPath(outline, this.f85725c);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        if (!this.f85737o.isRoundRect(m57445b())) {
            return true;
        }
        int round = Math.round(this.f85730h);
        rect.set(round, round, round, round);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f85738p;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f85736n = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.f85738p;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.f85735m)) != this.f85735m) {
            this.f85736n = true;
            this.f85735m = colorForState;
        }
        if (this.f85736n) {
            invalidateSelf();
        }
        return this.f85736n;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, m281to = 255) int i) {
        this.f85724b.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f85724b.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
