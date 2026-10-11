package com.sunia.HTREnginev2;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.TintInfo;
import androidx.appcompat.widget.TintTypedArray;
import androidx.appcompat.widget.ViewUtils;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import java.lang.ref.WeakReference;
import java.util.Locale;

/* renamed from: com.sunia.HTREnginev2.wc */
/* loaded from: classes3.dex */
public class C14599wc {

    /* renamed from: n */
    public static final int f88454n = -1;

    /* renamed from: o */
    public static final int f88455o = 1;

    /* renamed from: p */
    public static final int f88456p = 2;

    /* renamed from: q */
    public static final int f88457q = 3;

    /* renamed from: a */
    @NonNull
    public final TextView f88458a;

    /* renamed from: b */
    public TintInfo f88459b;

    /* renamed from: c */
    public TintInfo f88460c;

    /* renamed from: d */
    public TintInfo f88461d;

    /* renamed from: e */
    public TintInfo f88462e;

    /* renamed from: f */
    public TintInfo f88463f;

    /* renamed from: g */
    public TintInfo f88464g;

    /* renamed from: h */
    public TintInfo f88465h;

    /* renamed from: i */
    @NonNull
    public final C14647xc f88466i;

    /* renamed from: j */
    public int f88467j = 0;

    /* renamed from: k */
    public int f88468k = -1;

    /* renamed from: l */
    public Typeface f88469l;

    /* renamed from: m */
    public boolean f88470m;

    /* renamed from: com.sunia.HTREnginev2.wc$a */
    /* loaded from: classes3.dex */
    public class a extends ResourcesCompat.FontCallback {

        /* renamed from: a */
        public final /* synthetic */ int f88471a;

        /* renamed from: b */
        public final /* synthetic */ int f88472b;

        /* renamed from: c */
        public final /* synthetic */ WeakReference f88473c;

