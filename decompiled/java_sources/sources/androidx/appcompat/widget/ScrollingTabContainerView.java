package androidx.appcompat.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.appcompat.widget.LinearLayoutCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class ScrollingTabContainerView extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* renamed from: n */
    public static final String f1807n = "ScrollingTabContainerView";

    /* renamed from: o */
    public static final Interpolator f1808o = new DecelerateInterpolator();

    /* renamed from: p */
    public static final int f1809p = 200;

    /* renamed from: e */
    public Runnable f1810e;

    /* renamed from: f */
    public ViewOnClickListenerC0273c f1811f;

    /* renamed from: g */
    public LinearLayoutCompat f1812g;

    /* renamed from: h */
    public Spinner f1813h;

    /* renamed from: i */
    public boolean f1814i;

    /* renamed from: j */
    public int f1815j;

    /* renamed from: k */
    public int f1816k;

    /* renamed from: l */
    public int f1817l;

    /* renamed from: m */
    public int f1818m;
    protected final VisibilityAnimListener mVisAnimListener;
    protected ViewPropertyAnimator mVisibilityAnim;

    /* loaded from: classes3.dex */
    public class VisibilityAnimListener extends AnimatorListenerAdapter {

        /* renamed from: e */
        public boolean f1819e = false;

        /* renamed from: f */
        public int f1820f;

        public VisibilityAnimListener() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f1819e = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f1819e) {
                return;
            }
            ScrollingTabContainerView scrollingTabContainerView = ScrollingTabContainerView.this;
            scrollingTabContainerView.mVisibilityAnim = null;
            scrollingTabContainerView.setVisibility(this.f1820f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ScrollingTabContainerView.this.setVisibility(0);
            this.f1819e = false;
        }

        public VisibilityAnimListener withFinalVisibility(ViewPropertyAnimator viewPropertyAnimator, int i) {
            this.f1820f = i;
            ScrollingTabContainerView.this.mVisibilityAnim = viewPropertyAnimator;
            return this;
        }
    }

    /* renamed from: androidx.appcompat.widget.ScrollingTabContainerView$a */
    /* loaded from: classes3.dex */
    public class RunnableC0271a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ View f1822e;

        public RunnableC0271a(View view) {
            this.f1822e = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            ScrollingTabContainerView.this.smoothScrollTo(this.f1822e.getLeft() - ((ScrollingTabContainerView.this.getWidth() - this.f1822e.getWidth()) / 2), 0);
            ScrollingTabContainerView.this.f1810e = null;
        }
    }

    /* renamed from: androidx.appcompat.widget.ScrollingTabContainerView$b */
    /* loaded from: classes3.dex */
    public class C0272b extends BaseAdapter {
        public C0272b() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return ScrollingTabContainerView.this.f1812g.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return ((C0274d) ScrollingTabContainerView.this.f1812g.getChildAt(i)).m863b();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                return ScrollingTabContainerView.this.m858c((ActionBar.Tab) getItem(i), true);
            }
            ((C0274d) view).m862a((ActionBar.Tab) getItem(i));
            return view;
        }
    }

    /* renamed from: androidx.appcompat.widget.ScrollingTabContainerView$c */
    /* loaded from: classes3.dex */
    public class ViewOnClickListenerC0273c implements View.OnClickListener {
        public ViewOnClickListenerC0273c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((C0274d) view).m863b().select();
            int childCount = ScrollingTabContainerView.this.f1812g.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = ScrollingTabContainerView.this.f1812g.getChildAt(i);
                childAt.setSelected(childAt == view);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ScrollingTabContainerView$d */
    /* loaded from: classes3.dex */
    public class C0274d extends LinearLayout {

        /* renamed from: k */
        public static final String f1826k = "androidx.appcompat.app.ActionBar$Tab";

        /* renamed from: e */
        public final int[] f1827e;

        /* renamed from: f */
        public ActionBar.Tab f1828f;

        /* renamed from: g */
        public TextView f1829g;

        /* renamed from: h */
        public ImageView f1830h;

        /* renamed from: i */
        public View f1831i;

        public C0274d(Context context, ActionBar.Tab tab, boolean z) {
            super(context, null, C0118R.attr.actionBarTabStyle);
            int[] iArr = {R.attr.background};
            this.f1827e = iArr;
            this.f1828f = tab;
            TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, null, iArr, C0118R.attr.actionBarTabStyle, 0);
            if (obtainStyledAttributes.hasValue(0)) {
                setBackgroundDrawable(obtainStyledAttributes.getDrawable(0));
            }
            obtainStyledAttributes.recycle();
            if (z) {
                setGravity(8388627);
            }
            m864c();
        }

        /* renamed from: a */
        public void m862a(ActionBar.Tab tab) {
            this.f1828f = tab;
            m864c();
        }

        /* renamed from: b */
        public ActionBar.Tab m863b() {
            return this.f1828f;
        }

        /* renamed from: c */
        public void m864c() {
            ActionBar.Tab tab = this.f1828f;
            View customView = tab.getCustomView();
            if (customView != null) {
                ViewParent parent = customView.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(customView);
                    }
                    addView(customView);
                }
                this.f1831i = customView;
                TextView textView = this.f1829g;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f1830h;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f1830h.setImageDrawable(null);
                    return;
                }
                return;
            }
            View view = this.f1831i;
            if (view != null) {
                removeView(view);
                this.f1831i = null;
            }
            Drawable icon = tab.getIcon();
            CharSequence text = tab.getText();
            if (icon != null) {
                if (this.f1830h == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.f1830h = appCompatImageView;
                }
                this.f1830h.setImageDrawable(icon);
                this.f1830h.setVisibility(0);
            } else {
                ImageView imageView2 = this.f1830h;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f1830h.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(text);
            if (z) {
                if (this.f1829g == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, C0118R.attr.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.f1829g = appCompatTextView;
                }
                this.f1829g.setText(text);
                this.f1829g.setVisibility(0);
            } else {
                TextView textView2 = this.f1829g;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f1829g.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.f1830h;
            if (imageView3 != null) {
                imageView3.setContentDescription(tab.getContentDescription());
            }
            TooltipCompat.setTooltipText(this, z ? null : tab.getContentDescription());
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(f1826k);
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(f1826k);
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (ScrollingTabContainerView.this.f1815j > 0) {
                int measuredWidth = getMeasuredWidth();
                int i3 = ScrollingTabContainerView.this.f1815j;
                if (measuredWidth > i3) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
                }
            }
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }
    }

    public ScrollingTabContainerView(@NonNull Context context) {
        super(context);
        this.mVisAnimListener = new VisibilityAnimListener();
        setHorizontalScrollBarEnabled(false);
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(context);
        setContentHeight(actionBarPolicy.getTabContainerHeight());
        this.f1816k = actionBarPolicy.getStackedTabMaxWidth();
        LinearLayoutCompat m857b = m857b();
        this.f1812g = m857b;
        addView(m857b, new ViewGroup.LayoutParams(-2, -1));
    }

    /* renamed from: a */
    public final Spinner m856a() {
        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, C0118R.attr.actionDropDownStyle);
        appCompatSpinner.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        appCompatSpinner.setOnItemSelectedListener(this);
        return appCompatSpinner;
    }

    public void addTab(ActionBar.Tab tab, boolean z) {
        C0274d m858c = m858c(tab, false);
        this.f1812g.addView(m858c, new LinearLayoutCompat.LayoutParams(0, -1, 1.0f));
        Spinner spinner = this.f1813h;
        if (spinner != null) {
            ((C0272b) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (z) {
            m858c.setSelected(true);
        }
        if (this.f1814i) {
            requestLayout();
        }
    }

    public void animateToTab(int i) {
        View childAt = this.f1812g.getChildAt(i);
        Runnable runnable = this.f1810e;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        RunnableC0271a runnableC0271a = new RunnableC0271a(childAt);
        this.f1810e = runnableC0271a;
        post(runnableC0271a);
    }

    public void animateToVisibility(int i) {
        ViewPropertyAnimator viewPropertyAnimator = this.mVisibilityAnim;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
        if (i != 0) {
            ViewPropertyAnimator alpha = animate().alpha(0.0f);
            alpha.setDuration(200L);
            alpha.setInterpolator(f1808o);
            alpha.setListener(this.mVisAnimListener.withFinalVisibility(alpha, i));
            alpha.start();
            return;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        ViewPropertyAnimator alpha2 = animate().alpha(1.0f);
        alpha2.setDuration(200L);
        alpha2.setInterpolator(f1808o);
        alpha2.setListener(this.mVisAnimListener.withFinalVisibility(alpha2, i));
        alpha2.start();
    }

    /* renamed from: b */
    public final LinearLayoutCompat m857b() {
        LinearLayoutCompat linearLayoutCompat = new LinearLayoutCompat(getContext(), null, C0118R.attr.actionBarTabBarStyle);
        linearLayoutCompat.setMeasureWithLargestChildEnabled(true);
        linearLayoutCompat.setGravity(17);
        linearLayoutCompat.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        return linearLayoutCompat;
    }

    /* renamed from: c */
    public C0274d m858c(ActionBar.Tab tab, boolean z) {
        C0274d c0274d = new C0274d(getContext(), tab, z);
        if (z) {
            c0274d.setBackgroundDrawable(null);
            c0274d.setLayoutParams(new AbsListView.LayoutParams(-1, this.f1817l));
        } else {
            c0274d.setFocusable(true);
            if (this.f1811f == null) {
                this.f1811f = new ViewOnClickListenerC0273c();
            }
            c0274d.setOnClickListener(this.f1811f);
        }
        return c0274d;
    }

    /* renamed from: d */
    public final boolean m859d() {
        Spinner spinner = this.f1813h;
        return spinner != null && spinner.getParent() == this;
    }

    /* renamed from: e */
    public final void m860e() {
        if (m859d()) {
            return;
        }
        if (this.f1813h == null) {
            this.f1813h = m856a();
        }
        removeView(this.f1812g);
        addView(this.f1813h, new ViewGroup.LayoutParams(-2, -1));
        if (this.f1813h.getAdapter() == null) {
            this.f1813h.setAdapter((SpinnerAdapter) new C0272b());
        }
        Runnable runnable = this.f1810e;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.f1810e = null;
        }
        this.f1813h.setSelection(this.f1818m);
    }

    /* renamed from: f */
    public final boolean m861f() {
        if (!m859d()) {
            return false;
        }
        removeView(this.f1813h);
        addView(this.f1812g, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f1813h.getSelectedItemPosition());
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f1810e;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(getContext());
        setContentHeight(actionBarPolicy.getTabContainerHeight());
        this.f1816k = actionBarPolicy.getStackedTabMaxWidth();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f1810e;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ((C0274d) view).m863b().select();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        boolean z = mode == 1073741824;
        setFillViewport(z);
        int childCount = this.f1812g.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f1815j = -1;
        } else {
            if (childCount > 2) {
                this.f1815j = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.f1815j = View.MeasureSpec.getSize(i) / 2;
            }
            this.f1815j = Math.min(this.f1815j, this.f1816k);
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1817l, 1073741824);
        if (!z && this.f1814i) {
            this.f1812g.measure(0, makeMeasureSpec);
            if (this.f1812g.getMeasuredWidth() > View.MeasureSpec.getSize(i)) {
                m860e();
            } else {
                m861f();
            }
        } else {
            m861f();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, makeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.f1818m);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void removeAllTabs() {
        this.f1812g.removeAllViews();
        Spinner spinner = this.f1813h;
        if (spinner != null) {
            ((C0272b) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.f1814i) {
            requestLayout();
        }
    }

    public void removeTabAt(int i) {
        this.f1812g.removeViewAt(i);
        Spinner spinner = this.f1813h;
        if (spinner != null) {
            ((C0272b) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.f1814i) {
            requestLayout();
        }
    }

    public void setAllowCollapse(boolean z) {
        this.f1814i = z;
    }

    public void setContentHeight(int i) {
        this.f1817l = i;
        requestLayout();
    }

    public void setTabSelected(int i) {
        this.f1818m = i;
        int childCount = this.f1812g.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.f1812g.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                animateToTab(i);
            }
            i2++;
        }
        Spinner spinner = this.f1813h;
        if (spinner == null || i < 0) {
            return;
        }
        spinner.setSelection(i);
    }

    public void updateTab(int i) {
        ((C0274d) this.f1812g.getChildAt(i)).m864c();
        Spinner spinner = this.f1813h;
        if (spinner != null) {
            ((C0272b) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.f1814i) {
            requestLayout();
        }
    }

    public void addTab(ActionBar.Tab tab, int i, boolean z) {
        C0274d m858c = m858c(tab, false);
        this.f1812g.addView(m858c, i, new LinearLayoutCompat.LayoutParams(0, -1, 1.0f));
        Spinner spinner = this.f1813h;
        if (spinner != null) {
            ((C0272b) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (z) {
            m858c.setSelected(true);
        }
        if (this.f1814i) {
            requestLayout();
        }
    }
}
