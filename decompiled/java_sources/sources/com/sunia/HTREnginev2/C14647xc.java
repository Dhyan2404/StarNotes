package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.C0118R;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.sunia.HTREnginev2.xc */
/* loaded from: classes3.dex */
public class C14647xc {

    /* renamed from: l */
    public static final String f89482l = "ACTVAutoSizeHelper";

    /* renamed from: n */
    public static final int f89484n = 12;

    /* renamed from: o */
    public static final int f89485o = 112;

    /* renamed from: p */
    public static final int f89486p = 1;

    /* renamed from: r */
    public static final float f89488r = -1.0f;

    /* renamed from: s */
    public static final int f89489s = 1048576;

    /* renamed from: h */
    public TextPaint f89497h;

    /* renamed from: i */
    @NonNull
    public final TextView f89498i;

    /* renamed from: j */
    public final Context f89499j;

    /* renamed from: m */
    public static final RectF f89483m = new RectF();

    /* renamed from: q */
    @SuppressLint({"BanConcurrentHashMap"})
    public static ConcurrentHashMap<String, Method> f89487q = new ConcurrentHashMap<>();

    /* renamed from: a */
    public int f89490a = 0;

    /* renamed from: b */
    public boolean f89491b = false;

    /* renamed from: c */
    public float f89492c = -1.0f;

    /* renamed from: d */
    public float f89493d = -1.0f;

    /* renamed from: e */
    public float f89494e = -1.0f;

    /* renamed from: f */
    public int[] f89495f = new int[0];

    /* renamed from: g */
    public boolean f89496g = false;

    /* renamed from: k */
    public final d f89500k = new c();

    @RequiresApi(23)
    /* renamed from: com.sunia.HTREnginev2.xc$a */
    /* loaded from: classes3.dex */
    public static final class a {
        @NonNull
        @DoNotInline
        /* renamed from: a */
        public static StaticLayout m58208a(@NonNull CharSequence charSequence, @NonNull Layout.Alignment alignment, int i, int i2, @NonNull TextView textView, @NonNull TextPaint textPaint, @NonNull d dVar) {
            StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i);
            StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(textView.getLineSpacingExtra(), textView.getLineSpacingMultiplier()).setIncludePad(textView.getIncludeFontPadding()).setBreakStrategy(textView.getBreakStrategy()).setHyphenationFrequency(textView.getHyphenationFrequency());
            if (i2 == -1) {
                i2 = Integer.MAX_VALUE;
            }
            hyphenationFrequency.setMaxLines(i2);
            try {
                dVar.mo58209a(obtain, textView);
            } catch (ClassCastException unused) {
                Log.w(C14647xc.f89482l, "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
            }
            return obtain.build();
        }
    }

