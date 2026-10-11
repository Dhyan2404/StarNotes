package io.nano.tex;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.TextPaint;
import java.lang.ref.WeakReference;

/* loaded from: classes10.dex */
public final class Graphics2D {
    private static final int CAP_BUTT = 0;
    private static final int CAP_ROUND = 1;
    private static final int CAP_SQUARE = 2;
    private static final int JOIN_BEVEL = 0;
    private static final int JOIN_MITER = 1;
    private static final int JOIN_ROUND = 2;

    /* renamed from: PX */
    private static final int f94626PX = 7;

    /* renamed from: PY */
    private static final int f94627PY = 8;

    /* renamed from: R */
    private static final int f94628R = 6;

    /* renamed from: SX */
    private static final int f94629SX = 0;

    /* renamed from: SY */
    private static final int f94630SY = 4;
    static final String TAG = "io.nano.tex.Graphics2D";

    /* renamed from: TX */
    private static final int f94631TX = 2;

    /* renamed from: TY */
    private static final int f94632TY = 5;

    /* renamed from: T */
    private float[] f94633T;
    private WeakReference<Canvas> canvas;
    private boolean colorLocked;
    private TextPaint paint;

    /* renamed from: sb */
    private StringBuilder f94634sb;

    /* renamed from: tr */
    private RectF f94635tr;

    public Graphics2D() {
        this(null);
    }

    private void init() {
        this.paint.setAntiAlias(true);
        this.paint.setTextSize(46.0f);
    }

    private void renderRect(float f, float f2, float f3, float f4, Paint.Style style) {
        Canvas canvas = getCanvas();
        if (canvas == null) {
            return;
        }
        Paint.Style style2 = this.paint.getStyle();
        this.paint.setStyle(style);
        float strokeWidth = this.paint.getStrokeWidth();
        this.paint.setStrokeWidth(m60933h(strokeWidth));
        float m60940x = m60940x(f);
        float m60941y = m60941y(f2);
        canvas.drawRect(m60940x, m60941y, m60940x + m60939w(f3), m60941y + m60933h(f4), this.paint);
        this.paint.setStyle(style2);
        this.paint.setStrokeWidth(strokeWidth);
    }

    private void renderRoundRect(float f, float f2, float f3, float f4, float f5, float f6, Paint.Style style) {
        Canvas canvas = getCanvas();
        if (canvas == null) {
            return;
        }
        Paint.Style style2 = this.paint.getStyle();
        this.paint.setStyle(style);
        float strokeWidth = this.paint.getStrokeWidth();
        this.paint.setStrokeWidth(m60933h(strokeWidth));
        this.f94635tr.left = m60940x(f);
        this.f94635tr.top = m60941y(f2);
        RectF rectF = this.f94635tr;
        rectF.right = rectF.left + m60939w(f3);
        RectF rectF2 = this.f94635tr;
        rectF2.bottom = rectF2.top + m60933h(f4);
        canvas.drawRoundRect(this.f94635tr, m60939w(f5), m60933h(f6), this.paint);
        this.paint.setStyle(style2);
        this.paint.setStrokeWidth(strokeWidth);
    }

    public void drawChar(char c, float f, float f2) {
        StringBuilder sb = this.f94634sb;
        sb.delete(0, sb.length());
        this.f94634sb.append(c);
        drawText(this.f94634sb.toString(), f, f2);
    }

    public void drawLine(float f, float f2, float f3, float f4) {
        Canvas canvas = getCanvas();
        if (canvas == null) {
            return;
        }
        float strokeWidth = this.paint.getStrokeWidth();
        float m60933h = m60933h(strokeWidth);
        if (m60933h < 1.0f) {
            m60933h = 1.0f;
        }
        this.paint.setStrokeWidth(m60933h);
        canvas.drawLine(m60940x(f), m60941y(f2), m60940x(f3), m60941y(f4), this.paint);
        this.paint.setStrokeWidth(strokeWidth);
    }

    public void drawRect(float f, float f2, float f3, float f4) {
        renderRect(f, f2, f3, f4, Paint.Style.STROKE);
    }

    public void drawRoundRect(float f, float f2, float f3, float f4, float f5, float f6) {
        renderRoundRect(f, f2, f3, f4, f5, f6, Paint.Style.STROKE);
    }

    public void drawText(String str, float f, float f2) {
        Canvas canvas = getCanvas();
        if (canvas == null) {
            return;
        }
        float textSize = this.paint.getTextSize();
        float textScaleX = this.paint.getTextScaleX();
        this.paint.setTextSize(m60938sy() * textSize);
        this.paint.setTextScaleX(m60937sx() / m60938sy());
        canvas.drawText(str, m60940x(f), m60941y(f2), this.paint);
        this.paint.setTextSize(textSize);
        this.paint.setTextScaleX(textScaleX);
    }

