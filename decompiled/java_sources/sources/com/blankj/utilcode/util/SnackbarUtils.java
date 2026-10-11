package com.blankj.utilcode.util;

import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.snackbar.Snackbar;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public final class SnackbarUtils {
    public static final int LENGTH_INDEFINITE = -2;
    public static final int LENGTH_LONG = 0;
    public static final int LENGTH_SHORT = -1;

    /* renamed from: k */
    public static final int f14004k = -16777217;

    /* renamed from: l */
    public static final int f14005l = -13912576;

    /* renamed from: m */
    public static final int f14006m = -16128;

    /* renamed from: n */
    public static final int f14007n = -65536;

    /* renamed from: o */
    public static final int f14008o = -1;

    /* renamed from: p */
    public static WeakReference<Snackbar> f14009p;

    /* renamed from: a */
    public View f14010a;

    /* renamed from: b */
    public CharSequence f14011b;

    /* renamed from: c */
    public int f14012c;

    /* renamed from: d */
    public int f14013d;

    /* renamed from: e */
    public int f14014e;

    /* renamed from: f */
    public int f14015f;

    /* renamed from: g */
    public CharSequence f14016g;

    /* renamed from: h */
    public int f14017h;

    /* renamed from: i */
    public View.OnClickListener f14018i;

    /* renamed from: j */
    public int f14019j;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface Duration {
    }

    public SnackbarUtils(View view) {
        m8322b();
        this.f14010a = view;
    }

    /* renamed from: a */
    public static ViewGroup m8321a(View view) {
        ViewGroup viewGroup = null;
        while (!(view instanceof CoordinatorLayout)) {
            if (view instanceof FrameLayout) {
                if (view.getId() == 16908290) {
                    return (ViewGroup) view;
                }
                viewGroup = (ViewGroup) view;
            }
            if (view != null) {
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            if (view == null) {
                return viewGroup;
            }
        }
        return (ViewGroup) view;
    }

    public static void addView(@LayoutRes int i, @NonNull ViewGroup.LayoutParams layoutParams) {
        View view = getView();
        if (view != null) {
            view.setPadding(0, 0, 0, 0);
            ((Snackbar.SnackbarLayout) view).addView(LayoutInflater.from(view.getContext()).inflate(i, (ViewGroup) null), -1, layoutParams);
        }
    }

    public static void dismiss() {
        WeakReference<Snackbar> weakReference = f14009p;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        f14009p.get().dismiss();
        f14009p = null;
    }

    public static View getView() {
        Snackbar snackbar = f14009p.get();
        if (snackbar == null) {
            return null;
        }
        return snackbar.getView();
    }

    public static SnackbarUtils with(@NonNull View view) {
        return new SnackbarUtils(view);
    }

    /* renamed from: b */
    public final void m8322b() {
        this.f14011b = "";
        this.f14012c = -16777217;
        this.f14013d = -16777217;
        this.f14014e = -1;
        this.f14015f = -1;
        this.f14016g = "";
        this.f14017h = -16777217;
        this.f14019j = 0;
    }

    public SnackbarUtils setAction(@NonNull CharSequence charSequence, @NonNull View.OnClickListener onClickListener) {
        return setAction(charSequence, -16777217, onClickListener);
    }

    public SnackbarUtils setBgColor(@ColorInt int i) {
        this.f14013d = i;
        return this;
    }

    public SnackbarUtils setBgResource(@DrawableRes int i) {
        this.f14014e = i;
        return this;
    }

    public SnackbarUtils setBottomMargin(@IntRange(from = 1) int i) {
        this.f14019j = i;
        return this;
    }

    public SnackbarUtils setDuration(int i) {
        this.f14015f = i;
        return this;
    }

    public SnackbarUtils setMessage(@NonNull CharSequence charSequence) {
        this.f14011b = charSequence;
        return this;
    }

    public SnackbarUtils setMessageColor(@ColorInt int i) {
        this.f14012c = i;
        return this;
    }

    public Snackbar show() {
        return show(false);
    }

    public void showError() {
        showError(false);
    }

    public void showSuccess() {
        showSuccess(false);
    }

    public void showWarning() {
        showWarning(false);
    }

    public SnackbarUtils setAction(@NonNull CharSequence charSequence, @ColorInt int i, @NonNull View.OnClickListener onClickListener) {
        this.f14016g = charSequence;
        this.f14017h = i;
        this.f14018i = onClickListener;
        return this;
    }

    public Snackbar show(boolean z) {
        View view = this.f14010a;
        if (view == null) {
            return null;
        }
        if (z) {
            ViewGroup m8321a = m8321a(view);
            View findViewWithTag = m8321a.findViewWithTag("topSnackBarCoordinatorLayout");
            if (findViewWithTag == null) {
                findViewWithTag = new CoordinatorLayout(view.getContext());
                findViewWithTag.setTag("topSnackBarCoordinatorLayout");
                findViewWithTag.setRotation(180.0f);
                findViewWithTag.setElevation(100.0f);
                m8321a.addView(findViewWithTag, -1, -1);
            }
            view = findViewWithTag;
        }
        if (this.f14012c != -16777217) {
            SpannableString spannableString = new SpannableString(this.f14011b);
            spannableString.setSpan(new ForegroundColorSpan(this.f14012c), 0, spannableString.length(), 33);
            f14009p = new WeakReference<>(Snackbar.make(view, spannableString, this.f14015f));
        } else {
            f14009p = new WeakReference<>(Snackbar.make(view, this.f14011b, this.f14015f));
        }
        Snackbar snackbar = f14009p.get();
        Snackbar.SnackbarLayout snackbarLayout = (Snackbar.SnackbarLayout) snackbar.getView();
        if (z) {
            for (int i = 0; i < snackbarLayout.getChildCount(); i++) {
                snackbarLayout.getChildAt(i).setRotation(180.0f);
            }
        }
        int i2 = this.f14014e;
        if (i2 != -1) {
            snackbarLayout.setBackgroundResource(i2);
        } else {
            int i3 = this.f14013d;
            if (i3 != -16777217) {
                snackbarLayout.setBackgroundColor(i3);
            }
        }
        if (this.f14019j != 0) {
            ((ViewGroup.MarginLayoutParams) snackbarLayout.getLayoutParams()).bottomMargin = this.f14019j;
        }
        if (this.f14016g.length() > 0 && this.f14018i != null) {
            int i4 = this.f14017h;
            if (i4 != -16777217) {
                snackbar.setActionTextColor(i4);
            }
            snackbar.setAction(this.f14016g, this.f14018i);
        }
        snackbar.show();
        return snackbar;
    }

    public void showError(boolean z) {
        this.f14013d = -65536;
        this.f14012c = -1;
        this.f14017h = -1;
        show(z);
    }

    public void showSuccess(boolean z) {
        this.f14013d = f14005l;
        this.f14012c = -1;
        this.f14017h = -1;
        show(z);
    }

    public void showWarning(boolean z) {
        this.f14013d = f14006m;
        this.f14012c = -1;
        this.f14017h = -1;
        show(z);
    }

    public static void addView(@NonNull View view, @NonNull ViewGroup.LayoutParams layoutParams) {
        View view2 = getView();
        if (view2 != null) {
            view2.setPadding(0, 0, 0, 0);
            ((Snackbar.SnackbarLayout) view2).addView(view, layoutParams);
        }
    }
}
