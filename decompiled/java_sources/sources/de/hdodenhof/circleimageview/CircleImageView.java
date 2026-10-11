package de.hdodenhof.circleimageview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;

/* loaded from: classes10.dex */
public class CircleImageView extends ImageView {

    /* renamed from: J */
    public static final int f94562J = 2;

    /* renamed from: O */
    public static final int f94563O = 0;

    /* renamed from: Q */
    public static final int f94564Q = -16777216;

    /* renamed from: k0 */
    public static final int f94565k0 = 0;

    /* renamed from: q0 */
    public static final boolean f94566q0 = false;

    /* renamed from: y */
    public static final ImageView.ScaleType f94567y = ImageView.ScaleType.CENTER_CROP;

    /* renamed from: z */
    public static final Bitmap.Config f94568z = Bitmap.Config.ARGB_8888;

    /* renamed from: e */
    public final RectF f94569e;

    /* renamed from: f */
    public final RectF f94570f;

    /* renamed from: g */
    public final Matrix f94571g;

    /* renamed from: h */
    public final Paint f94572h;

    /* renamed from: i */
    public final Paint f94573i;

    /* renamed from: j */
    public final Paint f94574j;

    /* renamed from: k */
    public int f94575k;

    /* renamed from: l */
    public int f94576l;

    /* renamed from: m */
    public int f94577m;

    /* renamed from: n */
    public Bitmap f94578n;

    /* renamed from: o */
    public BitmapShader f94579o;

    /* renamed from: p */
    public int f94580p;

    /* renamed from: q */
    public int f94581q;

    /* renamed from: r */
    public float f94582r;

    /* renamed from: s */
    public float f94583s;

    /* renamed from: t */
    public ColorFilter f94584t;

    /* renamed from: u */
    public boolean f94585u;

    /* renamed from: v */
    public boolean f94586v;

    /* renamed from: w */
    public boolean f94587w;

    /* renamed from: x */
    public boolean f94588x;

    public CircleImageView(Context context) {
        super(context);
        this.f94569e = new RectF();
        this.f94570f = new RectF();
        this.f94571g = new Matrix();
        this.f94572h = new Paint();
        this.f94573i = new Paint();
        this.f94574j = new Paint();
        this.f94575k = -16777216;
        this.f94576l = 0;
        this.f94577m = 0;
        m60915d();
    }

    /* renamed from: a */
    public final void m60912a() {
        Paint paint = this.f94572h;
        if (paint != null) {
            paint.setColorFilter(this.f94584t);
        }
    }

