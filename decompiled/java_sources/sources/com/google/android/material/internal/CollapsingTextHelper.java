package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.math.MathUtils;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.resources.CancelableFontCallback;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.resources.TypefaceUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class CollapsingTextHelper {

    /* renamed from: v0 */
    public static final String f31470v0 = "CollapsingTextHelper";

    /* renamed from: w0 */
    public static final String f31471w0 = "…";

    /* renamed from: x0 */
    public static final float f31472x0 = 0.5f;

    /* renamed from: y0 */
    public static final boolean f31473y0 = false;

    /* renamed from: A */
    public Typeface f31475A;

    /* renamed from: B */
    public Typeface f31476B;

    /* renamed from: C */
    public Typeface f31477C;

    /* renamed from: D */
    public CancelableFontCallback f31478D;

    /* renamed from: E */
    public CancelableFontCallback f31479E;

    /* renamed from: G */
    @Nullable
    public CharSequence f31481G;

    /* renamed from: H */
    @Nullable
    public CharSequence f31482H;

    /* renamed from: I */
    public boolean f31483I;

    /* renamed from: K */
    public boolean f31485K;

    /* renamed from: L */
    @Nullable
    public Bitmap f31486L;

    /* renamed from: M */
    public Paint f31487M;

    /* renamed from: N */
    public float f31488N;

    /* renamed from: O */
    public float f31489O;

    /* renamed from: P */
    public float f31490P;

    /* renamed from: Q */
    public float f31491Q;

    /* renamed from: R */
    public float f31492R;

    /* renamed from: S */
    public int f31493S;

    /* renamed from: T */
    public int[] f31494T;

    /* renamed from: U */
    public boolean f31495U;

    /* renamed from: V */
    @NonNull
    public final TextPaint f31496V;

    /* renamed from: W */
    @NonNull
    public final TextPaint f31497W;

    /* renamed from: X */
    public TimeInterpolator f31498X;

    /* renamed from: Y */
    public TimeInterpolator f31499Y;

    /* renamed from: Z */
    public float f31500Z;

    /* renamed from: a */
    public final View f31501a;

    /* renamed from: a0 */
    public float f31502a0;

    /* renamed from: b */
    public float f31503b;

    /* renamed from: b0 */
    public float f31504b0;

    /* renamed from: c */
    public boolean f31505c;

    /* renamed from: c0 */
    public ColorStateList f31506c0;

    /* renamed from: d */
    public float f31507d;

    /* renamed from: d0 */
    public float f31508d0;

    /* renamed from: e */
    public float f31509e;

    /* renamed from: e0 */
    public float f31510e0;

    /* renamed from: f */
    public int f31511f;

    /* renamed from: f0 */
    public float f31512f0;

    /* renamed from: g */
    @NonNull
    public final Rect f31513g;

    /* renamed from: g0 */
    public ColorStateList f31514g0;

    /* renamed from: h */
    @NonNull
    public final Rect f31515h;

    /* renamed from: h0 */
    public float f31516h0;

    /* renamed from: i */
    @NonNull
    public final RectF f31517i;

    /* renamed from: i0 */
    public float f31518i0;

    /* renamed from: j0 */
    public float f31520j0;

    /* renamed from: k0 */
    public StaticLayout f31522k0;

    /* renamed from: l0 */
    public float f31524l0;

    /* renamed from: m0 */
    public float f31526m0;

    /* renamed from: n */
    public ColorStateList f31527n;

    /* renamed from: n0 */
    public float f31528n0;

    /* renamed from: o */
    public ColorStateList f31529o;

    /* renamed from: o0 */
    public CharSequence f31530o0;

    /* renamed from: p */
    public int f31531p;

    /* renamed from: q */
    public float f31533q;

    /* renamed from: r */
    public float f31535r;

    /* renamed from: s */
    public float f31537s;

    /* renamed from: t */
    public float f31539t;

    /* renamed from: t0 */
    @Nullable
    public StaticLayoutBuilderConfigurer f31540t0;

    /* renamed from: u */
    public float f31541u;

    /* renamed from: v */
    public float f31542v;

    /* renamed from: w */
    public Typeface f31543w;

    /* renamed from: x */
    public Typeface f31544x;

    /* renamed from: y */
    public Typeface f31545y;

    /* renamed from: z */
    public Typeface f31546z;

    /* renamed from: u0 */
    public static final boolean f31469u0 = false;

    /* renamed from: z0 */
    @NonNull
    public static final Paint f31474z0 = null;

    /* renamed from: j */
    public int f31519j = 16;

    /* renamed from: k */
    public int f31521k = 16;

    /* renamed from: l */
    public float f31523l = 15.0f;

    /* renamed from: m */
    public float f31525m = 15.0f;

    /* renamed from: F */
    public TextUtils.TruncateAt f31480F = TextUtils.TruncateAt.END;

    /* renamed from: J */
    public boolean f31484J = true;

    /* renamed from: p0 */
    public int f31532p0 = 1;

    /* renamed from: q0 */
    public float f31534q0 = 0.0f;

    /* renamed from: r0 */
    public float f31536r0 = 1.0f;

    /* renamed from: s0 */
    public int f31538s0 = StaticLayoutBuilderCompat.f31665o;

    /* renamed from: com.google.android.material.internal.CollapsingTextHelper$a */
    /* loaded from: classes6.dex */
    public class C5290a implements CancelableFontCallback.ApplyFont {
        public C5290a() {
        }

        @Override // com.google.android.material.resources.CancelableFontCallback.ApplyFont
        public void apply(Typeface typeface) {
            CollapsingTextHelper.this.setCollapsedTypeface(typeface);
        }
    }

    /* renamed from: com.google.android.material.internal.CollapsingTextHelper$b */
    /* loaded from: classes6.dex */
    public class C5291b implements CancelableFontCallback.ApplyFont {
        public C5291b() {
        }

        @Override // com.google.android.material.resources.CancelableFontCallback.ApplyFont
        public void apply(Typeface typeface) {
            CollapsingTextHelper.this.setExpandedTypeface(typeface);
        }
    }

    public CollapsingTextHelper(View view) {
        this.f31501a = view;
        TextPaint textPaint = new TextPaint(129);
        this.f31496V = textPaint;
        this.f31497W = new TextPaint(textPaint);
        this.f31515h = new Rect();
        this.f31513g = new Rect();
        this.f31517i = new RectF();
        this.f31509e = m24207e();
        maybeUpdateFontWeightAdjustment(view.getContext().getResources().getConfiguration());
    }

    /* renamed from: A */
    public static boolean m24194A(@NonNull Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }

    @ColorInt
    /* renamed from: a */
    public static int m24195a(@ColorInt int i, @ColorInt int i2, @FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        float f2 = 1.0f - f;
        return Color.argb(Math.round((Color.alpha(i) * f2) + (Color.alpha(i2) * f)), Math.round((Color.red(i) * f2) + (Color.red(i2) * f)), Math.round((Color.green(i) * f2) + (Color.green(i2) * f)), Math.round((Color.blue(i) * f2) + (Color.blue(i2) * f)));
    }

    /* renamed from: v */
    public static boolean m24196v(float f, float f2) {
        return Math.abs(f - f2) < 1.0E-5f;
    }

    /* renamed from: y */
    public static float m24197y(float f, float f2, float f3, @Nullable TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f3 = timeInterpolator.getInterpolation(f3);
        }
        return AnimationUtils.lerp(f, f2, f3);
    }

    /* renamed from: B */
    public final void m24198B(float f) {
        this.f31526m0 = f;
        ViewCompat.postInvalidateOnAnimation(this.f31501a);
    }

    /* renamed from: C */
    public final boolean m24199C(Typeface typeface) {
        CancelableFontCallback cancelableFontCallback = this.f31479E;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.cancel();
        }
        if (this.f31545y == typeface) {
            return false;
        }
        this.f31545y = typeface;
        Typeface maybeCopyWithFontWeightAdjustment = TypefaceUtils.maybeCopyWithFontWeightAdjustment(this.f31501a.getContext().getResources().getConfiguration(), typeface);
        this.f31544x = maybeCopyWithFontWeightAdjustment;
        if (maybeCopyWithFontWeightAdjustment == null) {
            maybeCopyWithFontWeightAdjustment = this.f31545y;
        }
        this.f31543w = maybeCopyWithFontWeightAdjustment;
        return true;
    }

    /* renamed from: D */
    public final void m24200D(float f) {
        this.f31528n0 = f;
        ViewCompat.postInvalidateOnAnimation(this.f31501a);
    }

    /* renamed from: E */
    public final boolean m24201E(Typeface typeface) {
        CancelableFontCallback cancelableFontCallback = this.f31478D;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.cancel();
        }
        if (this.f31476B == typeface) {
            return false;
        }
        this.f31476B = typeface;
        Typeface maybeCopyWithFontWeightAdjustment = TypefaceUtils.maybeCopyWithFontWeightAdjustment(this.f31501a.getContext().getResources().getConfiguration(), typeface);
        this.f31475A = maybeCopyWithFontWeightAdjustment;
        if (maybeCopyWithFontWeightAdjustment == null) {
            maybeCopyWithFontWeightAdjustment = this.f31476B;
        }
        this.f31546z = maybeCopyWithFontWeightAdjustment;
        return true;
    }

    /* renamed from: F */
    public final void m24202F(float f) {
        m24210h(f);
        boolean z = f31469u0 && this.f31488N != 1.0f;
        this.f31485K = z;
        if (z) {
            m24215m();
        }
        ViewCompat.postInvalidateOnAnimation(this.f31501a);
    }

    /* renamed from: G */
    public final boolean m24203G() {
        return this.f31532p0 > 1 && (!this.f31483I || this.f31505c) && !this.f31485K;
    }

    /* renamed from: b */
    public final void m24204b(boolean z) {
        StaticLayout staticLayout;
        m24211i(1.0f, z);
        CharSequence charSequence = this.f31482H;
        if (charSequence != null && (staticLayout = this.f31522k0) != null) {
            this.f31530o0 = TextUtils.ellipsize(charSequence, this.f31496V, staticLayout.getWidth(), this.f31480F);
        }
        CharSequence charSequence2 = this.f31530o0;
        float f = 0.0f;
        if (charSequence2 != null) {
            this.f31524l0 = m24226z(this.f31496V, charSequence2);
        } else {
            this.f31524l0 = 0.0f;
        }
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.f31521k, this.f31483I ? 1 : 0);
        int i = absoluteGravity & 112;
        if (i == 48) {
            this.f31535r = this.f31515h.top;
        } else if (i != 80) {
            this.f31535r = this.f31515h.centerY() - ((this.f31496V.descent() - this.f31496V.ascent()) / 2.0f);
        } else {
            this.f31535r = this.f31515h.bottom + this.f31496V.ascent();
        }
        int i2 = absoluteGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i2 == 1) {
            this.f31539t = this.f31515h.centerX() - (this.f31524l0 / 2.0f);
        } else if (i2 != 5) {
            this.f31539t = this.f31515h.left;
        } else {
            this.f31539t = this.f31515h.right - this.f31524l0;
        }
        m24211i(0.0f, z);
        float height = this.f31522k0 != null ? r10.getHeight() : 0.0f;
        StaticLayout staticLayout2 = this.f31522k0;
        if (staticLayout2 == null || this.f31532p0 <= 1) {
            CharSequence charSequence3 = this.f31482H;
            if (charSequence3 != null) {
                f = m24226z(this.f31496V, charSequence3);
            }
        } else {
            f = staticLayout2.getWidth();
        }
        StaticLayout staticLayout3 = this.f31522k0;
        this.f31531p = staticLayout3 != null ? staticLayout3.getLineCount() : 0;
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(this.f31519j, this.f31483I ? 1 : 0);
        int i3 = absoluteGravity2 & 112;
        if (i3 == 48) {
            this.f31533q = this.f31513g.top;
        } else if (i3 != 80) {
            this.f31533q = this.f31513g.centerY() - (height / 2.0f);
        } else {
            this.f31533q = (this.f31513g.bottom - height) + this.f31496V.descent();
        }
        int i4 = absoluteGravity2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i4 == 1) {
            this.f31537s = this.f31513g.centerX() - (f / 2.0f);
        } else if (i4 != 5) {
            this.f31537s = this.f31513g.left;
        } else {
            this.f31537s = this.f31513g.right - f;
        }
        m24212j();
        m24202F(this.f31503b);
    }

    /* renamed from: c */
    public final void m24205c() {
        m24209g(this.f31503b);
    }

    /* renamed from: d */
    public final float m24206d(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        float f2 = this.f31509e;
        return f <= f2 ? AnimationUtils.lerp(1.0f, 0.0f, this.f31507d, f2, f) : AnimationUtils.lerp(0.0f, 1.0f, f2, 1.0f, f);
    }

    public void draw(@NonNull Canvas canvas) {
        int save = canvas.save();
        if (this.f31482H == null || this.f31517i.width() <= 0.0f || this.f31517i.height() <= 0.0f) {
            return;
        }
        this.f31496V.setTextSize(this.f31489O);
        float f = this.f31541u;
        float f2 = this.f31542v;
        boolean z = this.f31485K && this.f31486L != null;
        float f3 = this.f31488N;
        if (f3 != 1.0f && !this.f31505c) {
            canvas.scale(f3, f3, f, f2);
        }
        if (z) {
            canvas.drawBitmap(this.f31486L, f, f2, this.f31487M);
            canvas.restoreToCount(save);
            return;
        }
        if (!m24203G() || (this.f31505c && this.f31503b <= this.f31509e)) {
            canvas.translate(f, f2);
            this.f31522k0.draw(canvas);
        } else {
            m24214l(canvas, this.f31541u - this.f31522k0.getLineStart(0), f2);
        }
        canvas.restoreToCount(save);
    }

    /* renamed from: e */
    public final float m24207e() {
        float f = this.f31507d;
        return f + ((1.0f - f) * 0.5f);
    }

    /* renamed from: f */
    public final boolean m24208f(@NonNull CharSequence charSequence) {
        boolean m24224w = m24224w();
        return this.f31484J ? m24225x(charSequence, m24224w) : m24224w;
    }

    /* renamed from: g */
    public final void m24209g(float f) {
        float f2;
        m24223u(f);
        if (!this.f31505c) {
            this.f31541u = m24197y(this.f31537s, this.f31539t, f, this.f31498X);
            this.f31542v = m24197y(this.f31533q, this.f31535r, f, this.f31498X);
            m24202F(f);
            f2 = f;
        } else if (f < this.f31509e) {
            this.f31541u = this.f31537s;
            this.f31542v = this.f31533q;
            m24202F(0.0f);
            f2 = 0.0f;
        } else {
            this.f31541u = this.f31539t;
            this.f31542v = this.f31535r - Math.max(0, this.f31511f);
            m24202F(1.0f);
            f2 = 1.0f;
        }
        TimeInterpolator timeInterpolator = AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
        m24198B(1.0f - m24197y(0.0f, 1.0f, 1.0f - f, timeInterpolator));
        m24200D(m24197y(1.0f, 0.0f, f, timeInterpolator));
        if (this.f31529o != this.f31527n) {
            this.f31496V.setColor(m24195a(m24219q(), getCurrentCollapsedTextColor(), f2));
        } else {
            this.f31496V.setColor(getCurrentCollapsedTextColor());
        }
        int i = Build.VERSION.SDK_INT;
        float f3 = this.f31516h0;
        float f4 = this.f31518i0;
        if (f3 != f4) {
            this.f31496V.setLetterSpacing(m24197y(f4, f3, f, timeInterpolator));
        } else {
            this.f31496V.setLetterSpacing(f3);
        }
        this.f31490P = m24197y(this.f31508d0, this.f31500Z, f, null);
        this.f31491Q = m24197y(this.f31510e0, this.f31502a0, f, null);
        this.f31492R = m24197y(this.f31512f0, this.f31504b0, f, null);
        int m24195a = m24195a(m24218p(this.f31514g0), m24218p(this.f31506c0), f);
        this.f31493S = m24195a;
        this.f31496V.setShadowLayer(this.f31490P, this.f31491Q, this.f31492R, m24195a);
        if (this.f31505c) {
            this.f31496V.setAlpha((int) (m24206d(f) * this.f31496V.getAlpha()));
            if (i >= 31) {
                TextPaint textPaint = this.f31496V;
                textPaint.setShadowLayer(this.f31490P, this.f31491Q, this.f31492R, MaterialColors.compositeARGBWithAlpha(this.f31493S, textPaint.getAlpha()));
            }
        }
        ViewCompat.postInvalidateOnAnimation(this.f31501a);
    }

    public void getCollapsedTextActualBounds(@NonNull RectF rectF, int i, int i2) {
        this.f31483I = m24208f(this.f31481G);
        rectF.left = Math.max(m24216n(i, i2), this.f31515h.left);
        rectF.top = this.f31515h.top;
        rectF.right = Math.min(m24217o(rectF, i, i2), this.f31515h.right);
        rectF.bottom = this.f31515h.top + getCollapsedTextHeight();
    }

    public ColorStateList getCollapsedTextColor() {
        return this.f31529o;
    }

    public int getCollapsedTextGravity() {
        return this.f31521k;
    }

    public float getCollapsedTextHeight() {
        m24221s(this.f31497W);
        return -this.f31497W.ascent();
    }

    public float getCollapsedTextSize() {
        return this.f31525m;
    }

    public Typeface getCollapsedTypeface() {
        Typeface typeface = this.f31543w;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    @ColorInt
    public int getCurrentCollapsedTextColor() {
        return m24218p(this.f31529o);
    }

    public int getExpandedLineCount() {
        return this.f31531p;
    }

    public ColorStateList getExpandedTextColor() {
        return this.f31527n;
    }

    public float getExpandedTextFullHeight() {
        m24222t(this.f31497W);
        return (-this.f31497W.ascent()) + this.f31497W.descent();
    }

    public int getExpandedTextGravity() {
        return this.f31519j;
    }

    public float getExpandedTextHeight() {
        m24222t(this.f31497W);
        return -this.f31497W.ascent();
    }

    public float getExpandedTextSize() {
        return this.f31523l;
    }

    public Typeface getExpandedTypeface() {
        Typeface typeface = this.f31546z;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public float getExpansionFraction() {
        return this.f31503b;
    }

    public float getFadeModeThresholdFraction() {
        return this.f31509e;
    }

    @RequiresApi(23)
    public int getHyphenationFrequency() {
        return this.f31538s0;
    }

    public int getLineCount() {
        StaticLayout staticLayout = this.f31522k0;
        if (staticLayout != null) {
            return staticLayout.getLineCount();
        }
        return 0;
    }

    @RequiresApi(23)
    public float getLineSpacingAdd() {
        return this.f31522k0.getSpacingAdd();
    }

    @RequiresApi(23)
    public float getLineSpacingMultiplier() {
        return this.f31522k0.getSpacingMultiplier();
    }

    public int getMaxLines() {
        return this.f31532p0;
    }

    @Nullable
    public TimeInterpolator getPositionInterpolator() {
        return this.f31498X;
    }

    @Nullable
    public CharSequence getText() {
        return this.f31481G;
    }

    @NonNull
    public TextUtils.TruncateAt getTitleTextEllipsize() {
        return this.f31480F;
    }

    /* renamed from: h */
    public final void m24210h(float f) {
        m24211i(f, false);
    }

    /* renamed from: i */
    public final void m24211i(float f, boolean z) {
        float f2;
        float f3;
        Typeface typeface;
        if (this.f31481G == null) {
            return;
        }
        float width = this.f31515h.width();
        float width2 = this.f31513g.width();
        if (m24196v(f, 1.0f)) {
            f2 = this.f31525m;
            f3 = this.f31516h0;
            this.f31488N = 1.0f;
            typeface = this.f31543w;
        } else {
            float f4 = this.f31523l;
            float f5 = this.f31518i0;
            Typeface typeface2 = this.f31546z;
            if (m24196v(f, 0.0f)) {
                this.f31488N = 1.0f;
            } else {
                this.f31488N = m24197y(this.f31523l, this.f31525m, f, this.f31499Y) / this.f31523l;
            }
            float f6 = this.f31525m / this.f31523l;
            width = (z || this.f31505c || width2 * f6 <= width) ? width2 : Math.min(width / f6, width2);
            f2 = f4;
            f3 = f5;
            typeface = typeface2;
        }
        if (width > 0.0f) {
            boolean z2 = this.f31489O != f2;
            boolean z3 = this.f31520j0 != f3;
            boolean z4 = this.f31477C != typeface;
            StaticLayout staticLayout = this.f31522k0;
            boolean z5 = z2 || z3 || (staticLayout != null && (width > ((float) staticLayout.getWidth()) ? 1 : (width == ((float) staticLayout.getWidth()) ? 0 : -1)) != 0) || z4 || this.f31495U;
            this.f31489O = f2;
            this.f31520j0 = f3;
            this.f31477C = typeface;
            this.f31495U = false;
            this.f31496V.setLinearText(this.f31488N != 1.0f);
            r5 = z5;
        }
        if (this.f31482H == null || r5) {
            this.f31496V.setTextSize(this.f31489O);
            this.f31496V.setTypeface(this.f31477C);
            this.f31496V.setLetterSpacing(this.f31520j0);
            this.f31483I = m24208f(this.f31481G);
            StaticLayout m24213k = m24213k(m24203G() ? this.f31532p0 : 1, width, this.f31483I);
            this.f31522k0 = m24213k;
            this.f31482H = m24213k.getText();
        }
    }

    public boolean isRtlTextDirectionHeuristicsEnabled() {
        return this.f31484J;
    }

    public final boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f31529o;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f31527n) != null && colorStateList.isStateful());
    }

    /* renamed from: j */
    public final void m24212j() {
        Bitmap bitmap = this.f31486L;
        if (bitmap != null) {
            bitmap.recycle();
            this.f31486L = null;
        }
    }

    /* renamed from: k */
    public final StaticLayout m24213k(int i, float f, boolean z) {
        StaticLayout staticLayout;
        try {
            staticLayout = StaticLayoutBuilderCompat.m24285c(this.f31481G, this.f31496V, (int) f).m24289e(this.f31480F).m24293i(z).m24288d(i == 1 ? Layout.Alignment.ALIGN_NORMAL : m24220r()).m24292h(false).m24295k(i).m24294j(this.f31534q0, this.f31536r0).m24291g(this.f31538s0).m24297m(this.f31540t0).m24286a();
        } catch (StaticLayoutBuilderCompat.StaticLayoutBuilderCompatException e) {
            Log.e(f31470v0, e.getCause().getMessage(), e);
            staticLayout = null;
        }
        return (StaticLayout) Preconditions.checkNotNull(staticLayout);
    }

    /* renamed from: l */
    public final void m24214l(@NonNull Canvas canvas, float f, float f2) {
        int alpha = this.f31496V.getAlpha();
        canvas.translate(f, f2);
        if (!this.f31505c) {
            this.f31496V.setAlpha((int) (this.f31528n0 * alpha));
            if (Build.VERSION.SDK_INT >= 31) {
                TextPaint textPaint = this.f31496V;
                textPaint.setShadowLayer(this.f31490P, this.f31491Q, this.f31492R, MaterialColors.compositeARGBWithAlpha(this.f31493S, textPaint.getAlpha()));
            }
            this.f31522k0.draw(canvas);
        }
        if (!this.f31505c) {
            this.f31496V.setAlpha((int) (this.f31526m0 * alpha));
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            TextPaint textPaint2 = this.f31496V;
            textPaint2.setShadowLayer(this.f31490P, this.f31491Q, this.f31492R, MaterialColors.compositeARGBWithAlpha(this.f31493S, textPaint2.getAlpha()));
        }
        int lineBaseline = this.f31522k0.getLineBaseline(0);
        CharSequence charSequence = this.f31530o0;
        float f3 = lineBaseline;
        canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f3, this.f31496V);
        if (i >= 31) {
            this.f31496V.setShadowLayer(this.f31490P, this.f31491Q, this.f31492R, this.f31493S);
        }
        if (this.f31505c) {
            return;
        }
        String trim = this.f31530o0.toString().trim();
        if (trim.endsWith("…")) {
            trim = trim.substring(0, trim.length() - 1);
        }
        String str = trim;
        this.f31496V.setAlpha(alpha);
        canvas.drawText(str, 0, Math.min(this.f31522k0.getLineEnd(0), str.length()), 0.0f, f3, (Paint) this.f31496V);
    }

    /* renamed from: m */
    public final void m24215m() {
        if (this.f31486L != null || this.f31513g.isEmpty() || TextUtils.isEmpty(this.f31482H)) {
            return;
        }
        m24209g(0.0f);
        int width = this.f31522k0.getWidth();
        int height = this.f31522k0.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        this.f31486L = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        this.f31522k0.draw(new Canvas(this.f31486L));
        if (this.f31487M == null) {
            this.f31487M = new Paint(3);
        }
    }

    public void maybeUpdateFontWeightAdjustment(@NonNull Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            Typeface typeface = this.f31545y;
            if (typeface != null) {
                this.f31544x = TypefaceUtils.maybeCopyWithFontWeightAdjustment(configuration, typeface);
            }
            Typeface typeface2 = this.f31476B;
            if (typeface2 != null) {
                this.f31475A = TypefaceUtils.maybeCopyWithFontWeightAdjustment(configuration, typeface2);
            }
            Typeface typeface3 = this.f31544x;
            if (typeface3 == null) {
                typeface3 = this.f31545y;
            }
            this.f31543w = typeface3;
            Typeface typeface4 = this.f31475A;
            if (typeface4 == null) {
                typeface4 = this.f31476B;
            }
            this.f31546z = typeface4;
            recalculate(true);
        }
    }

    /* renamed from: n */
    public final float m24216n(int i, int i2) {
        return (i2 == 17 || (i2 & 7) == 1) ? (i / 2.0f) - (this.f31524l0 / 2.0f) : ((i2 & 8388613) == 8388613 || (i2 & 5) == 5) ? this.f31483I ? this.f31515h.left : this.f31515h.right - this.f31524l0 : this.f31483I ? this.f31515h.right - this.f31524l0 : this.f31515h.left;
    }

    /* renamed from: o */
    public final float m24217o(@NonNull RectF rectF, int i, int i2) {
        if (i2 == 17 || (i2 & 7) == 1) {
            return (i / 2.0f) + (this.f31524l0 / 2.0f);
        }
        if ((i2 & 8388613) == 8388613 || (i2 & 5) == 5) {
            return this.f31483I ? rectF.left + this.f31524l0 : this.f31515h.right;
        }
        if (this.f31483I) {
            return this.f31515h.right;
        }
        return this.f31524l0 + rectF.left;
    }

    @ColorInt
    /* renamed from: p */
    public final int m24218p(@Nullable ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.f31494T;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    @ColorInt
    /* renamed from: q */
    public final int m24219q() {
        return m24218p(this.f31527n);
    }

    /* renamed from: r */
    public final Layout.Alignment m24220r() {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.f31519j, this.f31483I ? 1 : 0) & 7;
        return absoluteGravity != 1 ? absoluteGravity != 5 ? this.f31483I ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : this.f31483I ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_CENTER;
    }

    public void recalculate() {
        recalculate(false);
    }

    /* renamed from: s */
    public final void m24221s(@NonNull TextPaint textPaint) {
        textPaint.setTextSize(this.f31525m);
        textPaint.setTypeface(this.f31543w);
        textPaint.setLetterSpacing(this.f31516h0);
    }

    public void setCollapsedAndExpandedTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f31529o == colorStateList && this.f31527n == colorStateList) {
            return;
        }
        this.f31529o = colorStateList;
        this.f31527n = colorStateList;
        recalculate();
    }

    public void setCollapsedBounds(int i, int i2, int i3, int i4) {
        if (m24194A(this.f31515h, i, i2, i3, i4)) {
            return;
        }
        this.f31515h.set(i, i2, i3, i4);
        this.f31495U = true;
    }

    public void setCollapsedTextAppearance(int i) {
        TextAppearance textAppearance = new TextAppearance(this.f31501a.getContext(), i);
        if (textAppearance.getTextColor() != null) {
            this.f31529o = textAppearance.getTextColor();
        }
        if (textAppearance.getTextSize() != 0.0f) {
            this.f31525m = textAppearance.getTextSize();
        }
        ColorStateList colorStateList = textAppearance.shadowColor;
        if (colorStateList != null) {
            this.f31506c0 = colorStateList;
        }
        this.f31502a0 = textAppearance.shadowDx;
        this.f31504b0 = textAppearance.shadowDy;
        this.f31500Z = textAppearance.shadowRadius;
        this.f31516h0 = textAppearance.letterSpacing;
        CancelableFontCallback cancelableFontCallback = this.f31479E;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.cancel();
        }
        this.f31479E = new CancelableFontCallback(new C5290a(), textAppearance.getFallbackFont());
        textAppearance.getFontAsync(this.f31501a.getContext(), this.f31479E);
        recalculate();
    }

    public void setCollapsedTextColor(ColorStateList colorStateList) {
        if (this.f31529o != colorStateList) {
            this.f31529o = colorStateList;
            recalculate();
        }
    }

    public void setCollapsedTextGravity(int i) {
        if (this.f31521k != i) {
            this.f31521k = i;
            recalculate();
        }
    }

    public void setCollapsedTextSize(float f) {
        if (this.f31525m != f) {
            this.f31525m = f;
            recalculate();
        }
    }

    public void setCollapsedTypeface(Typeface typeface) {
        if (m24199C(typeface)) {
            recalculate();
        }
    }

    public void setCurrentOffsetY(int i) {
        this.f31511f = i;
    }

    public void setExpandedBounds(int i, int i2, int i3, int i4) {
        if (m24194A(this.f31513g, i, i2, i3, i4)) {
            return;
        }
        this.f31513g.set(i, i2, i3, i4);
        this.f31495U = true;
    }

    public void setExpandedLetterSpacing(float f) {
        if (this.f31518i0 != f) {
            this.f31518i0 = f;
            recalculate();
        }
    }

    public void setExpandedTextAppearance(int i) {
        TextAppearance textAppearance = new TextAppearance(this.f31501a.getContext(), i);
        if (textAppearance.getTextColor() != null) {
            this.f31527n = textAppearance.getTextColor();
        }
        if (textAppearance.getTextSize() != 0.0f) {
            this.f31523l = textAppearance.getTextSize();
        }
        ColorStateList colorStateList = textAppearance.shadowColor;
        if (colorStateList != null) {
            this.f31514g0 = colorStateList;
        }
        this.f31510e0 = textAppearance.shadowDx;
        this.f31512f0 = textAppearance.shadowDy;
        this.f31508d0 = textAppearance.shadowRadius;
        this.f31518i0 = textAppearance.letterSpacing;
        CancelableFontCallback cancelableFontCallback = this.f31478D;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.cancel();
        }
        this.f31478D = new CancelableFontCallback(new C5291b(), textAppearance.getFallbackFont());
        textAppearance.getFontAsync(this.f31501a.getContext(), this.f31478D);
        recalculate();
    }

    public void setExpandedTextColor(ColorStateList colorStateList) {
        if (this.f31527n != colorStateList) {
            this.f31527n = colorStateList;
            recalculate();
        }
    }

    public void setExpandedTextGravity(int i) {
        if (this.f31519j != i) {
            this.f31519j = i;
            recalculate();
        }
    }

    public void setExpandedTextSize(float f) {
        if (this.f31523l != f) {
            this.f31523l = f;
            recalculate();
        }
    }

    public void setExpandedTypeface(Typeface typeface) {
        if (m24201E(typeface)) {
            recalculate();
        }
    }

    public void setExpansionFraction(float f) {
        float clamp = MathUtils.clamp(f, 0.0f, 1.0f);
        if (clamp != this.f31503b) {
            this.f31503b = clamp;
            m24205c();
        }
    }

    public void setFadeModeEnabled(boolean z) {
        this.f31505c = z;
    }

    public void setFadeModeStartFraction(float f) {
        this.f31507d = f;
        this.f31509e = m24207e();
    }

    @RequiresApi(23)
    public void setHyphenationFrequency(int i) {
        this.f31538s0 = i;
    }

    @RequiresApi(23)
    public void setLineSpacingAdd(float f) {
        this.f31534q0 = f;
    }

    @RequiresApi(23)
    public void setLineSpacingMultiplier(@FloatRange(from = 0.0d) float f) {
        this.f31536r0 = f;
    }

    public void setMaxLines(int i) {
        if (i != this.f31532p0) {
            this.f31532p0 = i;
            m24212j();
            recalculate();
        }
    }

    public void setPositionInterpolator(TimeInterpolator timeInterpolator) {
        this.f31498X = timeInterpolator;
        recalculate();
    }

    public void setRtlTextDirectionHeuristicsEnabled(boolean z) {
        this.f31484J = z;
    }

    public final boolean setState(int[] iArr) {
        this.f31494T = iArr;
        if (!isStateful()) {
            return false;
        }
        recalculate();
        return true;
    }

    @RequiresApi(23)
    public void setStaticLayoutBuilderConfigurer(@Nullable StaticLayoutBuilderConfigurer staticLayoutBuilderConfigurer) {
        if (this.f31540t0 != staticLayoutBuilderConfigurer) {
            this.f31540t0 = staticLayoutBuilderConfigurer;
            recalculate(true);
        }
    }

    public void setText(@Nullable CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.f31481G, charSequence)) {
            this.f31481G = charSequence;
            this.f31482H = null;
            m24212j();
            recalculate();
        }
    }

    public void setTextSizeInterpolator(TimeInterpolator timeInterpolator) {
        this.f31499Y = timeInterpolator;
        recalculate();
    }

    public void setTitleTextEllipsize(@NonNull TextUtils.TruncateAt truncateAt) {
        this.f31480F = truncateAt;
        recalculate();
    }

    public void setTypefaces(Typeface typeface) {
        boolean m24199C = m24199C(typeface);
        boolean m24201E = m24201E(typeface);
        if (m24199C || m24201E) {
            recalculate();
        }
    }

    /* renamed from: t */
    public final void m24222t(@NonNull TextPaint textPaint) {
        textPaint.setTextSize(this.f31523l);
        textPaint.setTypeface(this.f31546z);
        textPaint.setLetterSpacing(this.f31518i0);
    }

    /* renamed from: u */
    public final void m24223u(float f) {
        if (this.f31505c) {
            this.f31517i.set(f < this.f31509e ? this.f31513g : this.f31515h);
            return;
        }
        this.f31517i.left = m24197y(this.f31513g.left, this.f31515h.left, f, this.f31498X);
        this.f31517i.top = m24197y(this.f31533q, this.f31535r, f, this.f31498X);
        this.f31517i.right = m24197y(this.f31513g.right, this.f31515h.right, f, this.f31498X);
        this.f31517i.bottom = m24197y(this.f31513g.bottom, this.f31515h.bottom, f, this.f31498X);
    }

    /* renamed from: w */
    public final boolean m24224w() {
        return ViewCompat.getLayoutDirection(this.f31501a) == 1;
    }

    /* renamed from: x */
    public final boolean m24225x(@NonNull CharSequence charSequence, boolean z) {
        return (z ? TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL : TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR).isRtl(charSequence, 0, charSequence.length());
    }

    /* renamed from: z */
    public final float m24226z(TextPaint textPaint, CharSequence charSequence) {
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    public void recalculate(boolean z) {
        if ((this.f31501a.getHeight() <= 0 || this.f31501a.getWidth() <= 0) && !z) {
            return;
        }
        m24204b(z);
        m24205c();
    }

    public void setCollapsedBounds(@NonNull Rect rect) {
        setCollapsedBounds(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void setExpandedBounds(@NonNull Rect rect) {
        setExpandedBounds(rect.left, rect.top, rect.right, rect.bottom);
    }
}
