package androidx.appcompat.graphics.drawable;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.core.graphics.drawable.DrawableCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public class DrawerArrowDrawable extends Drawable {
    public static final int ARROW_DIRECTION_END = 3;
    public static final int ARROW_DIRECTION_LEFT = 0;
    public static final int ARROW_DIRECTION_RIGHT = 1;
    public static final int ARROW_DIRECTION_START = 2;

    /* renamed from: m */
    public static final float f950m = (float) Math.toRadians(45.0d);

    /* renamed from: a */
    public final Paint f951a;

    /* renamed from: b */
    public float f952b;

    /* renamed from: c */
    public float f953c;

    /* renamed from: d */
    public float f954d;

    /* renamed from: e */
    public float f955e;

    /* renamed from: f */
    public boolean f956f;

    /* renamed from: g */
    public final Path f957g;

    /* renamed from: h */
    public final int f958h;

    /* renamed from: i */
    public boolean f959i;

    /* renamed from: j */
    public float f960j;

    /* renamed from: k */
    public float f961k;

    /* renamed from: l */
    public int f962l;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface ArrowDirection {
    }

    public DrawerArrowDrawable(Context context) {
        Paint paint = new Paint();
        this.f951a = paint;
        this.f957g = new Path();
        this.f959i = false;
        this.f962l = 2;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.MITER);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, C0118R.styleable.DrawerArrowToggle, C0118R.attr.drawerArrowStyle, C0118R.style.Base_Widget_AppCompat_DrawerArrowToggle);
        setColor(obtainStyledAttributes.getColor(C0118R.styleable.DrawerArrowToggle_color, 0));
        setBarThickness(obtainStyledAttributes.getDimension(C0118R.styleable.DrawerArrowToggle_thickness, 0.0f));
        setSpinEnabled(obtainStyledAttributes.getBoolean(C0118R.styleable.DrawerArrowToggle_spinBars, true));
        setGapSize(Math.round(obtainStyledAttributes.getDimension(C0118R.styleable.DrawerArrowToggle_gapBetweenBars, 0.0f)));
        this.f958h = obtainStyledAttributes.getDimensionPixelSize(C0118R.styleable.DrawerArrowToggle_drawableSize, 0);
        this.f953c = Math.round(obtainStyledAttributes.getDimension(C0118R.styleable.DrawerArrowToggle_barLength, 0.0f));
        this.f952b = Math.round(obtainStyledAttributes.getDimension(C0118R.styleable.DrawerArrowToggle_arrowHeadLength, 0.0f));
        this.f954d = obtainStyledAttributes.getDimension(C0118R.styleable.DrawerArrowToggle_arrowShaftLength, 0.0f);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public static float m538a(float f, float f2, float f3) {
        return f + ((f2 - f) * f3);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        int i = this.f962l;
        boolean z = false;
        if (i != 0 && (i == 1 || (i == 3 ? DrawableCompat.getLayoutDirection(this) == 0 : DrawableCompat.getLayoutDirection(this) == 1))) {
            z = true;
        }
        float f = this.f952b;
        float m538a = m538a(this.f953c, (float) Math.sqrt(f * f * 2.0f), this.f960j);
        float m538a2 = m538a(this.f953c, this.f954d, this.f960j);
        float round = Math.round(m538a(0.0f, this.f961k, this.f960j));
        float m538a3 = m538a(0.0f, f950m, this.f960j);
        float m538a4 = m538a(z ? 0.0f : -180.0f, z ? 180.0f : 0.0f, this.f960j);
        double d = m538a;
        double d2 = m538a3;
        boolean z2 = z;
        float round2 = (float) Math.round(Math.cos(d2) * d);
        float round3 = (float) Math.round(d * Math.sin(d2));
        this.f957g.rewind();
        float m538a5 = m538a(this.f955e + this.f951a.getStrokeWidth(), -this.f961k, this.f960j);
        float f2 = (-m538a2) / 2.0f;
        this.f957g.moveTo(f2 + round, 0.0f);
        this.f957g.rLineTo(m538a2 - (round * 2.0f), 0.0f);
        this.f957g.moveTo(f2, m538a5);
        this.f957g.rLineTo(round2, round3);
        this.f957g.moveTo(f2, -m538a5);
        this.f957g.rLineTo(round2, -round3);
        this.f957g.close();
        canvas.save();
        float strokeWidth = this.f951a.getStrokeWidth();
        float height = bounds.height() - (3.0f * strokeWidth);
        canvas.translate(bounds.centerX(), ((((int) (height - (2.0f * r5))) / 4) * 2) + (strokeWidth * 1.5f) + this.f955e);
        if (this.f956f) {
            canvas.rotate(m538a4 * (this.f959i ^ z2 ? -1 : 1));
        } else if (z2) {
            canvas.rotate(180.0f);
        }
        canvas.drawPath(this.f957g, this.f951a);
        canvas.restore();
    }

    public float getArrowHeadLength() {
        return this.f952b;
    }

    public float getArrowShaftLength() {
        return this.f954d;
    }

    public float getBarLength() {
        return this.f953c;
    }

    public float getBarThickness() {
        return this.f951a.getStrokeWidth();
    }

    @ColorInt
    public int getColor() {
        return this.f951a.getColor();
    }

    public int getDirection() {
        return this.f962l;
    }

    public float getGapSize() {
        return this.f955e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f958h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f958h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public final Paint getPaint() {
        return this.f951a;
    }

    @FloatRange(from = 0.0d, m280to = 1.0d)
    public float getProgress() {
        return this.f960j;
    }

    public boolean isSpinEnabled() {
        return this.f956f;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (i != this.f951a.getAlpha()) {
            this.f951a.setAlpha(i);
            invalidateSelf();
        }
    }

    public void setArrowHeadLength(float f) {
        if (this.f952b != f) {
            this.f952b = f;
            invalidateSelf();
        }
    }

    public void setArrowShaftLength(float f) {
        if (this.f954d != f) {
            this.f954d = f;
            invalidateSelf();
        }
    }

    public void setBarLength(float f) {
        if (this.f953c != f) {
            this.f953c = f;
            invalidateSelf();
        }
    }

    public void setBarThickness(float f) {
        if (this.f951a.getStrokeWidth() != f) {
            this.f951a.setStrokeWidth(f);
            this.f961k = (float) ((f / 2.0f) * Math.cos(f950m));
            invalidateSelf();
        }
    }

    public void setColor(@ColorInt int i) {
        if (i != this.f951a.getColor()) {
            this.f951a.setColor(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f951a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void setDirection(int i) {
        if (i != this.f962l) {
            this.f962l = i;
            invalidateSelf();
        }
    }

    public void setGapSize(float f) {
        if (f != this.f955e) {
            this.f955e = f;
            invalidateSelf();
        }
    }

    public void setProgress(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        if (this.f960j != f) {
            this.f960j = f;
            invalidateSelf();
        }
    }

    public void setSpinEnabled(boolean z) {
        if (this.f956f != z) {
            this.f956f = z;
            invalidateSelf();
        }
    }

    public void setVerticalMirror(boolean z) {
        if (this.f959i != z) {
            this.f959i = z;
            invalidateSelf();
        }
    }
}
