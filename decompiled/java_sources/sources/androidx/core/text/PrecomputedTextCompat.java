package androidx.core.text;

import android.annotation.SuppressLint;
import android.os.Trace;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import androidx.annotation.DoNotInline;
import androidx.annotation.GuardedBy;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

/* loaded from: classes3.dex */
public class PrecomputedTextCompat implements Spannable {

    /* renamed from: i */
    public static final char f5667i = '\n';

    /* renamed from: j */
    public static final Object f5668j = new Object();

    /* renamed from: k */
    @NonNull
    @GuardedBy("sLock")
    public static Executor f5669k;

    /* renamed from: e */
    @NonNull
    public final Spannable f5670e;

    /* renamed from: f */
    @NonNull
    public final Params f5671f;

    /* renamed from: g */
    @NonNull
    public final int[] f5672g;

    /* renamed from: h */
    @Nullable
    public final PrecomputedText f5673h;

    @RequiresApi(28)
    /* renamed from: androidx.core.text.PrecomputedTextCompat$a */
    /* loaded from: classes3.dex */
    public static class C0739a {
        @DoNotInline
        /* renamed from: a */
        public static Spannable m3225a(PrecomputedText precomputedText) {
            return precomputedText;
        }
    }

    /* renamed from: androidx.core.text.PrecomputedTextCompat$b */
    /* loaded from: classes3.dex */
    public static class C0740b extends FutureTask<PrecomputedTextCompat> {

        /* renamed from: androidx.core.text.PrecomputedTextCompat$b$a */
        /* loaded from: classes3.dex */
        public static class a implements Callable<PrecomputedTextCompat> {

            /* renamed from: e */
            public Params f5683e;

            /* renamed from: f */
            public CharSequence f5684f;

            public a(@NonNull Params params, @NonNull CharSequence charSequence) {
                this.f5683e = params;
                this.f5684f = charSequence;
            }

            @Override // java.util.concurrent.Callable
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public PrecomputedTextCompat call() throws Exception {
                return PrecomputedTextCompat.create(this.f5684f, this.f5683e);
            }
        }

        public C0740b(@NonNull Params params, @NonNull CharSequence charSequence) {
            super(new a(params, charSequence));
        }
    }

    public PrecomputedTextCompat(@NonNull CharSequence charSequence, @NonNull Params params, @NonNull int[] iArr) {
        this.f5670e = new SpannableString(charSequence);
        this.f5671f = params;
        this.f5672g = iArr;
        this.f5673h = null;
    }

