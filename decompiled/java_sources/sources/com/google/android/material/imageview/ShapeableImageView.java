package com.google.android.material.imageview;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.C5139R;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.shape.Shapeable;

/* loaded from: classes6.dex */
public class ShapeableImageView extends AppCompatImageView implements Shapeable {

    /* renamed from: J */
    public static final int f31433J = Integer.MIN_VALUE;

    /* renamed from: z */
    public static final int f31434z = C5139R.style.Widget_MaterialComponents_ShapeableImageView;

    /* renamed from: h */
    public final ShapeAppearancePathProvider f31435h;

    /* renamed from: i */
    public final RectF f31436i;

    /* renamed from: j */
    public final RectF f31437j;

    /* renamed from: k */
    public final Paint f31438k;

    /* renamed from: l */
    public final Paint f31439l;

    /* renamed from: m */
    public final Path f31440m;

    /* renamed from: n */
    @Nullable
    public ColorStateList f31441n;

    /* renamed from: o */
    @Nullable
    public MaterialShapeDrawable f31442o;

    /* renamed from: p */
    public ShapeAppearanceModel f31443p;

    /* renamed from: q */
    @Dimension
    public float f31444q;

    /* renamed from: r */
    public Path f31445r;

    /* renamed from: s */
    @Dimension
    public int f31446s;

    /* renamed from: t */
    @Dimension
    public int f31447t;

    /* renamed from: u */
    @Dimension
    public int f31448u;

    /* renamed from: v */
    @Dimension
    public int f31449v;

    /* renamed from: w */
    @Dimension
    public int f31450w;

    /* renamed from: x */
    @Dimension
    public int f31451x;

    /* renamed from: y */
    public boolean f31452y;

    @TargetApi(21)
    /* renamed from: com.google.android.material.imageview.ShapeableImageView$a */
    /* loaded from: classes6.dex */
    public class C5286a extends ViewOutlineProvider {

        /* renamed from: a */
        public final Rect f31453a = new Rect();

