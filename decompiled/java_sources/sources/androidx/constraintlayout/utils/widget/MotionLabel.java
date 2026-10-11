package androidx.constraintlayout.utils.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.C0118R;
import androidx.constraintlayout.motion.widget.Debug;
import androidx.constraintlayout.motion.widget.FloatLayout;
import androidx.constraintlayout.widget.C0503R;
import androidx.core.view.GravityCompat;
import com.bumptech.glide.load.engine.GlideException;

/* loaded from: classes3.dex */
public class MotionLabel extends View implements FloatLayout {

    /* renamed from: O0 */
    public static String f4182O0 = "MotionLabel";

    /* renamed from: P0 */
    public static final int f4183P0 = 1;

    /* renamed from: Q0 */
    public static final int f4184Q0 = 2;

    /* renamed from: R0 */
    public static final int f4185R0 = 3;

    /* renamed from: A0 */
    public Matrix f4186A0;

    /* renamed from: B0 */
    public float f4187B0;

    /* renamed from: C0 */
    public float f4188C0;

    /* renamed from: D0 */
    public float f4189D0;

    /* renamed from: E0 */
    public float f4190E0;

    /* renamed from: F0 */
    public Paint f4191F0;

    /* renamed from: G0 */
    public int f4192G0;

    /* renamed from: H0 */
    public Rect f4193H0;

    /* renamed from: I0 */
    public Paint f4194I0;

    /* renamed from: J */
    public String f4195J;

    /* renamed from: J0 */
    public float f4196J0;

    /* renamed from: K0 */
    public float f4197K0;

    /* renamed from: L0 */
    public float f4198L0;

    /* renamed from: M0 */
    public float f4199M0;

    /* renamed from: N0 */
    public float f4200N0;

    /* renamed from: O */
    public Layout f4201O;

    /* renamed from: Q */
    public int f4202Q;

    /* renamed from: e */
    public TextPaint f4203e;

    /* renamed from: f */
    public Path f4204f;

    /* renamed from: g */
    public int f4205g;

    /* renamed from: h */
    public int f4206h;

    /* renamed from: i */
    public boolean f4207i;

    /* renamed from: j */
    public float f4208j;

    /* renamed from: k */
    public float f4209k;

    /* renamed from: k0 */
    public int f4210k0;

    /* renamed from: l */
    public ViewOutlineProvider f4211l;

    /* renamed from: m */
    public RectF f4212m;

    /* renamed from: n */
    public float f4213n;

    /* renamed from: o */
    public float f4214o;

    /* renamed from: p */
    public int f4215p;

    /* renamed from: q */
    public int f4216q;

    /* renamed from: q0 */
    public boolean f4217q0;

    /* renamed from: r */
    public float f4218r;

    /* renamed from: s */
    public String f4219s;

    /* renamed from: t */
    public boolean f4220t;

    /* renamed from: t0 */
    public float f4221t0;

    /* renamed from: u */
    public Rect f4222u;

    /* renamed from: u0 */
    public float f4223u0;

    /* renamed from: v */
    public CharSequence f4224v;

    /* renamed from: v0 */
    public float f4225v0;

    /* renamed from: w */
    public int f4226w;

    /* renamed from: w0 */
    public Drawable f4227w0;

    /* renamed from: x */
    public int f4228x;

    /* renamed from: x0 */
    public Matrix f4229x0;

    /* renamed from: y */
    public int f4230y;

    /* renamed from: y0 */
    public Bitmap f4231y0;

    /* renamed from: z */
    public int f4232z;

    /* renamed from: z0 */
    public BitmapShader f4233z0;

