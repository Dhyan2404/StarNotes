package androidx.core.widget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.icu.text.DecimalFormatSymbols;
import android.os.Build;
import android.text.Editable;
import android.text.PrecomputedText;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.method.PasswordTransformationMethod;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.text.PrecomputedTextCompat;
import androidx.core.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class TextViewCompat {
    public static final int AUTO_SIZE_TEXT_TYPE_NONE = 0;
    public static final int AUTO_SIZE_TEXT_TYPE_UNIFORM = 1;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface AutoSizeTextType {
    }

    @RequiresApi(23)
    /* renamed from: androidx.core.widget.TextViewCompat$a */
    /* loaded from: classes3.dex */
    public static class C0870a {
        @DoNotInline
        /* renamed from: a */
        public static int m3841a(TextView textView) {
            return textView.getBreakStrategy();
        }

        @DoNotInline
        /* renamed from: b */
        public static ColorStateList m3842b(TextView textView) {
            return textView.getCompoundDrawableTintList();
        }

        @DoNotInline
        /* renamed from: c */
        public static PorterDuff.Mode m3843c(TextView textView) {
            return textView.getCompoundDrawableTintMode();
        }

        @DoNotInline
        /* renamed from: d */
        public static int m3844d(TextView textView) {
            return textView.getHyphenationFrequency();
        }

        @DoNotInline
        /* renamed from: e */
        public static void m3845e(TextView textView, int i) {
            textView.setBreakStrategy(i);
        }

        @DoNotInline
        /* renamed from: f */
        public static void m3846f(TextView textView, ColorStateList colorStateList) {
            textView.setCompoundDrawableTintList(colorStateList);
        }

        @DoNotInline
        /* renamed from: g */
        public static void m3847g(TextView textView, PorterDuff.Mode mode) {
            textView.setCompoundDrawableTintMode(mode);
        }

        @DoNotInline
        /* renamed from: h */
        public static void m3848h(TextView textView, int i) {
            textView.setHyphenationFrequency(i);
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.core.widget.TextViewCompat$b */
    /* loaded from: classes3.dex */
    public static class C0871b {
        @DoNotInline
        /* renamed from: a */
        public static DecimalFormatSymbols m3849a(Locale locale) {
            return DecimalFormatSymbols.getInstance(locale);
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.core.widget.TextViewCompat$c */
    /* loaded from: classes3.dex */
    public static class C0872c {
        @DoNotInline
        /* renamed from: a */
        public static int m3850a(TextView textView) {
            return textView.getAutoSizeMaxTextSize();
        }

        @DoNotInline
        /* renamed from: b */
        public static int m3851b(TextView textView) {
            return textView.getAutoSizeMinTextSize();
        }

        @DoNotInline
        /* renamed from: c */
        public static int m3852c(TextView textView) {
            return textView.getAutoSizeStepGranularity();
        }

        @DoNotInline
        /* renamed from: d */
        public static int[] m3853d(TextView textView) {
            return textView.getAutoSizeTextAvailableSizes();
        }

        @DoNotInline
        /* renamed from: e */
        public static int m3854e(TextView textView) {
            return textView.getAutoSizeTextType();
        }

        @DoNotInline
        /* renamed from: f */
        public static void m3855f(TextView textView, int i, int i2, int i3, int i4) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
        }

        @DoNotInline
        /* renamed from: g */
        public static void m3856g(TextView textView, int[] iArr, int i) {
            textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
        }

        @DoNotInline
        /* renamed from: h */
        public static void m3857h(TextView textView, int i) {
            textView.setAutoSizeTextTypeWithDefaults(i);
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.core.widget.TextViewCompat$d */
    /* loaded from: classes3.dex */
    public static class C0873d {
        @DoNotInline
        /* renamed from: a */
        public static CharSequence m3858a(PrecomputedText precomputedText) {
            return precomputedText;
        }

        @DoNotInline
        /* renamed from: b */
        public static String[] m3859b(DecimalFormatSymbols decimalFormatSymbols) {
            return decimalFormatSymbols.getDigitStrings();
        }

        @DoNotInline
        /* renamed from: c */
        public static PrecomputedText.Params m3860c(TextView textView) {
            return textView.getTextMetricsParams();
        }

        @DoNotInline
        /* renamed from: d */
        public static void m3861d(TextView textView, int i) {
            textView.setFirstBaselineToTopHeight(i);
        }
    }

    @RequiresApi(34)
    /* renamed from: androidx.core.widget.TextViewCompat$e */
    /* loaded from: classes3.dex */
    public static class C0874e {
        @DoNotInline
        /* renamed from: a */
        public static void m3862a(@NonNull TextView textView, int i, @FloatRange(from = 0.0d) float f) {
            textView.setLineHeight(i, f);
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.core.widget.TextViewCompat$f */
    /* loaded from: classes3.dex */
    public static class ActionModeCallbackC0875f implements ActionMode.Callback {

        /* renamed from: g */
        public static final int f6205g = 100;

        /* renamed from: a */
        public final ActionMode.Callback f6206a;

        /* renamed from: b */
        public final TextView f6207b;

        /* renamed from: c */
        public Class<?> f6208c;

        /* renamed from: d */
        public Method f6209d;

        /* renamed from: e */
        public boolean f6210e;

        /* renamed from: f */
        public boolean f6211f = false;

        public ActionModeCallbackC0875f(ActionMode.Callback callback, TextView textView) {
            this.f6206a = callback;
            this.f6207b = textView;
        }

        /* renamed from: a */
        public final Intent m3863a() {
            return new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
        }

        /* renamed from: b */
        public final Intent m3864b(ResolveInfo resolveInfo, TextView textView) {
            Intent putExtra = m3863a().putExtra("android.intent.extra.PROCESS_TEXT_READONLY", !m3867e(textView));
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            return putExtra.setClassName(activityInfo.packageName, activityInfo.name);
        }

        /* renamed from: c */
        public final List<ResolveInfo> m3865c(Context context, PackageManager packageManager) {
            ArrayList arrayList = new ArrayList();
            if (!(context instanceof Activity)) {
                return arrayList;
            }
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(m3863a(), 0)) {
                if (m3868f(resolveInfo, context)) {
                    arrayList.add(resolveInfo);
                }
            }
            return arrayList;
        }

        @NonNull
        /* renamed from: d */
        public ActionMode.Callback m3866d() {
            return this.f6206a;
        }

        /* renamed from: e */
        public final boolean m3867e(TextView textView) {
            return (textView instanceof Editable) && textView.onCheckIsTextEditor() && textView.isEnabled();
        }

        /* renamed from: f */
        public final boolean m3868f(ResolveInfo resolveInfo, Context context) {
            if (context.getPackageName().equals(resolveInfo.activityInfo.packageName)) {
                return true;
            }
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            if (!activityInfo.exported) {
                return false;
            }
            String str = activityInfo.permission;
            return str == null || context.checkSelfPermission(str) == 0;
        }

        /* renamed from: g */
        public final void m3869g(Menu menu) {
            Context context = this.f6207b.getContext();
            PackageManager packageManager = context.getPackageManager();
            if (!this.f6211f) {
                this.f6211f = true;
                try {
                    Class<?> cls = Class.forName("com.android.internal.view.menu.MenuBuilder");
                    this.f6208c = cls;
                    this.f6209d = cls.getDeclaredMethod("removeItemAt", Integer.TYPE);
                    this.f6210e = true;
                } catch (ClassNotFoundException | NoSuchMethodException unused) {
                    this.f6208c = null;
                    this.f6209d = null;
                    this.f6210e = false;
                }
            }
            try {
                Method declaredMethod = (this.f6210e && this.f6208c.isInstance(menu)) ? this.f6209d : menu.getClass().getDeclaredMethod("removeItemAt", Integer.TYPE);
                for (int size = menu.size() - 1; size >= 0; size--) {
                    MenuItem item = menu.getItem(size);
                    if (item.getIntent() != null && "android.intent.action.PROCESS_TEXT".equals(item.getIntent().getAction())) {
                        declaredMethod.invoke(menu, Integer.valueOf(size));
                    }
                }
                List<ResolveInfo> m3865c = m3865c(context, packageManager);
                for (int i = 0; i < m3865c.size(); i++) {
                    ResolveInfo resolveInfo = m3865c.get(i);
                    menu.add(0, 0, i + 100, resolveInfo.loadLabel(packageManager)).setIntent(m3864b(resolveInfo, this.f6207b)).setShowAsAction(1);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
            }
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f6206a.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f6206a.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.f6206a.onDestroyActionMode(actionMode);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            m3869g(menu);
            return this.f6206a.onPrepareActionMode(actionMode, menu);
        }
    }

    /* renamed from: a */
    public static int m3839a(@NonNull TextDirectionHeuristic textDirectionHeuristic) {
        if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL || textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            return 1;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) {
            return 2;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.LTR) {
            return 3;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.RTL) {
            return 4;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.LOCALE) {
            return 5;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            return 6;
        }
        return textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL ? 7 : 1;
    }

    /* renamed from: b */
    public static TextDirectionHeuristic m3840b(@NonNull TextView textView) {
        if (textView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            return TextDirectionHeuristics.LTR;
        }
        if ((textView.getInputType() & 15) == 3) {
            byte directionality = Character.getDirectionality(C0873d.m3859b(C0871b.m3849a(textView.getTextLocale()))[0].codePointAt(0));
            return (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
        }
        boolean z = textView.getLayoutDirection() == 1;
        switch (textView.getTextDirection()) {
            case 2:
                return TextDirectionHeuristics.ANYRTL_LTR;
            case 3:
                return TextDirectionHeuristics.LTR;
            case 4:
                return TextDirectionHeuristics.RTL;
            case 5:
                return TextDirectionHeuristics.LOCALE;
            case 6:
                return TextDirectionHeuristics.FIRSTSTRONG_LTR;
            case 7:
                return TextDirectionHeuristics.FIRSTSTRONG_RTL;
            default:
                return z ? TextDirectionHeuristics.FIRSTSTRONG_RTL : TextDirectionHeuristics.FIRSTSTRONG_LTR;
        }
    }

    public static int getAutoSizeMaxTextSize(@NonNull TextView textView) {
        return C0872c.m3850a(textView);
    }

    public static int getAutoSizeMinTextSize(@NonNull TextView textView) {
        return C0872c.m3851b(textView);
    }

    public static int getAutoSizeStepGranularity(@NonNull TextView textView) {
        return C0872c.m3852c(textView);
    }

    @NonNull
    public static int[] getAutoSizeTextAvailableSizes(@NonNull TextView textView) {
        return C0872c.m3853d(textView);
    }

    public static int getAutoSizeTextType(@NonNull TextView textView) {
        return C0872c.m3854e(textView);
    }

    @Nullable
    public static ColorStateList getCompoundDrawableTintList(@NonNull TextView textView) {
        Preconditions.checkNotNull(textView);
        return C0870a.m3842b(textView);
    }

    @Nullable
    public static PorterDuff.Mode getCompoundDrawableTintMode(@NonNull TextView textView) {
        Preconditions.checkNotNull(textView);
        return C0870a.m3843c(textView);
    }

    @NonNull
    public static Drawable[] getCompoundDrawablesRelative(@NonNull TextView textView) {
        return textView.getCompoundDrawablesRelative();
    }

    public static int getFirstBaselineToTopHeight(@NonNull TextView textView) {
        return textView.getPaddingTop() - textView.getPaint().getFontMetricsInt().top;
    }

    public static int getLastBaselineToBottomHeight(@NonNull TextView textView) {
        return textView.getPaddingBottom() + textView.getPaint().getFontMetricsInt().bottom;
    }

    public static int getMaxLines(@NonNull TextView textView) {
        return textView.getMaxLines();
    }

    public static int getMinLines(@NonNull TextView textView) {
        return textView.getMinLines();
    }

    @NonNull
    public static PrecomputedTextCompat.Params getTextMetricsParams(@NonNull TextView textView) {
        return new PrecomputedTextCompat.Params(C0873d.m3860c(textView));
    }

    public static void setAutoSizeTextTypeUniformWithConfiguration(@NonNull TextView textView, int i, int i2, int i3, int i4) throws IllegalArgumentException {
        C0872c.m3855f(textView, i, i2, i3, i4);
    }

    public static void setAutoSizeTextTypeUniformWithPresetSizes(@NonNull TextView textView, @NonNull int[] iArr, int i) throws IllegalArgumentException {
        C0872c.m3856g(textView, iArr, i);
    }

    public static void setAutoSizeTextTypeWithDefaults(@NonNull TextView textView, int i) {
        C0872c.m3857h(textView, i);
    }

    public static void setCompoundDrawableTintList(@NonNull TextView textView, @Nullable ColorStateList colorStateList) {
        Preconditions.checkNotNull(textView);
        C0870a.m3846f(textView, colorStateList);
    }

    public static void setCompoundDrawableTintMode(@NonNull TextView textView, @Nullable PorterDuff.Mode mode) {
        Preconditions.checkNotNull(textView);
        C0870a.m3847g(textView, mode);
    }

    public static void setCompoundDrawablesRelative(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        textView.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    public static void setCustomSelectionActionModeCallback(@NonNull TextView textView, @NonNull ActionMode.Callback callback) {
        textView.setCustomSelectionActionModeCallback(wrapCustomSelectionActionModeCallback(textView, callback));
    }

    public static void setFirstBaselineToTopHeight(@NonNull TextView textView, @IntRange(from = 0) @Px int i) {
        Preconditions.checkArgumentNonnegative(i);
        C0873d.m3861d(textView, i);
    }

    public static void setLastBaselineToBottomHeight(@NonNull TextView textView, @IntRange(from = 0) @Px int i) {
        Preconditions.checkArgumentNonnegative(i);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    public static void setLineHeight(@NonNull TextView textView, @IntRange(from = 0) @Px int i) {
        Preconditions.checkArgumentNonnegative(i);
        if (i != textView.getPaint().getFontMetricsInt(null)) {
            textView.setLineSpacing(i - r0, 1.0f);
        }
    }

    public static void setPrecomputedText(@NonNull TextView textView, @NonNull PrecomputedTextCompat precomputedTextCompat) {
        textView.setText(C0873d.m3858a(precomputedTextCompat.getPrecomputedText()));
    }

    public static void setTextAppearance(@NonNull TextView textView, @StyleRes int i) {
        textView.setTextAppearance(i);
    }

    public static void setTextMetricsParams(@NonNull TextView textView, @NonNull PrecomputedTextCompat.Params params) {
        textView.setTextDirection(m3839a(params.getTextDirection()));
        textView.getPaint().set(params.getTextPaint());
        C0870a.m3845e(textView, params.getBreakStrategy());
        C0870a.m3848h(textView, params.getHyphenationFrequency());
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static ActionMode.Callback unwrapCustomSelectionActionModeCallback(@Nullable ActionMode.Callback callback) {
        return callback instanceof ActionModeCallbackC0875f ? ((ActionModeCallbackC0875f) callback).m3866d() : callback;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static ActionMode.Callback wrapCustomSelectionActionModeCallback(@NonNull TextView textView, @Nullable ActionMode.Callback callback) {
        return callback;
    }

    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @DrawableRes int i, @DrawableRes int i2, @DrawableRes int i3, @DrawableRes int i4) {
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
    }

    public static void setLineHeight(@NonNull TextView textView, int i, @FloatRange(from = 0.0d) float f) {
        if (Build.VERSION.SDK_INT >= 34) {
            C0874e.m3862a(textView, i, f);
        } else {
            setLineHeight(textView, Math.round(TypedValue.applyDimension(i, f, textView.getResources().getDisplayMetrics())));
        }
    }
}
