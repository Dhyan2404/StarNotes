package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import androidx.annotation.RequiresApi;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.C0503R;

/* loaded from: classes3.dex */
public class ImageFilterView extends AppCompatImageView {

    /* renamed from: h */
    public C0489c f4140h;

    /* renamed from: i */
    public boolean f4141i;

    /* renamed from: j */
    public Drawable f4142j;

    /* renamed from: k */
    public Drawable f4143k;

    /* renamed from: l */
    public float f4144l;

    /* renamed from: m */
    public float f4145m;

    /* renamed from: n */
    public float f4146n;

    /* renamed from: o */
    public Path f4147o;

    /* renamed from: p */
    public ViewOutlineProvider f4148p;

    /* renamed from: q */
    public RectF f4149q;

    /* renamed from: r */
    public Drawable[] f4150r;

    /* renamed from: s */
    public LayerDrawable f4151s;

    /* renamed from: t */
    public float f4152t;

    /* renamed from: u */
    public float f4153u;

    /* renamed from: v */
    public float f4154v;

    /* renamed from: w */
    public float f4155w;

    /* renamed from: androidx.constraintlayout.utils.widget.ImageFilterView$a */
    /* loaded from: classes3.dex */
    public class C0487a extends ViewOutlineProvider {
        public C0487a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, ImageFilterView.this.getWidth(), ImageFilterView.this.getHeight(), (Math.min(r3, r4) * ImageFilterView.this.f4145m) / 2.0f);
        }
    }

    /* renamed from: androidx.constraintlayout.utils.widget.ImageFilterView$b */
    /* loaded from: classes3.dex */
    public class C0488b extends ViewOutlineProvider {
        public C0488b() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, ImageFilterView.this.getWidth(), ImageFilterView.this.getHeight(), ImageFilterView.this.f4146n);
        }
    }

    /* renamed from: androidx.constraintlayout.utils.widget.ImageFilterView$c */
    /* loaded from: classes3.dex */
    public static class C0489c {

        /* renamed from: a */
        public float[] f4158a = new float[20];

        /* renamed from: b */
        public ColorMatrix f4159b = new ColorMatrix();

        /* renamed from: c */
        public ColorMatrix f4160c = new ColorMatrix();

        /* renamed from: d */
        public float f4161d = 1.0f;

        /* renamed from: e */
        public float f4162e = 1.0f;

        /* renamed from: f */
        public float f4163f = 1.0f;

        /* renamed from: g */
        public float f4164g = 1.0f;

        /* renamed from: a */
        public final void m2104a(float brightness) {
            float[] fArr = this.f4158a;
            fArr[0] = brightness;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = 0.0f;
            fArr[6] = brightness;
            fArr[7] = 0.0f;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = 0.0f;
            fArr[11] = 0.0f;
            fArr[12] = brightness;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }

        /* renamed from: b */
        public final void m2105b(float saturationStrength) {
            float f = 1.0f - saturationStrength;
            float f2 = 0.2999f * f;
            float f3 = 0.587f * f;
            float f4 = f * 0.114f;
            float[] fArr = this.f4158a;
            fArr[0] = f2 + saturationStrength;
            fArr[1] = f3;
            fArr[2] = f4;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = f2;
            fArr[6] = f3 + saturationStrength;
            fArr[7] = f4;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = f2;
            fArr[11] = f3;
            fArr[12] = f4 + saturationStrength;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }

        /* renamed from: c */
        public void m2106c(ImageView view) {
            boolean z;
            this.f4159b.reset();
            float f = this.f4162e;
            boolean z2 = true;
            if (f != 1.0f) {
                m2105b(f);
                this.f4159b.set(this.f4158a);
                z = true;
            } else {
                z = false;
            }
            float f2 = this.f4163f;
            if (f2 != 1.0f) {
                this.f4160c.setScale(f2, f2, f2, 1.0f);
                this.f4159b.postConcat(this.f4160c);
                z = true;
            }
            float f3 = this.f4164g;
            if (f3 != 1.0f) {
                m2107d(f3);
                this.f4160c.set(this.f4158a);
                this.f4159b.postConcat(this.f4160c);
                z = true;
            }
            float f4 = this.f4161d;
            if (f4 != 1.0f) {
                m2104a(f4);
                this.f4160c.set(this.f4158a);
                this.f4159b.postConcat(this.f4160c);
            } else {
                z2 = z;
            }
            if (z2) {
                view.setColorFilter(new ColorMatrixColorFilter(this.f4159b));
            } else {
                view.clearColorFilter();
            }
        }

        /* renamed from: d */
        public final void m2107d(float warmth) {
            float log;
            float f;
            if (warmth <= 0.0f) {
                warmth = 0.01f;
            }
            float f2 = (5000.0f / warmth) / 100.0f;
            if (f2 > 66.0f) {
                double d = f2 - 60.0f;
                f = ((float) Math.pow(d, -0.13320475816726685d)) * 329.69873f;
                log = ((float) Math.pow(d, 0.07551484555006027d)) * 288.12216f;
            } else {
                log = (((float) Math.log(f2)) * 99.4708f) - 161.11957f;
                f = 255.0f;
            }
            float log2 = f2 < 66.0f ? f2 > 19.0f ? (((float) Math.log(f2 - 10.0f)) * 138.51773f) - 305.0448f : 0.0f : 255.0f;
            float min = Math.min(255.0f, Math.max(f, 0.0f));
            float min2 = Math.min(255.0f, Math.max(log, 0.0f));
            float min3 = Math.min(255.0f, Math.max(log2, 0.0f));
            float log3 = (((float) Math.log(50.0f)) * 99.4708f) - 161.11957f;
            float log4 = (((float) Math.log(40.0f)) * 138.51773f) - 305.0448f;
            float min4 = Math.min(255.0f, Math.max(255.0f, 0.0f));
            float min5 = Math.min(255.0f, Math.max(log3, 0.0f));
            float min6 = min3 / Math.min(255.0f, Math.max(log4, 0.0f));
            float[] fArr = this.f4158a;
            fArr[0] = min / min4;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = 0.0f;
            fArr[6] = min2 / min5;
            fArr[7] = 0.0f;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = 0.0f;
            fArr[11] = 0.0f;
            fArr[12] = min6;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }
    }

    public ImageFilterView(Context context) {
        super(context);
        this.f4140h = new C0489c();
        this.f4141i = true;
        this.f4142j = null;
        this.f4143k = null;
        this.f4144l = 0.0f;
        this.f4145m = 0.0f;
        this.f4146n = Float.NaN;
        this.f4150r = new Drawable[2];
        this.f4152t = Float.NaN;
        this.f4153u = Float.NaN;
        this.f4154v = Float.NaN;
        this.f4155w = Float.NaN;
        m2101c(context, null);
    }

    private void setOverlay(boolean overlay) {
        this.f4141i = overlay;
    }

    /* renamed from: c */
    public final void m2101c(Context context, AttributeSet attrs) {
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C0503R.styleable.ImageFilterView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            this.f4142j = obtainStyledAttributes.getDrawable(C0503R.styleable.ImageFilterView_altSrc);
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.ImageFilterView_crossfade) {
                    this.f4144l = obtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == C0503R.styleable.ImageFilterView_warmth) {
                    setWarmth(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == C0503R.styleable.ImageFilterView_saturation) {
                    setSaturation(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == C0503R.styleable.ImageFilterView_contrast) {
                    setContrast(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == C0503R.styleable.ImageFilterView_brightness) {
                    setBrightness(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == C0503R.styleable.ImageFilterView_round) {
                    setRound(obtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == C0503R.styleable.ImageFilterView_roundPercent) {
                    setRoundPercent(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == C0503R.styleable.ImageFilterView_overlay) {
                    setOverlay(obtainStyledAttributes.getBoolean(index, this.f4141i));
                } else if (index == C0503R.styleable.ImageFilterView_imagePanX) {
                    setImagePanX(obtainStyledAttributes.getFloat(index, this.f4152t));
                } else if (index == C0503R.styleable.ImageFilterView_imagePanY) {
                    setImagePanY(obtainStyledAttributes.getFloat(index, this.f4153u));
                } else if (index == C0503R.styleable.ImageFilterView_imageRotate) {
                    setImageRotate(obtainStyledAttributes.getFloat(index, this.f4155w));
                } else if (index == C0503R.styleable.ImageFilterView_imageZoom) {
                    setImageZoom(obtainStyledAttributes.getFloat(index, this.f4154v));
                }
            }
            obtainStyledAttributes.recycle();
            Drawable drawable = getDrawable();
            this.f4143k = drawable;
            if (this.f4142j == null || drawable == null) {
                Drawable drawable2 = getDrawable();
                this.f4143k = drawable2;
                if (drawable2 != null) {
                    Drawable[] drawableArr = this.f4150r;
                    Drawable mutate = drawable2.mutate();
                    this.f4143k = mutate;
                    drawableArr[0] = mutate;
                    return;
                }
                return;
            }
            Drawable[] drawableArr2 = this.f4150r;
            Drawable mutate2 = getDrawable().mutate();
            this.f4143k = mutate2;
            drawableArr2[0] = mutate2;
            this.f4150r[1] = this.f4142j.mutate();
            LayerDrawable layerDrawable = new LayerDrawable(this.f4150r);
            this.f4151s = layerDrawable;
            layerDrawable.getDrawable(1).setAlpha((int) (this.f4144l * 255.0f));
            if (!this.f4141i) {
                this.f4151s.getDrawable(0).setAlpha((int) ((1.0f - this.f4144l) * 255.0f));
            }
            super.setImageDrawable(this.f4151s);
        }
    }

    /* renamed from: d */
    public final void m2102d() {
        if (Float.isNaN(this.f4152t) && Float.isNaN(this.f4153u) && Float.isNaN(this.f4154v) && Float.isNaN(this.f4155w)) {
            return;
        }
        float f = Float.isNaN(this.f4152t) ? 0.0f : this.f4152t;
        float f2 = Float.isNaN(this.f4153u) ? 0.0f : this.f4153u;
        float f3 = Float.isNaN(this.f4154v) ? 1.0f : this.f4154v;
        float f4 = Float.isNaN(this.f4155w) ? 0.0f : this.f4155w;
        Matrix matrix = new Matrix();
        matrix.reset();
        float intrinsicWidth = getDrawable().getIntrinsicWidth();
        float intrinsicHeight = getDrawable().getIntrinsicHeight();
        float width = getWidth();
        float height = getHeight();
        float f5 = f3 * (intrinsicWidth * height < intrinsicHeight * width ? width / intrinsicWidth : height / intrinsicHeight);
        matrix.postScale(f5, f5);
        float f6 = intrinsicWidth * f5;
        float f7 = f5 * intrinsicHeight;
        matrix.postTranslate((((f * (width - f6)) + width) - f6) * 0.5f, (((f2 * (height - f7)) + height) - f7) * 0.5f);
        matrix.postRotate(f4, width / 2.0f, height / 2.0f);
        setImageMatrix(matrix);
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    /* renamed from: e */
    public final void m2103e() {
        if (Float.isNaN(this.f4152t) && Float.isNaN(this.f4153u) && Float.isNaN(this.f4154v) && Float.isNaN(this.f4155w)) {
            setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            m2102d();
        }
    }

    public float getBrightness() {
        return this.f4140h.f4161d;
    }

    public float getContrast() {
        return this.f4140h.f4163f;
    }

    public float getCrossfade() {
        return this.f4144l;
    }

    public float getImagePanX() {
        return this.f4152t;
    }

    public float getImagePanY() {
        return this.f4153u;
    }

    public float getImageRotate() {
        return this.f4155w;
    }

    public float getImageZoom() {
        return this.f4154v;
    }

    public float getRound() {
        return this.f4146n;
    }

    public float getRoundPercent() {
        return this.f4145m;
    }

    public float getSaturation() {
        return this.f4140h.f4162e;
    }

    public float getWarmth() {
        return this.f4140h.f4164g;
    }

    @Override // android.view.View
    public void layout(int l, int t, int r, int b) {
        super.layout(l, t, r, b);
        m2102d();
    }

    public void setAltImageResource(int resId) {
        Drawable mutate = AppCompatResources.getDrawable(getContext(), resId).mutate();
        this.f4142j = mutate;
        Drawable[] drawableArr = this.f4150r;
        drawableArr[0] = this.f4143k;
        drawableArr[1] = mutate;
        LayerDrawable layerDrawable = new LayerDrawable(this.f4150r);
        this.f4151s = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f4144l);
    }

    public void setBrightness(float brightness) {
        C0489c c0489c = this.f4140h;
        c0489c.f4161d = brightness;
        c0489c.m2106c(this);
    }

    public void setContrast(float contrast) {
        C0489c c0489c = this.f4140h;
        c0489c.f4163f = contrast;
        c0489c.m2106c(this);
    }

    public void setCrossfade(float crossfade) {
        this.f4144l = crossfade;
        if (this.f4150r != null) {
            if (!this.f4141i) {
                this.f4151s.getDrawable(0).setAlpha((int) ((1.0f - this.f4144l) * 255.0f));
            }
            this.f4151s.getDrawable(1).setAlpha((int) (this.f4144l * 255.0f));
            super.setImageDrawable(this.f4151s);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (this.f4142j == null || drawable == null) {
            super.setImageDrawable(drawable);
            return;
        }
        Drawable mutate = drawable.mutate();
        this.f4143k = mutate;
        Drawable[] drawableArr = this.f4150r;
        drawableArr[0] = mutate;
        drawableArr[1] = this.f4142j;
        LayerDrawable layerDrawable = new LayerDrawable(this.f4150r);
        this.f4151s = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f4144l);
    }

    public void setImagePanX(float pan) {
        this.f4152t = pan;
        m2103e();
    }

    public void setImagePanY(float pan) {
        this.f4153u = pan;
        m2103e();
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int resId) {
        if (this.f4142j == null) {
            super.setImageResource(resId);
            return;
        }
        Drawable mutate = AppCompatResources.getDrawable(getContext(), resId).mutate();
        this.f4143k = mutate;
        Drawable[] drawableArr = this.f4150r;
        drawableArr[0] = mutate;
        drawableArr[1] = this.f4142j;
        LayerDrawable layerDrawable = new LayerDrawable(this.f4150r);
        this.f4151s = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f4144l);
    }

    public void setImageRotate(float rotation) {
        this.f4155w = rotation;
        m2103e();
    }

    public void setImageZoom(float zoom) {
        this.f4154v = zoom;
        m2103e();
    }

    @RequiresApi(21)
    public void setRound(float round) {
        if (Float.isNaN(round)) {
            this.f4146n = round;
            float f = this.f4145m;
            this.f4145m = -1.0f;
            setRoundPercent(f);
            return;
        }
        boolean z = this.f4146n != round;
        this.f4146n = round;
        if (round != 0.0f) {
            if (this.f4147o == null) {
                this.f4147o = new Path();
            }
            if (this.f4149q == null) {
                this.f4149q = new RectF();
            }
            if (this.f4148p == null) {
                C0488b c0488b = new C0488b();
                this.f4148p = c0488b;
                setOutlineProvider(c0488b);
            }
            setClipToOutline(true);
            this.f4149q.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f4147o.reset();
            Path path = this.f4147o;
            RectF rectF = this.f4149q;
            float f2 = this.f4146n;
            path.addRoundRect(rectF, f2, f2, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z) {
            invalidateOutline();
        }
    }

    @RequiresApi(21)
    public void setRoundPercent(float round) {
        boolean z = this.f4145m != round;
        this.f4145m = round;
        if (round != 0.0f) {
            if (this.f4147o == null) {
                this.f4147o = new Path();
            }
            if (this.f4149q == null) {
                this.f4149q = new RectF();
            }
            if (this.f4148p == null) {
                C0487a c0487a = new C0487a();
                this.f4148p = c0487a;
                setOutlineProvider(c0487a);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.f4145m) / 2.0f;
            this.f4149q.set(0.0f, 0.0f, width, height);
            this.f4147o.reset();
            this.f4147o.addRoundRect(this.f4149q, min, min, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z) {
            invalidateOutline();
        }
    }

    public void setSaturation(float saturation) {
        C0489c c0489c = this.f4140h;
        c0489c.f4162e = saturation;
        c0489c.m2106c(this);
    }

    public void setWarmth(float warmth) {
        C0489c c0489c = this.f4140h;
        c0489c.f4164g = warmth;
        c0489c.m2106c(this);
    }

    public ImageFilterView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f4140h = new C0489c();
        this.f4141i = true;
        this.f4142j = null;
        this.f4143k = null;
        this.f4144l = 0.0f;
        this.f4145m = 0.0f;
        this.f4146n = Float.NaN;
        this.f4150r = new Drawable[2];
        this.f4152t = Float.NaN;
        this.f4153u = Float.NaN;
        this.f4154v = Float.NaN;
        this.f4155w = Float.NaN;
        m2101c(context, attrs);
    }

    public ImageFilterView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f4140h = new C0489c();
        this.f4141i = true;
        this.f4142j = null;
        this.f4143k = null;
        this.f4144l = 0.0f;
        this.f4145m = 0.0f;
        this.f4146n = Float.NaN;
        this.f4150r = new Drawable[2];
        this.f4152t = Float.NaN;
        this.f4153u = Float.NaN;
        this.f4154v = Float.NaN;
        this.f4155w = Float.NaN;
        m2101c(context, attrs);
    }
}