    public void fillRect(float f, float f2, float f3, float f4) {
        renderRect(f, f2, f3, f4, Paint.Style.FILL);
    }

    public void fillRoundRect(float f, float f2, float f3, float f4, float f5, float f6) {
        renderRoundRect(f, f2, f3, f4, f5, f6, Paint.Style.FILL);
    }

    public Canvas getCanvas() {
        WeakReference<Canvas> weakReference = this.canvas;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public Paint getPaint() {
        return this.paint;
    }

    /* renamed from: h */
    public float m60933h(float f) {
        return this.f94633T[4] * f;
    }

    public void lockColor() {
        this.colorLocked = true;
    }

    /* renamed from: px */
    public float m60934px() {
        return this.f94633T[7];
    }

    /* renamed from: py */
    public float m60935py() {
        return this.f94633T[8];
    }

    /* renamed from: r */
    public float m60936r() {
        return this.f94633T[6];
    }

    public void reset() {
        float m60936r = m60936r();
        float m60934px = m60934px();
        float m60935py = m60935py();
        Canvas canvas = getCanvas();
        this.f94633T = new float[]{1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f};
        if (canvas == null) {
            return;
        }
        canvas.rotate(-m60936r, m60934px, m60935py);
    }

    public void rotate(float f, float f2, float f3) {
        float f4 = (float) ((f / 3.141592653589793d) * 180.0d);
        float[] fArr = this.f94633T;
        fArr[6] = fArr[6] + f4;
        fArr[7] = m60940x(f2);
        this.f94633T[8] = m60941y(f3);
        Canvas canvas = getCanvas();
        if (canvas == null) {
            return;
        }
        canvas.rotate(f4, m60934px(), m60935py());
    }

    public void scale(float f, float f2) {
        float[] fArr = this.f94633T;
        fArr[0] = fArr[0] * f;
        fArr[4] = fArr[4] * f2;
    }

    public void setCanvas(Canvas canvas) {
        this.canvas = new WeakReference<>(canvas);
    }

    public void setColor(int i) {
        if (this.colorLocked) {
            return;
        }
        this.paint.setColor(i);
    }

    public void setFont(Font font) {
        if (font == null) {
            this.paint.setTypeface(Typeface.DEFAULT);
            this.paint.setTextSize(46.0f);
        } else {
            this.paint.setTypeface(font.getTypeface());
            this.paint.setTextSize(font.getSize());
        }
    }

    public void setStroke(float f, float f2, int i, int i2) {
        this.paint.setStrokeWidth(f);
        this.paint.setStrokeMiter(f2);
        if (i == 0) {
            this.paint.setStrokeCap(Paint.Cap.BUTT);
        } else if (i == 1) {
            this.paint.setStrokeCap(Paint.Cap.ROUND);
        } else if (i == 2) {
            this.paint.setStrokeCap(Paint.Cap.SQUARE);
        }
        if (i2 == 0) {
            this.paint.setStrokeJoin(Paint.Join.BEVEL);
        } else if (i2 == 1) {
            this.paint.setStrokeJoin(Paint.Join.MITER);
        } else {
            if (i2 != 2) {
                return;
            }
            this.paint.setStrokeJoin(Paint.Join.ROUND);
        }
    }

    public void setStrokeWidth(float f) {
        this.paint.setStrokeWidth(f);
    }

    /* renamed from: sx */
    public float m60937sx() {
        return this.f94633T[0];
    }

    /* renamed from: sy */
    public float m60938sy() {
        return this.f94633T[4];
    }

    public void translate(float f, float f2) {
        float[] fArr = this.f94633T;
        fArr[2] = fArr[2] + (fArr[0] * f);
        fArr[5] = fArr[5] + (fArr[4] * f2);
    }

    public void unlockColor() {
        this.colorLocked = false;
    }

    /* renamed from: w */
    public float m60939w(float f) {
        return this.f94633T[0] * f;
    }

    /* renamed from: x */
    public float m60940x(float f) {
        float[] fArr = this.f94633T;
        return (f * fArr[0]) + fArr[2];
    }

    /* renamed from: y */
    public float m60941y(float f) {
        float[] fArr = this.f94633T;
        return (f * fArr[4]) + fArr[5];
    }

    public Graphics2D(Canvas canvas) {
        this.paint = new TextPaint(1);
        this.f94633T = new float[]{1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f};
        this.colorLocked = false;
        this.f94634sb = new StringBuilder();
        this.f94635tr = new RectF();
        if (canvas != null) {
            this.canvas = new WeakReference<>(canvas);
        }
        init();
    }
}