    /* renamed from: androidx.constraintlayout.utils.widget.MotionLabel$a */
    /* loaded from: classes3.dex */
    public class C0492a extends ViewOutlineProvider {
        public C0492a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, MotionLabel.this.getWidth(), MotionLabel.this.getHeight(), (Math.min(r3, r4) * MotionLabel.this.f4208j) / 2.0f);
        }
    }

    /* renamed from: androidx.constraintlayout.utils.widget.MotionLabel$b */
    /* loaded from: classes3.dex */
    public class C0493b extends ViewOutlineProvider {
        public C0493b() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, MotionLabel.this.getWidth(), MotionLabel.this.getHeight(), MotionLabel.this.f4209k);
        }
    }

    public MotionLabel(Context context) {
        super(context);
        this.f4203e = new TextPaint();
        this.f4204f = new Path();
        this.f4205g = 65535;
        this.f4206h = 65535;
        this.f4207i = false;
        this.f4208j = 0.0f;
        this.f4209k = Float.NaN;
        this.f4213n = 48.0f;
        this.f4214o = Float.NaN;
        this.f4218r = 0.0f;
        this.f4219s = "Hello World";
        this.f4220t = true;
        this.f4222u = new Rect();
        this.f4226w = 1;
        this.f4228x = 1;
        this.f4230y = 1;
        this.f4232z = 1;
        this.f4202Q = 8388659;
        this.f4210k0 = 0;
        this.f4217q0 = false;
        this.f4187B0 = Float.NaN;
        this.f4188C0 = Float.NaN;
        this.f4189D0 = 0.0f;
        this.f4190E0 = 0.0f;
        this.f4191F0 = new Paint();
        this.f4192G0 = 0;
        this.f4197K0 = Float.NaN;
        this.f4198L0 = Float.NaN;
        this.f4199M0 = Float.NaN;
        this.f4200N0 = Float.NaN;
        m2117f(context, null);
    }

    private float getHorizontalOffset() {
        float f = Float.isNaN(this.f4214o) ? 1.0f : this.f4213n / this.f4214o;
        TextPaint textPaint = this.f4203e;
        String str = this.f4219s;
        return (((((Float.isNaN(this.f4223u0) ? getMeasuredWidth() : this.f4223u0) - getPaddingLeft()) - getPaddingRight()) - (f * textPaint.measureText(str, 0, str.length()))) * (this.f4189D0 + 1.0f)) / 2.0f;
    }

    private float getVerticalOffset() {
        float f = Float.isNaN(this.f4214o) ? 1.0f : this.f4213n / this.f4214o;
        Paint.FontMetrics fontMetrics = this.f4203e.getFontMetrics();
        float measuredHeight = ((Float.isNaN(this.f4225v0) ? getMeasuredHeight() : this.f4225v0) - getPaddingTop()) - getPaddingBottom();
        float f2 = fontMetrics.descent;
        float f3 = fontMetrics.ascent;
        return (((measuredHeight - ((f2 - f3) * f)) * (1.0f - this.f4190E0)) / 2.0f) - (f * f3);
    }

    /* renamed from: c */
    public final void m2114c(float l, float t, float r, float b) {
        if (this.f4186A0 == null) {
            return;
        }
        this.f4223u0 = r - l;
        this.f4225v0 = b - t;
        m2122k();
    }

    /* renamed from: d */
    public Bitmap m2115d(Bitmap bitmapOriginal, int factor) {
        System.nanoTime();
        int width = bitmapOriginal.getWidth() / 2;
        int height = bitmapOriginal.getHeight() / 2;
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmapOriginal, width, height, true);
        for (int i = 0; i < factor && width >= 32 && height >= 32; i++) {
            width /= 2;
            height /= 2;
            createScaledBitmap = Bitmap.createScaledBitmap(createScaledBitmap, width, height, true);
        }
        return createScaledBitmap;
    }

    /* renamed from: e */
    public void m2116e(float scale) {
        if (this.f4207i || scale != 1.0f) {
            this.f4204f.reset();
            String str = this.f4219s;
            int length = str.length();
            this.f4203e.getTextBounds(str, 0, length, this.f4222u);
            this.f4203e.getTextPath(str, 0, length, 0.0f, 0.0f, this.f4204f);
            if (scale != 1.0f) {
                Log.v(f4182O0, Debug.getLoc() + " scale " + scale);
                Matrix matrix = new Matrix();
                matrix.postScale(scale, scale);
                this.f4204f.transform(matrix);
            }
            Rect rect = this.f4222u;
            rect.right--;
            rect.left++;
            rect.bottom++;
            rect.top--;
            RectF rectF = new RectF();
            rectF.bottom = getHeight();
            rectF.right = getWidth();
            this.f4220t = false;
        }
    }

    /* renamed from: f */
    public final void m2117f(Context context, AttributeSet attrs) {
        m2119h(context, attrs);
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C0503R.styleable.MotionLabel);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.MotionLabel_android_text) {
                    setText(obtainStyledAttributes.getText(index));
                } else if (index == C0503R.styleable.MotionLabel_android_fontFamily) {
                    this.f4195J = obtainStyledAttributes.getString(index);
                } else if (index == C0503R.styleable.MotionLabel_scaleFromTextSize) {
                    this.f4214o = obtainStyledAttributes.getDimensionPixelSize(index, (int) this.f4214o);
                } else if (index == C0503R.styleable.MotionLabel_android_textSize) {
                    this.f4213n = obtainStyledAttributes.getDimensionPixelSize(index, (int) this.f4213n);
                } else if (index == C0503R.styleable.MotionLabel_android_textStyle) {
                    this.f4215p = obtainStyledAttributes.getInt(index, this.f4215p);
                } else if (index == C0503R.styleable.MotionLabel_android_typeface) {
                    this.f4216q = obtainStyledAttributes.getInt(index, this.f4216q);
                } else if (index == C0503R.styleable.MotionLabel_android_textColor) {
                    this.f4205g = obtainStyledAttributes.getColor(index, this.f4205g);
                } else if (index == C0503R.styleable.MotionLabel_borderRound) {
                    float dimension = obtainStyledAttributes.getDimension(index, this.f4209k);
                    this.f4209k = dimension;
                    setRound(dimension);
                } else if (index == C0503R.styleable.MotionLabel_borderRoundPercent) {
                    float f = obtainStyledAttributes.getFloat(index, this.f4208j);
                    this.f4208j = f;
                    setRoundPercent(f);
                } else if (index == C0503R.styleable.MotionLabel_android_gravity) {
                    setGravity(obtainStyledAttributes.getInt(index, -1));
                } else if (index == C0503R.styleable.MotionLabel_android_autoSizeTextType) {
                    this.f4210k0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == C0503R.styleable.MotionLabel_textOutlineColor) {
                    this.f4206h = obtainStyledAttributes.getInt(index, this.f4206h);
                    this.f4207i = true;
                } else if (index == C0503R.styleable.MotionLabel_textOutlineThickness) {
                    this.f4218r = obtainStyledAttributes.getDimension(index, this.f4218r);
                    this.f4207i = true;
                } else if (index == C0503R.styleable.MotionLabel_textBackground) {
                    this.f4227w0 = obtainStyledAttributes.getDrawable(index);
                    this.f4207i = true;
                } else if (index == C0503R.styleable.MotionLabel_textBackgroundPanX) {
                    this.f4197K0 = obtainStyledAttributes.getFloat(index, this.f4197K0);
                } else if (index == C0503R.styleable.MotionLabel_textBackgroundPanY) {
                    this.f4198L0 = obtainStyledAttributes.getFloat(index, this.f4198L0);
                } else if (index == C0503R.styleable.MotionLabel_textPanX) {
                    this.f4189D0 = obtainStyledAttributes.getFloat(index, this.f4189D0);
                } else if (index == C0503R.styleable.MotionLabel_textPanY) {
                    this.f4190E0 = obtainStyledAttributes.getFloat(index, this.f4190E0);
                } else if (index == C0503R.styleable.MotionLabel_textBackgroundRotate) {
                    this.f4200N0 = obtainStyledAttributes.getFloat(index, this.f4200N0);
                } else if (index == C0503R.styleable.MotionLabel_textBackgroundZoom) {
                    this.f4199M0 = obtainStyledAttributes.getFloat(index, this.f4199M0);
                } else if (index == C0503R.styleable.MotionLabel_textureHeight) {
                    this.f4187B0 = obtainStyledAttributes.getDimension(index, this.f4187B0);
                } else if (index == C0503R.styleable.MotionLabel_textureWidth) {
                    this.f4188C0 = obtainStyledAttributes.getDimension(index, this.f4188C0);
                } else if (index == C0503R.styleable.MotionLabel_textureEffect) {
                    this.f4192G0 = obtainStyledAttributes.getInt(index, this.f4192G0);
                }
            }
            obtainStyledAttributes.recycle();
        }
        m2121j();
        m2120i();
    }

    /* renamed from: g */
    public final void m2118g(String familyName, int typefaceIndex, int styleIndex) {
        Typeface typeface;
        if (familyName != null) {
            typeface = Typeface.create(familyName, styleIndex);
            if (typeface != null) {
                setTypeface(typeface);
                return;
            }
        } else {
            typeface = null;
        }
        if (typefaceIndex == 1) {
            typeface = Typeface.SANS_SERIF;
        } else if (typefaceIndex == 2) {
            typeface = Typeface.SERIF;
        } else if (typefaceIndex == 3) {
            typeface = Typeface.MONOSPACE;
        }
        if (styleIndex <= 0) {
            this.f4203e.setFakeBoldText(false);
            this.f4203e.setTextSkewX(0.0f);
            setTypeface(typeface);
        } else {
            Typeface defaultFromStyle = typeface == null ? Typeface.defaultFromStyle(styleIndex) : Typeface.create(typeface, styleIndex);
            setTypeface(defaultFromStyle);
            int i = (~(defaultFromStyle != null ? defaultFromStyle.getStyle() : 0)) & styleIndex;
            this.f4203e.setFakeBoldText((i & 1) != 0);
            this.f4203e.setTextSkewX((i & 2) != 0 ? -0.25f : 0.0f);
        }
    }

    public float getRound() {
        return this.f4209k;
    }

    public float getRoundPercent() {
        return this.f4208j;
    }

    public float getScaleFromTextSize() {
        return this.f4214o;
    }

    public float getTextBackgroundPanX() {
        return this.f4197K0;
    }

    public float getTextBackgroundPanY() {
        return this.f4198L0;
    }

    public float getTextBackgroundRotate() {
        return this.f4200N0;
    }

    public float getTextBackgroundZoom() {
        return this.f4199M0;
    }

    public int getTextOutlineColor() {
        return this.f4206h;
    }

    public float getTextPanX() {
        return this.f4189D0;
    }

    public float getTextPanY() {
        return this.f4190E0;
    }

    public float getTextureHeight() {
        return this.f4187B0;
    }

    public float getTextureWidth() {
        return this.f4188C0;
    }

    public Typeface getTypeface() {
        return this.f4203e.getTypeface();
    }

    /* renamed from: h */
    public final void m2119h(Context context, @Nullable AttributeSet attrs) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C0118R.attr.colorPrimary, typedValue, true);
        TextPaint textPaint = this.f4203e;
        int i = typedValue.data;
        this.f4205g = i;
        textPaint.setColor(i);
    }

    /* renamed from: i */
    public void m2120i() {
        this.f4226w = getPaddingLeft();
        this.f4228x = getPaddingRight();
        this.f4230y = getPaddingTop();
        this.f4232z = getPaddingBottom();
        m2118g(this.f4195J, this.f4216q, this.f4215p);
        this.f4203e.setColor(this.f4205g);
        this.f4203e.setStrokeWidth(this.f4218r);
        this.f4203e.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f4203e.setFlags(128);
        setTextSize(this.f4213n);
        this.f4203e.setAntiAlias(true);
    }

    /* renamed from: j */
    public final void m2121j() {
        if (this.f4227w0 != null) {
            this.f4186A0 = new Matrix();
            int intrinsicWidth = this.f4227w0.getIntrinsicWidth();
            int intrinsicHeight = this.f4227w0.getIntrinsicHeight();
            if (intrinsicWidth <= 0 && (intrinsicWidth = getWidth()) == 0) {
                intrinsicWidth = Float.isNaN(this.f4188C0) ? 128 : (int) this.f4188C0;
            }
            if (intrinsicHeight <= 0 && (intrinsicHeight = getHeight()) == 0) {
                intrinsicHeight = Float.isNaN(this.f4187B0) ? 128 : (int) this.f4187B0;
            }
            if (this.f4192G0 != 0) {
                intrinsicWidth /= 2;
                intrinsicHeight /= 2;
            }
            this.f4231y0 = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(this.f4231y0);
            this.f4227w0.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            this.f4227w0.setFilterBitmap(true);
            this.f4227w0.draw(canvas);
            if (this.f4192G0 != 0) {
                this.f4231y0 = m2115d(this.f4231y0, 4);
            }
            Bitmap bitmap = this.f4231y0;
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            this.f4233z0 = new BitmapShader(bitmap, tileMode, tileMode);
        }
    }

    /* renamed from: k */
    public final void m2122k() {
        float f = Float.isNaN(this.f4197K0) ? 0.0f : this.f4197K0;
        float f2 = Float.isNaN(this.f4198L0) ? 0.0f : this.f4198L0;
        float f3 = Float.isNaN(this.f4199M0) ? 1.0f : this.f4199M0;
        float f4 = Float.isNaN(this.f4200N0) ? 0.0f : this.f4200N0;
        this.f4186A0.reset();
        float width = this.f4231y0.getWidth();
        float height = this.f4231y0.getHeight();
        float f5 = Float.isNaN(this.f4188C0) ? this.f4223u0 : this.f4188C0;
        float f6 = Float.isNaN(this.f4187B0) ? this.f4225v0 : this.f4187B0;
        float f7 = f3 * (width * f6 < height * f5 ? f5 / width : f6 / height);
        this.f4186A0.postScale(f7, f7);
        float f8 = width * f7;
        float f9 = f5 - f8;
        float f10 = f7 * height;
        float f11 = f6 - f10;
        if (!Float.isNaN(this.f4187B0)) {
            f11 = this.f4187B0 / 2.0f;
        }
        if (!Float.isNaN(this.f4188C0)) {
            f9 = this.f4188C0 / 2.0f;
        }
        this.f4186A0.postTranslate((((f * f9) + f5) - f8) * 0.5f, (((f2 * f11) + f6) - f10) * 0.5f);
        this.f4186A0.postRotate(f4, f5 / 2.0f, f6 / 2.0f);
        this.f4233z0.setLocalMatrix(this.f4186A0);
    }

    @Override // android.view.View
    public void layout(int l, int t, int r, int b) {
        super.layout(l, t, r, b);
        boolean isNaN = Float.isNaN(this.f4214o);
        float f = isNaN ? 1.0f : this.f4213n / this.f4214o;
        this.f4223u0 = r - l;
        this.f4225v0 = b - t;
        if (this.f4217q0) {
            if (this.f4193H0 == null) {
                this.f4194I0 = new Paint();
                this.f4193H0 = new Rect();
                this.f4194I0.set(this.f4203e);
                this.f4196J0 = this.f4194I0.getTextSize();
            }
            Paint paint = this.f4194I0;
            String str = this.f4219s;
            paint.getTextBounds(str, 0, str.length(), this.f4193H0);
            int width = this.f4193H0.width();
            int height = (int) (this.f4193H0.height() * 1.3f);
            float f2 = (this.f4223u0 - this.f4228x) - this.f4226w;
            float f3 = (this.f4225v0 - this.f4232z) - this.f4230y;
            if (isNaN) {
                float f4 = width;
                float f5 = height;
                if (f4 * f3 > f5 * f2) {
                    this.f4203e.setTextSize((this.f4196J0 * f2) / f4);
                } else {
                    this.f4203e.setTextSize((this.f4196J0 * f3) / f5);
                }
            } else {
                float f6 = width;
                float f7 = height;
                f = f6 * f3 > f7 * f2 ? f2 / f6 : f3 / f7;
            }
        }
        if (this.f4207i || !isNaN) {
            m2114c(l, t, r, b);
            m2116e(f);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float f = Float.isNaN(this.f4214o) ? 1.0f : this.f4213n / this.f4214o;
        super.onDraw(canvas);
        if (!this.f4207i && f == 1.0f) {
            canvas.drawText(this.f4219s, this.f4221t0 + this.f4226w + getHorizontalOffset(), this.f4230y + getVerticalOffset(), this.f4203e);
            return;
        }
        if (this.f4220t) {
            m2116e(f);
        }
        if (this.f4229x0 == null) {
            this.f4229x0 = new Matrix();
        }
        if (!this.f4207i) {
            float horizontalOffset = this.f4226w + getHorizontalOffset();
            float verticalOffset = this.f4230y + getVerticalOffset();
            this.f4229x0.reset();
            this.f4229x0.preTranslate(horizontalOffset, verticalOffset);
            this.f4204f.transform(this.f4229x0);
            this.f4203e.setColor(this.f4205g);
            this.f4203e.setStyle(Paint.Style.FILL_AND_STROKE);
            this.f4203e.setStrokeWidth(this.f4218r);
            canvas.drawPath(this.f4204f, this.f4203e);
            this.f4229x0.reset();
            this.f4229x0.preTranslate(-horizontalOffset, -verticalOffset);
            this.f4204f.transform(this.f4229x0);
            return;
        }
        this.f4191F0.set(this.f4203e);
        this.f4229x0.reset();
        float horizontalOffset2 = this.f4226w + getHorizontalOffset();
        float verticalOffset2 = this.f4230y + getVerticalOffset();
        this.f4229x0.postTranslate(horizontalOffset2, verticalOffset2);
        this.f4229x0.preScale(f, f);
        this.f4204f.transform(this.f4229x0);
        if (this.f4233z0 != null) {
            this.f4203e.setFilterBitmap(true);
            this.f4203e.setShader(this.f4233z0);
        } else {
            this.f4203e.setColor(this.f4205g);
        }
        this.f4203e.setStyle(Paint.Style.FILL);
        this.f4203e.setStrokeWidth(this.f4218r);
        canvas.drawPath(this.f4204f, this.f4203e);
        if (this.f4233z0 != null) {
            this.f4203e.setShader(null);
        }
        this.f4203e.setColor(this.f4206h);
        this.f4203e.setStyle(Paint.Style.STROKE);
        this.f4203e.setStrokeWidth(this.f4218r);
        canvas.drawPath(this.f4204f, this.f4203e);
        this.f4229x0.reset();
        this.f4229x0.postTranslate(-horizontalOffset2, -verticalOffset2);
        this.f4204f.transform(this.f4229x0);
        this.f4203e.set(this.f4191F0);
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        this.f4217q0 = false;
        this.f4226w = getPaddingLeft();
        this.f4228x = getPaddingRight();
        this.f4230y = getPaddingTop();
        this.f4232z = getPaddingBottom();
        if (mode != 1073741824 || mode2 != 1073741824) {
            TextPaint textPaint = this.f4203e;
            String str = this.f4219s;
            textPaint.getTextBounds(str, 0, str.length(), this.f4222u);
            if (mode != 1073741824) {
                size = (int) (this.f4222u.width() + 0.99999f);
            }
            size += this.f4226w + this.f4228x;
            if (mode2 != 1073741824) {
                int fontMetricsInt = (int) (this.f4203e.getFontMetricsInt(null) + 0.99999f);
                if (mode2 == Integer.MIN_VALUE) {
                    fontMetricsInt = Math.min(size2, fontMetricsInt);
                }
                size2 = this.f4230y + this.f4232z + fontMetricsInt;
            }
        } else if (this.f4210k0 != 0) {
            this.f4217q0 = true;
        }
        setMeasuredDimension(size, size2);
    }

    @SuppressLint({"RtlHardcoded"})
    public void setGravity(int gravity) {
        if ((gravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) == 0) {
            gravity |= GravityCompat.START;
        }
        if ((gravity & 112) == 0) {
            gravity |= 48;
        }
        if (gravity != this.f4202Q) {
            invalidate();
        }
        this.f4202Q = gravity;
        int i = gravity & 112;
        if (i == 48) {
            this.f4190E0 = -1.0f;
        } else if (i != 80) {
            this.f4190E0 = 0.0f;
        } else {
            this.f4190E0 = 1.0f;
        }
        int i2 = gravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i2 != 3) {
            if (i2 != 5) {
                if (i2 != 8388611) {
                    if (i2 != 8388613) {
                        this.f4189D0 = 0.0f;
                        return;
                    }
                }
            }
            this.f4189D0 = 1.0f;
            return;
        }
        this.f4189D0 = -1.0f;
    }

    @RequiresApi(21)
    public void setRound(float round) {
        if (Float.isNaN(round)) {
            this.f4209k = round;
            float f = this.f4208j;
            this.f4208j = -1.0f;
            setRoundPercent(f);
            return;
        }
        boolean z = this.f4209k != round;
        this.f4209k = round;
        if (round != 0.0f) {
            if (this.f4204f == null) {
                this.f4204f = new Path();
            }
            if (this.f4212m == null) {
                this.f4212m = new RectF();
            }
            if (this.f4211l == null) {
                C0493b c0493b = new C0493b();
                this.f4211l = c0493b;
                setOutlineProvider(c0493b);
            }
            setClipToOutline(true);
            this.f4212m.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f4204f.reset();
            Path path = this.f4204f;
            RectF rectF = this.f4212m;
            float f2 = this.f4209k;
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
        boolean z = this.f4208j != round;
        this.f4208j = round;
        if (round != 0.0f) {
            if (this.f4204f == null) {
                this.f4204f = new Path();
            }
            if (this.f4212m == null) {
                this.f4212m = new RectF();
            }
            if (this.f4211l == null) {
                C0492a c0492a = new C0492a();
                this.f4211l = c0492a;
                setOutlineProvider(c0492a);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.f4208j) / 2.0f;
            this.f4212m.set(0.0f, 0.0f, width, height);
            this.f4204f.reset();
            this.f4204f.addRoundRect(this.f4212m, min, min, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z) {
            invalidateOutline();
        }
    }

    public void setScaleFromTextSize(float size) {
        this.f4214o = size;
    }

    public void setText(CharSequence text) {
        this.f4219s = text.toString();
        invalidate();
    }

    public void setTextBackgroundPanX(float pan) {
        this.f4197K0 = pan;
        m2122k();
        invalidate();
    }

    public void setTextBackgroundPanY(float pan) {
        this.f4198L0 = pan;
        m2122k();
        invalidate();
    }

    public void setTextBackgroundRotate(float rotation) {
        this.f4200N0 = rotation;
        m2122k();
        invalidate();
    }

    public void setTextBackgroundZoom(float zoom) {
        this.f4199M0 = zoom;
        m2122k();
        invalidate();
    }

    public void setTextFillColor(int color) {
        this.f4205g = color;
        invalidate();
    }

    public void setTextOutlineColor(int color) {
        this.f4206h = color;
        this.f4207i = true;
        invalidate();
    }

    public void setTextOutlineThickness(float width) {
        this.f4218r = width;
        this.f4207i = true;
        if (Float.isNaN(width)) {
            this.f4218r = 1.0f;
            this.f4207i = false;
        }
        invalidate();
    }

    public void setTextPanX(float textPanX) {
        this.f4189D0 = textPanX;
        invalidate();
    }

    public void setTextPanY(float textPanY) {
        this.f4190E0 = textPanY;
        invalidate();
    }

    public void setTextSize(float size) {
        this.f4213n = size;
        Log.v(f4182O0, Debug.getLoc() + GlideException.C1935a.f14609h + size + " / " + this.f4214o);
        TextPaint textPaint = this.f4203e;
        if (!Float.isNaN(this.f4214o)) {
            size = this.f4214o;
        }
        textPaint.setTextSize(size);
        m2116e(Float.isNaN(this.f4214o) ? 1.0f : this.f4213n / this.f4214o);
        requestLayout();
        invalidate();
    }

    public void setTextureHeight(float mTextureHeight) {
        this.f4187B0 = mTextureHeight;
        m2122k();
        invalidate();
    }

    public void setTextureWidth(float mTextureWidth) {
        this.f4188C0 = mTextureWidth;
        m2122k();
        invalidate();
    }

    public void setTypeface(Typeface tf) {
        if (this.f4203e.getTypeface() != tf) {
            this.f4203e.setTypeface(tf);
            if (this.f4201O != null) {
                this.f4201O = null;
                requestLayout();
                invalidate();
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.FloatLayout
    public void layout(float l, float t, float r, float b) {
        int i = (int) (l + 0.5f);
        this.f4221t0 = l - i;
        int i2 = (int) (r + 0.5f);
        int i3 = i2 - i;
        int i4 = (int) (b + 0.5f);
        int i5 = (int) (0.5f + t);
        int i6 = i4 - i5;
        float f = r - l;
        this.f4223u0 = f;
        float f2 = b - t;
        this.f4225v0 = f2;
        m2114c(l, t, r, b);
        if (getMeasuredHeight() == i6 && getMeasuredWidth() == i3) {
            super.layout(i, i5, i2, i4);
        } else {
            measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(i6, 1073741824));
            super.layout(i, i5, i2, i4);
        }
        if (this.f4217q0) {
            if (this.f4193H0 == null) {
                this.f4194I0 = new Paint();
                this.f4193H0 = new Rect();
                this.f4194I0.set(this.f4203e);
                this.f4196J0 = this.f4194I0.getTextSize();
            }
            this.f4223u0 = f;
            this.f4225v0 = f2;
            Paint paint = this.f4194I0;
            String str = this.f4219s;
            paint.getTextBounds(str, 0, str.length(), this.f4193H0);
            float height = this.f4193H0.height() * 1.3f;
            float f3 = (f - this.f4228x) - this.f4226w;
            float f4 = (f2 - this.f4232z) - this.f4230y;
            float width = this.f4193H0.width();
            if (width * f4 > height * f3) {
                this.f4203e.setTextSize((this.f4196J0 * f3) / width);
            } else {
                this.f4203e.setTextSize((this.f4196J0 * f4) / height);
            }
            if (this.f4207i || !Float.isNaN(this.f4214o)) {
                m2116e(Float.isNaN(this.f4214o) ? 1.0f : this.f4213n / this.f4214o);
            }
        }
    }

    public MotionLabel(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f4203e = new TextPaint();
        this.f4204f = new Path();
        this.f4205g = 65535;
        this.f4206h = 65535;
        this.f4207i = false;
        this.f4208j = 0.0f;
        this.f4209k = Float.NaN;
        this.f4213n = 48.0f;
        this.f4214o = Float.NaN;
        this.f4218r = 0.0f;
        this.f4219s = "Hello World";
        this.f4220t = true;
        this.f4222u = new Rect();
        this.f4226w = 1;
        this.f4228x = 1;
        this.f4230y = 1;
        this.f4232z = 1;
        this.f4202Q = 8388659;
        this.f4210k0 = 0;
        this.f4217q0 = false;
        this.f4187B0 = Float.NaN;
        this.f4188C0 = Float.NaN;
        this.f4189D0 = 0.0f;
        this.f4190E0 = 0.0f;
        this.f4191F0 = new Paint();
        this.f4192G0 = 0;
        this.f4197K0 = Float.NaN;
        this.f4198L0 = Float.NaN;
        this.f4199M0 = Float.NaN;
        this.f4200N0 = Float.NaN;
        m2117f(context, attrs);
    }

    public MotionLabel(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f4203e = new TextPaint();
        this.f4204f = new Path();
        this.f4205g = 65535;
        this.f4206h = 65535;
        this.f4207i = false;
        this.f4208j = 0.0f;
        this.f4209k = Float.NaN;
        this.f4213n = 48.0f;
        this.f4214o = Float.NaN;
        this.f4218r = 0.0f;
        this.f4219s = "Hello World";
        this.f4220t = true;
        this.f4222u = new Rect();
        this.f4226w = 1;
        this.f4228x = 1;
        this.f4230y = 1;
        this.f4232z = 1;
        this.f4202Q = 8388659;
        this.f4210k0 = 0;
        this.f4217q0 = false;
        this.f4187B0 = Float.NaN;
        this.f4188C0 = Float.NaN;
        this.f4189D0 = 0.0f;
        this.f4190E0 = 0.0f;
        this.f4191F0 = new Paint();
        this.f4192G0 = 0;
        this.f4197K0 = Float.NaN;
        this.f4198L0 = Float.NaN;
        this.f4199M0 = Float.NaN;
        this.f4200N0 = Float.NaN;
        m2117f(context, attrs);
    }
}
