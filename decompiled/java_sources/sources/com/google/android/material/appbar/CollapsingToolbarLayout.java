package com.google.android.material.appbar;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.C5139R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.internal.CollapsingTextHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.sunia.HTREnginev2.j4o;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes6.dex */
public class CollapsingToolbarLayout extends FrameLayout {
    public static final int TITLE_COLLAPSE_MODE_FADE = 1;
    public static final int TITLE_COLLAPSE_MODE_SCALE = 0;

    /* renamed from: x0 */
    public static final int f30244x0 = C5139R.style.Widget_Design_CollapsingToolbar;

    /* renamed from: y0 */
    public static final int f30245y0 = 600;

    /* renamed from: J */
    public int f30246J;

    /* renamed from: O */
    public AppBarLayout.OnOffsetChangedListener f30247O;

    /* renamed from: Q */
    public int f30248Q;

    /* renamed from: e */
    public boolean f30249e;

    /* renamed from: f */
    public int f30250f;

    /* renamed from: g */
    @Nullable
    public ViewGroup f30251g;

    /* renamed from: h */
    @Nullable
    public View f30252h;

    /* renamed from: i */
    public View f30253i;

    /* renamed from: j */
    public int f30254j;

    /* renamed from: k */
    public int f30255k;

    /* renamed from: k0 */
    public int f30256k0;

    /* renamed from: l */
    public int f30257l;

    /* renamed from: m */
    public int f30258m;

    /* renamed from: n */
    public final Rect f30259n;

    /* renamed from: o */
    @NonNull
    public final CollapsingTextHelper f30260o;

    /* renamed from: p */
    @NonNull
    public final ElevationOverlayProvider f30261p;

    /* renamed from: q */
    public boolean f30262q;

    /* renamed from: q0 */
    @Nullable
    public WindowInsetsCompat f30263q0;

    /* renamed from: r */
    public boolean f30264r;

    /* renamed from: s */
    @Nullable
    public Drawable f30265s;

    /* renamed from: t */
    @Nullable
    public Drawable f30266t;

    /* renamed from: t0 */
    public int f30267t0;

    /* renamed from: u */
    public int f30268u;

    /* renamed from: u0 */
    public boolean f30269u0;

    /* renamed from: v */
    public boolean f30270v;

    /* renamed from: v0 */
    public int f30271v0;

    /* renamed from: w */
    public ValueAnimator f30272w;

    /* renamed from: w0 */
    public boolean f30273w0;

    /* renamed from: x */
    public long f30274x;

    /* renamed from: y */
    public final TimeInterpolator f30275y;