    @RequiresApi(23)
    /* renamed from: com.sunia.HTREnginev2.xc$b */
    /* loaded from: classes3.dex */
    public static class b extends d {
        @Override // com.sunia.HTREnginev2.C14647xc.d
        /* renamed from: a */
        public void mo58209a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) C14647xc.m58183m(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    @RequiresApi(29)
    /* renamed from: com.sunia.HTREnginev2.xc$c */
    /* loaded from: classes3.dex */
    public static class c extends b {
        @Override // com.sunia.HTREnginev2.C14647xc.b, com.sunia.HTREnginev2.C14647xc.d
        /* renamed from: a */
        public void mo58209a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection(textView.getTextDirectionHeuristic());
        }

        @Override // com.sunia.HTREnginev2.C14647xc.d
        /* renamed from: b */
        public boolean mo58210b(TextView textView) {
            return textView.isHorizontallyScrollable();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.xc$d */
    /* loaded from: classes3.dex */
    public static class d {
        /* renamed from: a */
        public void mo58209a(StaticLayout.Builder builder, TextView textView) {
        }

        /* renamed from: b */
        public boolean mo58210b(TextView textView) {
            return ((Boolean) C14647xc.m58183m(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }
    }

    public C14647xc(@NonNull TextView textView) {
        this.f89498i = textView;
        this.f89499j = textView.getContext();
    }

    @Nullable
    /* renamed from: k */
    public static Method m58182k(@NonNull String str) {
        try {
            Method method = f89487q.get(str);
            if (method == null && (method = TextView.class.getDeclaredMethod(str, new Class[0])) != null) {
                method.setAccessible(true);
                f89487q.put(str, method);
            }
            return method;
        } catch (Exception e) {
            Log.w(f89482l, "Failed to retrieve TextView#" + str + "() method", e);
            return null;
        }
    }

    @SuppressLint({"BanUncheckedReflection"})
    /* renamed from: m */
    public static <T> T m58183m(@NonNull Object obj, @NonNull String str, @NonNull T t) {
        try {
            return (T) m58182k(str).invoke(obj, new Object[0]);
        } catch (Exception e) {
            Log.w(f89482l, "Failed to invoke TextView#" + str + "() method", e);
            return t;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: a */
    public void m58184a() {
        if (m58195n()) {
            if (this.f89491b) {
                if (this.f89498i.getMeasuredHeight() <= 0 || this.f89498i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.f89500k.mo58210b(this.f89498i) ? 1048576 : (this.f89498i.getMeasuredWidth() - this.f89498i.getTotalPaddingLeft()) - this.f89498i.getTotalPaddingRight();
                int height = (this.f89498i.getHeight() - this.f89498i.getCompoundPaddingBottom()) - this.f89498i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = f89483m;
                synchronized (rectF) {
                    rectF.setEmpty();
                    rectF.right = measuredWidth;
                    rectF.bottom = height;
                    float m58188e = m58188e(rectF);
                    if (m58188e != this.f89498i.getTextSize()) {
                        m58201t(0, m58188e);
                    }
                }
            }
            this.f89491b = true;
        }
    }

    /* renamed from: b */
    public final int[] m58185b(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            if (i > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i)) < 0) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr2[i2] = ((Integer) arrayList.get(i2)).intValue();
        }
        return iArr2;
    }

    /* renamed from: c */
    public final void m58186c() {
        this.f89490a = 0;
        this.f89493d = -1.0f;
        this.f89494e = -1.0f;
        this.f89492c = -1.0f;
        this.f89495f = new int[0];
        this.f89491b = false;
    }

    @NonNull
    @VisibleForTesting
    /* renamed from: d */
    public StaticLayout m58187d(@NonNull CharSequence charSequence, @NonNull Layout.Alignment alignment, int i, int i2) {
        return a.m58208a(charSequence, alignment, i, i2, this.f89498i, this.f89497h, this.f89500k);
    }

    /* renamed from: e */
    public final int m58188e(RectF rectF) {
        int length = this.f89495f.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i = 1;
        int i2 = length - 1;
        int i3 = 0;
        while (i <= i2) {
            int i4 = (i + i2) / 2;
            if (m58205x(this.f89495f[i4], rectF)) {
                int i5 = i4 + 1;
                i3 = i;
                i = i5;
            } else {
                i3 = i4 - 1;
                i2 = i3;
            }
        }
        return this.f89495f[i3];
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: f */
    public int m58189f() {
        return Math.round(this.f89494e);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: g */
    public int m58190g() {
        return Math.round(this.f89493d);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: h */
    public int m58191h() {
        return Math.round(this.f89492c);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: i */
    public int[] m58192i() {
        return this.f89495f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: j */
    public int m58193j() {
        return this.f89490a;
    }

    @VisibleForTesting
    /* renamed from: l */
    public void m58194l(int i) {
        TextPaint textPaint = this.f89497h;
        if (textPaint == null) {
            this.f89497h = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f89497h.set(this.f89498i.getPaint());
        this.f89497h.setTextSize(i);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: n */
    public boolean m58195n() {
        return m58206y() && this.f89490a != 0;
    }

    /* renamed from: o */
    public void m58196o(@Nullable AttributeSet attributeSet, int i) {
        int resourceId;
        TypedArray obtainStyledAttributes = this.f89499j.obtainStyledAttributes(attributeSet, C0118R.styleable.AppCompatTextView, i, 0);
        TextView textView = this.f89498i;
        ViewCompat.saveAttributeDataForStyleable(textView, textView.getContext(), C0118R.styleable.AppCompatTextView, attributeSet, obtainStyledAttributes, i, 0);
        if (obtainStyledAttributes.hasValue(C0118R.styleable.AppCompatTextView_autoSizeTextType)) {
            this.f89490a = obtainStyledAttributes.getInt(C0118R.styleable.AppCompatTextView_autoSizeTextType, 0);
        }
        float dimension = obtainStyledAttributes.hasValue(C0118R.styleable.AppCompatTextView_autoSizeStepGranularity) ? obtainStyledAttributes.getDimension(C0118R.styleable.AppCompatTextView_autoSizeStepGranularity, -1.0f) : -1.0f;
        float dimension2 = obtainStyledAttributes.hasValue(C0118R.styleable.AppCompatTextView_autoSizeMinTextSize) ? obtainStyledAttributes.getDimension(C0118R.styleable.AppCompatTextView_autoSizeMinTextSize, -1.0f) : -1.0f;
        float dimension3 = obtainStyledAttributes.hasValue(C0118R.styleable.AppCompatTextView_autoSizeMaxTextSize) ? obtainStyledAttributes.getDimension(C0118R.styleable.AppCompatTextView_autoSizeMaxTextSize, -1.0f) : -1.0f;
        if (obtainStyledAttributes.hasValue(C0118R.styleable.AppCompatTextView_autoSizePresetSizes) && (resourceId = obtainStyledAttributes.getResourceId(C0118R.styleable.AppCompatTextView_autoSizePresetSizes, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            m58203v(obtainTypedArray);
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (!m58206y()) {
            this.f89490a = 0;
            return;
        }
        if (this.f89490a == 1) {
            if (!this.f89496g) {
                DisplayMetrics displayMetrics = this.f89499j.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                }
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                m58207z(dimension2, dimension3, dimension);
            }
            m58202u();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: p */
    public void m58197p(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (m58206y()) {
            DisplayMetrics displayMetrics = this.f89499j.getResources().getDisplayMetrics();
            m58207z(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (m58202u()) {
                m58184a();
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: q */
    public void m58198q(@NonNull int[] iArr, int i) throws IllegalArgumentException {
        if (m58206y()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.f89499j.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArr2[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                this.f89495f = m58185b(iArr2);
                if (!m58204w()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f89496g = false;
            }
            if (m58202u()) {
                m58184a();
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: r */
    public void m58199r(int i) {
        if (m58206y()) {
            if (i == 0) {
                m58186c();
                return;
            }
            if (i != 1) {
                throw new IllegalArgumentException("Unknown auto-size text type: " + i);
            }
            DisplayMetrics displayMetrics = this.f89499j.getResources().getDisplayMetrics();
            m58207z(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (m58202u()) {
                m58184a();
            }
        }
    }

    @SuppressLint({"BanUncheckedReflection"})
    /* renamed from: s */
    public final void m58200s(float f) {
        if (f != this.f89498i.getPaint().getTextSize()) {
            this.f89498i.getPaint().setTextSize(f);
            boolean isInLayout = this.f89498i.isInLayout();
            if (this.f89498i.getLayout() != null) {
                this.f89491b = false;
                try {
                    Method m58182k = m58182k("nullLayouts");
                    if (m58182k != null) {
                        m58182k.invoke(this.f89498i, new Object[0]);
                    }
                } catch (Exception e) {
                    Log.w(f89482l, "Failed to invoke TextView#nullLayouts() method", e);
                }
                if (isInLayout) {
                    this.f89498i.forceLayout();
                } else {
                    this.f89498i.requestLayout();
                }
                this.f89498i.invalidate();
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: t */
    public void m58201t(int i, float f) {
        Context context = this.f89499j;
        m58200s(TypedValue.applyDimension(i, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }

    /* renamed from: u */
    public final boolean m58202u() {
        if (m58206y() && this.f89490a == 1) {
            if (!this.f89496g || this.f89495f.length == 0) {
                int floor = ((int) Math.floor((this.f89494e - this.f89493d) / this.f89492c)) + 1;
                int[] iArr = new int[floor];
                for (int i = 0; i < floor; i++) {
                    iArr[i] = Math.round(this.f89493d + (i * this.f89492c));
                }
                this.f89495f = m58185b(iArr);
            }
            this.f89491b = true;
        } else {
            this.f89491b = false;
        }
        return this.f89491b;
    }

    /* renamed from: v */
    public final void m58203v(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i = 0; i < length; i++) {
                iArr[i] = typedArray.getDimensionPixelSize(i, -1);
            }
            this.f89495f = m58185b(iArr);
            m58204w();
        }
    }

    /* renamed from: w */
    public final boolean m58204w() {
        boolean z = this.f89495f.length > 0;
        this.f89496g = z;
        if (z) {
            this.f89490a = 1;
            this.f89493d = r0[0];
            this.f89494e = r0[r1 - 1];
            this.f89492c = -1.0f;
        }
        return z;
    }

    /* renamed from: x */
    public final boolean m58205x(int i, RectF rectF) {
        CharSequence transformation;
        CharSequence text = this.f89498i.getText();
        TransformationMethod transformationMethod = this.f89498i.getTransformationMethod();
        if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.f89498i)) != null) {
            text = transformation;
        }
        int maxLines = this.f89498i.getMaxLines();
        m58194l(i);
        StaticLayout m58187d = m58187d(text, (Layout.Alignment) m58183m(this.f89498i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (m58187d.getLineCount() <= maxLines && m58187d.getLineEnd(m58187d.getLineCount() - 1) == text.length())) && ((float) m58187d.getHeight()) <= rectF.bottom;
    }

    /* renamed from: y */
    public final boolean m58206y() {
        return !(this.f89498i instanceof AppCompatEditText);
    }

    /* renamed from: z */
    public final void m58207z(float f, float f2, float f3) throws IllegalArgumentException {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        }
        if (f2 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        }
        if (f3 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
        }
        this.f89490a = 1;
        this.f89493d = f;
        this.f89494e = f2;
        this.f89492c = f3;
        this.f89496g = false;
    }
}