        public a(int i, int i2, WeakReference weakReference) {
            this.f88471a = i;
            this.f88472b = i2;
            this.f88473c = weakReference;
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        /* renamed from: onFontRetrievalFailed */
        public void m2880c(int i) {
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        /* renamed from: onFontRetrieved */
        public void m2881d(@NonNull Typeface typeface) {
            int i = this.f88471a;
            if (i != -1) {
                typeface = f.m58056a(typeface, i, (this.f88472b & 2) != 0);
            }
            C14599wc.this.m58036n(this.f88473c, typeface);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.wc$b */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ TextView f88475e;

        /* renamed from: f */
        public final /* synthetic */ Typeface f88476f;

        /* renamed from: g */
        public final /* synthetic */ int f88477g;

        public b(TextView textView, Typeface typeface, int i) {
            this.f88475e = textView;
            this.f88476f = typeface;
            this.f88477g = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f88475e.setTypeface(this.f88476f, this.f88477g);
        }
    }

    @RequiresApi(21)
    /* renamed from: com.sunia.HTREnginev2.wc$c */
    /* loaded from: classes3.dex */
    public static class c {
        @DoNotInline
        /* renamed from: a */
        public static Locale m58049a(String str) {
            return Locale.forLanguageTag(str);
        }
    }

    @RequiresApi(24)
    /* renamed from: com.sunia.HTREnginev2.wc$d */
    /* loaded from: classes3.dex */
    public static class d {
        @DoNotInline
        /* renamed from: a */
        public static LocaleList m58050a(String str) {
            return LocaleList.forLanguageTags(str);
        }

        @DoNotInline
        /* renamed from: b */
        public static void m58051b(TextView textView, LocaleList localeList) {
            textView.setTextLocales(localeList);
        }
    }

    @RequiresApi(26)
    /* renamed from: com.sunia.HTREnginev2.wc$e */
    /* loaded from: classes3.dex */
    public static class e {
        @DoNotInline
        /* renamed from: a */
        public static int m58052a(TextView textView) {
            return textView.getAutoSizeStepGranularity();
        }

        @DoNotInline
        /* renamed from: b */
        public static void m58053b(TextView textView, int i, int i2, int i3, int i4) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
        }

        @DoNotInline
        /* renamed from: c */
        public static void m58054c(TextView textView, int[] iArr, int i) {
            textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
        }

        @DoNotInline
        /* renamed from: d */
        public static boolean m58055d(TextView textView, String str) {
            return textView.setFontVariationSettings(str);
        }
    }

    @RequiresApi(28)
    /* renamed from: com.sunia.HTREnginev2.wc$f */
    /* loaded from: classes3.dex */
    public static class f {
        @DoNotInline
        /* renamed from: a */
        public static Typeface m58056a(Typeface typeface, int i, boolean z) {
            return Typeface.create(typeface, i, z);
        }
    }

    public C14599wc(@NonNull TextView textView) {
        this.f88458a = textView;
        this.f88466i = new C14647xc(textView);
    }

    /* renamed from: d */
    public static TintInfo m58020d(Context context, AppCompatDrawableManager appCompatDrawableManager, int i) {
        ColorStateList m725c = appCompatDrawableManager.m725c(context, i);
        if (m725c == null) {
            return null;
        }
        TintInfo tintInfo = new TintInfo();
        tintInfo.mHasTintList = true;
        tintInfo.mTintList = m725c;
        return tintInfo;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: A */
    public void m58021A(int i, float f2) {
        if (ViewUtils.f2130d || m58034l()) {
            return;
        }
        m58022B(i, f2);
    }

    /* renamed from: B */
    public final void m58022B(int i, float f2) {
        this.f88466i.m58201t(i, f2);
    }

    /* renamed from: C */
    public final void m58023C(Context context, TintTypedArray tintTypedArray) {
        String string;
        this.f88467j = tintTypedArray.getInt(C0118R.styleable.TextAppearance_android_textStyle, this.f88467j);
        int i = tintTypedArray.getInt(C0118R.styleable.TextAppearance_android_textFontWeight, -1);
        this.f88468k = i;
        if (i != -1) {
            this.f88467j = (this.f88467j & 2) | 0;
        }
        if (!tintTypedArray.hasValue(C0118R.styleable.TextAppearance_android_fontFamily) && !tintTypedArray.hasValue(C0118R.styleable.TextAppearance_fontFamily)) {
            if (tintTypedArray.hasValue(C0118R.styleable.TextAppearance_android_typeface)) {
                this.f88470m = false;
                int i2 = tintTypedArray.getInt(C0118R.styleable.TextAppearance_android_typeface, 1);
                if (i2 == 1) {
                    this.f88469l = Typeface.SANS_SERIF;
                    return;
                } else if (i2 == 2) {
                    this.f88469l = Typeface.SERIF;
                    return;
                } else {
                    if (i2 != 3) {
                        return;
                    }
                    this.f88469l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f88469l = null;
        int i3 = tintTypedArray.hasValue(C0118R.styleable.TextAppearance_fontFamily) ? C0118R.styleable.TextAppearance_fontFamily : C0118R.styleable.TextAppearance_android_fontFamily;
        int i4 = this.f88468k;
        int i5 = this.f88467j;
        if (!context.isRestricted()) {
            try {
                Typeface font = tintTypedArray.getFont(i3, this.f88467j, new a(i4, i5, new WeakReference(this.f88458a)));
                if (font != null) {
                    if (this.f88468k != -1) {
                        this.f88469l = f.m58056a(Typeface.create(font, 0), this.f88468k, (this.f88467j & 2) != 0);
                    } else {
                        this.f88469l = font;
                    }
                }
                this.f88470m = this.f88469l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f88469l != null || (string = tintTypedArray.getString(i3)) == null) {
            return;
        }
        if (this.f88468k != -1) {
            this.f88469l = f.m58056a(Typeface.create(string, 0), this.f88468k, (this.f88467j & 2) != 0);
        } else {
            this.f88469l = Typeface.create(string, this.f88467j);
        }
    }

    /* renamed from: a */
    public final void m58024a(Drawable drawable, TintInfo tintInfo) {
        if (drawable == null || tintInfo == null) {
            return;
        }
        AppCompatDrawableManager.m723e(drawable, tintInfo, this.f88458a.getDrawableState());
    }

    /* renamed from: b */
    public void m58025b() {
        if (this.f88459b != null || this.f88460c != null || this.f88461d != null || this.f88462e != null) {
            Drawable[] compoundDrawables = this.f88458a.getCompoundDrawables();
            m58024a(compoundDrawables[0], this.f88459b);
            m58024a(compoundDrawables[1], this.f88460c);
            m58024a(compoundDrawables[2], this.f88461d);
            m58024a(compoundDrawables[3], this.f88462e);
        }
        if (this.f88463f == null && this.f88464g == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = this.f88458a.getCompoundDrawablesRelative();
        m58024a(compoundDrawablesRelative[0], this.f88463f);
        m58024a(compoundDrawablesRelative[2], this.f88464g);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: c */
    public void m58026c() {
        this.f88466i.m58184a();
    }

    /* renamed from: e */
    public int m58027e() {
        return this.f88466i.m58189f();
    }

    /* renamed from: f */
    public int m58028f() {
        return this.f88466i.m58190g();
    }

    /* renamed from: g */
    public int m58029g() {
        return this.f88466i.m58191h();
    }

    /* renamed from: h */
    public int[] m58030h() {
        return this.f88466i.m58192i();
    }

    /* renamed from: i */
    public int m58031i() {
        return this.f88466i.m58193j();
    }

    @Nullable
    /* renamed from: j */
    public ColorStateList m58032j() {
        TintInfo tintInfo = this.f88465h;
        if (tintInfo != null) {
            return tintInfo.mTintList;
        }
        return null;
    }

    @Nullable
    /* renamed from: k */
    public PorterDuff.Mode m58033k() {
        TintInfo tintInfo = this.f88465h;
        if (tintInfo != null) {
            return tintInfo.mTintMode;
        }
        return null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: l */
    public boolean m58034l() {
        return this.f88466i.m58195n();
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:117:? A[RETURN, SYNTHETIC] */
    @android.annotation.SuppressLint({"NewApi"})
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m58035m(@androidx.annotation.Nullable android.util.AttributeSet r17, int r18) {
        /*
            Method dump skipped, instructions count: 683
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.C14599wc.m58035m(android.util.AttributeSet, int):void");
    }

    /* renamed from: n */
    public void m58036n(WeakReference<TextView> weakReference, Typeface typeface) {
        if (this.f88470m) {
            this.f88469l = typeface;
            TextView textView = weakReference.get();
            if (textView != null) {
                if (textView.isAttachedToWindow()) {
                    textView.post(new b(textView, typeface, this.f88467j));
                } else {
                    textView.setTypeface(typeface, this.f88467j);
                }
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: o */
    public void m58037o(boolean z, int i, int i2, int i3, int i4) {
        if (ViewUtils.f2130d) {
            return;
        }
        m58026c();
    }

    /* renamed from: p */
    public void m58038p() {
        m58025b();
    }

    /* renamed from: q */
    public void m58039q(Context context, int i) {
        String string;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, i, C0118R.styleable.TextAppearance);
        if (obtainStyledAttributes.hasValue(C0118R.styleable.TextAppearance_textAllCaps)) {
            m58041s(obtainStyledAttributes.getBoolean(C0118R.styleable.TextAppearance_textAllCaps, false));
        }
        if (obtainStyledAttributes.hasValue(C0118R.styleable.TextAppearance_android_textSize) && obtainStyledAttributes.getDimensionPixelSize(C0118R.styleable.TextAppearance_android_textSize, -1) == 0) {
            this.f88458a.setTextSize(0, 0.0f);
        }
        m58023C(context, obtainStyledAttributes);
        if (obtainStyledAttributes.hasValue(C0118R.styleable.TextAppearance_fontVariationSettings) && (string = obtainStyledAttributes.getString(C0118R.styleable.TextAppearance_fontVariationSettings)) != null) {
            e.m58055d(this.f88458a, string);
        }
        obtainStyledAttributes.recycle();
        Typeface typeface = this.f88469l;
        if (typeface != null) {
            this.f88458a.setTypeface(typeface, this.f88467j);
        }
    }

    /* renamed from: r */
    public void m58040r(@NonNull TextView textView, @Nullable InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 30 || inputConnection == null) {
            return;
        }
        EditorInfoCompat.setInitialSurroundingText(editorInfo, textView.getText());
    }

    /* renamed from: s */
    public void m58041s(boolean z) {
        this.f88458a.setAllCaps(z);
    }

    /* renamed from: t */
    public void m58042t(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        this.f88466i.m58197p(i, i2, i3, i4);
    }

    /* renamed from: u */
    public void m58043u(@NonNull int[] iArr, int i) throws IllegalArgumentException {
        this.f88466i.m58198q(iArr, i);
    }

    /* renamed from: v */
    public void m58044v(int i) {
        this.f88466i.m58199r(i);
    }

    /* renamed from: w */
    public void m58045w(@Nullable ColorStateList colorStateList) {
        if (this.f88465h == null) {
            this.f88465h = new TintInfo();
        }
        TintInfo tintInfo = this.f88465h;
        tintInfo.mTintList = colorStateList;
        tintInfo.mHasTintList = colorStateList != null;
        m58048z();
    }

    /* renamed from: x */
    public void m58046x(@Nullable PorterDuff.Mode mode) {
        if (this.f88465h == null) {
            this.f88465h = new TintInfo();
        }
        TintInfo tintInfo = this.f88465h;
        tintInfo.mTintMode = mode;
        tintInfo.mHasTintMode = mode != null;
        m58048z();
    }

    /* renamed from: y */
    public final void m58047y(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (drawable5 != null || drawable6 != null) {
            Drawable[] compoundDrawablesRelative = this.f88458a.getCompoundDrawablesRelative();
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            TextView textView = this.f88458a;
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
            return;
        }
        if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative2 = this.f88458a.getCompoundDrawablesRelative();
        Drawable drawable7 = compoundDrawablesRelative2[0];
        if (drawable7 != null || compoundDrawablesRelative2[2] != null) {
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative2[1];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative2[3];
            }
            this.f88458a.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, compoundDrawablesRelative2[2], drawable4);
            return;
        }
        Drawable[] compoundDrawables = this.f88458a.getCompoundDrawables();
        TextView textView2 = this.f88458a;
        if (drawable == null) {
            drawable = compoundDrawables[0];
        }
        if (drawable2 == null) {
            drawable2 = compoundDrawables[1];
        }
        if (drawable3 == null) {
            drawable3 = compoundDrawables[2];
        }
        if (drawable4 == null) {
            drawable4 = compoundDrawables[3];
        }
        textView2.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    /* renamed from: z */
    public final void m58048z() {
        TintInfo tintInfo = this.f88465h;
        this.f88459b = tintInfo;
        this.f88460c = tintInfo;
        this.f88461d = tintInfo;
        this.f88462e = tintInfo;
        this.f88463f = tintInfo;
        this.f88464g = tintInfo;
    }
}