    /* renamed from: z */
    public final TimeInterpolator f30276z;

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public interface StaticLayoutBuilderConfigurer extends com.google.android.material.internal.StaticLayoutBuilderConfigurer {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface TitleCollapseMode {
    }

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$a */
    /* loaded from: classes6.dex */
    public class C5144a implements OnApplyWindowInsetsListener {
        public C5144a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            return CollapsingToolbarLayout.this.m22932m(windowInsetsCompat);
        }
    }

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$b */
    /* loaded from: classes6.dex */
    public class C5145b implements ValueAnimator.AnimatorUpdateListener {
        public C5145b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            CollapsingToolbarLayout.this.setScrimAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$c */
    /* loaded from: classes6.dex */
    public class C5146c implements AppBarLayout.OnOffsetChangedListener {
        public C5146c() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int i) {
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            collapsingToolbarLayout.f30248Q = i;
            WindowInsetsCompat windowInsetsCompat = collapsingToolbarLayout.f30263q0;
            int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                j4o m22922i = CollapsingToolbarLayout.m22922i(childAt);
                int i3 = layoutParams.f30278a;
                if (i3 == 1) {
                    m22922i.m54880k(MathUtils.clamp(-i, 0, CollapsingToolbarLayout.this.m22929g(childAt)));
                } else if (i3 == 2) {
                    m22922i.m54880k(Math.round((-i) * layoutParams.f30279b));
                }
            }
            CollapsingToolbarLayout.this.m22938s();
            CollapsingToolbarLayout collapsingToolbarLayout2 = CollapsingToolbarLayout.this;
            if (collapsingToolbarLayout2.f30266t != null && systemWindowInsetTop > 0) {
                ViewCompat.postInvalidateOnAnimation(collapsingToolbarLayout2);
            }
            int height = (CollapsingToolbarLayout.this.getHeight() - ViewCompat.getMinimumHeight(CollapsingToolbarLayout.this)) - systemWindowInsetTop;
            float f = height;
            CollapsingToolbarLayout.this.f30260o.setFadeModeStartFraction(Math.min(1.0f, (r0 - CollapsingToolbarLayout.this.getScrimVisibleHeightTrigger()) / f));
            CollapsingToolbarLayout collapsingToolbarLayout3 = CollapsingToolbarLayout.this;
            collapsingToolbarLayout3.f30260o.setCurrentOffsetY(collapsingToolbarLayout3.f30248Q + height);
            CollapsingToolbarLayout.this.f30260o.setExpansionFraction(Math.abs(i) / f);
        }
    }

    public CollapsingToolbarLayout(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: f */
    public static int m22920f(@NonNull View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return view.getMeasuredHeight();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return view.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    @ColorInt
    private int getDefaultContentScrimColorForTitleCollapseFadeMode() {
        ColorStateList colorStateListOrNull = MaterialColors.getColorStateListOrNull(getContext(), C5139R.attr.colorSurfaceContainer);
        if (colorStateListOrNull != null) {
            return colorStateListOrNull.getDefaultColor();
        }
        return this.f30261p.compositeOverlayWithThemeSurfaceColorIfNeeded(getResources().getDimension(C5139R.dimen.design_appbar_elevation));
    }

    /* renamed from: h */
    public static CharSequence m22921h(View view) {
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getTitle();
        }
        if (view instanceof android.widget.Toolbar) {
            return ((android.widget.Toolbar) view).getTitle();
        }
        return null;
    }

    @NonNull
    /* renamed from: i */
    public static j4o m22922i(@NonNull View view) {
        j4o j4oVar = (j4o) view.getTag(C5139R.id.view_offset_helper);
        if (j4oVar != null) {
            return j4oVar;
        }
        j4o j4oVar2 = new j4o(view);
        view.setTag(C5139R.id.view_offset_helper, j4oVar2);
        return j4oVar2;
    }

    /* renamed from: k */
    public static boolean m22923k(View view) {
        return (view instanceof Toolbar) || (view instanceof android.widget.Toolbar);
    }

    /* renamed from: a */
    public final void m22924a(int i) {
        m22927d();
        ValueAnimator valueAnimator = this.f30272w;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.f30272w = valueAnimator2;
            valueAnimator2.setInterpolator(i > this.f30268u ? this.f30275y : this.f30276z);
            this.f30272w.addUpdateListener(new C5145b());
        } else if (valueAnimator.isRunning()) {
            this.f30272w.cancel();
        }
        this.f30272w.setDuration(this.f30274x);
        this.f30272w.setIntValues(this.f30268u, i);
        this.f30272w.start();
    }

    /* renamed from: b */
    public final TextUtils.TruncateAt m22925b(int i) {
        return i != 0 ? i != 1 ? i != 3 ? TextUtils.TruncateAt.END : TextUtils.TruncateAt.MARQUEE : TextUtils.TruncateAt.MIDDLE : TextUtils.TruncateAt.START;
    }

    /* renamed from: c */
    public final void m22926c(AppBarLayout appBarLayout) {
        if (m22930j()) {
            appBarLayout.setLiftOnScroll(false);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* renamed from: d */
    public final void m22927d() {
        if (this.f30249e) {
            ViewGroup viewGroup = null;
            this.f30251g = null;
            this.f30252h = null;
            int i = this.f30250f;
            if (i != -1) {
                ViewGroup viewGroup2 = (ViewGroup) findViewById(i);
                this.f30251g = viewGroup2;
                if (viewGroup2 != null) {
                    this.f30252h = m22928e(viewGroup2);
                }
            }
            if (this.f30251g == null) {
                int childCount = getChildCount();
                int i2 = 0;
                while (true) {
                    if (i2 >= childCount) {
                        break;
                    }
                    View childAt = getChildAt(i2);
                    if (m22923k(childAt)) {
                        viewGroup = (ViewGroup) childAt;
                        break;
                    }
                    i2++;
                }
                this.f30251g = viewGroup;
            }
            m22937r();
            this.f30249e = false;
        }
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        m22927d();
        if (this.f30251g == null && (drawable = this.f30265s) != null && this.f30268u > 0) {
            drawable.mutate().setAlpha(this.f30268u);
            this.f30265s.draw(canvas);
        }
        if (this.f30262q && this.f30264r) {
            if (this.f30251g == null || this.f30265s == null || this.f30268u <= 0 || !m22930j() || this.f30260o.getExpansionFraction() >= this.f30260o.getFadeModeThresholdFraction()) {
                this.f30260o.draw(canvas);
            } else {
                int save = canvas.save();
                canvas.clipRect(this.f30265s.getBounds(), Region.Op.DIFFERENCE);
                this.f30260o.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
        if (this.f30266t == null || this.f30268u <= 0) {
            return;
        }
        WindowInsetsCompat windowInsetsCompat = this.f30263q0;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.f30266t.setBounds(0, -this.f30248Q, getWidth(), systemWindowInsetTop - this.f30248Q);
            this.f30266t.mutate().setAlpha(this.f30268u);
            this.f30266t.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        boolean z;
        if (this.f30265s == null || this.f30268u <= 0 || !m22931l(view)) {
            z = false;
        } else {
            m22936q(this.f30265s, view, getWidth(), getHeight());
            this.f30265s.mutate().setAlpha(this.f30268u);
            this.f30265s.draw(canvas);
            z = true;
        }
        return super.drawChild(canvas, view, j) || z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f30266t;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.f30265s;
        if (drawable2 != null && drawable2.isStateful()) {
            z |= drawable2.setState(drawableState);
        }
        CollapsingTextHelper collapsingTextHelper = this.f30260o;
        if (collapsingTextHelper != null) {
            z |= collapsingTextHelper.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    @NonNull
    /* renamed from: e */
    public final View m22928e(@NonNull View view) {
        for (ViewParent parent = view.getParent(); parent != this && parent != null; parent = parent.getParent()) {
            if (parent instanceof View) {
                view = parent;
            }
        }
        return view;
    }

    /* renamed from: g */
    public final int m22929g(@NonNull View view) {
        return ((getHeight() - m22922i(view).m54872c()) - view.getHeight()) - ((FrameLayout.LayoutParams) ((LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    public int getCollapsedTitleGravity() {
        return this.f30260o.getCollapsedTextGravity();
    }

    public float getCollapsedTitleTextSize() {
        return this.f30260o.getCollapsedTextSize();
    }

    @NonNull
    public Typeface getCollapsedTitleTypeface() {
        return this.f30260o.getCollapsedTypeface();
    }

    @Nullable
    public Drawable getContentScrim() {
        return this.f30265s;
    }

    public int getExpandedTitleGravity() {
        return this.f30260o.getExpandedTextGravity();
    }

    public int getExpandedTitleMarginBottom() {
        return this.f30258m;
    }

    public int getExpandedTitleMarginEnd() {
        return this.f30257l;
    }

    public int getExpandedTitleMarginStart() {
        return this.f30254j;
    }

    public int getExpandedTitleMarginTop() {
        return this.f30255k;
    }

    public float getExpandedTitleTextSize() {
        return this.f30260o.getExpandedTextSize();
    }

    @NonNull
    public Typeface getExpandedTitleTypeface() {
        return this.f30260o.getExpandedTypeface();
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getHyphenationFrequency() {
        return this.f30260o.getHyphenationFrequency();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getLineCount() {
        return this.f30260o.getLineCount();
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float getLineSpacingAdd() {
        return this.f30260o.getLineSpacingAdd();
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float getLineSpacingMultiplier() {
        return this.f30260o.getLineSpacingMultiplier();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getMaxLines() {
        return this.f30260o.getMaxLines();
    }

    public int getScrimAlpha() {
        return this.f30268u;
    }

    public long getScrimAnimationDuration() {
        return this.f30274x;
    }

    public int getScrimVisibleHeightTrigger() {
        int i = this.f30246J;
        if (i >= 0) {
            return i + this.f30267t0 + this.f30271v0;
        }
        WindowInsetsCompat windowInsetsCompat = this.f30263q0;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        return minimumHeight > 0 ? Math.min((minimumHeight * 2) + systemWindowInsetTop, getHeight()) : getHeight() / 3;
    }

    @Nullable
    public Drawable getStatusBarScrim() {
        return this.f30266t;
    }

    @Nullable
    public CharSequence getTitle() {
        if (this.f30262q) {
            return this.f30260o.getText();
        }
        return null;
    }

    public int getTitleCollapseMode() {
        return this.f30256k0;
    }

    @Nullable
    public TimeInterpolator getTitlePositionInterpolator() {
        return this.f30260o.getPositionInterpolator();
    }

    @NonNull
    public TextUtils.TruncateAt getTitleTextEllipsize() {
        return this.f30260o.getTitleTextEllipsize();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isExtraMultilineHeightEnabled() {
        return this.f30273w0;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isForceApplySystemWindowInsetTop() {
        return this.f30269u0;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isRtlTextDirectionHeuristicsEnabled() {
        return this.f30260o.isRtlTextDirectionHeuristicsEnabled();
    }

    public boolean isTitleEnabled() {
        return this.f30262q;
    }

    /* renamed from: j */
    public final boolean m22930j() {
        return this.f30256k0 == 1;
    }

    /* renamed from: l */
    public final boolean m22931l(View view) {
        View view2 = this.f30252h;
        if (view2 == null || view2 == this) {
            if (view == this.f30251g) {
                return true;
            }
        } else if (view == view2) {
            return true;
        }
        return false;
    }

    /* renamed from: m */
    public WindowInsetsCompat m22932m(@NonNull WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(this) ? windowInsetsCompat : null;
        if (!ObjectsCompat.equals(this.f30263q0, windowInsetsCompat2)) {
            this.f30263q0 = windowInsetsCompat2;
            requestLayout();
        }
        return windowInsetsCompat.consumeSystemWindowInsets();
    }

    /* renamed from: n */
    public final void m22933n(boolean z) {
        int i;
        int i2;
        int i3;
        int i4;
        View view = this.f30252h;
        if (view == null) {
            view = this.f30251g;
        }
        int m22929g = m22929g(view);
        DescendantOffsetUtils.getDescendantRect(this, this.f30253i, this.f30259n);
        ViewGroup viewGroup = this.f30251g;
        if (viewGroup instanceof Toolbar) {
            Toolbar toolbar = (Toolbar) viewGroup;
            i = toolbar.getTitleMarginStart();
            i3 = toolbar.getTitleMarginEnd();
            i4 = toolbar.getTitleMarginTop();
            i2 = toolbar.getTitleMarginBottom();
        } else if (viewGroup instanceof android.widget.Toolbar) {
            android.widget.Toolbar toolbar2 = (android.widget.Toolbar) viewGroup;
            i = toolbar2.getTitleMarginStart();
            i3 = toolbar2.getTitleMarginEnd();
            i4 = toolbar2.getTitleMarginTop();
            i2 = toolbar2.getTitleMarginBottom();
        } else {
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        }
        CollapsingTextHelper collapsingTextHelper = this.f30260o;
        Rect rect = this.f30259n;
        int i5 = rect.left + (z ? i3 : i);
        int i6 = rect.top + m22929g + i4;
        int i7 = rect.right;
        if (!z) {
            i = i3;
        }
        collapsingTextHelper.setCollapsedBounds(i5, i6, i7 - i, (rect.bottom + m22929g) - i2);
    }

    /* renamed from: o */
    public final void m22934o() {
        setContentDescription(getTitle());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            m22926c(appBarLayout);
            ViewCompat.setFitsSystemWindows(this, ViewCompat.getFitsSystemWindows(appBarLayout));
            if (this.f30247O == null) {
                this.f30247O = new C5146c();
            }
            appBarLayout.addOnOffsetChangedListener(this.f30247O);
            ViewCompat.requestApplyInsets(this);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f30260o.maybeUpdateFontWeightAdjustment(configuration);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.OnOffsetChangedListener onOffsetChangedListener = this.f30247O;
        if (onOffsetChangedListener != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).removeOnOffsetChangedListener(onOffsetChangedListener);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        WindowInsetsCompat windowInsetsCompat = this.f30263q0;
        if (windowInsetsCompat != null) {
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (!ViewCompat.getFitsSystemWindows(childAt) && childAt.getTop() < systemWindowInsetTop) {
                    ViewCompat.offsetTopAndBottom(childAt, systemWindowInsetTop);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            m22922i(getChildAt(i6)).m54877h();
        }
        m22939t(i, i2, i3, i4, false);
        m22940u();
        m22938s();
        int childCount3 = getChildCount();
        for (int i7 = 0; i7 < childCount3; i7++) {
            m22922i(getChildAt(i7)).m54870a();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        m22927d();
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        WindowInsetsCompat windowInsetsCompat = this.f30263q0;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if ((mode == 0 || this.f30269u0) && systemWindowInsetTop > 0) {
            this.f30267t0 = systemWindowInsetTop;
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + systemWindowInsetTop, 1073741824));
        }
        if (this.f30273w0 && this.f30260o.getMaxLines() > 1) {
            m22940u();
            m22939t(0, 0, getMeasuredWidth(), getMeasuredHeight(), true);
            int expandedLineCount = this.f30260o.getExpandedLineCount();
            if (expandedLineCount > 1) {
                this.f30271v0 = Math.round(this.f30260o.getExpandedTextFullHeight()) * (expandedLineCount - 1);
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + this.f30271v0, 1073741824));
            }
        }
        ViewGroup viewGroup = this.f30251g;
        if (viewGroup != null) {
            View view = this.f30252h;
            if (view == null || view == this) {
                setMinimumHeight(m22920f(viewGroup));
            } else {
                setMinimumHeight(m22920f(view));
            }
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.f30265s;
        if (drawable != null) {
            m22935p(drawable, i, i2);
        }
    }

    /* renamed from: p */
    public final void m22935p(@NonNull Drawable drawable, int i, int i2) {
        m22936q(drawable, this.f30251g, i, i2);
    }

    /* renamed from: q */
    public final void m22936q(@NonNull Drawable drawable, @Nullable View view, int i, int i2) {
        if (m22930j() && view != null && this.f30262q) {
            i2 = view.getBottom();
        }
        drawable.setBounds(0, 0, i, i2);
    }

    /* renamed from: r */
    public final void m22937r() {
        View view;
        if (!this.f30262q && (view = this.f30253i) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f30253i);
            }
        }
        if (!this.f30262q || this.f30251g == null) {
            return;
        }
        if (this.f30253i == null) {
            this.f30253i = new View(getContext());
        }
        if (this.f30253i.getParent() == null) {
            this.f30251g.addView(this.f30253i, -1, -1);
        }
    }

    /* renamed from: s */
    public final void m22938s() {
        if (this.f30265s == null && this.f30266t == null) {
            return;
        }
        setScrimsShown(getHeight() + this.f30248Q < getScrimVisibleHeightTrigger());
    }

    public void setCollapsedTitleGravity(int i) {
        this.f30260o.setCollapsedTextGravity(i);
    }

    public void setCollapsedTitleTextAppearance(@StyleRes int i) {
        this.f30260o.setCollapsedTextAppearance(i);
    }

    public void setCollapsedTitleTextColor(@ColorInt int i) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedTitleTextSize(float f) {
        this.f30260o.setCollapsedTextSize(f);
    }

    public void setCollapsedTitleTypeface(@Nullable Typeface typeface) {
        this.f30260o.setCollapsedTypeface(typeface);
    }

    public void setContentScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f30265s;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.f30265s = mutate;
            if (mutate != null) {
                m22935p(mutate, getWidth(), getHeight());
                this.f30265s.setCallback(this);
                this.f30265s.setAlpha(this.f30268u);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setContentScrimColor(@ColorInt int i) {
        setContentScrim(new ColorDrawable(i));
    }

    public void setContentScrimResource(@DrawableRes int i) {
        setContentScrim(ContextCompat.getDrawable(getContext(), i));
    }

    public void setExpandedTitleColor(@ColorInt int i) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedTitleGravity(int i) {
        this.f30260o.setExpandedTextGravity(i);
    }

    public void setExpandedTitleMargin(int i, int i2, int i3, int i4) {
        this.f30254j = i;
        this.f30255k = i2;
        this.f30257l = i3;
        this.f30258m = i4;
        requestLayout();
    }

    public void setExpandedTitleMarginBottom(int i) {
        this.f30258m = i;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i) {
        this.f30257l = i;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i) {
        this.f30254j = i;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i) {
        this.f30255k = i;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(@StyleRes int i) {
        this.f30260o.setExpandedTextAppearance(i);
    }

    public void setExpandedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.f30260o.setExpandedTextColor(colorStateList);
    }

    public void setExpandedTitleTextSize(float f) {
        this.f30260o.setExpandedTextSize(f);
    }

    public void setExpandedTitleTypeface(@Nullable Typeface typeface) {
        this.f30260o.setExpandedTypeface(typeface);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setExtraMultilineHeightEnabled(boolean z) {
        this.f30273w0 = z;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setForceApplySystemWindowInsetTop(boolean z) {
        this.f30269u0 = z;
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setHyphenationFrequency(int i) {
        this.f30260o.setHyphenationFrequency(i);
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setLineSpacingAdd(float f) {
        this.f30260o.setLineSpacingAdd(f);
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setLineSpacingMultiplier(@FloatRange(from = 0.0d) float f) {
        this.f30260o.setLineSpacingMultiplier(f);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setMaxLines(int i) {
        this.f30260o.setMaxLines(i);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setRtlTextDirectionHeuristicsEnabled(boolean z) {
        this.f30260o.setRtlTextDirectionHeuristicsEnabled(z);
    }

    public void setScrimAlpha(int i) {
        ViewGroup viewGroup;
        if (i != this.f30268u) {
            if (this.f30265s != null && (viewGroup = this.f30251g) != null) {
                ViewCompat.postInvalidateOnAnimation(viewGroup);
            }
            this.f30268u = i;
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setScrimAnimationDuration(@IntRange(from = 0) long j) {
        this.f30274x = j;
    }

    public void setScrimVisibleHeightTrigger(@IntRange(from = 0) int i) {
        if (this.f30246J != i) {
            this.f30246J = i;
            m22938s();
        }
    }

    public void setScrimsShown(boolean z) {
        setScrimsShown(z, ViewCompat.isLaidOut(this) && !isInEditMode());
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setStaticLayoutBuilderConfigurer(@Nullable StaticLayoutBuilderConfigurer staticLayoutBuilderConfigurer) {
        this.f30260o.setStaticLayoutBuilderConfigurer(staticLayoutBuilderConfigurer);
    }

    public void setStatusBarScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f30266t;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.f30266t = mutate;
            if (mutate != null) {
                if (mutate.isStateful()) {
                    this.f30266t.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.f30266t, ViewCompat.getLayoutDirection(this));
                this.f30266t.setVisible(getVisibility() == 0, false);
                this.f30266t.setCallback(this);
                this.f30266t.setAlpha(this.f30268u);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarScrimColor(@ColorInt int i) {
        setStatusBarScrim(new ColorDrawable(i));
    }

    public void setStatusBarScrimResource(@DrawableRes int i) {
        setStatusBarScrim(ContextCompat.getDrawable(getContext(), i));
    }

    public void setTitle(@Nullable CharSequence charSequence) {
        this.f30260o.setText(charSequence);
        m22934o();
    }

    public void setTitleCollapseMode(int i) {
        this.f30256k0 = i;
        boolean m22930j = m22930j();
        this.f30260o.setFadeModeEnabled(m22930j);
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            m22926c((AppBarLayout) parent);
        }
        if (m22930j && this.f30265s == null) {
            setContentScrimColor(getDefaultContentScrimColorForTitleCollapseFadeMode());
        }
    }

    public void setTitleEllipsize(@NonNull TextUtils.TruncateAt truncateAt) {
        this.f30260o.setTitleTextEllipsize(truncateAt);
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.f30262q) {
            this.f30262q = z;
            m22934o();
            m22937r();
            requestLayout();
        }
    }

    public void setTitlePositionInterpolator(@Nullable TimeInterpolator timeInterpolator) {
        this.f30260o.setPositionInterpolator(timeInterpolator);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f30266t;
        if (drawable != null && drawable.isVisible() != z) {
            this.f30266t.setVisible(z, false);
        }
        Drawable drawable2 = this.f30265s;
        if (drawable2 == null || drawable2.isVisible() == z) {
            return;
        }
        this.f30265s.setVisible(z, false);
    }

    /* renamed from: t */
    public final void m22939t(int i, int i2, int i3, int i4, boolean z) {
        View view;
        if (!this.f30262q || (view = this.f30253i) == null) {
            return;
        }
        boolean z2 = ViewCompat.isAttachedToWindow(view) && this.f30253i.getVisibility() == 0;
        this.f30264r = z2;
        if (z2 || z) {
            boolean z3 = ViewCompat.getLayoutDirection(this) == 1;
            m22933n(z3);
            this.f30260o.setExpandedBounds(z3 ? this.f30257l : this.f30254j, this.f30259n.top + this.f30255k, (i3 - i) - (z3 ? this.f30254j : this.f30257l), (i4 - i2) - this.f30258m);
            this.f30260o.recalculate(z);
        }
    }

    /* renamed from: u */
    public final void m22940u() {
        if (this.f30251g != null && this.f30262q && TextUtils.isEmpty(this.f30260o.getText())) {
            setTitle(m22921h(this.f30251g));
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(@NonNull Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f30265s || drawable == this.f30266t;
    }

    public CollapsingToolbarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.collapsingToolbarLayoutStyle);
    }

    public void setCollapsedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.f30260o.setCollapsedTextColor(colorStateList);
    }

    public void setScrimsShown(boolean z, boolean z2) {
        if (this.f30270v != z) {
            if (z2) {
                m22924a(z ? 255 : 0);
            } else {
                setScrimAlpha(z ? 255 : 0);
            }
            this.f30270v = z;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CollapsingToolbarLayout(@androidx.annotation.NonNull android.content.Context r11, @androidx.annotation.Nullable android.util.AttributeSet r12, int r13) {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    /* loaded from: classes6.dex */
    public static class LayoutParams extends FrameLayout.LayoutParams {
        public static final int COLLAPSE_MODE_OFF = 0;
        public static final int COLLAPSE_MODE_PARALLAX = 2;
        public static final int COLLAPSE_MODE_PIN = 1;

        /* renamed from: c */
        public static final float f30277c = 0.5f;

        /* renamed from: a */
        public int f30278a;

        /* renamed from: b */
        public float f30279b;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f30278a = 0;
            this.f30279b = 0.5f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5139R.styleable.CollapsingToolbarLayout_Layout);
            this.f30278a = obtainStyledAttributes.getInt(C5139R.styleable.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            setParallaxMultiplier(obtainStyledAttributes.getFloat(C5139R.styleable.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f));
            obtainStyledAttributes.recycle();
        }

        public int getCollapseMode() {
            return this.f30278a;
        }

        public float getParallaxMultiplier() {
            return this.f30279b;
        }

        public void setCollapseMode(int i) {
            this.f30278a = i;
        }

        public void setParallaxMultiplier(float f) {
            this.f30279b = f;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f30278a = 0;
            this.f30279b = 0.5f;
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2, i3);
            this.f30278a = 0;
            this.f30279b = 0.5f;
        }

        public LayoutParams(@NonNull ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f30278a = 0;
            this.f30279b = 0.5f;
        }

        public LayoutParams(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f30278a = 0;
            this.f30279b = 0.5f;
        }

        @RequiresApi(19)
        public LayoutParams(@NonNull FrameLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f30278a = 0;
            this.f30279b = 0.5f;
        }

        @RequiresApi(19)
        public LayoutParams(@NonNull LayoutParams layoutParams) {
            super((FrameLayout.LayoutParams) layoutParams);
            this.f30278a = 0;
            this.f30279b = 0.5f;
            this.f30278a = layoutParams.f30278a;
            this.f30279b = layoutParams.f30279b;
        }
    }
}