        public C5286a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            if (ShapeableImageView.this.f31443p == null) {
                return;
            }
            if (ShapeableImageView.this.f31442o == null) {
                ShapeableImageView.this.f31442o = new MaterialShapeDrawable(ShapeableImageView.this.f31443p);
            }
            ShapeableImageView.this.f31436i.round(this.f31453a);
            ShapeableImageView.this.f31442o.setBounds(this.f31453a);
            ShapeableImageView.this.f31442o.getOutline(outline);
        }
    }

    public ShapeableImageView(Context context) {
        this(context, null, 0);
    }

    /* renamed from: e */
    public final void m24179e(Canvas canvas) {
        if (this.f31441n == null) {
            return;
        }
        this.f31438k.setStrokeWidth(this.f31444q);
        int colorForState = this.f31441n.getColorForState(getDrawableState(), this.f31441n.getDefaultColor());
        if (this.f31444q <= 0.0f || colorForState == 0) {
            return;
        }
        this.f31438k.setColor(colorForState);
        canvas.drawPath(this.f31440m, this.f31438k);
    }

    /* renamed from: f */
    public final boolean m24180f() {
        return (this.f31450w == Integer.MIN_VALUE && this.f31451x == Integer.MIN_VALUE) ? false : true;
    }

    /* renamed from: g */
    public final boolean m24181g() {
        return getLayoutDirection() == 1;
    }

    @Dimension
    public int getContentPaddingBottom() {
        return this.f31449v;
    }

    @Dimension
    public final int getContentPaddingEnd() {
        int i = this.f31451x;
        return i != Integer.MIN_VALUE ? i : m24181g() ? this.f31446s : this.f31448u;
    }

    @Dimension
    public int getContentPaddingLeft() {
        int i;
        int i2;
        if (m24180f()) {
            if (m24181g() && (i2 = this.f31451x) != Integer.MIN_VALUE) {
                return i2;
            }
            if (!m24181g() && (i = this.f31450w) != Integer.MIN_VALUE) {
                return i;
            }
        }
        return this.f31446s;
    }

    @Dimension
    public int getContentPaddingRight() {
        int i;
        int i2;
        if (m24180f()) {
            if (m24181g() && (i2 = this.f31450w) != Integer.MIN_VALUE) {
                return i2;
            }
            if (!m24181g() && (i = this.f31451x) != Integer.MIN_VALUE) {
                return i;
            }
        }
        return this.f31448u;
    }

    @Dimension
    public final int getContentPaddingStart() {
        int i = this.f31450w;
        return i != Integer.MIN_VALUE ? i : m24181g() ? this.f31448u : this.f31446s;
    }

    @Dimension
    public int getContentPaddingTop() {
        return this.f31447t;
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingBottom() {
        return super.getPaddingBottom() - getContentPaddingBottom();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingEnd() {
        return super.getPaddingEnd() - getContentPaddingEnd();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingLeft() {
        return super.getPaddingLeft() - getContentPaddingLeft();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingRight() {
        return super.getPaddingRight() - getContentPaddingRight();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingStart() {
        return super.getPaddingStart() - getContentPaddingStart();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingTop() {
        return super.getPaddingTop() - getContentPaddingTop();
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f31443p;
    }

    @Nullable
    public ColorStateList getStrokeColor() {
        return this.f31441n;
    }

    @Dimension
    public float getStrokeWidth() {
        return this.f31444q;
    }

    /* renamed from: h */
    public final void m24182h(int i, int i2) {
        this.f31436i.set(getPaddingLeft(), getPaddingTop(), i - getPaddingRight(), i2 - getPaddingBottom());
        this.f31435h.calculatePath(this.f31443p, 1.0f, this.f31436i, this.f31440m);
        this.f31445r.rewind();
        this.f31445r.addPath(this.f31440m);
        this.f31437j.set(0.0f, 0.0f, i, i2);
        this.f31445r.addRect(this.f31437j, Path.Direction.CCW);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.f31445r, this.f31439l);
        m24179e(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!this.f31452y && isLayoutDirectionResolved()) {
            this.f31452y = true;
            if (isPaddingRelative() || m24180f()) {
                setPaddingRelative(super.getPaddingStart(), super.getPaddingTop(), super.getPaddingEnd(), super.getPaddingBottom());
            } else {
                setPadding(super.getPaddingLeft(), super.getPaddingTop(), super.getPaddingRight(), super.getPaddingBottom());
            }
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m24182h(i, i2);
    }

    public void setContentPadding(@Dimension int i, @Dimension int i2, @Dimension int i3, @Dimension int i4) {
        this.f31450w = Integer.MIN_VALUE;
        this.f31451x = Integer.MIN_VALUE;
        super.setPadding((super.getPaddingLeft() - this.f31446s) + i, (super.getPaddingTop() - this.f31447t) + i2, (super.getPaddingRight() - this.f31448u) + i3, (super.getPaddingBottom() - this.f31449v) + i4);
        this.f31446s = i;
        this.f31447t = i2;
        this.f31448u = i3;
        this.f31449v = i4;
    }

    @RequiresApi(17)
    public void setContentPaddingRelative(@Dimension int i, @Dimension int i2, @Dimension int i3, @Dimension int i4) {
        super.setPaddingRelative((super.getPaddingStart() - getContentPaddingStart()) + i, (super.getPaddingTop() - this.f31447t) + i2, (super.getPaddingEnd() - getContentPaddingEnd()) + i3, (super.getPaddingBottom() - this.f31449v) + i4);
        this.f31446s = m24181g() ? i3 : i;
        this.f31447t = i2;
        if (!m24181g()) {
            i = i3;
        }
        this.f31448u = i;
        this.f31449v = i4;
    }

    @Override // android.view.View
    public void setPadding(@Dimension int i, @Dimension int i2, @Dimension int i3, @Dimension int i4) {
        super.setPadding(i + getContentPaddingLeft(), i2 + getContentPaddingTop(), i3 + getContentPaddingRight(), i4 + getContentPaddingBottom());
    }

    @Override // android.view.View
    public void setPaddingRelative(@Dimension int i, @Dimension int i2, @Dimension int i3, @Dimension int i4) {
        super.setPaddingRelative(i + getContentPaddingStart(), i2 + getContentPaddingTop(), i3 + getContentPaddingEnd(), i4 + getContentPaddingBottom());
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f31443p = shapeAppearanceModel;
        MaterialShapeDrawable materialShapeDrawable = this.f31442o;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel);
        }
        m24182h(getWidth(), getHeight());
        invalidate();
        invalidateOutline();
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        this.f31441n = colorStateList;
        invalidate();
    }

    public void setStrokeColorResource(@ColorRes int i) {
        setStrokeColor(AppCompatResources.getColorStateList(getContext(), i));
    }

    public void setStrokeWidth(@Dimension float f) {
        if (this.f31444q != f) {
            this.f31444q = f;
            invalidate();
        }
    }

    public void setStrokeWidthResource(@DimenRes int i) {
        setStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public ShapeableImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ShapeableImageView(android.content.Context r7, @androidx.annotation.Nullable android.util.AttributeSet r8, int r9) {
        /*
            r6 = this;
            int r0 = com.google.android.material.imageview.ShapeableImageView.f31434z
            android.content.Context r7 = com.google.android.material.theme.overlay.MaterialThemeOverlay.wrap(r7, r8, r9, r0)
            r6.<init>(r7, r8, r9)
            com.google.android.material.shape.ShapeAppearancePathProvider r7 = com.google.android.material.shape.ShapeAppearancePathProvider.getInstance()
            r6.f31435h = r7
            android.graphics.Path r7 = new android.graphics.Path
            r7.<init>()
            r6.f31440m = r7
            r7 = 0
            r6.f31452y = r7
            android.content.Context r1 = r6.getContext()
            android.graphics.Paint r2 = new android.graphics.Paint
            r2.<init>()
            r6.f31439l = r2
            r3 = 1
            r2.setAntiAlias(r3)
            r4 = -1
            r2.setColor(r4)
            android.graphics.PorterDuffXfermode r4 = new android.graphics.PorterDuffXfermode
            android.graphics.PorterDuff$Mode r5 = android.graphics.PorterDuff.Mode.DST_OUT
            r4.<init>(r5)
            r2.setXfermode(r4)
            android.graphics.RectF r2 = new android.graphics.RectF
            r2.<init>()
            r6.f31436i = r2
            android.graphics.RectF r2 = new android.graphics.RectF
            r2.<init>()
            r6.f31437j = r2
            android.graphics.Path r2 = new android.graphics.Path
            r2.<init>()
            r6.f31445r = r2
            int[] r2 = com.google.android.material.C5139R.styleable.ShapeableImageView
            android.content.res.TypedArray r2 = r1.obtainStyledAttributes(r8, r2, r9, r0)
            r4 = 2
            r5 = 0
            r6.setLayerType(r4, r5)
            int r4 = com.google.android.material.C5139R.styleable.ShapeableImageView_strokeColor
            android.content.res.ColorStateList r4 = com.google.android.material.resources.MaterialResources.getColorStateList(r1, r2, r4)
            r6.f31441n = r4
            int r4 = com.google.android.material.C5139R.styleable.ShapeableImageView_strokeWidth
            int r4 = r2.getDimensionPixelSize(r4, r7)
            float r4 = (float) r4
            r6.f31444q = r4
            int r4 = com.google.android.material.C5139R.styleable.ShapeableImageView_contentPadding
            int r7 = r2.getDimensionPixelSize(r4, r7)
            r6.f31446s = r7
            r6.f31447t = r7
            r6.f31448u = r7
            r6.f31449v = r7
            int r4 = com.google.android.material.C5139R.styleable.ShapeableImageView_contentPaddingLeft
            int r4 = r2.getDimensionPixelSize(r4, r7)
            r6.f31446s = r4
            int r4 = com.google.android.material.C5139R.styleable.ShapeableImageView_contentPaddingTop
            int r4 = r2.getDimensionPixelSize(r4, r7)
            r6.f31447t = r4
            int r4 = com.google.android.material.C5139R.styleable.ShapeableImageView_contentPaddingRight
            int r4 = r2.getDimensionPixelSize(r4, r7)
            r6.f31448u = r4
            int r4 = com.google.android.material.C5139R.styleable.ShapeableImageView_contentPaddingBottom
            int r7 = r2.getDimensionPixelSize(r4, r7)
            r6.f31449v = r7
            int r7 = com.google.android.material.C5139R.styleable.ShapeableImageView_contentPaddingStart
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            int r7 = r2.getDimensionPixelSize(r7, r4)
            r6.f31450w = r7
            int r7 = com.google.android.material.C5139R.styleable.ShapeableImageView_contentPaddingEnd
            int r7 = r2.getDimensionPixelSize(r7, r4)
            r6.f31451x = r7
            r2.recycle()
            android.graphics.Paint r7 = new android.graphics.Paint
            r7.<init>()
            r6.f31438k = r7
            android.graphics.Paint$Style r2 = android.graphics.Paint.Style.STROKE
            r7.setStyle(r2)
            r7.setAntiAlias(r3)
            com.google.android.material.shape.ShapeAppearanceModel$Builder r7 = com.google.android.material.shape.ShapeAppearanceModel.builder(r1, r8, r9, r0)
            com.google.android.material.shape.ShapeAppearanceModel r7 = r7.build()
            r6.f31443p = r7
            com.google.android.material.imageview.ShapeableImageView$a r7 = new com.google.android.material.imageview.ShapeableImageView$a
            r7.<init>()
            r6.setOutlineProvider(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.imageview.ShapeableImageView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
