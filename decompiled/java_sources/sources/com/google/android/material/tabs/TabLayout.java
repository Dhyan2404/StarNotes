package com.google.android.material.tabs;

import android.R;
import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Pools;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.C5139R;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.BadgeUtils;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.qmf;
import com.sunia.HTREnginev2.w8g;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

@ViewPager.DecorView
/* loaded from: classes6.dex */
public class TabLayout extends HorizontalScrollView {
    public static final int GRAVITY_CENTER = 1;
    public static final int GRAVITY_FILL = 0;
    public static final int GRAVITY_START = 2;
    public static final int INDICATOR_ANIMATION_MODE_ELASTIC = 1;
    public static final int INDICATOR_ANIMATION_MODE_FADE = 2;
    public static final int INDICATOR_ANIMATION_MODE_LINEAR = 0;
    public static final int INDICATOR_GRAVITY_BOTTOM = 0;
    public static final int INDICATOR_GRAVITY_CENTER = 1;
    public static final int INDICATOR_GRAVITY_STRETCH = 3;
    public static final int INDICATOR_GRAVITY_TOP = 2;
    public static final int MODE_AUTO = 2;
    public static final int MODE_FIXED = 1;
    public static final int MODE_SCROLLABLE = 0;

    /* renamed from: Q0 */
    @Dimension(unit = 0)
    public static final int f32592Q0 = 72;

    /* renamed from: R0 */
    @Dimension(unit = 0)
    public static final int f32593R0 = 8;

    /* renamed from: S0 */
    @Dimension(unit = 0)
    public static final int f32594S0 = 48;

    /* renamed from: T0 */
    @Dimension(unit = 0)
    public static final int f32595T0 = 56;
    public static final int TAB_LABEL_VISIBILITY_LABELED = 1;
    public static final int TAB_LABEL_VISIBILITY_UNLABELED = 0;

    /* renamed from: U0 */
    @Dimension(unit = 0)
    public static final int f32596U0 = 16;

    /* renamed from: V0 */
    public static final int f32597V0 = -1;

    /* renamed from: W0 */
    public static final int f32598W0 = 300;

    /* renamed from: X0 */
    public static final int f32599X0 = -1;

    /* renamed from: Z0 */
    public static final String f32601Z0 = "TabLayout";

    /* renamed from: A0 */
    public boolean f32602A0;

    /* renamed from: B0 */
    public C5419a f32603B0;

    /* renamed from: C0 */
    public final TimeInterpolator f32604C0;

    /* renamed from: D0 */
    @Nullable
    public BaseOnTabSelectedListener f32605D0;

    /* renamed from: E0 */
    public final ArrayList<BaseOnTabSelectedListener> f32606E0;

    /* renamed from: F0 */
    @Nullable
    public BaseOnTabSelectedListener f32607F0;

    /* renamed from: G0 */
    public ValueAnimator f32608G0;

    /* renamed from: H0 */
    @Nullable
    public ViewPager f32609H0;

    /* renamed from: I0 */
    @Nullable
    public PagerAdapter f32610I0;

    /* renamed from: J */
    public final int f32611J;

    /* renamed from: J0 */
    public DataSetObserver f32612J0;

    /* renamed from: K0 */
    public TabLayoutOnPageChangeListener f32613K0;

    /* renamed from: L0 */
    public C5413b f32614L0;

    /* renamed from: M0 */
    public boolean f32615M0;

    /* renamed from: N0 */
    public int f32616N0;

    /* renamed from: O */
    public final int f32617O;

    /* renamed from: O0 */
    public final Pools.Pool<TabView> f32618O0;

    /* renamed from: Q */
    public final int f32619Q;

    /* renamed from: e */
    public int f32620e;

    /* renamed from: f */
    public final ArrayList<Tab> f32621f;

    /* renamed from: g */
    @Nullable
    public Tab f32622g;

    /* renamed from: h */
    @NonNull
    public final C5415d f32623h;

    /* renamed from: i */
    public int f32624i;

    /* renamed from: j */
    public int f32625j;

    /* renamed from: k */
    public int f32626k;

    /* renamed from: k0 */
    public int f32627k0;

    /* renamed from: l */
    public int f32628l;

    /* renamed from: m */
    public final int f32629m;

    /* renamed from: n */
    public final int f32630n;

    /* renamed from: o */
    public int f32631o;

    /* renamed from: p */
    public ColorStateList f32632p;

    /* renamed from: q */
    public ColorStateList f32633q;

    /* renamed from: q0 */
    public int f32634q0;

    /* renamed from: r */
    public ColorStateList f32635r;

    /* renamed from: s */
    @NonNull
    public Drawable f32636s;

    /* renamed from: t */
    public int f32637t;

    /* renamed from: t0 */
    public int f32638t0;

    /* renamed from: u */
    public PorterDuff.Mode f32639u;

    /* renamed from: u0 */
    public int f32640u0;

    /* renamed from: v */
    public float f32641v;

    /* renamed from: v0 */
    public int f32642v0;

    /* renamed from: w */
    public float f32643w;

    /* renamed from: w0 */
    public boolean f32644w0;

    /* renamed from: x */
    public float f32645x;

    /* renamed from: x0 */
    public boolean f32646x0;

    /* renamed from: y */
    public final int f32647y;

    /* renamed from: y0 */
    public int f32648y0;

    /* renamed from: z */
    public int f32649z;

    /* renamed from: z0 */
    public int f32650z0;

    /* renamed from: P0 */
    public static final int f32591P0 = C5139R.style.Widget_Design_TabLayout;

    /* renamed from: Y0 */
    public static final Pools.Pool<Tab> f32600Y0 = new Pools.SynchronizedPool(16);

    @Deprecated
    /* loaded from: classes6.dex */
    public interface BaseOnTabSelectedListener<T extends Tab> {
        void onTabReselected(T t);

        void onTabSelected(T t);

        void onTabUnselected(T t);
    }

    /* loaded from: classes6.dex */
    public @interface LabelVisibility {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface Mode {
    }

    /* loaded from: classes6.dex */
    public interface OnTabSelectedListener extends BaseOnTabSelectedListener<Tab> {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface TabGravity {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface TabIndicatorAnimationMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface TabIndicatorGravity {
    }

    /* loaded from: classes6.dex */
    public static class TabLayoutOnPageChangeListener implements ViewPager.OnPageChangeListener {

        /* renamed from: e */
        @NonNull
        public final WeakReference<TabLayout> f32659e;

        /* renamed from: f */
        public int f32660f;

        /* renamed from: g */
        public int f32661g;

        public TabLayoutOnPageChangeListener(TabLayout tabLayout) {
            this.f32659e = new WeakReference<>(tabLayout);
        }

        /* renamed from: a */
        public void m25125a() {
            this.f32661g = 0;
            this.f32660f = 0;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            this.f32660f = this.f32661g;
            this.f32661g = i;
            TabLayout tabLayout = this.f32659e.get();
            if (tabLayout != null) {
                tabLayout.m25099E(this.f32661g);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            TabLayout tabLayout = this.f32659e.get();
            if (tabLayout != null) {
                int i3 = this.f32661g;
                tabLayout.m25117z(i, f, i3 != 2 || this.f32660f == 1, (i3 == 2 && this.f32660f == 0) ? false : true, false);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            TabLayout tabLayout = this.f32659e.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i || i >= tabLayout.getTabCount()) {
                return;
            }
            int i2 = this.f32661g;
            tabLayout.selectTab(tabLayout.getTabAt(i), i2 == 0 || (i2 == 2 && this.f32660f == 0));
        }
    }

    /* loaded from: classes6.dex */
    public final class TabView extends LinearLayout {

        /* renamed from: e */
        public Tab f32662e;

        /* renamed from: f */
        public TextView f32663f;

        /* renamed from: g */
        public ImageView f32664g;

        /* renamed from: h */
        @Nullable
        public View f32665h;

