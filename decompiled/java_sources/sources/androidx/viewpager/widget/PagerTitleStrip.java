package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.method.SingleLineTransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.TextViewCompat;
import androidx.viewpager.widget.ViewPager;
import java.lang.ref.WeakReference;
import java.util.Locale;

@ViewPager.DecorView
/* loaded from: classes3.dex */
public class PagerTitleStrip extends ViewGroup {

    /* renamed from: s */
    public static final int[] f10999s = {R.attr.textAppearance, R.attr.textSize, R.attr.textColor, R.attr.gravity};

    /* renamed from: t */
    public static final int[] f11000t = {R.attr.textAllCaps};

    /* renamed from: u */
    public static final float f11001u = 0.6f;

    /* renamed from: v */
    public static final int f11002v = 16;

    /* renamed from: e */
    public ViewPager f11003e;

    /* renamed from: f */
    public TextView f11004f;

    /* renamed from: g */
    public TextView f11005g;

    /* renamed from: h */
    public TextView f11006h;

    /* renamed from: i */
    public int f11007i;

    /* renamed from: j */
    public float f11008j;

    /* renamed from: k */
    public int f11009k;

    /* renamed from: l */
    public int f11010l;

    /* renamed from: m */
    public boolean f11011m;

    /* renamed from: n */
    public boolean f11012n;

    /* renamed from: o */
    public final C1541a f11013o;

    /* renamed from: p */
    public WeakReference<PagerAdapter> f11014p;

    /* renamed from: q */
    public int f11015q;

    /* renamed from: r */
    public int f11016r;

    /* renamed from: androidx.viewpager.widget.PagerTitleStrip$a */
    /* loaded from: classes3.dex */
    public class C1541a extends DataSetObserver implements ViewPager.OnPageChangeListener, ViewPager.OnAdapterChangeListener {

        /* renamed from: e */
        public int f11017e;

        public C1541a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
        public void onAdapterChanged(ViewPager viewPager, PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
            PagerTitleStrip.this.m6763a(pagerAdapter, pagerAdapter2);
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
            pagerTitleStrip.m6764b(pagerTitleStrip.f11003e.getCurrentItem(), PagerTitleStrip.this.f11003e.getAdapter());
            PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
            float f = pagerTitleStrip2.f11008j;
            if (f < 0.0f) {
                f = 0.0f;
            }
            pagerTitleStrip2.mo6762c(pagerTitleStrip2.f11003e.getCurrentItem(), f, true);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            this.f11017e = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            if (f > 0.5f) {
                i++;
            }
            PagerTitleStrip.this.mo6762c(i, f, false);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            if (this.f11017e == 0) {
                PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
                pagerTitleStrip.m6764b(pagerTitleStrip.f11003e.getCurrentItem(), PagerTitleStrip.this.f11003e.getAdapter());
                PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
                float f = pagerTitleStrip2.f11008j;
                if (f < 0.0f) {
                    f = 0.0f;
                }
                pagerTitleStrip2.mo6762c(pagerTitleStrip2.f11003e.getCurrentItem(), f, true);
            }
        }
    }

    /* renamed from: androidx.viewpager.widget.PagerTitleStrip$b */
    /* loaded from: classes3.dex */
    public static class C1542b extends SingleLineTransformationMethod {

        /* renamed from: a */
        public Locale f11019a;