    /* renamed from: b */
    public final RectF m60913b() {
        int min = Math.min((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        float paddingLeft = getPaddingLeft() + ((r0 - min) / 2.0f);
        float paddingTop = getPaddingTop() + ((r1 - min) / 2.0f);
        float f = min;
        return new RectF(paddingLeft, paddingTop, paddingLeft + f, f + paddingTop);
    }

    /* renamed from: c */
    public final Bitmap m60914c(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            Bitmap createBitmap = drawable instanceof ColorDrawable ? Bitmap.createBitmap(2, 2, f94568z) : Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), f94568z);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return createBitmap;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: d */
    public final void m60915d() {
        super.setScaleType(f94567y);
        this.f94585u = true;
        if (this.f94586v) {
            m60917f();
            this.f94586v = false;
        }
    }

    /* renamed from: e */
    public final void m60916e() {
        if (this.f94588x) {
            this.f94578n = null;
        } else {
            this.f94578n = m60914c(getDrawable());
        }
        m60917f();
    }

    /* renamed from: f */
    public final void m60917f() {
        int i;
        if (!this.f94585u) {
            this.f94586v = true;
            return;
        }
        if (getWidth() == 0 && getHeight() == 0) {
            return;
        }
        if (this.f94578n == null) {
            invalidate();
            return;
        }
        Bitmap bitmap = this.f94578n;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.f94579o = new BitmapShader(bitmap, tileMode, tileMode);
        this.f94572h.setAntiAlias(true);
        this.f94572h.setShader(this.f94579o);
        this.f94573i.setStyle(Paint.Style.STROKE);
        this.f94573i.setAntiAlias(true);
        this.f94573i.setColor(this.f94575k);
        this.f94573i.setStrokeWidth(this.f94576l);
        this.f94574j.setStyle(Paint.Style.FILL);
        this.f94574j.setAntiAlias(true);
        this.f94574j.setColor(this.f94577m);
        this.f94581q = this.f94578n.getHeight();
        this.f94580p = this.f94578n.getWidth();
        this.f94570f.set(m60913b());
        this.f94583s = Math.min((this.f94570f.height() - this.f94576l) / 2.0f, (this.f94570f.width() - this.f94576l) / 2.0f);
        this.f94569e.set(this.f94570f);
        if (!this.f94587w && (i = this.f94576l) > 0) {
            this.f94569e.inset(i - 1.0f, i - 1.0f);
        }
        this.f94582r = Math.min(this.f94569e.height() / 2.0f, this.f94569e.width() / 2.0f);
        m60912a();
        m60918g();
        invalidate();
    }

    /* renamed from: g */
    public final void m60918g() {
        float width;
        float height;
        this.f94571g.set(null);
        float f = 0.0f;
        if (this.f94580p * this.f94569e.height() > this.f94569e.width() * this.f94581q) {
            width = this.f94569e.height() / this.f94581q;
            height = 0.0f;
            f = (this.f94569e.width() - (this.f94580p * width)) * 0.5f;
        } else {
            width = this.f94569e.width() / this.f94580p;
            height = (this.f94569e.height() - (this.f94581q * width)) * 0.5f;
        }
        this.f94571g.setScale(width, width);
        Matrix matrix = this.f94571g;
        RectF rectF = this.f94569e;
        matrix.postTranslate(((int) (f + 0.5f)) + rectF.left, ((int) (height + 0.5f)) + rectF.top);
        this.f94579o.setLocalMatrix(this.f94571g);
    }

    public int getBorderColor() {
        return this.f94575k;
    }

    public int getBorderWidth() {
        return this.f94576l;
    }

    @Override // android.widget.ImageView
    public ColorFilter getColorFilter() {
        return this.f94584t;
    }

    @Deprecated
    public int getFillColor() {
        return this.f94577m;
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return f94567y;
    }

    public boolean isBorderOverlay() {
        return this.f94587w;
    }

    public boolean isDisableCircularTransformation() {
        return this.f94588x;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f94588x) {
            super.onDraw(canvas);
            return;
        }
        if (this.f94578n == null) {
            return;
        }
        if (this.f94577m != 0) {
            canvas.drawCircle(this.f94569e.centerX(), this.f94569e.centerY(), this.f94582r, this.f94574j);
        }
        canvas.drawCircle(this.f94569e.centerX(), this.f94569e.centerY(), this.f94582r, this.f94572h);
        if (this.f94576l > 0) {
            canvas.drawCircle(this.f94570f.centerX(), this.f94570f.centerY(), this.f94583s, this.f94573i);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m60917f();
    }

    @Override // android.widget.ImageView
    public void setAdjustViewBounds(boolean z) {
        if (z) {
            throw new IllegalArgumentException("adjustViewBounds not supported.");
        }
    }

    public void setBorderColor(@ColorInt int i) {
        if (i == this.f94575k) {
            return;
        }
        this.f94575k = i;
        this.f94573i.setColor(i);
        invalidate();
    }

    @Deprecated
    public void setBorderColorResource(@ColorRes int i) {
        setBorderColor(getContext().getResources().getColor(i));
    }

    public void setBorderOverlay(boolean z) {
        if (z == this.f94587w) {
            return;
        }
        this.f94587w = z;
        m60917f();
    }

    public void setBorderWidth(int i) {
        if (i == this.f94576l) {
            return;
        }
        this.f94576l = i;
        m60917f();
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (colorFilter == this.f94584t) {
            return;
        }
        this.f94584t = colorFilter;
        m60912a();
        invalidate();
    }

    public void setDisableCircularTransformation(boolean z) {
        if (this.f94588x == z) {
            return;
        }
        this.f94588x = z;
        m60916e();
    }

    @Deprecated
    public void setFillColor(@ColorInt int i) {
        if (i == this.f94577m) {
            return;
        }
        this.f94577m = i;
        this.f94574j.setColor(i);
        invalidate();
    }

    @Deprecated
    public void setFillColorResource(@ColorRes int i) {
        setFillColor(getContext().getResources().getColor(i));
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        m60916e();
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        m60916e();
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i) {
        super.setImageResource(i);
        m60916e();
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        m60916e();
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        m60917f();
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
        m60917f();
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType != f94567y) {
            throw new IllegalArgumentException(String.format("ScaleType %s not supported.", scaleType));
        }
    }

    public CircleImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircleImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f94569e = new RectF();
        this.f94570f = new RectF();
        this.f94571g = new Matrix();
        this.f94572h = new Paint();
        this.f94573i = new Paint();
        this.f94574j = new Paint();
        this.f94575k = -16777216;
        this.f94576l = 0;
        this.f94577m = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C17070R.styleable.CircleImageView, i, 0);
        this.f94576l = obtainStyledAttributes.getDimensionPixelSize(C17070R.styleable.CircleImageView_civ_border_width, 0);
        this.f94575k = obtainStyledAttributes.getColor(C17070R.styleable.CircleImageView_civ_border_color, -16777216);
        this.f94587w = obtainStyledAttributes.getBoolean(C17070R.styleable.CircleImageView_civ_border_overlay, false);
        this.f94577m = obtainStyledAttributes.getColor(C17070R.styleable.CircleImageView_civ_fill_color, 0);
        obtainStyledAttributes.recycle();
        m60915d();
    }
}
