package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
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
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.utils.widget.ImageFilterView;
import androidx.constraintlayout.widget.C0503R;

/* loaded from: classes3.dex */
public class ImageFilterButton extends AppCompatImageButton {

    /* renamed from: h */
    public ImageFilterView.C0489c f4122h;

    /* renamed from: i */
    public float f4123i;

    /* renamed from: j */
    public float f4124j;

    /* renamed from: k */
    public float f4125k;

    /* renamed from: l */
    public Path f4126l;

    /* renamed from: m */
    public ViewOutlineProvider f4127m;

    /* renamed from: n */
    public RectF f4128n;

    /* renamed from: o */
    public Drawable[] f4129o;

    /* renamed from: p */
    public LayerDrawable f4130p;

    /* renamed from: q */
    public boolean f4131q;

    /* renamed from: r */
    public Drawable f4132r;

    /* renamed from: s */
    public Drawable f4133s;

    /* renamed from: t */
    public float f4134t;

    /* renamed from: u */
    public float f4135u;

    /* renamed from: v */
    public float f4136v;

    /* renamed from: w */
    public float f4137w;

    /* renamed from: androidx.constraintlayout.utils.widget.ImageFilterButton$a */
    /* loaded from: classes3.dex */
    public class C0485a extends ViewOutlineProvider {
        public C0485a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, ImageFilterButton.this.getWidth(), ImageFilterButton.this.getHeight(), (Math.min(r3, r4) * ImageFilterButton.this.f4124j) / 2.0f);
        }
    }

    /* renamed from: androidx.constraintlayout.utils.widget.ImageFilterButton$b */
    /* loaded from: classes3.dex */
    public class C0486b extends ViewOutlineProvider {
        public C0486b() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, ImageFilterButton.this.getWidth(), ImageFilterButton.this.getHeight(), ImageFilterButton.this.f4125k);
        }
    }

    public ImageFilterButton(Context context) {
        super(context);
        this.f4122h = new ImageFilterView.C0489c();
        this.f4123i = 0.0f;
        this.f4124j = 0.0f;
        this.f4125k = Float.NaN;
        this.f4129o = new Drawable[2];
        this.f4131q = true;
        this.f4132r = null;
        this.f4133s = null;
        this.f4134t = Float.NaN;
        this.f4135u = Float.NaN;
        this.f4136v = Float.NaN;
        this.f4137w = Float.NaN;
        m2096c(context, null);
    }

    private void setOverlay(boolean overlay) {
        this.f4131q = overlay;
    }

    /* renamed from: c */
    public final void m2096c(Context context, AttributeSet attrs) {
        setPadding(0, 0, 0, 0);
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C0503R.styleable.ImageFilterView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            this.f4132r = obtainStyledAttributes.getDrawable(C0503R.styleable.ImageFilterView_altSrc);
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.ImageFilterView_crossfade) {
                    this.f4123i = obtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == C0503R.styleable.ImageFilterView_warmth) {
                    setWarmth(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == C0503R.styleable.ImageFilterView_saturation) {
                    setSaturation(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == C0503R.styleable.ImageFilterView_contrast) {
                    setContrast(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == C0503R.styleable.ImageFilterView_round) {
                    setRound(obtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == C0503R.styleable.ImageFilterView_roundPercent) {
                    setRoundPercent(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == C0503R.styleable.ImageFilterView_overlay) {
                    setOverlay(obtainStyledAttributes.getBoolean(index, this.f4131q));
                } else if (index == C0503R.styleable.ImageFilterView_imagePanX) {
                    setImagePanX(obtainStyledAttributes.getFloat(index, this.f4134t));
                } else if (index == C0503R.styleable.ImageFilterView_imagePanY) {
                    setImagePanY(obtainStyledAttributes.getFloat(index, this.f4135u));
                } else if (index == C0503R.styleable.ImageFilterView_imageRotate) {
                    setImageRotate(obtainStyledAttributes.getFloat(index, this.f4137w));
                } else if (index == C0503R.styleable.ImageFilterView_imageZoom) {
                    setImageZoom(obtainStyledAttributes.getFloat(index, this.f4136v));
                }
            }
            obtainStyledAttributes.recycle();
            Drawable drawable = getDrawable();
            this.f4133s = drawable;
            if (this.f4132r == null || drawable == null) {
                Drawable drawable2 = getDrawable();
                this.f4133s = drawable2;
                if (drawable2 != null) {
                    Drawable[] drawableArr = this.f4129o;
                    Drawable mutate = drawable2.mutate();
                    this.f4133s = mutate;
                    drawableArr[0] = mutate;
                    return;
                }
                return;
            }
            Drawable[] drawableArr2 = this.f4129o;
            Drawable mutate2 = getDrawable().mutate();
            this.f4133s = mutate2;
            drawableArr2[0] = mutate2;
            this.f4129o[1] = this.f4132r.mutate();
            LayerDrawable layerDrawable = new LayerDrawable(this.f4129o);
            this.f4130p = layerDrawable;
            layerDrawable.getDrawable(1).setAlpha((int) (this.f4123i * 255.0f));
            if (!this.f4131q) {
                this.f4130p.getDrawable(0).setAlpha((int) ((1.0f - this.f4123i) * 255.0f));
            }
            super.setImageDrawable(this.f4130p);
        }
    }

    /* renamed from: d */
    public final void m2097d() {
        if (Float.isNaN(this.f4134t) && Float.isNaN(this.f4135u) && Float.isNaN(this.f4136v) && Float.isNaN(this.f4137w)) {
            return;
        }
        float f = Float.isNaN(this.f4134t) ? 0.0f : this.f4134t;
        float f2 = Float.isNaN(this.f4135u) ? 0.0f : this.f4135u;
        float f3 = Float.isNaN(this.f4136v) ? 1.0f : this.f4136v;
        float f4 = Float.isNaN(this.f4137w) ? 0.0f : this.f4137w;
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
    public final void m2098e() {
        if (Float.isNaN(this.f4134t) && Float.isNaN(this.f4135u) && Float.isNaN(this.f4136v) && Float.isNaN(this.f4137w)) {
            setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            m2097d();
        }
    }

    public float getContrast() {
        return this.f4122h.f4163f;
    }

    public float getCrossfade() {
        return this.f4123i;
    }

    public float getImagePanX() {
        return this.f4134t;
    }

    public float getImagePanY() {
        return this.f4135u;
    }

    public float getImageRotate() {
        return this.f4137w;
    }

    public float getImageZoom() {
        return this.f4136v;
    }

    public float getRound() {
        return this.f4125k;
    }

    public float getRoundPercent() {
        return this.f4124j;
    }

    public float getSaturation() {
        return this.f4122h.f4162e;
    }

    public float getWarmth() {
        return this.f4122h.f4164g;
    }

    @Override // android.view.View
    public void layout(int l, int t, int r, int b) {
        super.layout(l, t, r, b);
        m2097d();
    }

    public void setAltImageResource(int resId) {
        Drawable mutate = AppCompatResources.getDrawable(getContext(), resId).mutate();
        this.f4132r = mutate;
        Drawable[] drawableArr = this.f4129o;
        drawableArr[0] = this.f4133s;
        drawableArr[1] = mutate;
        LayerDrawable layerDrawable = new LayerDrawable(this.f4129o);
        this.f4130p = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f4123i);
    }

    public void setBrightness(float brightness) {
        ImageFilterView.C0489c c0489c = this.f4122h;
        c0489c.f4161d = brightness;
        c0489c.m2106c(this);
    }

    public void setContrast(float contrast) {
        ImageFilterView.C0489c c0489c = this.f4122h;
        c0489c.f4163f = contrast;
        c0489c.m2106c(this);
    }

    public void setCrossfade(float crossfade) {
        this.f4123i = crossfade;
        if (this.f4129o != null) {
            if (!this.f4131q) {
                this.f4130p.getDrawable(0).setAlpha((int) ((1.0f - this.f4123i) * 255.0f));
            }
            this.f4130p.getDrawable(1).setAlpha((int) (this.f4123i * 255.0f));
            super.setImageDrawable(this.f4130p);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageButton, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (this.f4132r == null || drawable == null) {
            super.setImageDrawable(drawable);
            return;
        }
        Drawable mutate = drawable.mutate();
        this.f4133s = mutate;
        Drawable[] drawableArr = this.f4129o;
        drawableArr[0] = mutate;
        drawableArr[1] = this.f4132r;
        LayerDrawable layerDrawable = new LayerDrawable(this.f4129o);
        this.f4130p = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f4123i);
    }

    public void setImagePanX(float pan) {
        this.f4134t = pan;
        m2098e();
    }

    public void setImagePanY(float pan) {
        this.f4135u = pan;
        m2098e();
    }

    @Override // androidx.appcompat.widget.AppCompatImageButton, android.widget.ImageView
    public void setImageResource(int resId) {
        if (this.f4132r == null) {
            super.setImageResource(resId);
            return;
        }
        Drawable mutate = AppCompatResources.getDrawable(getContext(), resId).mutate();
        this.f4133s = mutate;
        Drawable[] drawableArr = this.f4129o;
        drawableArr[0] = mutate;
        drawableArr[1] = this.f4132r;
        LayerDrawable layerDrawable = new LayerDrawable(this.f4129o);
        this.f4130p = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f4123i);
    }

    public void setImageRotate(float rotation) {
        this.f4137w = rotation;
        m2098e();
    }

    public void setImageZoom(float zoom) {
        this.f4136v = zoom;
        m2098e();
    }

    @RequiresApi(21)
    public void setRound(float round) {
        if (Float.isNaN(round)) {
            this.f4125k = round;
            float f = this.f4124j;
            this.f4124j = -1.0f;
            setRoundPercent(f);
            return;
        }
        boolean z = this.f4125k != round;
        this.f4125k = round;
        if (round != 0.0f) {
            if (this.f4126l == null) {
                this.f4126l = new Path();
            }
            if (this.f4128n == null) {
                this.f4128n = new RectF();
            }
            if (this.f4127m == null) {
                C0486b c0486b = new C0486b();
                this.f4127m = c0486b;
                setOutlineProvider(c0486b);
            }
            setClipToOutline(true);
            this.f4128n.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f4126l.reset();
            Path path = this.f4126l;
            RectF rectF = this.f4128n;
            float f2 = this.f4125k;
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
        boolean z = this.f4124j != round;
        this.f4124j = round;
        if (round != 0.0f) {
            if (this.f4126l == null) {
                this.f4126l = new Path();
            }
            if (this.f4128n == null) {
                this.f4128n = new RectF();
            }
            if (this.f4127m == null) {
                C0485a c0485a = new C0485a();
                this.f4127m = c0485a;
                setOutlineProvider(c0485a);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.f4124j) / 2.0f;
            this.f4128n.set(0.0f, 0.0f, width, height);
            this.f4126l.reset();
            this.f4126l.addRoundRect(this.f4128n, min, min, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z) {
            invalidateOutline();
        }
    }

    public void setSaturation(float saturation) {
        ImageFilterView.C0489c c0489c = this.f4122h;
        c0489c.f4162e = saturation;
        c0489c.m2106c(this);
    }

    public void setWarmth(float warmth) {
        ImageFilterView.C0489c c0489c = this.f4122h;
        c0489c.f4164g = warmth;
        c0489c.m2106c(this);
    }

    public ImageFilterButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f4122h = new ImageFilterView.C0489c();
        this.f4123i = 0.0f;
        this.f4124j = 0.0f;
        this.f4125k = Float.NaN;
        this.f4129o = new Drawable[2];
        this.f4131q = true;
        this.f4132r = null;
        this.f4133s = null;
        this.f4134t = Float.NaN;
        this.f4135u = Float.NaN;
        this.f4136v = Float.NaN;
        this.f4137w = Float.NaN;
        m2096c(context, attrs);
    }

    public ImageFilterButton(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f4122h = new ImageFilterView.C0489c();
        this.f4123i = 0.0f;
        this.f4124j = 0.0f;
        this.f4125k = Float.NaN;
        this.f4129o = new Drawable[2];
        this.f4131q = true;
        this.f4132r = null;
        this.f4133s = null;
        this.f4134t = Float.NaN;
        this.f4135u = Float.NaN;
        this.f4136v = Float.NaN;
        this.f4137w = Float.NaN;
        m2096c(context, attrs);
    }
}