        public C1542b(Context context) {
            this.f11019a = context.getResources().getConfiguration().locale;
        }

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            if (transformation != null) {
                return transformation.toString().toUpperCase(this.f11019a);
            }
            return null;
        }
    }

    public PagerTitleStrip(@NonNull Context context) {
        this(context, null);
    }

    private static void setSingleLineAllCaps(TextView textView) {
        textView.setTransformationMethod(new C1542b(textView.getContext()));
    }

    /* renamed from: a */
    public void m6763a(PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
        if (pagerAdapter != null) {
            pagerAdapter.unregisterDataSetObserver(this.f11013o);
            this.f11014p = null;
        }
        if (pagerAdapter2 != null) {
            pagerAdapter2.registerDataSetObserver(this.f11013o);
            this.f11014p = new WeakReference<>(pagerAdapter2);
        }
        ViewPager viewPager = this.f11003e;
        if (viewPager != null) {
            this.f11007i = -1;
            this.f11008j = -1.0f;
            m6764b(viewPager.getCurrentItem(), pagerAdapter2);
            requestLayout();
        }
    }

    /* renamed from: b */
    public void m6764b(int i, PagerAdapter pagerAdapter) {
        int count = pagerAdapter != null ? pagerAdapter.getCount() : 0;
        this.f11011m = true;
        CharSequence charSequence = null;
        this.f11004f.setText((i < 1 || pagerAdapter == null) ? null : pagerAdapter.getPageTitle(i - 1));
        this.f11005g.setText((pagerAdapter == null || i >= count) ? null : pagerAdapter.getPageTitle(i));
        int i2 = i + 1;
        if (i2 < count && pagerAdapter != null) {
            charSequence = pagerAdapter.getPageTitle(i2);
        }
        this.f11006h.setText(charSequence);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        this.f11004f.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f11005g.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f11006h.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f11007i = i;
        if (!this.f11012n) {
            mo6762c(i, this.f11008j, false);
        }
        this.f11011m = false;
    }

    /* renamed from: c */
    public void mo6762c(int i, float f, boolean z) {
        int i2;
        int i3;
        int i4;
        int i5;
        if (i != this.f11007i) {
            m6764b(i, this.f11003e.getAdapter());
        } else if (!z && f == this.f11008j) {
            return;
        }
        this.f11012n = true;
        int measuredWidth = this.f11004f.getMeasuredWidth();
        int measuredWidth2 = this.f11005g.getMeasuredWidth();
        int measuredWidth3 = this.f11006h.getMeasuredWidth();
        int i6 = measuredWidth2 / 2;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i7 = paddingRight + i6;
        int i8 = (width - (paddingLeft + i6)) - i7;
        float f2 = 0.5f + f;
        if (f2 > 1.0f) {
            f2 -= 1.0f;
        }
        int i9 = ((width - i7) - ((int) (i8 * f2))) - i6;
        int i10 = measuredWidth2 + i9;
        int baseline = this.f11004f.getBaseline();
        int baseline2 = this.f11005g.getBaseline();
        int baseline3 = this.f11006h.getBaseline();
        int max = Math.max(Math.max(baseline, baseline2), baseline3);
        int i11 = max - baseline;
        int i12 = max - baseline2;
        int i13 = max - baseline3;
        int max2 = Math.max(Math.max(this.f11004f.getMeasuredHeight() + i11, this.f11005g.getMeasuredHeight() + i12), this.f11006h.getMeasuredHeight() + i13);
        int i14 = this.f11010l & 112;
        if (i14 == 16) {
            i2 = (((height - paddingTop) - paddingBottom) - max2) / 2;
        } else {
            if (i14 != 80) {
                i3 = i11 + paddingTop;
                i4 = i12 + paddingTop;
                i5 = paddingTop + i13;
                TextView textView = this.f11005g;
                textView.layout(i9, i4, i10, textView.getMeasuredHeight() + i4);
                int min = Math.min(paddingLeft, (i9 - this.f11009k) - measuredWidth);
                TextView textView2 = this.f11004f;
                textView2.layout(min, i3, measuredWidth + min, textView2.getMeasuredHeight() + i3);
                int max3 = Math.max((width - paddingRight) - measuredWidth3, i10 + this.f11009k);
                TextView textView3 = this.f11006h;
                textView3.layout(max3, i5, max3 + measuredWidth3, textView3.getMeasuredHeight() + i5);
                this.f11008j = f;
                this.f11012n = false;
            }
            i2 = (height - paddingBottom) - max2;
        }
        i3 = i11 + i2;
        i4 = i12 + i2;
        i5 = i2 + i13;
        TextView textView4 = this.f11005g;
        textView4.layout(i9, i4, i10, textView4.getMeasuredHeight() + i4);
        int min2 = Math.min(paddingLeft, (i9 - this.f11009k) - measuredWidth);
        TextView textView22 = this.f11004f;
        textView22.layout(min2, i3, measuredWidth + min2, textView22.getMeasuredHeight() + i3);
        int max32 = Math.max((width - paddingRight) - measuredWidth3, i10 + this.f11009k);
        TextView textView32 = this.f11006h;
        textView32.layout(max32, i5, max32 + measuredWidth3, textView32.getMeasuredHeight() + i5);
        this.f11008j = f;
        this.f11012n = false;
    }

    public int getMinHeight() {
        Drawable background = getBackground();
        if (background != null) {
            return background.getIntrinsicHeight();
        }
        return 0;
    }

    public int getTextSpacing() {
        return this.f11009k;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (!(parent instanceof ViewPager)) {
            throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
        }
        ViewPager viewPager = (ViewPager) parent;
        PagerAdapter adapter = viewPager.getAdapter();
        viewPager.m6773H(this.f11013o);
        viewPager.addOnAdapterChangeListener(this.f11013o);
        this.f11003e = viewPager;
        WeakReference<PagerAdapter> weakReference = this.f11014p;
        m6763a(weakReference != null ? weakReference.get() : null, adapter);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.f11003e;
        if (viewPager != null) {
            m6763a(viewPager.getAdapter(), null);
            this.f11003e.m6773H(null);
            this.f11003e.removeOnAdapterChangeListener(this.f11013o);
            this.f11003e = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f11003e != null) {
            float f = this.f11008j;
            if (f < 0.0f) {
                f = 0.0f;
            }
            mo6762c(this.f11007i, f, true);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int max;
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException("Must measure with an exact width");
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingTop, -2);
        int size = View.MeasureSpec.getSize(i);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i, (int) (size * 0.2f), -2);
        this.f11004f.measure(childMeasureSpec2, childMeasureSpec);
        this.f11005g.measure(childMeasureSpec2, childMeasureSpec);
        this.f11006h.measure(childMeasureSpec2, childMeasureSpec);
        if (View.MeasureSpec.getMode(i2) == 1073741824) {
            max = View.MeasureSpec.getSize(i2);
        } else {
            max = Math.max(getMinHeight(), this.f11005g.getMeasuredHeight() + paddingTop);
        }
        setMeasuredDimension(size, View.resolveSizeAndState(max, i2, this.f11005g.getMeasuredState() << 16));
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f11011m) {
            return;
        }
        super.requestLayout();
    }

    public void setGravity(int i) {
        this.f11010l = i;
        requestLayout();
    }

    public void setNonPrimaryAlpha(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        int i = ((int) (f * 255.0f)) & 255;
        this.f11015q = i;
        int i2 = (i << 24) | (this.f11016r & 16777215);
        this.f11004f.setTextColor(i2);
        this.f11006h.setTextColor(i2);
    }

    public void setTextColor(@ColorInt int i) {
        this.f11016r = i;
        this.f11005g.setTextColor(i);
        int i2 = (this.f11015q << 24) | (this.f11016r & 16777215);
        this.f11004f.setTextColor(i2);
        this.f11006h.setTextColor(i2);
    }

    public void setTextSize(int i, float f) {
        this.f11004f.setTextSize(i, f);
        this.f11005g.setTextSize(i, f);
        this.f11006h.setTextSize(i, f);
    }

    public void setTextSpacing(int i) {
        this.f11009k = i;
        requestLayout();
    }

    public PagerTitleStrip(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11007i = -1;
        this.f11008j = -1.0f;
        this.f11013o = new C1541a();
        TextView textView = new TextView(context);
        this.f11004f = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.f11005g = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.f11006h = textView3;
        addView(textView3);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f10999s);
        boolean z = false;
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            TextViewCompat.setTextAppearance(this.f11004f, resourceId);
            TextViewCompat.setTextAppearance(this.f11005g, resourceId);
            TextViewCompat.setTextAppearance(this.f11006h, resourceId);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            setTextSize(0, dimensionPixelSize);
        }
        if (obtainStyledAttributes.hasValue(2)) {
            int color = obtainStyledAttributes.getColor(2, 0);
            this.f11004f.setTextColor(color);
            this.f11005g.setTextColor(color);
            this.f11006h.setTextColor(color);
        }
        this.f11010l = obtainStyledAttributes.getInteger(3, 80);
        obtainStyledAttributes.recycle();
        this.f11016r = this.f11005g.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(0.6f);
        this.f11004f.setEllipsize(TextUtils.TruncateAt.END);
        this.f11005g.setEllipsize(TextUtils.TruncateAt.END);
        this.f11006h.setEllipsize(TextUtils.TruncateAt.END);
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, f11000t);
            z = obtainStyledAttributes2.getBoolean(0, false);
            obtainStyledAttributes2.recycle();
        }
        if (z) {
            setSingleLineAllCaps(this.f11004f);
            setSingleLineAllCaps(this.f11005g);
            setSingleLineAllCaps(this.f11006h);
        } else {
            this.f11004f.setSingleLine();
            this.f11005g.setSingleLine();
            this.f11006h.setSingleLine();
        }
        this.f11009k = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }
}
