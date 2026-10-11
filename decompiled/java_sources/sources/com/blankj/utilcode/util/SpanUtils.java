package com.blankj.utilcode.util;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.LeadingMarginSpan;
import android.text.style.LineHeightSpan;
import android.text.style.MaskFilterSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.ReplacementSpan;
import android.text.style.ScaleXSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.SubscriptSpan;
import android.text.style.SuperscriptSpan;
import android.text.style.TypefaceSpan;
import android.text.style.URLSpan;
import android.text.style.UnderlineSpan;
import android.text.style.UpdateAppearance;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import java.io.InputStream;
import java.io.Serializable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public final class SpanUtils {
    public static final int ALIGN_BASELINE = 1;
    public static final int ALIGN_BOTTOM = 0;
    public static final int ALIGN_CENTER = 2;
    public static final int ALIGN_TOP = 3;

    /* renamed from: a0 */
    public static final int f14020a0 = -16777217;

    /* renamed from: b0 */
    public static final String f14021b0 = System.getProperty("line.separator");

    /* renamed from: A */
    public Typeface f14022A;

    /* renamed from: B */
    public Layout.Alignment f14023B;

    /* renamed from: C */
    public int f14024C;

    /* renamed from: D */
    public ClickableSpan f14025D;

    /* renamed from: E */
    public String f14026E;

    /* renamed from: F */
    public float f14027F;

    /* renamed from: G */
    public BlurMaskFilter.Blur f14028G;

    /* renamed from: H */
    public Shader f14029H;

    /* renamed from: I */
    public float f14030I;

    /* renamed from: J */
    public float f14031J;

    /* renamed from: K */
    public float f14032K;

    /* renamed from: L */
    public int f14033L;

    /* renamed from: M */
    public Object[] f14034M;

    /* renamed from: N */
    public Bitmap f14035N;

    /* renamed from: O */
    public Drawable f14036O;

    /* renamed from: P */
    public Uri f14037P;

    /* renamed from: Q */
    public int f14038Q;

    /* renamed from: R */
    public int f14039R;

    /* renamed from: S */
    public int f14040S;

    /* renamed from: T */
    public int f14041T;

    /* renamed from: U */
    public SerializableSpannableStringBuilder f14042U;

    /* renamed from: V */
    public boolean f14043V;

    /* renamed from: W */
    public int f14044W;

    /* renamed from: X */
    public final int f14045X;

    /* renamed from: Y */
    public final int f14046Y;

    /* renamed from: Z */
    public final int f14047Z;

    /* renamed from: a */
    public TextView f14048a;

    /* renamed from: b */
    public CharSequence f14049b;

    /* renamed from: c */
    public int f14050c;

    /* renamed from: d */
    public int f14051d;

    /* renamed from: e */
    public int f14052e;

    /* renamed from: f */
    public int f14053f;

    /* renamed from: g */
    public int f14054g;

    /* renamed from: h */
    public int f14055h;

    /* renamed from: i */
    public int f14056i;

    /* renamed from: j */
    public int f14057j;

    /* renamed from: k */
    public int f14058k;

    /* renamed from: l */
    public int f14059l;

    /* renamed from: m */
    public int f14060m;

    /* renamed from: n */
    public int f14061n;

    /* renamed from: o */
    public int f14062o;

    /* renamed from: p */
    public int f14063p;

    /* renamed from: q */
    public float f14064q;

    /* renamed from: r */
    public float f14065r;

    /* renamed from: s */
    public boolean f14066s;

    /* renamed from: t */
    public boolean f14067t;

    /* renamed from: u */
    public boolean f14068u;

    /* renamed from: v */
    public boolean f14069v;

    /* renamed from: w */
    public boolean f14070w;

    /* renamed from: x */
    public boolean f14071x;

    /* renamed from: y */
    public boolean f14072y;

    /* renamed from: z */
    public String f14073z;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface Align {
    }

    @SuppressLint({"ParcelCreator"})
    /* loaded from: classes3.dex */
    public static class CustomTypefaceSpan extends TypefaceSpan {
        private final Typeface newType;

        public /* synthetic */ CustomTypefaceSpan(Typeface typeface, C1855a c1855a) {
            this(typeface);
        }

        private void apply(Paint paint, Typeface typeface) {
            Typeface typeface2 = paint.getTypeface();
            int style = (typeface2 == null ? 0 : typeface2.getStyle()) & (~typeface.getStyle());
            if ((style & 1) != 0) {
                paint.setFakeBoldText(true);
            }
            if ((style & 2) != 0) {
                paint.setTextSkewX(-0.25f);
            }
            paint.getShader();
            paint.setTypeface(typeface);
        }

        @Override // android.text.style.TypefaceSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            apply(textPaint, this.newType);
        }

        @Override // android.text.style.TypefaceSpan, android.text.style.MetricAffectingSpan
        public void updateMeasureState(TextPaint textPaint) {
            apply(textPaint, this.newType);
        }

        private CustomTypefaceSpan(Typeface typeface) {
            super("");
            this.newType = typeface;
        }
    }

    /* loaded from: classes3.dex */
    public static class SerializableSpannableStringBuilder extends SpannableStringBuilder implements Serializable {
        private static final long serialVersionUID = 4909567650765875771L;

        private SerializableSpannableStringBuilder() {
        }

        public /* synthetic */ SerializableSpannableStringBuilder(C1855a c1855a) {
            this();
        }
    }

    /* renamed from: com.blankj.utilcode.util.SpanUtils$a */
    /* loaded from: classes3.dex */
    public class C1855a extends ClickableSpan {

        /* renamed from: e */
        public final /* synthetic */ int f14074e;

        /* renamed from: f */
        public final /* synthetic */ boolean f14075f;

        /* renamed from: g */
        public final /* synthetic */ View.OnClickListener f14076g;

        public C1855a(int i, boolean z, View.OnClickListener onClickListener) {
            this.f14074e = i;
            this.f14075f = z;
            this.f14076g = onClickListener;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@NonNull View view) {
            View.OnClickListener onClickListener = this.f14076g;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(@NonNull TextPaint textPaint) {
            textPaint.setColor(this.f14074e);
            textPaint.setUnderlineText(this.f14075f);
        }
    }

    /* renamed from: com.blankj.utilcode.util.SpanUtils$b */
    /* loaded from: classes3.dex */
    public static class C1856b implements LeadingMarginSpan {

        /* renamed from: e */
        public final int f14078e;

        /* renamed from: f */
        public final int f14079f;

        /* renamed from: g */
        public final int f14080g;

        /* renamed from: h */
        public Path f14081h;

        public /* synthetic */ C1856b(int i, int i2, int i3, C1855a c1855a) {
            this(i, i2, i3);
        }

        @Override // android.text.style.LeadingMarginSpan
        public void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
            if (((Spanned) charSequence).getSpanStart(this) == i6) {
                Paint.Style style = paint.getStyle();
                int color = paint.getColor();
                paint.setColor(this.f14078e);
                paint.setStyle(Paint.Style.FILL);
                if (canvas.isHardwareAccelerated()) {
                    if (this.f14081h == null) {
                        Path path = new Path();
                        this.f14081h = path;
                        path.addCircle(0.0f, 0.0f, this.f14079f, Path.Direction.CW);
                    }
                    canvas.save();
                    canvas.translate(i + (i2 * this.f14079f), (i3 + i5) / 2.0f);
                    canvas.drawPath(this.f14081h, paint);
                    canvas.restore();
                } else {
                    canvas.drawCircle(i + (i2 * r1), (i3 + i5) / 2.0f, this.f14079f, paint);
                }
                paint.setColor(color);
                paint.setStyle(style);
            }
        }

        @Override // android.text.style.LeadingMarginSpan
        public int getLeadingMargin(boolean z) {
            return (this.f14079f * 2) + this.f14080g;
        }

        public C1856b(int i, int i2, int i3) {
            this.f14081h = null;
            this.f14078e = i;
            this.f14079f = i2;
            this.f14080g = i3;
        }
    }

    /* renamed from: com.blankj.utilcode.util.SpanUtils$c */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC1857c extends ReplacementSpan {

        /* renamed from: g */
        public static final int f14082g = 0;

        /* renamed from: h */
        public static final int f14083h = 1;

        /* renamed from: i */
        public static final int f14084i = 2;

        /* renamed from: j */
        public static final int f14085j = 3;

        /* renamed from: e */
        public final int f14086e;

        /* renamed from: f */
        public WeakReference<Drawable> f14087f;

        public /* synthetic */ AbstractC1857c(int i, C1855a c1855a) {
            this(i);
        }

        /* renamed from: a */
        public final Drawable m8330a() {
            WeakReference<Drawable> weakReference = this.f14087f;
            Drawable drawable = weakReference != null ? weakReference.get() : null;
            if (drawable != null) {
                return drawable;
            }
            Drawable mo8331b = mo8331b();
            this.f14087f = new WeakReference<>(mo8331b);
            return mo8331b;
        }

        /* renamed from: b */
        public abstract Drawable mo8331b();

        @Override // android.text.style.ReplacementSpan
        public void draw(@NonNull Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, @NonNull Paint paint) {
            int height;
            float height2;
            Drawable m8330a = m8330a();
            Rect bounds = m8330a.getBounds();
            canvas.save();
            if (bounds.height() < i5 - i3) {
                int i6 = this.f14086e;
                if (i6 == 3) {
                    height2 = i3;
                } else {
                    if (i6 == 2) {
                        height = ((i5 + i3) - bounds.height()) / 2;
                    } else if (i6 == 1) {
                        height2 = i4 - bounds.height();
                    } else {
                        height = i5 - bounds.height();
                    }
                    height2 = height;
                }
                canvas.translate(f, height2);
            } else {
                canvas.translate(f, i3);
            }
            m8330a.draw(canvas);
            canvas.restore();
        }

        @Override // android.text.style.ReplacementSpan
        public int getSize(@NonNull Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
            int i3;
            Rect bounds = m8330a().getBounds();
            if (fontMetricsInt != null && (i3 = fontMetricsInt.bottom - fontMetricsInt.top) < bounds.height()) {
                int i4 = this.f14086e;
                if (i4 == 3) {
                    fontMetricsInt.top = fontMetricsInt.top;
                    fontMetricsInt.bottom = bounds.height() + fontMetricsInt.top;
                } else if (i4 == 2) {
                    int i5 = i3 / 4;
                    fontMetricsInt.top = ((-bounds.height()) / 2) - i5;
                    fontMetricsInt.bottom = (bounds.height() / 2) - i5;
                } else {
                    int i6 = -bounds.height();
                    int i7 = fontMetricsInt.bottom;
                    fontMetricsInt.top = i6 + i7;
                    fontMetricsInt.bottom = i7;
                }
                fontMetricsInt.ascent = fontMetricsInt.top;
                fontMetricsInt.descent = fontMetricsInt.bottom;
            }
            return bounds.right;
        }

        public AbstractC1857c() {
            this.f14086e = 0;
        }

        public AbstractC1857c(int i) {
            this.f14086e = i;
        }
    }

    /* renamed from: com.blankj.utilcode.util.SpanUtils$d */
    /* loaded from: classes3.dex */
    public static class C1858d extends AbstractC1857c {

        /* renamed from: k */
        public Drawable f14088k;

        /* renamed from: l */
        public Uri f14089l;

        /* renamed from: m */
        public int f14090m;

        public /* synthetic */ C1858d(int i, int i2, C1855a c1855a) {
            this(i, i2);
        }

        @Override // com.blankj.utilcode.util.SpanUtils.AbstractC1857c
        /* renamed from: b */
        public Drawable mo8331b() {
            Drawable drawable;
            Drawable drawable2 = this.f14088k;
            if (drawable2 != null) {
                return drawable2;
            }
            BitmapDrawable bitmapDrawable = null;
            if (this.f14089l != null) {
                try {
                    InputStream openInputStream = Utils.getApp().getContentResolver().openInputStream(this.f14089l);
                    BitmapDrawable bitmapDrawable2 = new BitmapDrawable(Utils.getApp().getResources(), BitmapFactory.decodeStream(openInputStream));
                    try {
                        bitmapDrawable2.setBounds(0, 0, bitmapDrawable2.getIntrinsicWidth(), bitmapDrawable2.getIntrinsicHeight());
                        if (openInputStream != null) {
                            openInputStream.close();
                        }
                        return bitmapDrawable2;
                    } catch (Exception e) {
                        e = e;
                        bitmapDrawable = bitmapDrawable2;
                        Log.e("sms", "Failed to loaded content " + this.f14089l, e);
                        return bitmapDrawable;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } else {
                try {
                    drawable = ContextCompat.getDrawable(Utils.getApp(), this.f14090m);
                    try {
                        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
                        return drawable;
                    } catch (Exception unused) {
                        Log.e("sms", "Unable to find resource: " + this.f14090m);
                        return drawable;
                    }
                } catch (Exception unused2) {
                    drawable = null;
                }
            }
        }

        public /* synthetic */ C1858d(Bitmap bitmap, int i, C1855a c1855a) {
            this(bitmap, i);
        }

        public /* synthetic */ C1858d(Drawable drawable, int i, C1855a c1855a) {
            this(drawable, i);
        }

        public /* synthetic */ C1858d(Uri uri, int i, C1855a c1855a) {
            this(uri, i);
        }

        public C1858d(Bitmap bitmap, int i) {
            super(i, null);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(Utils.getApp().getResources(), bitmap);
            this.f14088k = bitmapDrawable;
            bitmapDrawable.setBounds(0, 0, bitmapDrawable.getIntrinsicWidth(), this.f14088k.getIntrinsicHeight());
        }

        public C1858d(Drawable drawable, int i) {
            super(i, null);
            this.f14088k = drawable;
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), this.f14088k.getIntrinsicHeight());
        }

        public C1858d(Uri uri, int i) {
            super(i, null);
            this.f14089l = uri;
        }

        public C1858d(@DrawableRes int i, int i2) {
            super(i2, null);
            this.f14090m = i;
        }
    }

    /* renamed from: com.blankj.utilcode.util.SpanUtils$e */
    /* loaded from: classes3.dex */
    public static class C1859e implements LineHeightSpan {

        /* renamed from: g */
        public static final int f14091g = 2;

        /* renamed from: h */
        public static final int f14092h = 3;

        /* renamed from: i */
        public static Paint.FontMetricsInt f14093i;

        /* renamed from: e */
        public final int f14094e;

        /* renamed from: f */
        public final int f14095f;

        public C1859e(int i, int i2) {
            this.f14094e = i;
            this.f14095f = i2;
        }

        @Override // android.text.style.LineHeightSpan
        public void chooseHeight(CharSequence charSequence, int i, int i2, int i3, int i4, Paint.FontMetricsInt fontMetricsInt) {
            Paint.FontMetricsInt fontMetricsInt2 = f14093i;
            if (fontMetricsInt2 == null) {
                Paint.FontMetricsInt fontMetricsInt3 = new Paint.FontMetricsInt();
                f14093i = fontMetricsInt3;
                fontMetricsInt3.top = fontMetricsInt.top;
                fontMetricsInt3.ascent = fontMetricsInt.ascent;
                fontMetricsInt3.descent = fontMetricsInt.descent;
                fontMetricsInt3.bottom = fontMetricsInt.bottom;
                fontMetricsInt3.leading = fontMetricsInt.leading;
            } else {
                fontMetricsInt.top = fontMetricsInt2.top;
                fontMetricsInt.ascent = fontMetricsInt2.ascent;
                fontMetricsInt.descent = fontMetricsInt2.descent;
                fontMetricsInt.bottom = fontMetricsInt2.bottom;
                fontMetricsInt.leading = fontMetricsInt2.leading;
            }
            int i5 = this.f14094e;
            int i6 = fontMetricsInt.descent;
            int i7 = fontMetricsInt.ascent;
            int i8 = i5 - (((i4 + i6) - i7) - i3);
            if (i8 > 0) {
                int i9 = this.f14095f;
                if (i9 == 3) {
                    fontMetricsInt.descent = i6 + i8;
                } else if (i9 == 2) {
                    int i10 = i8 / 2;
                    fontMetricsInt.descent = i6 + i10;
                    fontMetricsInt.ascent = i7 - i10;
                } else {
                    fontMetricsInt.ascent = i7 - i8;
                }
            }
            int i11 = fontMetricsInt.bottom;
            int i12 = fontMetricsInt.top;
            int i13 = i5 - (((i4 + i11) - i12) - i3);
            if (i13 > 0) {
                int i14 = this.f14095f;
                if (i14 == 3) {
                    fontMetricsInt.bottom = i11 + i13;
                } else if (i14 == 2) {
                    int i15 = i13 / 2;
                    fontMetricsInt.bottom = i11 + i15;
                    fontMetricsInt.top = i12 - i15;
                } else {
                    fontMetricsInt.top = i12 - i13;
                }
            }
            if (i2 == ((Spanned) charSequence).getSpanEnd(this)) {
                f14093i = null;
            }
        }
    }

    /* renamed from: com.blankj.utilcode.util.SpanUtils$f */
    /* loaded from: classes3.dex */
    public static class C1860f implements LeadingMarginSpan {

        /* renamed from: e */
        public final int f14096e;

        /* renamed from: f */
        public final int f14097f;

        /* renamed from: g */
        public final int f14098g;

        public /* synthetic */ C1860f(int i, int i2, int i3, C1855a c1855a) {
            this(i, i2, i3);
        }

        @Override // android.text.style.LeadingMarginSpan
        public void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
            Paint.Style style = paint.getStyle();
            int color = paint.getColor();
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(this.f14096e);
            canvas.drawRect(i, i3, (this.f14097f * i2) + i, i5, paint);
            paint.setStyle(style);
            paint.setColor(color);
        }

        @Override // android.text.style.LeadingMarginSpan
        public int getLeadingMargin(boolean z) {
            return this.f14097f + this.f14098g;
        }

        public C1860f(int i, int i2, int i3) {
            this.f14096e = i;
            this.f14097f = i2;
            this.f14098g = i3;
        }
    }

    /* renamed from: com.blankj.utilcode.util.SpanUtils$g */
    /* loaded from: classes3.dex */
    public static class C1861g extends CharacterStyle implements UpdateAppearance {

        /* renamed from: e */
        public Shader f14099e;

        public /* synthetic */ C1861g(Shader shader, C1855a c1855a) {
            this(shader);
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setShader(this.f14099e);
        }

        public C1861g(Shader shader) {
            this.f14099e = shader;
        }
    }

    /* renamed from: com.blankj.utilcode.util.SpanUtils$h */
    /* loaded from: classes3.dex */
    public static class C1862h extends CharacterStyle implements UpdateAppearance {

        /* renamed from: e */
        public float f14100e;

        /* renamed from: f */
        public float f14101f;

        /* renamed from: g */
        public float f14102g;

        /* renamed from: h */
        public int f14103h;

        public /* synthetic */ C1862h(float f, float f2, float f3, int i, C1855a c1855a) {
            this(f, f2, f3, i);
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setShadowLayer(this.f14100e, this.f14101f, this.f14102g, this.f14103h);
        }

        public C1862h(float f, float f2, float f3, int i) {
            this.f14100e = f;
            this.f14101f = f2;
            this.f14102g = f3;
            this.f14103h = i;
        }
    }

    /* renamed from: com.blankj.utilcode.util.SpanUtils$i */
    /* loaded from: classes3.dex */
    public static class C1863i extends ReplacementSpan {

        /* renamed from: e */
        public final int f14104e;

        /* renamed from: f */
        public final Paint f14105f;

        public /* synthetic */ C1863i(int i, int i2, C1855a c1855a) {
            this(i, i2);
        }

        @Override // android.text.style.ReplacementSpan
        public void draw(@NonNull Canvas canvas, CharSequence charSequence, @IntRange(from = 0) int i, @IntRange(from = 0) int i2, float f, int i3, int i4, int i5, @NonNull Paint paint) {
            canvas.drawRect(f, i3, f + this.f14104e, i5, this.f14105f);
        }

        @Override // android.text.style.ReplacementSpan
        public int getSize(@NonNull Paint paint, CharSequence charSequence, @IntRange(from = 0) int i, @IntRange(from = 0) int i2, @Nullable Paint.FontMetricsInt fontMetricsInt) {
            return this.f14104e;
        }

        public C1863i(int i) {
            this(i, 0);
        }

        public C1863i(int i, int i2) {
            Paint paint = new Paint();
            this.f14105f = paint;
            this.f14104e = i;
            paint.setColor(i2);
            paint.setStyle(Paint.Style.FILL);
        }
    }

    /* renamed from: com.blankj.utilcode.util.SpanUtils$j */
    /* loaded from: classes3.dex */
    public static class C1864j extends ReplacementSpan {

        /* renamed from: f */
        public static final int f14106f = 2;

        /* renamed from: g */
        public static final int f14107g = 3;

        /* renamed from: e */
        public final int f14108e;

        public C1864j(int i) {
            this.f14108e = i;
        }

        @Override // android.text.style.ReplacementSpan
        public void draw(@NonNull Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, @NonNull Paint paint) {
            CharSequence subSequence = charSequence.subSequence(i, i2);
            Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
            canvas.drawText(subSequence.toString(), f, i4 - (((((fontMetricsInt.descent + i4) + i4) + fontMetricsInt.ascent) / 2) - ((i5 + i3) / 2)), paint);
        }

        @Override // android.text.style.ReplacementSpan
        public int getSize(@NonNull Paint paint, CharSequence charSequence, int i, int i2, @Nullable Paint.FontMetricsInt fontMetricsInt) {
            return (int) paint.measureText(charSequence.subSequence(i, i2).toString());
        }
    }

    public SpanUtils(TextView textView) {
        this();
        this.f14048a = textView;
    }

    public static SpanUtils with(TextView textView) {
        return new SpanUtils(textView);
    }

    /* renamed from: a */
    public final void m8323a(int i) {
        m8324b();
        this.f14044W = i;
    }

    public SpanUtils append(@NonNull CharSequence charSequence) {
        m8323a(0);
        this.f14049b = charSequence;
        return this;
    }

    public SpanUtils appendImage(@NonNull Bitmap bitmap) {
        return appendImage(bitmap, 0);
    }

    public SpanUtils appendLine() {
        m8323a(0);
        this.f14049b = f14021b0;
        return this;
    }

    public SpanUtils appendSpace(@IntRange(from = 0) int i) {
        return appendSpace(i, 0);
    }

    /* renamed from: b */
    public final void m8324b() {
        if (this.f14043V) {
            return;
        }
        int i = this.f14044W;
        if (i == 0) {
            m8327e();
        } else if (i == 1) {
            m8328f();
        } else if (i == 2) {
            m8329g();
        }
        m8325c();
    }

    /* renamed from: c */
    public final void m8325c() {
        this.f14050c = 33;
        this.f14051d = -16777217;
        this.f14052e = -16777217;
        this.f14053f = -1;
        this.f14055h = -16777217;
        this.f14058k = -1;
        this.f14060m = -16777217;
        this.f14063p = -1;
        this.f14064q = -1.0f;
        this.f14065r = -1.0f;
        this.f14066s = false;
        this.f14067t = false;
        this.f14068u = false;
        this.f14069v = false;
        this.f14070w = false;
        this.f14071x = false;
        this.f14072y = false;
        this.f14073z = null;
        this.f14022A = null;
        this.f14023B = null;
        this.f14024C = -1;
        this.f14025D = null;
        this.f14026E = null;
        this.f14027F = -1.0f;
        this.f14029H = null;
        this.f14030I = -1.0f;
        this.f14034M = null;
        this.f14035N = null;
        this.f14036O = null;
        this.f14037P = null;
        this.f14038Q = -1;
        this.f14040S = -1;
    }

    public SpannableStringBuilder create() {
        m8324b();
        TextView textView = this.f14048a;
        if (textView != null) {
            textView.setText(this.f14042U);
        }
        this.f14043V = true;
        return this.f14042U;
    }

    /* renamed from: d */
    public final void m8326d() {
        TextView textView = this.f14048a;
        if (textView == null || textView.getMovementMethod() != null) {
            return;
        }
        this.f14048a.setMovementMethod(LinkMovementMethod.getInstance());
    }

    /* renamed from: e */
    public final void m8327e() {
        if (this.f14049b.length() == 0) {
            return;
        }
        int length = this.f14042U.length();
        if (length == 0 && this.f14053f != -1) {
            this.f14042U.append((CharSequence) Character.toString((char) 2)).append((CharSequence) "\n").setSpan(new AbsoluteSizeSpan(0), 0, 2, 33);
            length = 2;
        }
        this.f14042U.append(this.f14049b);
        int length2 = this.f14042U.length();
        if (this.f14024C != -1) {
            this.f14042U.setSpan(new C1864j(this.f14024C), length, length2, this.f14050c);
        }
        if (this.f14051d != -16777217) {
            this.f14042U.setSpan(new ForegroundColorSpan(this.f14051d), length, length2, this.f14050c);
        }
        if (this.f14052e != -16777217) {
            this.f14042U.setSpan(new BackgroundColorSpan(this.f14052e), length, length2, this.f14050c);
        }
        if (this.f14058k != -1) {
            this.f14042U.setSpan(new LeadingMarginSpan.Standard(this.f14058k, this.f14059l), length, length2, this.f14050c);
        }
        int i = this.f14055h;
        C1855a c1855a = null;
        if (i != -16777217) {
            this.f14042U.setSpan(new C1860f(i, this.f14056i, this.f14057j, c1855a), length, length2, this.f14050c);
        }
        int i2 = this.f14060m;
        if (i2 != -16777217) {
            this.f14042U.setSpan(new C1856b(i2, this.f14061n, this.f14062o, c1855a), length, length2, this.f14050c);
        }
        if (this.f14063p != -1) {
            this.f14042U.setSpan(new AbsoluteSizeSpan(this.f14063p, false), length, length2, this.f14050c);
        }
        if (this.f14064q != -1.0f) {
            this.f14042U.setSpan(new RelativeSizeSpan(this.f14064q), length, length2, this.f14050c);
        }
        if (this.f14065r != -1.0f) {
            this.f14042U.setSpan(new ScaleXSpan(this.f14065r), length, length2, this.f14050c);
        }
        int i3 = this.f14053f;
        if (i3 != -1) {
            this.f14042U.setSpan(new C1859e(i3, this.f14054g), length, length2, this.f14050c);
        }
        if (this.f14066s) {
            this.f14042U.setSpan(new StrikethroughSpan(), length, length2, this.f14050c);
        }
        if (this.f14067t) {
            this.f14042U.setSpan(new UnderlineSpan(), length, length2, this.f14050c);
        }
        if (this.f14068u) {
            this.f14042U.setSpan(new SuperscriptSpan(), length, length2, this.f14050c);
        }
        if (this.f14069v) {
            this.f14042U.setSpan(new SubscriptSpan(), length, length2, this.f14050c);
        }
        if (this.f14070w) {
            this.f14042U.setSpan(new StyleSpan(1), length, length2, this.f14050c);
        }
        if (this.f14071x) {
            this.f14042U.setSpan(new StyleSpan(2), length, length2, this.f14050c);
        }
        if (this.f14072y) {
            this.f14042U.setSpan(new StyleSpan(3), length, length2, this.f14050c);
        }
        if (this.f14073z != null) {
            this.f14042U.setSpan(new TypefaceSpan(this.f14073z), length, length2, this.f14050c);
        }
        if (this.f14022A != null) {
            this.f14042U.setSpan(new CustomTypefaceSpan(this.f14022A, c1855a), length, length2, this.f14050c);
        }
        if (this.f14023B != null) {
            this.f14042U.setSpan(new AlignmentSpan.Standard(this.f14023B), length, length2, this.f14050c);
        }
        ClickableSpan clickableSpan = this.f14025D;
        if (clickableSpan != null) {
            this.f14042U.setSpan(clickableSpan, length, length2, this.f14050c);
        }
        if (this.f14026E != null) {
            this.f14042U.setSpan(new URLSpan(this.f14026E), length, length2, this.f14050c);
        }
        if (this.f14027F != -1.0f) {
            this.f14042U.setSpan(new MaskFilterSpan(new BlurMaskFilter(this.f14027F, this.f14028G)), length, length2, this.f14050c);
        }
        if (this.f14029H != null) {
            this.f14042U.setSpan(new C1861g(this.f14029H, c1855a), length, length2, this.f14050c);
        }
        if (this.f14030I != -1.0f) {
            this.f14042U.setSpan(new C1862h(this.f14030I, this.f14031J, this.f14032K, this.f14033L, null), length, length2, this.f14050c);
        }
        Object[] objArr = this.f14034M;
        if (objArr != null) {
            for (Object obj : objArr) {
                this.f14042U.setSpan(obj, length, length2, this.f14050c);
            }
        }
    }

    /* renamed from: f */
    public final void m8328f() {
        int length = this.f14042U.length();
        this.f14049b = "<img>";
        m8327e();
        int length2 = this.f14042U.length();
        C1855a c1855a = null;
        if (this.f14035N != null) {
            this.f14042U.setSpan(new C1858d(this.f14035N, this.f14039R, c1855a), length, length2, this.f14050c);
            return;
        }
        if (this.f14036O != null) {
            this.f14042U.setSpan(new C1858d(this.f14036O, this.f14039R, c1855a), length, length2, this.f14050c);
        } else if (this.f14037P != null) {
            this.f14042U.setSpan(new C1858d(this.f14037P, this.f14039R, c1855a), length, length2, this.f14050c);
        } else if (this.f14038Q != -1) {
            this.f14042U.setSpan(new C1858d(this.f14038Q, this.f14039R, c1855a), length, length2, this.f14050c);
        }
    }

    /* renamed from: g */
    public final void m8329g() {
        int length = this.f14042U.length();
        this.f14049b = "< >";
        m8327e();
        this.f14042U.setSpan(new C1863i(this.f14040S, this.f14041T, null), length, this.f14042U.length(), this.f14050c);
    }

    public SpannableStringBuilder get() {
        return this.f14042U;
    }

    public SpanUtils setBackgroundColor(@ColorInt int i) {
        this.f14052e = i;
        return this;
    }

    public SpanUtils setBlur(@FloatRange(from = 0.0d, fromInclusive = false) float f, BlurMaskFilter.Blur blur) {
        this.f14027F = f;
        this.f14028G = blur;
        return this;
    }

    public SpanUtils setBold() {
        this.f14070w = true;
        return this;
    }

    public SpanUtils setBoldItalic() {
        this.f14072y = true;
        return this;
    }

    public SpanUtils setBullet(@IntRange(from = 0) int i) {
        return setBullet(0, 3, i);
    }

    public SpanUtils setClickSpan(@NonNull ClickableSpan clickableSpan) {
        m8326d();
        this.f14025D = clickableSpan;
        return this;
    }

    public SpanUtils setFlag(int i) {
        this.f14050c = i;
        return this;
    }

    public SpanUtils setFontFamily(@NonNull String str) {
        this.f14073z = str;
        return this;
    }

    public SpanUtils setFontProportion(float f) {
        this.f14064q = f;
        return this;
    }

    public SpanUtils setFontSize(@IntRange(from = 0) int i) {
        return setFontSize(i, false);
    }

    public SpanUtils setFontXProportion(float f) {
        this.f14065r = f;
        return this;
    }

    public SpanUtils setForegroundColor(@ColorInt int i) {
        this.f14051d = i;
        return this;
    }

    public SpanUtils setHorizontalAlign(@NonNull Layout.Alignment alignment) {
        this.f14023B = alignment;
        return this;
    }

    public SpanUtils setItalic() {
        this.f14071x = true;
        return this;
    }

    public SpanUtils setLeadingMargin(@IntRange(from = 0) int i, @IntRange(from = 0) int i2) {
        this.f14058k = i;
        this.f14059l = i2;
        return this;
    }

    public SpanUtils setLineHeight(@IntRange(from = 0) int i) {
        return setLineHeight(i, 2);
    }

    public SpanUtils setQuoteColor(@ColorInt int i) {
        return setQuoteColor(i, 2, 2);
    }

    public SpanUtils setShader(@NonNull Shader shader) {
        this.f14029H = shader;
        return this;
    }

    public SpanUtils setShadow(@FloatRange(from = 0.0d, fromInclusive = false) float f, float f2, float f3, int i) {
        this.f14030I = f;
        this.f14031J = f2;
        this.f14032K = f3;
        this.f14033L = i;
        return this;
    }

    public SpanUtils setSpans(@NonNull Object... objArr) {
        if (objArr.length > 0) {
            this.f14034M = objArr;
        }
        return this;
    }

    public SpanUtils setStrikethrough() {
        this.f14066s = true;
        return this;
    }

    public SpanUtils setSubscript() {
        this.f14069v = true;
        return this;
    }

    public SpanUtils setSuperscript() {
        this.f14068u = true;
        return this;
    }

    public SpanUtils setTypeface(@NonNull Typeface typeface) {
        this.f14022A = typeface;
        return this;
    }

    public SpanUtils setUnderline() {
        this.f14067t = true;
        return this;
    }

    public SpanUtils setUrl(@NonNull String str) {
        m8326d();
        this.f14026E = str;
        return this;
    }

    public SpanUtils setVerticalAlign(int i) {
        this.f14024C = i;
        return this;
    }

    public SpanUtils appendImage(@NonNull Bitmap bitmap, int i) {
        m8323a(1);
        this.f14035N = bitmap;
        this.f14039R = i;
        return this;
    }

    public SpanUtils appendSpace(@IntRange(from = 0) int i, @ColorInt int i2) {
        m8323a(2);
        this.f14040S = i;
        this.f14041T = i2;
        return this;
    }

    public SpanUtils setBullet(@ColorInt int i, @IntRange(from = 0) int i2, @IntRange(from = 0) int i3) {
        this.f14060m = i;
        this.f14061n = i2;
        this.f14062o = i3;
        return this;
    }

    public SpanUtils setFontSize(@IntRange(from = 0) int i, boolean z) {
        if (z) {
            this.f14063p = (int) ((i * Resources.getSystem().getDisplayMetrics().scaledDensity) + 0.5f);
        } else {
            this.f14063p = i;
        }
        return this;
    }

    public SpanUtils setLineHeight(@IntRange(from = 0) int i, int i2) {
        this.f14053f = i;
        this.f14054g = i2;
        return this;
    }

    public SpanUtils setQuoteColor(@ColorInt int i, @IntRange(from = 1) int i2, @IntRange(from = 0) int i3) {
        this.f14055h = i;
        this.f14056i = i2;
        this.f14057j = i3;
        return this;
    }

    public SpanUtils() {
        this.f14045X = 0;
        this.f14046Y = 1;
        this.f14047Z = 2;
        this.f14042U = new SerializableSpannableStringBuilder(null);
        this.f14049b = "";
        this.f14044W = -1;
        m8325c();
    }

    public SpanUtils appendLine(@NonNull CharSequence charSequence) {
        m8323a(0);
        this.f14049b = ((Object) charSequence) + f14021b0;
        return this;
    }

    public SpanUtils setClickSpan(@ColorInt int i, boolean z, View.OnClickListener onClickListener) {
        m8326d();
        this.f14025D = new C1855a(i, z, onClickListener);
        return this;
    }

    public SpanUtils appendImage(@NonNull Drawable drawable) {
        return appendImage(drawable, 0);
    }

    public SpanUtils appendImage(@NonNull Drawable drawable, int i) {
        m8323a(1);
        this.f14036O = drawable;
        this.f14039R = i;
        return this;
    }

    public SpanUtils appendImage(@NonNull Uri uri) {
        return appendImage(uri, 0);
    }

    public SpanUtils appendImage(@NonNull Uri uri, int i) {
        m8323a(1);
        this.f14037P = uri;
        this.f14039R = i;
        return this;
    }

    public SpanUtils appendImage(@DrawableRes int i) {
        return appendImage(i, 0);
    }

    public SpanUtils appendImage(@DrawableRes int i, int i2) {
        m8323a(1);
        this.f14038Q = i;
        this.f14039R = i2;
        return this;
    }
}