        /* renamed from: i */
        @Nullable
        public BadgeDrawable f32666i;

        /* renamed from: j */
        @Nullable
        public View f32667j;

        /* renamed from: k */
        @Nullable
        public TextView f32668k;

        /* renamed from: l */
        @Nullable
        public ImageView f32669l;

        /* renamed from: m */
        @Nullable
        public Drawable f32670m;

        /* renamed from: n */
        public int f32671n;

        /* renamed from: com.google.android.material.tabs.TabLayout$TabView$a */
        /* loaded from: classes6.dex */
        public class ViewOnLayoutChangeListenerC5411a implements View.OnLayoutChangeListener {

            /* renamed from: e */
            public final /* synthetic */ View f32673e;

            public ViewOnLayoutChangeListenerC5411a(View view) {
                this.f32673e = view;
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                if (this.f32673e.getVisibility() == 0) {
                    TabView.this.m25150w(this.f32673e);
                }
            }
        }

        public TabView(@NonNull Context context) {
            super(context);
            this.f32671n = 2;
            m25152y(context);
            ViewCompat.setPaddingRelative(this, TabLayout.this.f32624i, TabLayout.this.f32625j, TabLayout.this.f32626k, TabLayout.this.f32628l);
            setGravity(17);
            setOrientation(!TabLayout.this.f32644w0 ? 1 : 0);
            setClickable(true);
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public BadgeDrawable getBadge() {
            return this.f32666i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @NonNull
        public BadgeDrawable getOrCreateBadge() {
            if (this.f32666i == null) {
                this.f32666i = BadgeDrawable.create(getContext());
            }
            m25149v();
            BadgeDrawable badgeDrawable = this.f32666i;
            if (badgeDrawable != null) {
                return badgeDrawable;
            }
            throw new IllegalStateException("Unable to create badge");
        }

        /* renamed from: A */
        public final void m25134A() {
            ViewParent parent;
            Tab tab = this.f32662e;
            View customView = tab != null ? tab.getCustomView() : null;
            if (customView != null) {
                ViewParent parent2 = customView.getParent();
                if (parent2 != this) {
                    if (parent2 != null) {
                        ((ViewGroup) parent2).removeView(customView);
                    }
                    View view = this.f32667j;
                    if (view != null && (parent = view.getParent()) != null) {
                        ((ViewGroup) parent).removeView(this.f32667j);
                    }
                    addView(customView);
                }
                this.f32667j = customView;
                TextView textView = this.f32663f;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f32664g;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f32664g.setImageDrawable(null);
                }
                TextView textView2 = (TextView) customView.findViewById(R.id.text1);
                this.f32668k = textView2;
                if (textView2 != null) {
                    this.f32671n = TextViewCompat.getMaxLines(textView2);
                }
                this.f32669l = (ImageView) customView.findViewById(R.id.icon);
            } else {
                View view2 = this.f32667j;
                if (view2 != null) {
                    removeView(view2);
                    this.f32667j = null;
                }
                this.f32668k = null;
                this.f32669l = null;
            }
            if (this.f32667j == null) {
                if (this.f32664g == null) {
                    m25143p();
                }
                if (this.f32663f == null) {
                    m25144q();
                    this.f32671n = TextViewCompat.getMaxLines(this.f32663f);
                }
                TextViewCompat.setTextAppearance(this.f32663f, TabLayout.this.f32629m);
                if (!isSelected() || TabLayout.this.f32631o == -1) {
                    TextViewCompat.setTextAppearance(this.f32663f, TabLayout.this.f32630n);
                } else {
                    TextViewCompat.setTextAppearance(this.f32663f, TabLayout.this.f32631o);
                }
                ColorStateList colorStateList = TabLayout.this.f32632p;
                if (colorStateList != null) {
                    this.f32663f.setTextColor(colorStateList);
                }
                m25135B(this.f32663f, this.f32664g, true);
                m25149v();
                m25136i(this.f32664g);
                m25136i(this.f32663f);
            } else {
                TextView textView3 = this.f32668k;
                if (textView3 != null || this.f32669l != null) {
                    m25135B(textView3, this.f32669l, false);
                }
            }
            if (tab == null || TextUtils.isEmpty(tab.f32654d)) {
                return;
            }
            setContentDescription(tab.f32654d);
        }

        /* renamed from: B */
        public final void m25135B(@Nullable TextView textView, @Nullable ImageView imageView, boolean z) {
            boolean z2;
            Tab tab = this.f32662e;
            Drawable mutate = (tab == null || tab.getIcon() == null) ? null : DrawableCompat.wrap(this.f32662e.getIcon()).mutate();
            if (mutate != null) {
                DrawableCompat.setTintList(mutate, TabLayout.this.f32633q);
                PorterDuff.Mode mode = TabLayout.this.f32639u;
                if (mode != null) {
                    DrawableCompat.setTintMode(mutate, mode);
                }
            }
            Tab tab2 = this.f32662e;
            CharSequence text = tab2 != null ? tab2.getText() : null;
            if (imageView != null) {
                if (mutate != null) {
                    imageView.setImageDrawable(mutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean z3 = !TextUtils.isEmpty(text);
            if (textView != null) {
                z2 = z3 && this.f32662e.f32657g == 1;
                textView.setText(z3 ? text : null);
                textView.setVisibility(z2 ? 0 : 8);
                if (z3) {
                    setVisibility(0);
                }
            } else {
                z2 = false;
            }
            if (z && imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int dpToPx = (z2 && imageView.getVisibility() == 0) ? (int) ViewUtils.dpToPx(getContext(), 8) : 0;
                if (TabLayout.this.f32644w0) {
                    if (dpToPx != MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) {
                        MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, dpToPx);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (dpToPx != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = dpToPx;
                    MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            Tab tab3 = this.f32662e;
            CharSequence charSequence = tab3 != null ? tab3.f32654d : null;
            if (!z3) {
                text = charSequence;
            }
            TooltipCompat.setTooltipText(this, text);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.f32670m;
            boolean z = false;
            if (drawable != null && drawable.isStateful()) {
                z = false | this.f32670m.setState(drawableState);
            }
            if (z) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        public int getContentHeight() {
            View[] viewArr = {this.f32663f, this.f32664g, this.f32667j};
            int i = 0;
            int i2 = 0;
            boolean z = false;
            for (int i3 = 0; i3 < 3; i3++) {
                View view = viewArr[i3];
                if (view != null && view.getVisibility() == 0) {
                    i2 = z ? Math.min(i2, view.getTop()) : view.getTop();
                    i = z ? Math.max(i, view.getBottom()) : view.getBottom();
                    z = true;
                }
            }
            return i - i2;
        }

        public int getContentWidth() {
            View[] viewArr = {this.f32663f, this.f32664g, this.f32667j};
            int i = 0;
            int i2 = 0;
            boolean z = false;
            for (int i3 = 0; i3 < 3; i3++) {
                View view = viewArr[i3];
                if (view != null && view.getVisibility() == 0) {
                    i2 = z ? Math.min(i2, view.getLeft()) : view.getLeft();
                    i = z ? Math.max(i, view.getRight()) : view.getRight();
                    z = true;
                }
            }
            return i - i2;
        }

        @Nullable
        public Tab getTab() {
            return this.f32662e;
        }

        /* renamed from: i */
        public final void m25136i(@Nullable View view) {
            if (view == null) {
                return;
            }
            view.addOnLayoutChangeListener(new ViewOnLayoutChangeListenerC5411a(view));
        }

        /* renamed from: j */
        public final float m25137j(@NonNull Layout layout, int i, float f) {
            return layout.getLineWidth(i) * (f / layout.getPaint().getTextSize());
        }

        /* renamed from: k */
        public final void m25138k(boolean z) {
            setClipChildren(z);
            setClipToPadding(z);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(z);
                viewGroup.setClipToPadding(z);
            }
        }

        @NonNull
        /* renamed from: l */
        public final FrameLayout m25139l() {
            FrameLayout frameLayout = new FrameLayout(getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            return frameLayout;
        }

        /* renamed from: m */
        public final void m25140m(@NonNull Canvas canvas) {
            Drawable drawable = this.f32670m;
            if (drawable != null) {
                drawable.setBounds(getLeft(), getTop(), getRight(), getBottom());
                this.f32670m.draw(canvas);
            }
        }

        @Nullable
        /* renamed from: n */
        public final FrameLayout m25141n(@NonNull View view) {
            if ((view == this.f32664g || view == this.f32663f) && BadgeUtils.USE_COMPAT_PARENT) {
                return (FrameLayout) view.getParent();
            }
            return null;
        }

        /* renamed from: o */
        public final boolean m25142o() {
            return this.f32666i != null;
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            AccessibilityNodeInfoCompat wrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
            BadgeDrawable badgeDrawable = this.f32666i;
            if (badgeDrawable != null && badgeDrawable.isVisible()) {
                wrap.setContentDescription(this.f32666i.getContentDescription());
            }
            wrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, this.f32662e.getPosition(), 1, false, isSelected()));
            if (isSelected()) {
                wrap.setClickable(false);
                wrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            }
            wrap.setRoleDescription(getResources().getString(C5139R.string.item_view_role_description));
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            Layout layout;
            int size = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            int tabMaxWidth = TabLayout.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i = View.MeasureSpec.makeMeasureSpec(TabLayout.this.f32649z, Integer.MIN_VALUE);
            }
            super.onMeasure(i, i2);
            if (this.f32663f != null) {
                float f = TabLayout.this.f32641v;
                int i3 = this.f32671n;
                ImageView imageView = this.f32664g;
                boolean z = true;
                if (imageView == null || imageView.getVisibility() != 0) {
                    TextView textView = this.f32663f;
                    if (textView != null && textView.getLineCount() > 1) {
                        f = TabLayout.this.f32645x;
                    }
                } else {
                    i3 = 1;
                }
                float textSize = this.f32663f.getTextSize();
                int lineCount = this.f32663f.getLineCount();
                int maxLines = TextViewCompat.getMaxLines(this.f32663f);
                if (f != textSize || (maxLines >= 0 && i3 != maxLines)) {
                    if (TabLayout.this.f32642v0 == 1 && f > textSize && lineCount == 1 && ((layout = this.f32663f.getLayout()) == null || m25137j(layout, 0, f) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) {
                        z = false;
                    }
                    if (z) {
                        this.f32663f.setTextSize(0, f);
                        this.f32663f.setMaxLines(i3);
                        super.onMeasure(i, i2);
                    }
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: p */
        public final void m25143p() {
            FrameLayout frameLayout;
            if (BadgeUtils.USE_COMPAT_PARENT) {
                frameLayout = m25139l();
                addView(frameLayout, 0);
            } else {
                frameLayout = this;
            }
            ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(C5139R.layout.design_layout_tab_icon, (ViewGroup) frameLayout, false);
            this.f32664g = imageView;
            frameLayout.addView(imageView, 0);
        }

        @Override // android.view.View
        public boolean performClick() {
            boolean performClick = super.performClick();
            if (this.f32662e == null) {
                return performClick;
            }
            if (!performClick) {
                playSoundEffect(0);
            }
            this.f32662e.select();
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: q */
        public final void m25144q() {
            FrameLayout frameLayout;
            if (BadgeUtils.USE_COMPAT_PARENT) {
                frameLayout = m25139l();
                addView(frameLayout);
            } else {
                frameLayout = this;
            }
            TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(C5139R.layout.design_layout_tab_text, (ViewGroup) frameLayout, false);
            this.f32663f = textView;
            frameLayout.addView(textView);
        }

        /* renamed from: r */
        public final void m25145r() {
            if (this.f32665h != null) {
                m25148u();
            }
            this.f32666i = null;
        }

        /* renamed from: s */
        public void m25146s() {
            setTab(null);
            setSelected(false);
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            if (isSelected() != z) {
            }
            super.setSelected(z);
            TextView textView = this.f32663f;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.f32664g;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.f32667j;
            if (view != null) {
                view.setSelected(z);
            }
        }

        public void setTab(@Nullable Tab tab) {
            if (tab != this.f32662e) {
                this.f32662e = tab;
                m25151x();
            }
        }

        /* renamed from: t */
        public final void m25147t(@Nullable View view) {
            if (m25142o() && view != null) {
                m25138k(false);
                BadgeUtils.attachBadgeDrawable(this.f32666i, view, m25141n(view));
                this.f32665h = view;
            }
        }

        /* renamed from: u */
        public final void m25148u() {
            if (m25142o()) {
                m25138k(true);
                View view = this.f32665h;
                if (view != null) {
                    BadgeUtils.detachBadgeDrawable(this.f32666i, view);
                    this.f32665h = null;
                }
            }
        }

        /* renamed from: v */
        public final void m25149v() {
            Tab tab;
            Tab tab2;
            if (m25142o()) {
                if (this.f32667j != null) {
                    m25148u();
                    return;
                }
                if (this.f32664g != null && (tab2 = this.f32662e) != null && tab2.getIcon() != null) {
                    View view = this.f32665h;
                    ImageView imageView = this.f32664g;
                    if (view == imageView) {
                        m25150w(imageView);
                        return;
                    } else {
                        m25148u();
                        m25147t(this.f32664g);
                        return;
                    }
                }
                if (this.f32663f == null || (tab = this.f32662e) == null || tab.getTabLabelVisibility() != 1) {
                    m25148u();
                    return;
                }
                View view2 = this.f32665h;
                TextView textView = this.f32663f;
                if (view2 == textView) {
                    m25150w(textView);
                } else {
                    m25148u();
                    m25147t(this.f32663f);
                }
            }
        }

        /* renamed from: w */
        public final void m25150w(@NonNull View view) {
            if (m25142o() && view == this.f32665h) {
                BadgeUtils.setBadgeDrawableBounds(this.f32666i, view, m25141n(view));
            }
        }

        /* renamed from: x */
        public final void m25151x() {
            m25134A();
            Tab tab = this.f32662e;
            setSelected(tab != null && tab.isSelected());
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v0, types: [android.graphics.drawable.RippleDrawable] */
        /* renamed from: y */
        public final void m25152y(Context context) {
            int i = TabLayout.this.f32647y;
            if (i != 0) {
                Drawable drawable = AppCompatResources.getDrawable(context, i);
                this.f32670m = drawable;
                if (drawable != null && drawable.isStateful()) {
                    this.f32670m.setState(getDrawableState());
                }
            } else {
                this.f32670m = null;
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(0);
            if (TabLayout.this.f32635r != null) {
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setCornerRadius(1.0E-5f);
                gradientDrawable2.setColor(-1);
                ColorStateList convertToRippleDrawableColor = RippleUtils.convertToRippleDrawableColor(TabLayout.this.f32635r);
                boolean z = TabLayout.this.f32602A0;
                if (z) {
                    gradientDrawable = null;
                }
                gradientDrawable = new RippleDrawable(convertToRippleDrawableColor, gradientDrawable, z ? null : gradientDrawable2);
            }
            ViewCompat.setBackground(this, gradientDrawable);
            TabLayout.this.invalidate();
        }

        /* renamed from: z */
        public final void m25153z() {
            setOrientation(!TabLayout.this.f32644w0 ? 1 : 0);
            TextView textView = this.f32668k;
            if (textView == null && this.f32669l == null) {
                m25135B(this.f32663f, this.f32664g, true);
            } else {
                m25135B(textView, this.f32669l, false);
            }
        }
    }

    /* loaded from: classes6.dex */
    public static class ViewPagerOnTabSelectedListener implements OnTabSelectedListener {

        /* renamed from: a */
        public final ViewPager f32675a;

        public ViewPagerOnTabSelectedListener(ViewPager viewPager) {
            this.f32675a = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(@NonNull Tab tab) {
            this.f32675a.setCurrentItem(tab.getPosition());
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(Tab tab) {
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$a */
    /* loaded from: classes6.dex */
    public class C5412a implements ValueAnimator.AnimatorUpdateListener {
        public C5412a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            TabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$b */
    /* loaded from: classes6.dex */
    public class C5413b implements ViewPager.OnAdapterChangeListener {

        /* renamed from: e */
        public boolean f32677e;

        public C5413b() {
        }

        /* renamed from: a */
        public void m25154a(boolean z) {
            this.f32677e = z;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
        public void onAdapterChanged(@NonNull ViewPager viewPager, @Nullable PagerAdapter pagerAdapter, @Nullable PagerAdapter pagerAdapter2) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.f32609H0 == viewPager) {
                tabLayout.m25116y(pagerAdapter2, this.f32677e);
            }
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$c */
    /* loaded from: classes6.dex */
    public class C5414c extends DataSetObserver {
        public C5414c() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            TabLayout.this.m25114w();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            TabLayout.this.m25114w();
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$d */
    /* loaded from: classes6.dex */
    public class C5415d extends LinearLayout {

        /* renamed from: e */
        public ValueAnimator f32680e;

        /* renamed from: f */
        public int f32681f;

        /* renamed from: com.google.android.material.tabs.TabLayout$d$a */
        /* loaded from: classes6.dex */
        public class a implements ValueAnimator.AnimatorUpdateListener {

            /* renamed from: e */
            public final /* synthetic */ View f32683e;

            /* renamed from: f */
            public final /* synthetic */ View f32684f;

            public a(View view, View view2) {
                this.f32683e = view;
                this.f32684f = view2;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                C5415d.this.m25164j(this.f32683e, this.f32684f, valueAnimator.getAnimatedFraction());
            }
        }

        public C5415d(Context context) {
            super(context);
            this.f32681f = -1;
            setWillNotDraw(false);
        }

        /* renamed from: c */
        public void m25157c(int i, int i2) {
            ValueAnimator valueAnimator = this.f32680e;
            if (valueAnimator != null && valueAnimator.isRunning() && TabLayout.this.f32620e != i) {
                this.f32680e.cancel();
            }
            m25165k(true, i, i2);
        }

        /* renamed from: d */
        public boolean m25158d() {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (getChildAt(i).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.view.View
        public void draw(@NonNull Canvas canvas) {
            int height;
            int height2 = TabLayout.this.f32636s.getBounds().height();
            if (height2 < 0) {
                height2 = TabLayout.this.f32636s.getIntrinsicHeight();
            }
            int i = TabLayout.this.f32640u0;
            if (i == 0) {
                height = getHeight() - height2;
                height2 = getHeight();
            } else if (i != 1) {
                height = 0;
                if (i != 2) {
                    height2 = i != 3 ? 0 : getHeight();
                }
            } else {
                height = (getHeight() - height2) / 2;
                height2 = (getHeight() + height2) / 2;
            }
            if (TabLayout.this.f32636s.getBounds().width() > 0) {
                Rect bounds = TabLayout.this.f32636s.getBounds();
                TabLayout.this.f32636s.setBounds(bounds.left, height, bounds.right, height2);
                TabLayout.this.f32636s.draw(canvas);
            }
            super.draw(canvas);
        }

        /* renamed from: e */
        public final void m25159e() {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.f32620e == -1) {
                tabLayout.f32620e = tabLayout.getSelectedTabPosition();
            }
            m25160f(TabLayout.this.f32620e);
        }

        /* renamed from: f */
        public final void m25160f(int i) {
            if (TabLayout.this.f32616N0 == 0 || (TabLayout.this.getTabSelectedIndicator().getBounds().left == -1 && TabLayout.this.getTabSelectedIndicator().getBounds().right == -1)) {
                View childAt = getChildAt(i);
                C5419a c5419a = TabLayout.this.f32603B0;
                TabLayout tabLayout = TabLayout.this;
                c5419a.m25170c(tabLayout, childAt, tabLayout.f32636s);
                TabLayout.this.f32620e = i;
            }
        }

        /* renamed from: g */
        public final void m25161g() {
            m25160f(TabLayout.this.getSelectedTabPosition());
        }

        /* renamed from: h */
        public void m25162h(int i, float f) {
            TabLayout.this.f32620e = Math.round(i + f);
            ValueAnimator valueAnimator = this.f32680e;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f32680e.cancel();
            }
            m25164j(getChildAt(i), getChildAt(i + 1), f);
        }

        /* renamed from: i */
        public void m25163i(int i) {
            Rect bounds = TabLayout.this.f32636s.getBounds();
            TabLayout.this.f32636s.setBounds(bounds.left, 0, bounds.right, i);
            requestLayout();
        }

        /* renamed from: j */
        public final void m25164j(View view, View view2, float f) {
            if (view != null && view.getWidth() > 0) {
                C5419a c5419a = TabLayout.this.f32603B0;
                TabLayout tabLayout = TabLayout.this;
                c5419a.mo25171d(tabLayout, view, view2, f, tabLayout.f32636s);
            } else {
                Drawable drawable = TabLayout.this.f32636s;
                drawable.setBounds(-1, drawable.getBounds().top, -1, TabLayout.this.f32636s.getBounds().bottom);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }

        /* renamed from: k */
        public final void m25165k(boolean z, int i, int i2) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.f32620e == i) {
                return;
            }
            View childAt = getChildAt(tabLayout.getSelectedTabPosition());
            View childAt2 = getChildAt(i);
            if (childAt2 == null) {
                m25161g();
                return;
            }
            TabLayout.this.f32620e = i;
            a aVar = new a(childAt, childAt2);
            if (!z) {
                this.f32680e.removeAllUpdateListeners();
                this.f32680e.addUpdateListener(aVar);
                return;
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f32680e = valueAnimator;
            valueAnimator.setInterpolator(TabLayout.this.f32604C0);
            valueAnimator.setDuration(i2);
            valueAnimator.setFloatValues(0.0f, 1.0f);
            valueAnimator.addUpdateListener(aVar);
            valueAnimator.start();
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ValueAnimator valueAnimator = this.f32680e;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                m25159e();
            } else {
                m25165k(false, TabLayout.this.getSelectedTabPosition(), -1);
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) != 1073741824) {
                return;
            }
            TabLayout tabLayout = TabLayout.this;
            boolean z = true;
            if (tabLayout.f32634q0 == 1 || tabLayout.f32642v0 == 2) {
                int childCount = getChildCount();
                int i3 = 0;
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = getChildAt(i4);
                    if (childAt.getVisibility() == 0) {
                        i3 = Math.max(i3, childAt.getMeasuredWidth());
                    }
                }
                if (i3 <= 0) {
                    return;
                }
                if (i3 * childCount <= getMeasuredWidth() - (((int) ViewUtils.dpToPx(getContext(), 16)) * 2)) {
                    boolean z2 = false;
                    for (int i5 = 0; i5 < childCount; i5++) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i5).getLayoutParams();
                        if (layoutParams.width != i3 || layoutParams.weight != 0.0f) {
                            layoutParams.width = i3;
                            layoutParams.weight = 0.0f;
                            z2 = true;
                        }
                    }
                    z = z2;
                } else {
                    TabLayout tabLayout2 = TabLayout.this;
                    tabLayout2.f32634q0 = 0;
                    tabLayout2.m25098D(false);
                }
                if (z) {
                    super.onMeasure(i, i2);
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onRtlPropertiesChanged(int i) {
            super.onRtlPropertiesChanged(i);
        }
    }

    public TabLayout(@NonNull Context context) {
        this(context, null);
    }

    @Dimension(unit = 0)
    private int getDefaultHeight() {
        int size = this.f32621f.size();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i < size) {
                Tab tab = this.f32621f.get(i);
                if (tab != null && tab.getIcon() != null && !TextUtils.isEmpty(tab.getText())) {
                    z = true;
                    break;
                }
                i++;
            } else {
                break;
            }
        }
        return (!z || this.f32644w0) ? 48 : 72;
    }

    private int getTabMinWidth() {
        int i = this.f32611J;
        if (i != -1) {
            return i;
        }
        int i2 = this.f32642v0;
        if (i2 == 0 || i2 == 2) {
            return this.f32619Q;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f32623h.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    /* renamed from: j */
    private void m25093j(int i) {
        if (i == -1) {
            return;
        }
        if (getWindowToken() == null || !ViewCompat.isLaidOut(this) || this.f32623h.m25158d()) {
            setScrollPosition(i, 0.0f, true);
            return;
        }
        int scrollX = getScrollX();
        int m25105m = m25105m(i, 0.0f);
        if (scrollX != m25105m) {
            m25112u();
            this.f32608G0.setIntValues(scrollX, m25105m);
            this.f32608G0.start();
        }
        this.f32623h.m25157c(i, this.f32638t0);
    }

    @NonNull
    /* renamed from: o */
    public static ColorStateList m25094o(int i, int i2) {
        return new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i2, i});
    }

    private void setSelectedTabView(int i) {
        int childCount = this.f32623h.getChildCount();
        if (i < childCount) {
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = this.f32623h.getChildAt(i2);
                if ((i2 != i || childAt.isSelected()) && (i2 == i || !childAt.isSelected())) {
                    childAt.setSelected(i2 == i);
                    childAt.setActivated(i2 == i);
                } else {
                    childAt.setSelected(i2 == i);
                    childAt.setActivated(i2 == i);
                    if (childAt instanceof TabView) {
                        ((TabView) childAt).m25134A();
                    }
                }
                i2++;
            }
        }
    }

    /* renamed from: A */
    public final void m25095A(@Nullable ViewPager viewPager, boolean z, boolean z2) {
        ViewPager viewPager2 = this.f32609H0;
        if (viewPager2 != null) {
            TabLayoutOnPageChangeListener tabLayoutOnPageChangeListener = this.f32613K0;
            if (tabLayoutOnPageChangeListener != null) {
                viewPager2.removeOnPageChangeListener(tabLayoutOnPageChangeListener);
            }
            C5413b c5413b = this.f32614L0;
            if (c5413b != null) {
                this.f32609H0.removeOnAdapterChangeListener(c5413b);
            }
        }
        BaseOnTabSelectedListener baseOnTabSelectedListener = this.f32607F0;
        if (baseOnTabSelectedListener != null) {
            removeOnTabSelectedListener(baseOnTabSelectedListener);
            this.f32607F0 = null;
        }
        if (viewPager != null) {
            this.f32609H0 = viewPager;
            if (this.f32613K0 == null) {
                this.f32613K0 = new TabLayoutOnPageChangeListener(this);
            }
            this.f32613K0.m25125a();
            viewPager.addOnPageChangeListener(this.f32613K0);
            ViewPagerOnTabSelectedListener viewPagerOnTabSelectedListener = new ViewPagerOnTabSelectedListener(viewPager);
            this.f32607F0 = viewPagerOnTabSelectedListener;
            addOnTabSelectedListener((BaseOnTabSelectedListener) viewPagerOnTabSelectedListener);
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                m25116y(adapter, z);
            }
            if (this.f32614L0 == null) {
                this.f32614L0 = new C5413b();
            }
            this.f32614L0.m25154a(z);
            viewPager.addOnAdapterChangeListener(this.f32614L0);
            setScrollPosition(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.f32609H0 = null;
            m25116y(null, false);
        }
        this.f32615M0 = z2;
    }

    /* renamed from: B */
    public final void m25096B() {
        int size = this.f32621f.size();
        for (int i = 0; i < size; i++) {
            this.f32621f.get(i).m25124g();
        }
    }

    /* renamed from: C */
    public final void m25097C(@NonNull LinearLayout.LayoutParams layoutParams) {
        if (this.f32642v0 == 1 && this.f32634q0 == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
    }

    /* renamed from: D */
    public void m25098D(boolean z) {
        for (int i = 0; i < this.f32623h.getChildCount(); i++) {
            View childAt = this.f32623h.getChildAt(i);
            childAt.setMinimumWidth(getTabMinWidth());
            m25097C((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z) {
                childAt.requestLayout();
            }
        }
    }

    /* renamed from: E */
    public void m25099E(int i) {
        this.f32616N0 = i;
    }

    public void addOnTabSelectedListener(@NonNull OnTabSelectedListener onTabSelectedListener) {
        addOnTabSelectedListener((BaseOnTabSelectedListener) onTabSelectedListener);
    }

    public void addTab(@NonNull Tab tab) {
        addTab(tab, this.f32621f.isEmpty());
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        m25102i(view);
    }

    public void clearOnTabSelectedListeners() {
        this.f32606E0.clear();
    }

    public Tab createTabFromPool() {
        Tab acquire = f32600Y0.acquire();
        return acquire == null ? new Tab() : acquire;
    }

    /* renamed from: g */
    public final void m25100g(@NonNull TabItem tabItem) {
        Tab newTab = newTab();
        CharSequence charSequence = tabItem.text;
        if (charSequence != null) {
            newTab.setText(charSequence);
        }
        Drawable drawable = tabItem.icon;
        if (drawable != null) {
            newTab.setIcon(drawable);
        }
        int i = tabItem.customLayout;
        if (i != 0) {
            newTab.setCustomView(i);
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            newTab.setContentDescription(tabItem.getContentDescription());
        }
        addTab(newTab);
    }

    public int getSelectedTabPosition() {
        Tab tab = this.f32622g;
        if (tab != null) {
            return tab.getPosition();
        }
        return -1;
    }

    @Nullable
    public Tab getTabAt(int i) {
        if (i < 0 || i >= getTabCount()) {
            return null;
        }
        return this.f32621f.get(i);
    }

    public int getTabCount() {
        return this.f32621f.size();
    }

    public int getTabGravity() {
        return this.f32634q0;
    }

    @Nullable
    public ColorStateList getTabIconTint() {
        return this.f32633q;
    }

    public int getTabIndicatorAnimationMode() {
        return this.f32650z0;
    }

    public int getTabIndicatorGravity() {
        return this.f32640u0;
    }

    public int getTabMaxWidth() {
        return this.f32649z;
    }

    public int getTabMode() {
        return this.f32642v0;
    }

    @Nullable
    public ColorStateList getTabRippleColor() {
        return this.f32635r;
    }

    @NonNull
    public Drawable getTabSelectedIndicator() {
        return this.f32636s;
    }

    @Nullable
    public ColorStateList getTabTextColors() {
        return this.f32632p;
    }

    /* renamed from: h */
    public final void m25101h(@NonNull Tab tab) {
        TabView tabView = tab.view;
        tabView.setSelected(false);
        tabView.setActivated(false);
        this.f32623h.addView(tabView, tab.getPosition(), m25107p());
    }

    public boolean hasUnboundedRipple() {
        return this.f32602A0;
    }

    /* renamed from: i */
    public final void m25102i(View view) {
        if (!(view instanceof TabItem)) {
            throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
        }
        m25100g((TabItem) view);
    }

    public boolean isInlineLabel() {
        return this.f32644w0;
    }

    public boolean isTabIndicatorFullWidth() {
        return this.f32646x0;
    }

    /* renamed from: k */
    public final void m25103k(int i) {
        if (i == 0) {
            Log.w(f32601Z0, "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead");
        } else if (i == 1) {
            this.f32623h.setGravity(1);
            return;
        } else if (i != 2) {
            return;
        }
        this.f32623h.setGravity(GravityCompat.START);
    }

    /* renamed from: l */
    public final void m25104l() {
        int i = this.f32642v0;
        ViewCompat.setPaddingRelative(this.f32623h, (i == 0 || i == 2) ? Math.max(0, this.f32627k0 - this.f32624i) : 0, 0, 0, 0);
        int i2 = this.f32642v0;
        if (i2 == 0) {
            m25103k(this.f32634q0);
        } else if (i2 == 1 || i2 == 2) {
            if (this.f32634q0 == 2) {
                Log.w(f32601Z0, "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead");
            }
            this.f32623h.setGravity(1);
        }
        m25098D(true);
    }

    /* renamed from: m */
    public final int m25105m(int i, float f) {
        View childAt;
        int i2 = this.f32642v0;
        if ((i2 != 0 && i2 != 2) || (childAt = this.f32623h.getChildAt(i)) == null) {
            return 0;
        }
        int i3 = i + 1;
        View childAt2 = i3 < this.f32623h.getChildCount() ? this.f32623h.getChildAt(i3) : null;
        int width = childAt.getWidth();
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
        int i4 = (int) ((width + width2) * 0.5f * f);
        return ViewCompat.getLayoutDirection(this) == 0 ? left + i4 : left - i4;
    }

    /* renamed from: n */
    public final void m25106n(@NonNull Tab tab, int i) {
        tab.m25123f(i);
        this.f32621f.add(i, tab);
        int size = this.f32621f.size();
        int i2 = -1;
        for (int i3 = i + 1; i3 < size; i3++) {
            if (this.f32621f.get(i3).getPosition() == this.f32620e) {
                i2 = i3;
            }
            this.f32621f.get(i3).m25123f(i3);
        }
        this.f32620e = i2;
    }

    @NonNull
    public Tab newTab() {
        Tab createTabFromPool = createTabFromPool();
        createTabFromPool.parent = this;
        createTabFromPool.view = m25108q(createTabFromPool);
        if (createTabFromPool.f32658h != -1) {
            createTabFromPool.view.setId(createTabFromPool.f32658h);
        }
        return createTabFromPool;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this);
        if (this.f32609H0 == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                m25095A((ViewPager) parent, true, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f32615M0) {
            setupWithViewPager(null);
            this.f32615M0 = false;
        }
    }

    @Override // android.view.View
    public void onDraw(@NonNull Canvas canvas) {
        for (int i = 0; i < this.f32623h.getChildCount(); i++) {
            View childAt = this.f32623h.getChildAt(i);
            if (childAt instanceof TabView) {
                ((TabView) childAt).m25140m(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getTabCount(), false, 1));
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return m25113v() && super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0073, code lost:
    
        if (r0 != 2) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007e, code lost:
    
        if (r7.getMeasuredWidth() != getMeasuredWidth()) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0080, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008a, code lost:
    
        if (r7.getMeasuredWidth() < getMeasuredWidth()) goto L29;
     */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r7, int r8) {
        /*
            r6 = this;
            android.content.Context r0 = r6.getContext()
            int r1 = r6.getDefaultHeight()
            float r0 = com.google.android.material.internal.ViewUtils.dpToPx(r0, r1)
            int r0 = java.lang.Math.round(r0)
            int r1 = android.view.View.MeasureSpec.getMode(r8)
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = 1073741824(0x40000000, float:2.0)
            r4 = 0
            r5 = 1
            if (r1 == r2) goto L2e
            if (r1 == 0) goto L1f
            goto L41
        L1f:
            int r8 = r6.getPaddingTop()
            int r0 = r0 + r8
            int r8 = r6.getPaddingBottom()
            int r0 = r0 + r8
            int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r3)
            goto L41
        L2e:
            int r1 = r6.getChildCount()
            if (r1 != r5) goto L41
            int r1 = android.view.View.MeasureSpec.getSize(r8)
            if (r1 < r0) goto L41
            android.view.View r1 = r6.getChildAt(r4)
            r1.setMinimumHeight(r0)
        L41:
            int r0 = android.view.View.MeasureSpec.getSize(r7)
            int r1 = android.view.View.MeasureSpec.getMode(r7)
            if (r1 == 0) goto L5f
            int r1 = r6.f32617O
            if (r1 <= 0) goto L50
            goto L5d
        L50:
            float r0 = (float) r0
            android.content.Context r1 = r6.getContext()
            r2 = 56
            float r1 = com.google.android.material.internal.ViewUtils.dpToPx(r1, r2)
            float r0 = r0 - r1
            int r1 = (int) r0
        L5d:
            r6.f32649z = r1
        L5f:
            super.onMeasure(r7, r8)
            int r7 = r6.getChildCount()
            if (r7 != r5) goto Lad
            android.view.View r7 = r6.getChildAt(r4)
            int r0 = r6.f32642v0
            if (r0 == 0) goto L82
            if (r0 == r5) goto L76
            r1 = 2
            if (r0 == r1) goto L82
            goto L8d
        L76:
            int r0 = r7.getMeasuredWidth()
            int r1 = r6.getMeasuredWidth()
            if (r0 == r1) goto L8d
        L80:
            r4 = r5
            goto L8d
        L82:
            int r0 = r7.getMeasuredWidth()
            int r1 = r6.getMeasuredWidth()
            if (r0 >= r1) goto L8d
            goto L80
        L8d:
            if (r4 == 0) goto Lad
            int r0 = r6.getPaddingTop()
            int r1 = r6.getPaddingBottom()
            int r0 = r0 + r1
            android.view.ViewGroup$LayoutParams r1 = r7.getLayoutParams()
            int r1 = r1.height
            int r8 = android.view.ViewGroup.getChildMeasureSpec(r8, r0, r1)
            int r6 = r6.getMeasuredWidth()
            int r6 = android.view.View.MeasureSpec.makeMeasureSpec(r6, r3)
            r7.measure(r6, r8)
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.onMeasure(int, int):void");
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 8 || m25113v()) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @NonNull
    /* renamed from: p */
    public final LinearLayout.LayoutParams m25107p() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        m25097C(layoutParams);
        return layoutParams;
    }

    @NonNull
    /* renamed from: q */
    public final TabView m25108q(@NonNull Tab tab) {
        Pools.Pool<TabView> pool = this.f32618O0;
        TabView acquire = pool != null ? pool.acquire() : null;
        if (acquire == null) {
            acquire = new TabView(getContext());
        }
        acquire.setTab(tab);
        acquire.setFocusable(true);
        acquire.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(tab.f32654d)) {
            acquire.setContentDescription(tab.f32653c);
        } else {
            acquire.setContentDescription(tab.f32654d);
        }
        return acquire;
    }

    /* renamed from: r */
    public final void m25109r(@NonNull Tab tab) {
        for (int size = this.f32606E0.size() - 1; size >= 0; size--) {
            this.f32606E0.get(size).onTabReselected(tab);
        }
    }

    public boolean releaseFromTabPool(Tab tab) {
        return f32600Y0.release(tab);
    }

    public void removeAllTabs() {
        for (int childCount = this.f32623h.getChildCount() - 1; childCount >= 0; childCount--) {
            m25115x(childCount);
        }
        Iterator<Tab> it2 = this.f32621f.iterator();
        while (it2.hasNext()) {
            Tab next = it2.next();
            it2.remove();
            next.m25122e();
            releaseFromTabPool(next);
        }
        this.f32622g = null;
    }

    public void removeOnTabSelectedListener(@NonNull OnTabSelectedListener onTabSelectedListener) {
        removeOnTabSelectedListener((BaseOnTabSelectedListener) onTabSelectedListener);
    }

    public void removeTab(@NonNull Tab tab) {
        if (tab.parent != this) {
            throw new IllegalArgumentException("Tab does not belong to this TabLayout.");
        }
        removeTabAt(tab.getPosition());
    }

    public void removeTabAt(int i) {
        Tab tab = this.f32622g;
        int position = tab != null ? tab.getPosition() : 0;
        m25115x(i);
        Tab remove = this.f32621f.remove(i);
        if (remove != null) {
            remove.m25122e();
            releaseFromTabPool(remove);
        }
        int size = this.f32621f.size();
        int i2 = -1;
        for (int i3 = i; i3 < size; i3++) {
            if (this.f32621f.get(i3).getPosition() == this.f32620e) {
                i2 = i3;
            }
            this.f32621f.get(i3).m25123f(i3);
        }
        this.f32620e = i2;
        if (position == i) {
            selectTab(this.f32621f.isEmpty() ? null : this.f32621f.get(Math.max(0, i - 1)));
        }
    }

    /* renamed from: s */
    public final void m25110s(@NonNull Tab tab) {
        for (int size = this.f32606E0.size() - 1; size >= 0; size--) {
            this.f32606E0.get(size).onTabSelected(tab);
        }
    }

    public void selectTab(@Nullable Tab tab) {
        selectTab(tab, true);
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.setElevation(this, f);
    }

    public void setInlineLabel(boolean z) {
        if (this.f32644w0 != z) {
            this.f32644w0 = z;
            for (int i = 0; i < this.f32623h.getChildCount(); i++) {
                View childAt = this.f32623h.getChildAt(i);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).m25153z();
                }
            }
            m25104l();
        }
    }

    public void setInlineLabelResource(@BoolRes int i) {
        setInlineLabel(getResources().getBoolean(i));
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable OnTabSelectedListener onTabSelectedListener) {
        setOnTabSelectedListener((BaseOnTabSelectedListener) onTabSelectedListener);
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        m25112u();
        this.f32608G0.addListener(animatorListener);
    }

    public void setScrollPosition(int i, float f, boolean z) {
        setScrollPosition(i, f, z, true);
    }

    public void setSelectedTabIndicator(@Nullable Drawable drawable) {
        if (drawable == null) {
            drawable = new GradientDrawable();
        }
        Drawable mutate = DrawableCompat.wrap(drawable).mutate();
        this.f32636s = mutate;
        DrawableUtils.setTint(mutate, this.f32637t);
        int i = this.f32648y0;
        if (i == -1) {
            i = this.f32636s.getIntrinsicHeight();
        }
        this.f32623h.m25163i(i);
    }

    public void setSelectedTabIndicatorColor(@ColorInt int i) {
        this.f32637t = i;
        DrawableUtils.setTint(this.f32636s, i);
        m25098D(false);
    }

    public void setSelectedTabIndicatorGravity(int i) {
        if (this.f32640u0 != i) {
            this.f32640u0 = i;
            ViewCompat.postInvalidateOnAnimation(this.f32623h);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i) {
        this.f32648y0 = i;
        this.f32623h.m25163i(i);
    }

    public void setTabGravity(int i) {
        if (this.f32634q0 != i) {
            this.f32634q0 = i;
            m25104l();
        }
    }

    public void setTabIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f32633q != colorStateList) {
            this.f32633q = colorStateList;
            m25096B();
        }
    }

    public void setTabIconTintResource(@ColorRes int i) {
        setTabIconTint(AppCompatResources.getColorStateList(getContext(), i));
    }

    public void setTabIndicatorAnimationMode(int i) {
        this.f32650z0 = i;
        if (i == 0) {
            this.f32603B0 = new C5419a();
            return;
        }
        if (i == 1) {
            this.f32603B0 = new qmf();
        } else {
            if (i == 2) {
                this.f32603B0 = new w8g();
                return;
            }
            throw new IllegalArgumentException(i + " is not a valid TabIndicatorAnimationMode");
        }
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.f32646x0 = z;
        this.f32623h.m25161g();
        ViewCompat.postInvalidateOnAnimation(this.f32623h);
    }

    public void setTabMode(int i) {
        if (i != this.f32642v0) {
            this.f32642v0 = i;
            m25104l();
        }
    }

    public void setTabRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f32635r != colorStateList) {
            this.f32635r = colorStateList;
            for (int i = 0; i < this.f32623h.getChildCount(); i++) {
                View childAt = this.f32623h.getChildAt(i);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).m25152y(getContext());
                }
            }
        }
    }

    public void setTabRippleColorResource(@ColorRes int i) {
        setTabRippleColor(AppCompatResources.getColorStateList(getContext(), i));
    }

    public void setTabTextColors(@Nullable ColorStateList colorStateList) {
        if (this.f32632p != colorStateList) {
            this.f32632p = colorStateList;
            m25096B();
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(@Nullable PagerAdapter pagerAdapter) {
        m25116y(pagerAdapter, false);
    }

    public void setUnboundedRipple(boolean z) {
        if (this.f32602A0 != z) {
            this.f32602A0 = z;
            for (int i = 0; i < this.f32623h.getChildCount(); i++) {
                View childAt = this.f32623h.getChildAt(i);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).m25152y(getContext());
                }
            }
        }
    }

    public void setUnboundedRippleResource(@BoolRes int i) {
        setUnboundedRipple(getResources().getBoolean(i));
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager) {
        setupWithViewPager(viewPager, true);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    /* renamed from: t */
    public final void m25111t(@NonNull Tab tab) {
        for (int size = this.f32606E0.size() - 1; size >= 0; size--) {
            this.f32606E0.get(size).onTabUnselected(tab);
        }
    }

    /* renamed from: u */
    public final void m25112u() {
        if (this.f32608G0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f32608G0 = valueAnimator;
            valueAnimator.setInterpolator(this.f32604C0);
            this.f32608G0.setDuration(this.f32638t0);
            this.f32608G0.addUpdateListener(new C5412a());
        }
    }

    /* renamed from: v */
    public final boolean m25113v() {
        return getTabMode() == 0 || getTabMode() == 2;
    }

    /* renamed from: w */
    public void m25114w() {
        int currentItem;
        removeAllTabs();
        PagerAdapter pagerAdapter = this.f32610I0;
        if (pagerAdapter != null) {
            int count = pagerAdapter.getCount();
            for (int i = 0; i < count; i++) {
                addTab(newTab().setText(this.f32610I0.getPageTitle(i)), false);
            }
            ViewPager viewPager = this.f32609H0;
            if (viewPager == null || count <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            selectTab(getTabAt(currentItem));
        }
    }

    /* renamed from: x */
    public final void m25115x(int i) {
        TabView tabView = (TabView) this.f32623h.getChildAt(i);
        this.f32623h.removeViewAt(i);
        if (tabView != null) {
            tabView.m25146s();
            this.f32618O0.release(tabView);
        }
        requestLayout();
    }

    /* renamed from: y */
    public void m25116y(@Nullable PagerAdapter pagerAdapter, boolean z) {
        DataSetObserver dataSetObserver;
        PagerAdapter pagerAdapter2 = this.f32610I0;
        if (pagerAdapter2 != null && (dataSetObserver = this.f32612J0) != null) {
            pagerAdapter2.unregisterDataSetObserver(dataSetObserver);
        }
        this.f32610I0 = pagerAdapter;
        if (z && pagerAdapter != null) {
            if (this.f32612J0 == null) {
                this.f32612J0 = new C5414c();
            }
            pagerAdapter.registerDataSetObserver(this.f32612J0);
        }
        m25114w();
    }

    /* renamed from: z */
    public void m25117z(int i, float f, boolean z, boolean z2, boolean z3) {
        int round = Math.round(i + f);
        if (round < 0 || round >= this.f32623h.getChildCount()) {
            return;
        }
        if (z2) {
            this.f32623h.m25162h(i, f);
        }
        ValueAnimator valueAnimator = this.f32608G0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f32608G0.cancel();
        }
        int m25105m = m25105m(i, f);
        int scrollX = getScrollX();
        boolean z4 = (i < getSelectedTabPosition() && m25105m >= scrollX) || (i > getSelectedTabPosition() && m25105m <= scrollX) || i == getSelectedTabPosition();
        if (ViewCompat.getLayoutDirection(this) == 1) {
            z4 = (i < getSelectedTabPosition() && m25105m <= scrollX) || (i > getSelectedTabPosition() && m25105m >= scrollX) || i == getSelectedTabPosition();
        }
        if (z4 || this.f32616N0 == 1 || z3) {
            if (i < 0) {
                m25105m = 0;
            }
            scrollTo(m25105m, 0);
        }
        if (z) {
            setSelectedTabView(round);
        }
    }

    /* loaded from: classes6.dex */
    public static class Tab {
        public static final int INVALID_POSITION = -1;

        /* renamed from: a */
        @Nullable
        public Object f32651a;

        /* renamed from: b */
        @Nullable
        public Drawable f32652b;

        /* renamed from: c */
        @Nullable
        public CharSequence f32653c;

        /* renamed from: d */
        @Nullable
        public CharSequence f32654d;

        /* renamed from: f */
        @Nullable
        public View f32656f;

        @Nullable
        public TabLayout parent;

        @NonNull
        public TabView view;

        /* renamed from: e */
        public int f32655e = -1;

        /* renamed from: g */
        @LabelVisibility
        public int f32657g = 1;

        /* renamed from: h */
        public int f32658h = -1;

        /* renamed from: e */
        public void m25122e() {
            this.parent = null;
            this.view = null;
            this.f32651a = null;
            this.f32652b = null;
            this.f32658h = -1;
            this.f32653c = null;
            this.f32654d = null;
            this.f32655e = -1;
            this.f32656f = null;
        }

        /* renamed from: f */
        public void m25123f(int i) {
            this.f32655e = i;
        }

        /* renamed from: g */
        public void m25124g() {
            TabView tabView = this.view;
            if (tabView != null) {
                tabView.m25151x();
            }
        }

        @Nullable
        public BadgeDrawable getBadge() {
            return this.view.getBadge();
        }

        @Nullable
        public CharSequence getContentDescription() {
            TabView tabView = this.view;
            if (tabView == null) {
                return null;
            }
            return tabView.getContentDescription();
        }

        @Nullable
        public View getCustomView() {
            return this.f32656f;
        }

        @Nullable
        public Drawable getIcon() {
            return this.f32652b;
        }

        public int getId() {
            return this.f32658h;
        }

        @NonNull
        public BadgeDrawable getOrCreateBadge() {
            return this.view.getOrCreateBadge();
        }

        public int getPosition() {
            return this.f32655e;
        }

        @LabelVisibility
        public int getTabLabelVisibility() {
            return this.f32657g;
        }

        @Nullable
        public Object getTag() {
            return this.f32651a;
        }

        @Nullable
        public CharSequence getText() {
            return this.f32653c;
        }

        public boolean isSelected() {
            TabLayout tabLayout = this.parent;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            int selectedTabPosition = tabLayout.getSelectedTabPosition();
            return selectedTabPosition != -1 && selectedTabPosition == this.f32655e;
        }

        public void removeBadge() {
            this.view.m25145r();
        }

        public void select() {
            TabLayout tabLayout = this.parent;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            tabLayout.selectTab(this);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setContentDescription(@StringRes int i) {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                return setContentDescription(tabLayout.getResources().getText(i));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setCustomView(@Nullable View view) {
            this.f32656f = view;
            m25124g();
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setIcon(@Nullable Drawable drawable) {
            this.f32652b = drawable;
            TabLayout tabLayout = this.parent;
            if (tabLayout.f32634q0 == 1 || tabLayout.f32642v0 == 2) {
                tabLayout.m25098D(true);
            }
            m25124g();
            if (BadgeUtils.USE_COMPAT_PARENT && this.view.m25142o() && this.view.f32666i.isVisible()) {
                this.view.invalidate();
            }
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setId(int i) {
            this.f32658h = i;
            TabView tabView = this.view;
            if (tabView != null) {
                tabView.setId(i);
            }
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setTabLabelVisibility(@LabelVisibility int i) {
            this.f32657g = i;
            TabLayout tabLayout = this.parent;
            if (tabLayout.f32634q0 == 1 || tabLayout.f32642v0 == 2) {
                tabLayout.m25098D(true);
            }
            m25124g();
            if (BadgeUtils.USE_COMPAT_PARENT && this.view.m25142o() && this.view.f32666i.isVisible()) {
                this.view.invalidate();
            }
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setTag(@Nullable Object obj) {
            this.f32651a = obj;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setText(@Nullable CharSequence charSequence) {
            if (TextUtils.isEmpty(this.f32654d) && !TextUtils.isEmpty(charSequence)) {
                this.view.setContentDescription(charSequence);
            }
            this.f32653c = charSequence;
            m25124g();
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setCustomView(@LayoutRes int i) {
            return setCustomView(LayoutInflater.from(this.view.getContext()).inflate(i, (ViewGroup) this.view, false));
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setContentDescription(@Nullable CharSequence charSequence) {
            this.f32654d = charSequence;
            m25124g();
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setText(@StringRes int i) {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                return setText(tabLayout.getResources().getText(i));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setIcon(@DrawableRes int i) {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                return setIcon(AppCompatResources.getDrawable(tabLayout.getContext(), i));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }
    }

    public TabLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.tabStyle);
    }

    @Deprecated
    public void addOnTabSelectedListener(@Nullable BaseOnTabSelectedListener baseOnTabSelectedListener) {
        if (this.f32606E0.contains(baseOnTabSelectedListener)) {
            return;
        }
        this.f32606E0.add(baseOnTabSelectedListener);
    }

    public void addTab(@NonNull Tab tab, int i) {
        addTab(tab, i, this.f32621f.isEmpty());
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i) {
        m25102i(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Deprecated
    public void removeOnTabSelectedListener(@Nullable BaseOnTabSelectedListener baseOnTabSelectedListener) {
        this.f32606E0.remove(baseOnTabSelectedListener);
    }

    public void selectTab(@Nullable Tab tab, boolean z) {
        Tab tab2 = this.f32622g;
        if (tab2 == tab) {
            if (tab2 != null) {
                m25109r(tab);
                m25093j(tab.getPosition());
                return;
            }
            return;
        }
        int position = tab != null ? tab.getPosition() : -1;
        if (z) {
            if ((tab2 == null || tab2.getPosition() == -1) && position != -1) {
                setScrollPosition(position, 0.0f, true);
            } else {
                m25093j(position);
            }
            if (position != -1) {
                setSelectedTabView(position);
            }
        }
        this.f32622g = tab;
        if (tab2 != null && tab2.parent != null) {
            m25111t(tab2);
        }
        if (tab != null) {
            m25110s(tab);
        }
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable BaseOnTabSelectedListener baseOnTabSelectedListener) {
        BaseOnTabSelectedListener baseOnTabSelectedListener2 = this.f32605D0;
        if (baseOnTabSelectedListener2 != null) {
            removeOnTabSelectedListener(baseOnTabSelectedListener2);
        }
        this.f32605D0 = baseOnTabSelectedListener;
        if (baseOnTabSelectedListener != null) {
            addOnTabSelectedListener(baseOnTabSelectedListener);
        }
    }

    public void setScrollPosition(int i, float f, boolean z, boolean z2) {
        m25117z(i, f, z, z2, true);
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager, boolean z) {
        m25095A(viewPager, z, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TabLayout(@androidx.annotation.NonNull android.content.Context r10, @androidx.annotation.Nullable android.util.AttributeSet r11, int r12) {
        /*
            Method dump skipped, instructions count: 544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public void addTab(@NonNull Tab tab, boolean z) {
        addTab(tab, this.f32621f.size(), z);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        m25102i(view);
    }

    public void addTab(@NonNull Tab tab, int i, boolean z) {
        if (tab.parent == this) {
            m25106n(tab, i);
            m25101h(tab);
            if (z) {
                tab.select();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        m25102i(view);
    }

    public void setTabTextColors(int i, int i2) {
        setTabTextColors(m25094o(i, i2));
    }

    public void setSelectedTabIndicator(@DrawableRes int i) {
        if (i != 0) {
            setSelectedTabIndicator(AppCompatResources.getDrawable(getContext(), i));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }
}
