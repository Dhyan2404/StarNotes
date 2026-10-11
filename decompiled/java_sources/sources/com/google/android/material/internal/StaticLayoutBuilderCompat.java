package com.google.android.material.internal;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.lang.reflect.Constructor;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class StaticLayoutBuilderCompat {

    /* renamed from: o */
    public static final int f31665o = 1;

    /* renamed from: p */
    public static final float f31666p = 0.0f;

    /* renamed from: q */
    public static final float f31667q = 1.0f;

    /* renamed from: r */
    public static final String f31668r = "android.text.TextDirectionHeuristic";

    /* renamed from: s */
    public static final String f31669s = "android.text.TextDirectionHeuristics";

    /* renamed from: t */
    public static final String f31670t = "LTR";

    /* renamed from: u */
    public static final String f31671u = "RTL";

    /* renamed from: v */
    public static boolean f31672v;

    /* renamed from: w */
    @Nullable
    public static Constructor<StaticLayout> f31673w;

    /* renamed from: x */
    @Nullable
    public static Object f31674x;

    /* renamed from: a */
    public CharSequence f31675a;

    /* renamed from: b */
    public final TextPaint f31676b;

    /* renamed from: c */
    public final int f31677c;

    /* renamed from: e */
    public int f31679e;

    /* renamed from: l */
    public boolean f31686l;

    /* renamed from: n */
    @Nullable
    public StaticLayoutBuilderConfigurer f31688n;

    /* renamed from: d */
    public int f31678d = 0;

    /* renamed from: f */
    public Layout.Alignment f31680f = Layout.Alignment.ALIGN_NORMAL;

    /* renamed from: g */
    public int f31681g = Integer.MAX_VALUE;

    /* renamed from: h */
    public float f31682h = 0.0f;

    /* renamed from: i */
    public float f31683i = 1.0f;

    /* renamed from: j */
    public int f31684j = f31665o;

    /* renamed from: k */
    public boolean f31685k = true;

    /* renamed from: m */
    @Nullable
    public TextUtils.TruncateAt f31687m = null;

    /* loaded from: classes6.dex */
    public static class StaticLayoutBuilderCompatException extends Exception {
        public StaticLayoutBuilderCompatException(Throwable th) {
            super("Error thrown initializing StaticLayout " + th.getMessage(), th);
        }
    }

    public StaticLayoutBuilderCompat(CharSequence charSequence, TextPaint textPaint, int i) {
        this.f31675a = charSequence;
        this.f31676b = textPaint;
        this.f31677c = i;
        this.f31679e = charSequence.length();
    }

    @NonNull
    /* renamed from: c */
    public static StaticLayoutBuilderCompat m24285c(@NonNull CharSequence charSequence, @NonNull TextPaint textPaint, @IntRange(from = 0) int i) {
        return new StaticLayoutBuilderCompat(charSequence, textPaint, i);
    }

    /* renamed from: a */
    public StaticLayout m24286a() throws StaticLayoutBuilderCompatException {
        if (this.f31675a == null) {
            this.f31675a = "";
        }
        int max = Math.max(0, this.f31677c);
        CharSequence charSequence = this.f31675a;
        if (this.f31681g == 1) {
            charSequence = TextUtils.ellipsize(charSequence, this.f31676b, max, this.f31687m);
        }
        int min = Math.min(charSequence.length(), this.f31679e);
        this.f31679e = min;
        if (this.f31686l && this.f31681g == 1) {
            this.f31680f = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, this.f31678d, min, this.f31676b, max);
        obtain.setAlignment(this.f31680f);
        obtain.setIncludePad(this.f31685k);
        obtain.setTextDirection(this.f31686l ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.f31687m;
        if (truncateAt != null) {
            obtain.setEllipsize(truncateAt);
        }
        obtain.setMaxLines(this.f31681g);
        float f = this.f31682h;
        if (f != 0.0f || this.f31683i != 1.0f) {
            obtain.setLineSpacing(f, this.f31683i);
        }
        if (this.f31681g > 1) {
            obtain.setHyphenationFrequency(this.f31684j);
        }
        StaticLayoutBuilderConfigurer staticLayoutBuilderConfigurer = this.f31688n;
        if (staticLayoutBuilderConfigurer != null) {
            staticLayoutBuilderConfigurer.configure(obtain);
        }
        return obtain.build();
    }

    /* renamed from: b */
    public final void m24287b() throws StaticLayoutBuilderCompatException {
        if (f31672v) {
            return;
        }
        try {
            f31674x = this.f31686l ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
            Class cls = Integer.TYPE;
            Class cls2 = Float.TYPE;
            Constructor<StaticLayout> declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, cls, cls, TextPaint.class, cls, Layout.Alignment.class, TextDirectionHeuristic.class, cls2, cls2, Boolean.TYPE, TextUtils.TruncateAt.class, cls, cls);
            f31673w = declaredConstructor;
            declaredConstructor.setAccessible(true);
            f31672v = true;
        } catch (Exception e) {
            throw new StaticLayoutBuilderCompatException(e);
        }
    }

    @NonNull
    @CanIgnoreReturnValue
    /* renamed from: d */
    public StaticLayoutBuilderCompat m24288d(@NonNull Layout.Alignment alignment) {
        this.f31680f = alignment;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    /* renamed from: e */
    public StaticLayoutBuilderCompat m24289e(@Nullable TextUtils.TruncateAt truncateAt) {
        this.f31687m = truncateAt;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    /* renamed from: f */
    public StaticLayoutBuilderCompat m24290f(@IntRange(from = 0) int i) {
        this.f31679e = i;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    /* renamed from: g */
    public StaticLayoutBuilderCompat m24291g(int i) {
        this.f31684j = i;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    /* renamed from: h */
    public StaticLayoutBuilderCompat m24292h(boolean z) {
        this.f31685k = z;
        return this;
    }

    /* renamed from: i */
    public StaticLayoutBuilderCompat m24293i(boolean z) {
        this.f31686l = z;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    /* renamed from: j */
    public StaticLayoutBuilderCompat m24294j(float f, float f2) {
        this.f31682h = f;
        this.f31683i = f2;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    /* renamed from: k */
    public StaticLayoutBuilderCompat m24295k(@IntRange(from = 0) int i) {
        this.f31681g = i;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    /* renamed from: l */
    public StaticLayoutBuilderCompat m24296l(@IntRange(from = 0) int i) {
        this.f31678d = i;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    /* renamed from: m */
    public StaticLayoutBuilderCompat m24297m(@Nullable StaticLayoutBuilderConfigurer staticLayoutBuilderConfigurer) {
        this.f31688n = staticLayoutBuilderConfigurer;
        return this;
    }
}