    @SuppressLint({"WrongConstant"})
    public static PrecomputedTextCompat create(@NonNull CharSequence charSequence, @NonNull Params params) {
        Preconditions.checkNotNull(charSequence);
        Preconditions.checkNotNull(params);
        try {
            Trace.beginSection("PrecomputedText");
            PrecomputedText.Params params2 = params.f5678e;
            if (params2 != null) {
                return new PrecomputedTextCompat(PrecomputedText.create(charSequence, params2), params);
            }
            ArrayList arrayList = new ArrayList();
            int length = charSequence.length();
            int i = 0;
            while (i < length) {
                int indexOf = TextUtils.indexOf(charSequence, '\n', i, length);
                i = indexOf < 0 ? length : indexOf + 1;
                arrayList.add(Integer.valueOf(i));
            }
            int[] iArr = new int[arrayList.size()];
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
            }
            StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), params.getTextPaint(), Integer.MAX_VALUE).setBreakStrategy(params.getBreakStrategy()).setHyphenationFrequency(params.getHyphenationFrequency()).setTextDirection(params.getTextDirection()).build();
            return new PrecomputedTextCompat(charSequence, params, iArr);
        } finally {
            Trace.endSection();
        }
    }

    @UiThread
    public static Future<PrecomputedTextCompat> getTextFuture(@NonNull CharSequence charSequence, @NonNull Params params, @Nullable Executor executor) {
        C0740b c0740b = new C0740b(params, charSequence);
        if (executor == null) {
            synchronized (f5668j) {
                if (f5669k == null) {
                    f5669k = Executors.newFixedThreadPool(1);
                }
                executor = f5669k;
            }
        }
        executor.execute(c0740b);
        return c0740b;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.f5670e.charAt(i);
    }

    @IntRange(from = 0)
    public int getParagraphCount() {
        return this.f5673h.getParagraphCount();
    }

    @IntRange(from = 0)
    public int getParagraphEnd(@IntRange(from = 0) int i) {
        Preconditions.checkArgumentInRange(i, 0, getParagraphCount(), "paraIndex");
        return this.f5673h.getParagraphEnd(i);
    }

    @IntRange(from = 0)
    public int getParagraphStart(@IntRange(from = 0) int i) {
        Preconditions.checkArgumentInRange(i, 0, getParagraphCount(), "paraIndex");
        return this.f5673h.getParagraphStart(i);
    }

    @NonNull
    public Params getParams() {
        return this.f5671f;
    }

    @Nullable
    @RequiresApi(28)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PrecomputedText getPrecomputedText() {
        Spannable spannable = this.f5670e;
        if (spannable instanceof PrecomputedText) {
            return (PrecomputedText) spannable;
        }
        return null;
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f5670e.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f5670e.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f5670e.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        return (T[]) this.f5673h.getSpans(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f5670e.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        return this.f5670e.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        this.f5673h.removeSpan(obj);
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i, int i2, int i3) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        this.f5673h.setSpan(obj, i, i2, i3);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return this.f5670e.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    @NonNull
    public String toString() {
        return this.f5670e.toString();
    }

    @RequiresApi(28)
    public PrecomputedTextCompat(@NonNull PrecomputedText precomputedText, @NonNull Params params) {
        this.f5670e = C0739a.m3225a(precomputedText);
        this.f5671f = params;
        this.f5672g = null;
        this.f5673h = precomputedText;
    }

    /* loaded from: classes3.dex */
    public static final class Params {

        /* renamed from: a */
        @NonNull
        public final TextPaint f5674a;

        /* renamed from: b */
        @Nullable
        public final TextDirectionHeuristic f5675b;

        /* renamed from: c */
        public final int f5676c;

        /* renamed from: d */
        public final int f5677d;

        /* renamed from: e */
        public final PrecomputedText.Params f5678e;

        /* loaded from: classes3.dex */
        public static class Builder {

            /* renamed from: a */
            @NonNull
            public final TextPaint f5679a;

            /* renamed from: c */
            public int f5681c = 1;

            /* renamed from: d */
            public int f5682d = 1;

            /* renamed from: b */
            public TextDirectionHeuristic f5680b = TextDirectionHeuristics.FIRSTSTRONG_LTR;

            public Builder(@NonNull TextPaint textPaint) {
                this.f5679a = textPaint;
            }

            @NonNull
            public Params build() {
                return new Params(this.f5679a, this.f5680b, this.f5681c, this.f5682d);
            }

            @RequiresApi(23)
            public Builder setBreakStrategy(int i) {
                this.f5681c = i;
                return this;
            }

            @RequiresApi(23)
            public Builder setHyphenationFrequency(int i) {
                this.f5682d = i;
                return this;
            }

            public Builder setTextDirection(@NonNull TextDirectionHeuristic textDirectionHeuristic) {
                this.f5680b = textDirectionHeuristic;
                return this;
            }
        }

        public Params(@NonNull TextPaint textPaint, @NonNull TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            this.f5678e = new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            this.f5674a = textPaint;
            this.f5675b = textDirectionHeuristic;
            this.f5676c = i;
            this.f5677d = i2;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Params)) {
                return false;
            }
            Params params = (Params) obj;
            return equalsWithoutTextDirection(params) && this.f5675b == params.getTextDirection();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public boolean equalsWithoutTextDirection(@NonNull Params params) {
            if (this.f5676c == params.getBreakStrategy() && this.f5677d == params.getHyphenationFrequency() && this.f5674a.getTextSize() == params.getTextPaint().getTextSize() && this.f5674a.getTextScaleX() == params.getTextPaint().getTextScaleX() && this.f5674a.getTextSkewX() == params.getTextPaint().getTextSkewX() && this.f5674a.getLetterSpacing() == params.getTextPaint().getLetterSpacing() && TextUtils.equals(this.f5674a.getFontFeatureSettings(), params.getTextPaint().getFontFeatureSettings()) && this.f5674a.getFlags() == params.getTextPaint().getFlags() && this.f5674a.getTextLocales().equals(params.getTextPaint().getTextLocales())) {
                return this.f5674a.getTypeface() == null ? params.getTextPaint().getTypeface() == null : this.f5674a.getTypeface().equals(params.getTextPaint().getTypeface());
            }
            return false;
        }

        @RequiresApi(23)
        public int getBreakStrategy() {
            return this.f5676c;
        }

        @RequiresApi(23)
        public int getHyphenationFrequency() {
            return this.f5677d;
        }

        @Nullable
        public TextDirectionHeuristic getTextDirection() {
            return this.f5675b;
        }

        @NonNull
        public TextPaint getTextPaint() {
            return this.f5674a;
        }

        public int hashCode() {
            return ObjectsCompat.hash(Float.valueOf(this.f5674a.getTextSize()), Float.valueOf(this.f5674a.getTextScaleX()), Float.valueOf(this.f5674a.getTextSkewX()), Float.valueOf(this.f5674a.getLetterSpacing()), Integer.valueOf(this.f5674a.getFlags()), this.f5674a.getTextLocales(), this.f5674a.getTypeface(), Boolean.valueOf(this.f5674a.isElegantTextHeight()), this.f5675b, Integer.valueOf(this.f5676c), Integer.valueOf(this.f5677d));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.f5674a.getTextSize());
            sb.append(", textScaleX=" + this.f5674a.getTextScaleX());
            sb.append(", textSkewX=" + this.f5674a.getTextSkewX());
            sb.append(", letterSpacing=" + this.f5674a.getLetterSpacing());
            sb.append(", elegantTextHeight=" + this.f5674a.isElegantTextHeight());
            sb.append(", textLocale=" + this.f5674a.getTextLocales());
            sb.append(", typeface=" + this.f5674a.getTypeface());
            sb.append(", variationSettings=" + this.f5674a.getFontVariationSettings());
            sb.append(", textDir=" + this.f5675b);
            sb.append(", breakStrategy=" + this.f5676c);
            sb.append(", hyphenationFrequency=" + this.f5677d);
            sb.append("}");
            return sb.toString();
        }

        @RequiresApi(28)
        public Params(@NonNull PrecomputedText.Params params) {
            this.f5674a = params.getTextPaint();
            this.f5675b = params.getTextDirection();
            this.f5676c = params.getBreakStrategy();
            this.f5677d = params.getHyphenationFrequency();
            this.f5678e = params;
        }
    }
}
