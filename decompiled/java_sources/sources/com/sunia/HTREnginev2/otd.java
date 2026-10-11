package com.sunia.HTREnginev2;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.view.animation.Animation;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;

/* loaded from: classes3.dex */
public class otd extends ImageView {

    /* renamed from: g */
    public static final int f80122g = 503316480;

    /* renamed from: h */
    public static final int f80123h = 1023410176;

    /* renamed from: i */
    public static final float f80124i = 0.0f;

    /* renamed from: j */
    public static final float f80125j = 1.75f;

    /* renamed from: k */
    public static final float f80126k = 3.5f;

    /* renamed from: l */
    public static final int f80127l = 4;

    /* renamed from: e */
    public Animation.AnimationListener f80128e;

    /* renamed from: f */
    public int f80129f;

    /* renamed from: com.sunia.HTREnginev2.otd$a */
    /* loaded from: classes3.dex */
    public class C14210a extends OvalShape {

        /* renamed from: e */
        public RadialGradient f80130e;

        /* renamed from: f */
        public Paint f80131f = new Paint();

        public C14210a(int i) {
            otd.this.f80129f = i;
            m56153a((int) rect().width());
        }

        /* renamed from: a */
        public final void m56153a(int i) {
            float f = i / 2;
            RadialGradient radialGradient = new RadialGradient(f, f, otd.this.f80129f, new int[]{otd.f80123h, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f80130e = radialGradient;
            this.f80131f.setShader(radialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            float width = otd.this.getWidth() / 2;
            float height = otd.this.getHeight() / 2;
            canvas.drawCircle(width, height, width, this.f80131f);
            canvas.drawCircle(width, height, r0 - otd.this.f80129f, paint);
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void onResize(float f, float f2) {
            super.onResize(f, f2);
            m56153a((int) f);
        }
    }

    public otd(Context context, int i) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f = getContext().getResources().getDisplayMetrics().density;
        int i2 = (int) (1.75f * f);
        int i3 = (int) (0.0f * f);
        this.f80129f = (int) (3.5f * f);
        if (m56150a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            ViewCompat.setElevation(this, f * 4.0f);
        } else {
            ShapeDrawable shapeDrawable2 = new ShapeDrawable(new C14210a(this.f80129f));
            setLayerType(1, shapeDrawable2.getPaint());
            shapeDrawable2.getPaint().setShadowLayer(this.f80129f, i3, i2, f80122g);
            int i4 = this.f80129f;
            setPadding(i4, i4, i4, i4);
            shapeDrawable = shapeDrawable2;
        }
        shapeDrawable.getPaint().setColor(i);
        ViewCompat.setBackground(this, shapeDrawable);
    }

    /* renamed from: a */
    public final boolean m56150a() {
        return true;
    }

    /* renamed from: b */
    public void m56151b(Animation.AnimationListener animationListener) {
        this.f80128e = animationListener;
    }

    /* renamed from: c */
    public void m56152c(int i) {
        setBackgroundColor(ContextCompat.getColor(getContext(), i));
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f80128e;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f80128e;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (m56150a()) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth() + (this.f80129f * 2), getMeasuredHeight() + (this.f80129f * 2));
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i);
        }
    }
}
