package com.google.android.material.slider;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import android.widget.SeekBar;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewOverlayImpl;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.slider.BaseOnChangeListener;
import com.google.android.material.slider.BaseOnSliderTouchListener;
import com.google.android.material.slider.BaseSlider;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.google.android.material.tooltip.TooltipDrawable;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes6.dex */
public abstract class BaseSlider<S extends BaseSlider<S, L, T>, L extends BaseOnChangeListener<S>, T extends BaseOnSliderTouchListener<S>> extends View {

    /* renamed from: A1 */
    public static final int f32381A1 = 1;

    /* renamed from: B1 */
    public static final int f32382B1 = 0;

    /* renamed from: C1 */
    public static final int f32383C1 = 83;

    /* renamed from: D1 */
    public static final int f32384D1 = 117;

    /* renamed from: I1 */
    @Dimension(unit = 0)
    public static final int f32389I1 = 48;

    /* renamed from: l1 */
    public static final String f32390l1 = "BaseSlider";

    /* renamed from: m1 */
    public static final String f32391m1 = "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)";

    /* renamed from: n1 */
    public static final String f32392n1 = "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)";

    /* renamed from: o1 */
    public static final String f32393o1 = "valueFrom(%s) must be smaller than valueTo(%s)";

    /* renamed from: p1 */
    public static final String f32394p1 = "valueTo(%s) must be greater than valueFrom(%s)";

    /* renamed from: q1 */
    public static final String f32395q1 = "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range";

    /* renamed from: r1 */
    public static final String f32396r1 = "minSeparation(%s) must be greater or equal to 0";

    /* renamed from: s1 */
    public static final String f32397s1 = "minSeparation(%s) cannot be set as a dimension when using stepSize(%s)";

    /* renamed from: t1 */
    public static final String f32398t1 = "minSeparation(%s) must be greater or equal and a multiple of stepSize(%s) when using stepSize(%s)";

    /* renamed from: u1 */
    public static final String f32399u1 = "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.";

    /* renamed from: v1 */
    public static final int f32400v1 = 200;

    /* renamed from: w1 */
    public static final int f32401w1 = 63;

    /* renamed from: x1 */
    public static final double f32402x1 = 1.0E-4d;

    /* renamed from: y1 */
    public static final float f32403y1 = 0.5f;

    /* renamed from: A0 */
    public int f32405A0;

    /* renamed from: B0 */
    public int f32406B0;

    /* renamed from: C0 */
    public int f32407C0;

    /* renamed from: D0 */
    public int f32408D0;

    /* renamed from: E0 */
    public int f32409E0;

    /* renamed from: F0 */
    public float f32410F0;

    /* renamed from: G0 */
    public MotionEvent f32411G0;

    /* renamed from: H0 */
    public LabelFormatter f32412H0;

    /* renamed from: I0 */
    public boolean f32413I0;

    /* renamed from: J */
    public int f32414J;

    /* renamed from: J0 */
    public float f32415J0;

    /* renamed from: K0 */
    public float f32416K0;

    /* renamed from: L0 */
    public ArrayList<Float> f32417L0;

    /* renamed from: M0 */
    public int f32418M0;

    /* renamed from: N0 */
    public int f32419N0;

    /* renamed from: O */
    public int f32420O;

    /* renamed from: O0 */
    public float f32421O0;

    /* renamed from: P0 */
    public float[] f32422P0;

    /* renamed from: Q */
    @Px
    public int f32423Q;

    /* renamed from: Q0 */
    public boolean f32424Q0;

    /* renamed from: R0 */
    public int f32425R0;

    /* renamed from: S0 */
    public int f32426S0;

    /* renamed from: T0 */
    public int f32427T0;

    /* renamed from: U0 */
    public boolean f32428U0;

    /* renamed from: V0 */
    public boolean f32429V0;

    /* renamed from: W0 */
    public boolean f32430W0;

    /* renamed from: X0 */
    @NonNull
    public ColorStateList f32431X0;

    /* renamed from: Y0 */
    @NonNull
    public ColorStateList f32432Y0;

    /* renamed from: Z0 */
    @NonNull
    public ColorStateList f32433Z0;

    /* renamed from: a1 */
    @NonNull
    public ColorStateList f32434a1;

    /* renamed from: b1 */
    @NonNull
    public ColorStateList f32435b1;

    /* renamed from: c1 */
    @NonNull
    public final Path f32436c1;

    /* renamed from: d1 */
    @NonNull
    public final RectF f32437d1;

    /* renamed from: e */
    @NonNull
    public final Paint f32438e;

    /* renamed from: e1 */
    @NonNull
    public final RectF f32439e1;

    /* renamed from: f */
    @NonNull
    public final Paint f32440f;

    /* renamed from: f1 */
    @NonNull
    public final MaterialShapeDrawable f32441f1;

    /* renamed from: g */
    @NonNull
    public final Paint f32442g;

    /* renamed from: g1 */
    @Nullable
    public Drawable f32443g1;

    /* renamed from: h */
    @NonNull
    public final Paint f32444h;

    /* renamed from: h1 */
    @NonNull
    public List<Drawable> f32445h1;

    /* renamed from: i */
    @NonNull
    public final Paint f32446i;

    /* renamed from: i1 */
    public float f32447i1;

    /* renamed from: j */
    @NonNull
    public final Paint f32448j;

    /* renamed from: j1 */
    public int f32449j1;

    /* renamed from: k */
    @NonNull
    public final Paint f32450k;

    /* renamed from: k0 */
    public int f32451k0;

    /* renamed from: k1 */
    @NonNull
    public final ViewTreeObserver.OnScrollChangedListener f32452k1;

    /* renamed from: l */
    @NonNull
    public final C5388e f32453l;

    /* renamed from: m */
    public final AccessibilityManager f32454m;

    /* renamed from: n */
    public BaseSlider<S, L, T>.RunnableC5387d f32455n;

    /* renamed from: o */
    public int f32456o;

    /* renamed from: p */
    @NonNull
    public final List<TooltipDrawable> f32457p;

    /* renamed from: q */
    @NonNull
    public final List<L> f32458q;

    /* renamed from: q0 */
    public int f32459q0;

    /* renamed from: r */
    @NonNull
    public final List<T> f32460r;

    /* renamed from: s */
    public boolean f32461s;

    /* renamed from: t */
    public ValueAnimator f32462t;

    /* renamed from: t0 */
    public int f32463t0;

    /* renamed from: u */
    public ValueAnimator f32464u;

    /* renamed from: u0 */
    public int f32465u0;

    /* renamed from: v */
    public final int f32466v;

    /* renamed from: v0 */
    public int f32467v0;

    /* renamed from: w */
    public int f32468w;

    /* renamed from: w0 */
    public int f32469w0;

    /* renamed from: x */
    public int f32470x;

    /* renamed from: x0 */
    public int f32471x0;

    /* renamed from: y */
    public int f32472y;

    /* renamed from: y0 */
    public int f32473y0;

    /* renamed from: z */
    public int f32474z;

    /* renamed from: z0 */
    public int f32475z0;

    /* renamed from: z1 */
    public static final int f32404z1 = C5139R.style.Widget_MaterialComponents_Slider;

    /* renamed from: E1 */
    public static final int f32385E1 = C5139R.attr.motionDurationMedium4;

    /* renamed from: F1 */
    public static final int f32386F1 = C5139R.attr.motionDurationShort3;

    /* renamed from: G1 */
    public static final int f32387G1 = C5139R.attr.motionEasingEmphasizedInterpolator;

    /* renamed from: H1 */
    public static final int f32388H1 = C5139R.attr.motionEasingEmphasizedAccelerateInterpolator;

    /* loaded from: classes6.dex */
    public enum FullCornerDirection {
        BOTH,
        LEFT,
        RIGHT,
        NONE
    }

    /* loaded from: classes6.dex */
    public static class SliderState extends View.BaseSavedState {
        public static final Parcelable.Creator<SliderState> CREATOR = new C5383a();
        boolean hasFocus;
        float stepSize;
        float valueFrom;
        float valueTo;
        ArrayList<Float> values;

        /* renamed from: com.google.android.material.slider.BaseSlider$SliderState$a */
        /* loaded from: classes6.dex */
        public class C5383a implements Parcelable.Creator<SliderState> {
            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public SliderState createFromParcel(@NonNull Parcel parcel) {
                return new SliderState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public SliderState[] newArray(int i) {
                return new SliderState[i];
            }
        }

        public /* synthetic */ SliderState(Parcel parcel, C5384a c5384a) {
            this(parcel);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.valueFrom);
            parcel.writeFloat(this.valueTo);
            parcel.writeList(this.values);
            parcel.writeFloat(this.stepSize);
            parcel.writeBooleanArray(new boolean[]{this.hasFocus});
        }

        public SliderState(Parcelable parcelable) {
            super(parcelable);
        }

        private SliderState(@NonNull Parcel parcel) {
            super(parcel);
            this.valueFrom = parcel.readFloat();
            this.valueTo = parcel.readFloat();
            ArrayList<Float> arrayList = new ArrayList<>();
            this.values = arrayList;
            parcel.readList(arrayList, Float.class.getClassLoader());
            this.stepSize = parcel.readFloat();
            this.hasFocus = parcel.createBooleanArray()[0];
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$a */
    /* loaded from: classes6.dex */
    public class C5384a implements ValueAnimator.AnimatorUpdateListener {
        public C5384a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Iterator it2 = BaseSlider.this.f32457p.iterator();
            while (it2.hasNext()) {
                ((TooltipDrawable) it2.next()).setRevealFraction(floatValue);
            }
            ViewCompat.postInvalidateOnAnimation(BaseSlider.this);
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$b */
    /* loaded from: classes6.dex */
    public class C5385b extends AnimatorListenerAdapter {
        public C5385b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            ViewOverlayImpl contentViewOverlay = ViewUtils.getContentViewOverlay(BaseSlider.this);
            Iterator it2 = BaseSlider.this.f32457p.iterator();
            while (it2.hasNext()) {
                contentViewOverlay.remove((TooltipDrawable) it2.next());
            }
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$c */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C5386c {

        /* renamed from: a */
        public static final /* synthetic */ int[] f32478a;

        static {
            int[] iArr = new int[FullCornerDirection.values().length];
            f32478a = iArr;
            try {
                iArr[FullCornerDirection.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32478a[FullCornerDirection.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32478a[FullCornerDirection.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32478a[FullCornerDirection.BOTH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$e */
    /* loaded from: classes6.dex */
    public static class C5388e extends ExploreByTouchHelper {

        /* renamed from: r */
        public final BaseSlider<?, ?, ?> f32481r;

        /* renamed from: s */
        public final Rect f32482s;

        public C5388e(BaseSlider<?, ?, ?> baseSlider) {
            super(baseSlider);
            this.f32482s = new Rect();
            this.f32481r = baseSlider;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public int getVirtualViewAt(float f, float f2) {
            for (int i = 0; i < this.f32481r.getValues().size(); i++) {
                this.f32481r.m24972q0(i, this.f32482s);
                if (this.f32482s.contains((int) f, (int) f2)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void getVisibleVirtualViews(List<Integer> list) {
            for (int i = 0; i < this.f32481r.getValues().size(); i++) {
                list.add(Integer.valueOf(i));
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (!this.f32481r.isEnabled()) {
                return false;
            }
            if (i2 != 4096 && i2 != 8192) {
                if (i2 == 16908349 && bundle != null && bundle.containsKey(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE)) {
                    if (this.f32481r.m24968o0(i, bundle.getFloat(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE))) {
                        this.f32481r.m24974r0();
                        this.f32481r.postInvalidate();
                        invalidateVirtualView(i);
                        return true;
                    }
                }
                return false;
            }
            float m24961l = this.f32481r.m24961l(20);
            if (i2 == 8192) {
                m24961l = -m24961l;
            }
            if (this.f32481r.m24936Q()) {
                m24961l = -m24961l;
            }
            if (!this.f32481r.m24968o0(i, MathUtils.clamp(this.f32481r.getValues().get(i).floatValue() + m24961l, this.f32481r.getValueFrom(), this.f32481r.getValueTo()))) {
                return false;
            }
            this.f32481r.m24974r0();
            this.f32481r.postInvalidate();
            invalidateVirtualView(i);
            return true;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SET_PROGRESS);
            List<Float> values = this.f32481r.getValues();
            float floatValue = values.get(i).floatValue();
            float valueFrom = this.f32481r.getValueFrom();
            float valueTo = this.f32481r.getValueTo();
            if (this.f32481r.isEnabled()) {
                if (floatValue > valueFrom) {
                    accessibilityNodeInfoCompat.addAction(8192);
                }
                if (floatValue < valueTo) {
                    accessibilityNodeInfoCompat.addAction(4096);
                }
            }
            accessibilityNodeInfoCompat.setRangeInfo(AccessibilityNodeInfoCompat.RangeInfoCompat.obtain(1, valueFrom, valueTo, floatValue));
            accessibilityNodeInfoCompat.setClassName(SeekBar.class.getName());
            StringBuilder sb = new StringBuilder();
            if (this.f32481r.getContentDescription() != null) {
                sb.append(this.f32481r.getContentDescription());
                sb.append(",");
            }
            String m24919B = this.f32481r.m24919B(floatValue);
            String string = this.f32481r.getContext().getString(C5139R.string.material_slider_value);
            if (values.size() > 1) {
                string = m24994x(i);
            }
            sb.append(String.format(Locale.US, "%s, %s", string, m24919B));
            accessibilityNodeInfoCompat.setContentDescription(sb.toString());
            this.f32481r.m24972q0(i, this.f32482s);
            accessibilityNodeInfoCompat.setBoundsInParent(this.f32482s);
        }

        @NonNull
        /* renamed from: x */
        public final String m24994x(int i) {
            return i == this.f32481r.getValues().size() + (-1) ? this.f32481r.getContext().getString(C5139R.string.material_slider_range_end) : i == 0 ? this.f32481r.getContext().getString(C5139R.string.material_slider_range_start) : "";
        }
    }

    public BaseSlider(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: D */
    public static float m24908D(ValueAnimator valueAnimator, float f) {
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return f;
        }
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        valueAnimator.cancel();
        return floatValue;
    }

    /* renamed from: N */
    public static boolean m24909N(MotionEvent motionEvent) {
        return motionEvent.getToolType(0) == 3;
    }

    @VisibleForTesting
    /* renamed from: A */
    public void m24917A(boolean z) {
        this.f32428U0 = z;
    }

    /* renamed from: A0 */
    public final void m24918A0() {
        if (this.f32416K0 <= this.f32415J0) {
            throw new IllegalStateException(String.format(f32394p1, Float.valueOf(this.f32416K0), Float.valueOf(this.f32415J0)));
        }
    }

    /* renamed from: B */
    public final String m24919B(float f) {
        if (hasLabelFormatter()) {
            return this.f32412H0.getFormattedValue(f);
        }
        return String.format(((float) ((int) f)) == f ? "%.0f" : "%.2f", Float.valueOf(f));
    }

    /* renamed from: B0 */
    public final void m24920B0() {
        Iterator<Float> it2 = this.f32417L0.iterator();
        while (it2.hasNext()) {
            Float next = it2.next();
            if (next.floatValue() < this.f32415J0 || next.floatValue() > this.f32416K0) {
                throw new IllegalStateException(String.format(f32391m1, next, Float.valueOf(this.f32415J0), Float.valueOf(this.f32416K0)));
            }
            if (this.f32421O0 > 0.0f && !m24922C0(next.floatValue())) {
                throw new IllegalStateException(String.format(f32392n1, next, Float.valueOf(this.f32415J0), Float.valueOf(this.f32421O0), Float.valueOf(this.f32421O0)));
            }
        }
    }

    /* renamed from: C */
    public final float[] m24921C() {
        float floatValue = this.f32417L0.get(0).floatValue();
        ArrayList<Float> arrayList = this.f32417L0;
        float floatValue2 = arrayList.get(arrayList.size() - 1).floatValue();
        if (this.f32417L0.size() == 1) {
            floatValue = this.f32415J0;
        }
        float m24947b0 = m24947b0(floatValue);
        float m24947b02 = m24947b0(floatValue2);
        return m24936Q() ? new float[]{m24947b02, m24947b0} : new float[]{m24947b0, m24947b02};
    }

    /* renamed from: C0 */
    public final boolean m24922C0(float f) {
        return m24934O(new BigDecimal(Float.toString(f)).subtract(new BigDecimal(Float.toString(this.f32415J0)), MathContext.DECIMAL64).doubleValue());
    }

    /* renamed from: D0 */
    public final float m24923D0(float f) {
        return (m24947b0(f) * this.f32427T0) + this.f32467v0;
    }

    /* renamed from: E */
    public final float m24924E(int i, float f) {
        float minSeparation = getMinSeparation();
        if (this.f32449j1 == 0) {
            minSeparation = m24971q(minSeparation);
        }
        if (m24936Q()) {
            minSeparation = -minSeparation;
        }
        int i2 = i + 1;
        int i3 = i - 1;
        return MathUtils.clamp(f, i3 < 0 ? this.f32415J0 : this.f32417L0.get(i3).floatValue() + minSeparation, i2 >= this.f32417L0.size() ? this.f32416K0 : this.f32417L0.get(i2).floatValue() - minSeparation);
    }

    /* renamed from: E0 */
    public final void m24925E0() {
        float f = this.f32421O0;
        if (f == 0.0f) {
            return;
        }
        if (((int) f) != f) {
            Log.w(f32390l1, String.format(f32399u1, "stepSize", Float.valueOf(f)));
        }
        float f2 = this.f32415J0;
        if (((int) f2) != f2) {
            Log.w(f32390l1, String.format(f32399u1, "valueFrom", Float.valueOf(f2)));
        }
        float f3 = this.f32416K0;
        if (((int) f3) != f3) {
            Log.w(f32390l1, String.format(f32399u1, "valueTo", Float.valueOf(f3)));
        }
    }

    @ColorInt
    /* renamed from: F */
    public final int m24926F(@NonNull ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    /* renamed from: G */
    public final float[] m24927G(float f, float f2) {
        return new float[]{f, f, f2, f2, f2, f2, f, f};
    }

    /* renamed from: H */
    public final float m24928H() {
        double m24966n0 = m24966n0(this.f32447i1);
        if (m24936Q()) {
            m24966n0 = 1.0d - m24966n0;
        }
        float f = this.f32416K0;
        return (float) ((m24966n0 * (f - r4)) + this.f32415J0);
    }

    /* renamed from: I */
    public final float m24929I() {
        float f = this.f32447i1;
        if (m24936Q()) {
            f = 1.0f - f;
        }
        float f2 = this.f32416K0;
        float f3 = this.f32415J0;
        return (f * (f2 - f3)) + f3;
    }

    /* renamed from: J */
    public final boolean m24930J() {
        return this.f32475z0 > 0;
    }

    /* renamed from: K */
    public final Drawable m24931K(Drawable drawable) {
        Drawable newDrawable = drawable.mutate().getConstantState().newDrawable();
        m24953h(newDrawable);
        return newDrawable;
    }

    /* renamed from: L */
    public final void m24932L() {
        this.f32438e.setStrokeWidth(this.f32465u0);
        this.f32440f.setStrokeWidth(this.f32465u0);
    }

    /* renamed from: M */
    public final boolean m24933M() {
        ViewParent parent = getParent();
        while (true) {
            if (!(parent instanceof ViewGroup)) {
                return false;
            }
            ViewGroup viewGroup = (ViewGroup) parent;
            if ((viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) && viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
            parent = parent.getParent();
        }
    }

    /* renamed from: O */
    public final boolean m24934O(double d) {
        double doubleValue = new BigDecimal(Double.toString(d)).divide(new BigDecimal(Float.toString(this.f32421O0)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(doubleValue)) - doubleValue) < 1.0E-4d;
    }

    /* renamed from: P */
    public final boolean m24935P(MotionEvent motionEvent) {
        return !m24909N(motionEvent) && m24933M();
    }

    /* renamed from: Q */
    public final boolean m24936Q() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    /* renamed from: R */
    public final boolean m24937R() {
        Rect rect = new Rect();
        ViewUtils.getContentView(this).getHitRect(rect);
        return getLocalVisibleRect(rect);
    }

    /* renamed from: S */
    public final void m24938S(@NonNull Resources resources) {
        this.f32451k0 = resources.getDimensionPixelSize(C5139R.dimen.mtrl_slider_widget_height);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(C5139R.dimen.mtrl_slider_track_side_padding);
        this.f32468w = dimensionPixelOffset;
        this.f32467v0 = dimensionPixelOffset;
        this.f32470x = resources.getDimensionPixelSize(C5139R.dimen.mtrl_slider_thumb_radius);
        this.f32472y = resources.getDimensionPixelSize(C5139R.dimen.mtrl_slider_track_height);
        this.f32474z = resources.getDimensionPixelSize(C5139R.dimen.mtrl_slider_tick_radius);
        this.f32414J = resources.getDimensionPixelSize(C5139R.dimen.mtrl_slider_tick_radius);
        this.f32420O = resources.getDimensionPixelSize(C5139R.dimen.mtrl_slider_tick_min_spacing);
        this.f32409E0 = resources.getDimensionPixelSize(C5139R.dimen.mtrl_slider_label_padding);
    }

    /* renamed from: T */
    public final void m24939T() {
        if (this.f32421O0 <= 0.0f) {
            return;
        }
        m24984w0();
        int min = Math.min((int) (((this.f32416K0 - this.f32415J0) / this.f32421O0) + 1.0f), (this.f32427T0 / this.f32420O) + 1);
        float[] fArr = this.f32422P0;
        if (fArr == null || fArr.length != min * 2) {
            this.f32422P0 = new float[min * 2];
        }
        float f = this.f32427T0 / (min - 1);
        for (int i = 0; i < min * 2; i += 2) {
            float[] fArr2 = this.f32422P0;
            fArr2[i] = this.f32467v0 + ((i / 2.0f) * f);
            fArr2[i + 1] = m24963m();
        }
    }

    /* renamed from: U */
    public final void m24940U(@NonNull Canvas canvas, int i, int i2) {
        if (m24962l0()) {
            canvas.drawCircle((int) (this.f32467v0 + (m24947b0(this.f32417L0.get(this.f32419N0).floatValue()) * i)), i2, this.f32473y0, this.f32444h);
        }
    }

    /* renamed from: V */
    public final void m24941V(@NonNull Canvas canvas, int i) {
        if (this.f32407C0 <= 0) {
            return;
        }
        if (this.f32417L0.size() >= 1) {
            ArrayList<Float> arrayList = this.f32417L0;
            float floatValue = arrayList.get(arrayList.size() - 1).floatValue();
            float f = this.f32416K0;
            if (floatValue < f) {
                canvas.drawPoint(m24923D0(f), i, this.f32450k);
            }
        }
        if (this.f32417L0.size() > 1) {
            float floatValue2 = this.f32417L0.get(0).floatValue();
            float f2 = this.f32415J0;
            if (floatValue2 > f2) {
                canvas.drawPoint(m24923D0(f2), i, this.f32450k);
            }
        }
    }

    /* renamed from: W */
    public final void m24942W(@NonNull Canvas canvas) {
        if (!this.f32424Q0 || this.f32421O0 <= 0.0f) {
            return;
        }
        float[] m24921C = m24921C();
        int ceil = (int) Math.ceil(m24921C[0] * ((this.f32422P0.length / 2.0f) - 1.0f));
        int floor = (int) Math.floor(m24921C[1] * ((this.f32422P0.length / 2.0f) - 1.0f));
        if (ceil > 0) {
            canvas.drawPoints(this.f32422P0, 0, ceil * 2, this.f32446i);
        }
        if (ceil <= floor) {
            canvas.drawPoints(this.f32422P0, ceil * 2, ((floor - ceil) + 1) * 2, this.f32448j);
        }
        int i = (floor + 1) * 2;
        float[] fArr = this.f32422P0;
        if (i < fArr.length) {
            canvas.drawPoints(fArr, i, fArr.length - i, this.f32446i);
        }
    }

    /* renamed from: X */
    public final boolean m24943X() {
        int max = this.f32468w + Math.max(Math.max(Math.max((this.f32469w0 / 2) - this.f32470x, 0), Math.max((this.f32465u0 - this.f32472y) / 2, 0)), Math.max(Math.max(this.f32425R0 - this.f32474z, 0), Math.max(this.f32426S0 - this.f32414J, 0)));
        if (this.f32467v0 == max) {
            return false;
        }
        this.f32467v0 = max;
        if (!ViewCompat.isLaidOut(this)) {
            return true;
        }
        m24980u0(getWidth());
        return true;
    }

    /* renamed from: Y */
    public final boolean m24944Y() {
        int max = Math.max(this.f32451k0, Math.max(this.f32465u0 + getPaddingTop() + getPaddingBottom(), this.f32471x0 + getPaddingTop() + getPaddingBottom()));
        if (max == this.f32459q0) {
            return false;
        }
        this.f32459q0 = max;
        return true;
    }

    /* renamed from: Z */
    public final boolean m24945Z(int i) {
        int i2 = this.f32419N0;
        int clamp = (int) MathUtils.clamp(i2 + i, 0L, this.f32417L0.size() - 1);
        this.f32419N0 = clamp;
        if (clamp == i2) {
            return false;
        }
        if (this.f32418M0 != -1) {
            this.f32418M0 = clamp;
        }
        m24974r0();
        postInvalidate();
        return true;
    }

    /* renamed from: a0 */
    public final boolean m24946a0(int i) {
        if (m24936Q()) {
            i = i == Integer.MIN_VALUE ? Integer.MAX_VALUE : -i;
        }
        return m24945Z(i);
    }

    public void addOnChangeListener(@NonNull L l) {
        this.f32458q.add(l);
    }

    public void addOnSliderTouchListener(@NonNull T t) {
        this.f32460r.add(t);
    }

    /* renamed from: b0 */
    public final float m24947b0(float f) {
        float f2 = this.f32415J0;
        float f3 = (f - f2) / (this.f32416K0 - f2);
        return m24936Q() ? 1.0f - f3 : f3;
    }

    @Nullable
    /* renamed from: c0 */
    public final Boolean m24948c0(int i, @NonNull KeyEvent keyEvent) {
        if (i == 61) {
            return keyEvent.hasNoModifiers() ? Boolean.valueOf(m24945Z(1)) : keyEvent.isShiftPressed() ? Boolean.valueOf(m24945Z(-1)) : Boolean.FALSE;
        }
        if (i != 66) {
            if (i != 81) {
                if (i == 69) {
                    m24945Z(-1);
                    return Boolean.TRUE;
                }
                if (i != 70) {
                    switch (i) {
                        case 21:
                            m24946a0(-1);
                            return Boolean.TRUE;
                        case 22:
                            m24946a0(1);
                            return Boolean.TRUE;
                        case 23:
                            break;
                        default:
                            return null;
                    }
                }
            }
            m24945Z(1);
            return Boolean.TRUE;
        }
        this.f32418M0 = this.f32419N0;
        postInvalidate();
        return Boolean.TRUE;
    }

    public void clearOnChangeListeners() {
        this.f32458q.clear();
    }

    public void clearOnSliderTouchListeners() {
        this.f32460r.clear();
    }

    /* renamed from: d0 */
    public final void m24949d0() {
        Iterator<T> it2 = this.f32460r.iterator();
        while (it2.hasNext()) {
            it2.next().onStartTrackingTouch(this);
        }
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        return this.f32453l.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        this.f32438e.setColor(m24926F(this.f32435b1));
        this.f32440f.setColor(m24926F(this.f32434a1));
        this.f32446i.setColor(m24926F(this.f32433Z0));
        this.f32448j.setColor(m24926F(this.f32432Y0));
        this.f32450k.setColor(m24926F(this.f32434a1));
        for (TooltipDrawable tooltipDrawable : this.f32457p) {
            if (tooltipDrawable.isStateful()) {
                tooltipDrawable.setState(getDrawableState());
            }
        }
        if (this.f32441f1.isStateful()) {
            this.f32441f1.setState(getDrawableState());
        }
        this.f32444h.setColor(m24926F(this.f32431X0));
        this.f32444h.setAlpha(63);
    }

    /* renamed from: e0 */
    public final void m24950e0() {
        Iterator<T> it2 = this.f32460r.iterator();
        while (it2.hasNext()) {
            it2.next().onStopTrackingTouch(this);
        }
    }

    /* renamed from: f0 */
    public final void m24951f0(TooltipDrawable tooltipDrawable, float f) {
        int m24947b0 = (this.f32467v0 + ((int) (m24947b0(f) * this.f32427T0))) - (tooltipDrawable.getIntrinsicWidth() / 2);
        int m24963m = m24963m() - (this.f32409E0 + (this.f32471x0 / 2));
        tooltipDrawable.setBounds(m24947b0, m24963m - tooltipDrawable.getIntrinsicHeight(), tooltipDrawable.getIntrinsicWidth() + m24947b0, m24963m);
        Rect rect = new Rect(tooltipDrawable.getBounds());
        DescendantOffsetUtils.offsetDescendantRect(ViewUtils.getContentView(this), this, rect);
        tooltipDrawable.setBounds(rect);
    }

    /* renamed from: g0 */
    public final void m24952g0(Context context, AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, C5139R.styleable.Slider, i, f32404z1, new int[0]);
        this.f32456o = obtainStyledAttributes.getResourceId(C5139R.styleable.Slider_labelStyle, C5139R.style.Widget_MaterialComponents_Tooltip);
        this.f32415J0 = obtainStyledAttributes.getFloat(C5139R.styleable.Slider_android_valueFrom, 0.0f);
        this.f32416K0 = obtainStyledAttributes.getFloat(C5139R.styleable.Slider_android_valueTo, 1.0f);
        setValues(Float.valueOf(this.f32415J0));
        this.f32421O0 = obtainStyledAttributes.getFloat(C5139R.styleable.Slider_android_stepSize, 0.0f);
        this.f32423Q = (int) Math.ceil(obtainStyledAttributes.getDimension(C5139R.styleable.Slider_minTouchTargetSize, (float) Math.ceil(ViewUtils.dpToPx(getContext(), 48))));
        boolean hasValue = obtainStyledAttributes.hasValue(C5139R.styleable.Slider_trackColor);
        int i2 = hasValue ? C5139R.styleable.Slider_trackColor : C5139R.styleable.Slider_trackColorInactive;
        int i3 = hasValue ? C5139R.styleable.Slider_trackColor : C5139R.styleable.Slider_trackColorActive;
        ColorStateList colorStateList = MaterialResources.getColorStateList(context, obtainStyledAttributes, i2);
        if (colorStateList == null) {
            colorStateList = AppCompatResources.getColorStateList(context, C5139R.color.material_slider_inactive_track_color);
        }
        setTrackInactiveTintList(colorStateList);
        ColorStateList colorStateList2 = MaterialResources.getColorStateList(context, obtainStyledAttributes, i3);
        if (colorStateList2 == null) {
            colorStateList2 = AppCompatResources.getColorStateList(context, C5139R.color.material_slider_active_track_color);
        }
        setTrackActiveTintList(colorStateList2);
        this.f32441f1.setFillColor(MaterialResources.getColorStateList(context, obtainStyledAttributes, C5139R.styleable.Slider_thumbColor));
        if (obtainStyledAttributes.hasValue(C5139R.styleable.Slider_thumbStrokeColor)) {
            setThumbStrokeColor(MaterialResources.getColorStateList(context, obtainStyledAttributes, C5139R.styleable.Slider_thumbStrokeColor));
        }
        setThumbStrokeWidth(obtainStyledAttributes.getDimension(C5139R.styleable.Slider_thumbStrokeWidth, 0.0f));
        ColorStateList colorStateList3 = MaterialResources.getColorStateList(context, obtainStyledAttributes, C5139R.styleable.Slider_haloColor);
        if (colorStateList3 == null) {
            colorStateList3 = AppCompatResources.getColorStateList(context, C5139R.color.material_slider_halo_color);
        }
        setHaloTintList(colorStateList3);
        this.f32424Q0 = obtainStyledAttributes.getBoolean(C5139R.styleable.Slider_tickVisible, true);
        boolean hasValue2 = obtainStyledAttributes.hasValue(C5139R.styleable.Slider_tickColor);
        int i4 = hasValue2 ? C5139R.styleable.Slider_tickColor : C5139R.styleable.Slider_tickColorInactive;
        int i5 = hasValue2 ? C5139R.styleable.Slider_tickColor : C5139R.styleable.Slider_tickColorActive;
        ColorStateList colorStateList4 = MaterialResources.getColorStateList(context, obtainStyledAttributes, i4);
        if (colorStateList4 == null) {
            colorStateList4 = AppCompatResources.getColorStateList(context, C5139R.color.material_slider_inactive_tick_marks_color);
        }
        setTickInactiveTintList(colorStateList4);
        ColorStateList colorStateList5 = MaterialResources.getColorStateList(context, obtainStyledAttributes, i5);
        if (colorStateList5 == null) {
            colorStateList5 = AppCompatResources.getColorStateList(context, C5139R.color.material_slider_active_tick_marks_color);
        }
        setTickActiveTintList(colorStateList5);
        setThumbTrackGapSize(obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.Slider_thumbTrackGapSize, 0));
        setTrackStopIndicatorSize(obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.Slider_trackStopIndicatorSize, 0));
        setTrackInsideCornerSize(obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.Slider_trackInsideCornerSize, 0));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.Slider_thumbRadius, 0) * 2;
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.Slider_thumbWidth, dimensionPixelSize);
        int dimensionPixelSize3 = obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.Slider_thumbHeight, dimensionPixelSize);
        setThumbWidth(dimensionPixelSize2);
        setThumbHeight(dimensionPixelSize3);
        setHaloRadius(obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.Slider_haloRadius, 0));
        setThumbElevation(obtainStyledAttributes.getDimension(C5139R.styleable.Slider_thumbElevation, 0.0f));
        setTrackHeight(obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.Slider_trackHeight, 0));
        setTickActiveRadius(obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.Slider_tickRadiusActive, this.f32407C0 / 2));
        setTickInactiveRadius(obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.Slider_tickRadiusInactive, this.f32407C0 / 2));
        setLabelBehavior(obtainStyledAttributes.getInt(C5139R.styleable.Slider_labelBehavior, 0));
        if (!obtainStyledAttributes.getBoolean(C5139R.styleable.Slider_android_enabled, true)) {
            setEnabled(false);
        }
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    @NonNull
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    @VisibleForTesting
    public final int getAccessibilityFocusedVirtualViewId() {
        return this.f32453l.getAccessibilityFocusedVirtualViewId();
    }

    public int getActiveThumbIndex() {
        return this.f32418M0;
    }

    public int getFocusedThumbIndex() {
        return this.f32419N0;
    }

    @Px
    public int getHaloRadius() {
        return this.f32473y0;
    }

    @NonNull
    public ColorStateList getHaloTintList() {
        return this.f32431X0;
    }

    public int getLabelBehavior() {
        return this.f32463t0;
    }

    public float getMinSeparation() {
        return 0.0f;
    }

    public float getStepSize() {
        return this.f32421O0;
    }

    public float getThumbElevation() {
        return this.f32441f1.getElevation();
    }

    @Px
    public int getThumbHeight() {
        return this.f32471x0;
    }

    @Px
    public int getThumbRadius() {
        return this.f32469w0 / 2;
    }

    public ColorStateList getThumbStrokeColor() {
        return this.f32441f1.getStrokeColor();
    }

    public float getThumbStrokeWidth() {
        return this.f32441f1.getStrokeWidth();
    }

    @NonNull
    public ColorStateList getThumbTintList() {
        return this.f32441f1.getFillColor();
    }

    public int getThumbTrackGapSize() {
        return this.f32475z0;
    }

    @Px
    public int getThumbWidth() {
        return this.f32469w0;
    }

    @Px
    public int getTickActiveRadius() {
        return this.f32425R0;
    }

    @NonNull
    public ColorStateList getTickActiveTintList() {
        return this.f32432Y0;
    }

    @Px
    public int getTickInactiveRadius() {
        return this.f32426S0;
    }

    @NonNull
    public ColorStateList getTickInactiveTintList() {
        return this.f32433Z0;
    }

    @NonNull
    public ColorStateList getTickTintList() {
        if (this.f32433Z0.equals(this.f32432Y0)) {
            return this.f32432Y0;
        }
        throw new IllegalStateException("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
    }

    @NonNull
    public ColorStateList getTrackActiveTintList() {
        return this.f32434a1;
    }

    @Px
    public int getTrackHeight() {
        return this.f32465u0;
    }

    @NonNull
    public ColorStateList getTrackInactiveTintList() {
        return this.f32435b1;
    }

    public int getTrackInsideCornerSize() {
        return this.f32408D0;
    }

    @Px
    public int getTrackSidePadding() {
        return this.f32467v0;
    }

    public int getTrackStopIndicatorSize() {
        return this.f32407C0;
    }

    @NonNull
    public ColorStateList getTrackTintList() {
        if (this.f32435b1.equals(this.f32434a1)) {
            return this.f32434a1;
        }
        throw new IllegalStateException("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
    }

    @Px
    public int getTrackWidth() {
        return this.f32427T0;
    }

    public float getValueFrom() {
        return this.f32415J0;
    }

    public float getValueTo() {
        return this.f32416K0;
    }

    @NonNull
    public List<Float> getValues() {
        return new ArrayList(this.f32417L0);
    }

    /* renamed from: h */
    public final void m24953h(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth == -1 && intrinsicHeight == -1) {
            drawable.setBounds(0, 0, this.f32469w0, this.f32471x0);
        } else {
            float max = Math.max(this.f32469w0, this.f32471x0) / Math.max(intrinsicWidth, intrinsicHeight);
            drawable.setBounds(0, 0, (int) (intrinsicWidth * max), (int) (intrinsicHeight * max));
        }
    }

    /* renamed from: h0 */
    public final void m24954h0(int i) {
        BaseSlider<S, L, T>.RunnableC5387d runnableC5387d = this.f32455n;
        if (runnableC5387d == null) {
            this.f32455n = new RunnableC5387d(this, null);
        } else {
            removeCallbacks(runnableC5387d);
        }
        this.f32455n.m24993a(i);
        postDelayed(this.f32455n, 200L);
    }

    public boolean hasLabelFormatter() {
        return this.f32412H0 != null;
    }

    /* renamed from: i */
    public final void m24955i(TooltipDrawable tooltipDrawable) {
        tooltipDrawable.setRelativeToView(ViewUtils.getContentView(this));
    }

    /* renamed from: i0 */
    public final void m24956i0(TooltipDrawable tooltipDrawable, float f) {
        tooltipDrawable.setText(m24919B(f));
        m24951f0(tooltipDrawable, f);
        ViewUtils.getContentViewOverlay(this).add(tooltipDrawable);
    }

    public boolean isTickVisible() {
        return this.f32424Q0;
    }

    @Nullable
    /* renamed from: j */
    public final Float m24957j(int i) {
        float m24961l = this.f32429V0 ? m24961l(20) : m24959k();
        if (i == 21) {
            if (!m24936Q()) {
                m24961l = -m24961l;
            }
            return Float.valueOf(m24961l);
        }
        if (i == 22) {
            if (m24936Q()) {
                m24961l = -m24961l;
            }
            return Float.valueOf(m24961l);
        }
        if (i == 69) {
            return Float.valueOf(-m24961l);
        }
        if (i == 70 || i == 81) {
            return Float.valueOf(m24961l);
        }
        return null;
    }

    /* renamed from: j0 */
    public final void m24958j0(@NonNull ArrayList<Float> arrayList) {
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("At least one value must be set");
        }
        Collections.sort(arrayList);
        if (this.f32417L0.size() == arrayList.size() && this.f32417L0.equals(arrayList)) {
            return;
        }
        this.f32417L0 = arrayList;
        this.f32430W0 = true;
        this.f32419N0 = 0;
        m24974r0();
        m24967o();
        m24975s();
        postInvalidate();
    }

    /* renamed from: k */
    public final float m24959k() {
        float f = this.f32421O0;
        if (f == 0.0f) {
            return 1.0f;
        }
        return f;
    }

    /* renamed from: k0 */
    public final boolean m24960k0() {
        return this.f32463t0 == 3;
    }

    /* renamed from: l */
    public final float m24961l(int i) {
        float m24959k = m24959k();
        return (this.f32416K0 - this.f32415J0) / m24959k <= i ? m24959k : Math.round(r1 / r2) * m24959k;
    }

    /* renamed from: l0 */
    public final boolean m24962l0() {
        return this.f32428U0 || !(getBackground() instanceof RippleDrawable);
    }

    /* renamed from: m */
    public final int m24963m() {
        return (this.f32459q0 / 2) + ((this.f32463t0 == 1 || m24960k0()) ? this.f32457p.get(0).getIntrinsicHeight() : 0);
    }

    /* renamed from: m0 */
    public final boolean m24964m0(float f) {
        return m24968o0(this.f32418M0, f);
    }

    /* renamed from: n */
    public final ValueAnimator m24965n(boolean z) {
        int resolveThemeDuration;
        TimeInterpolator resolveThemeInterpolator;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(m24908D(z ? this.f32464u : this.f32462t, z ? 0.0f : 1.0f), z ? 1.0f : 0.0f);
        if (z) {
            resolveThemeDuration = MotionUtils.resolveThemeDuration(getContext(), f32385E1, 83);
            resolveThemeInterpolator = MotionUtils.resolveThemeInterpolator(getContext(), f32387G1, AnimationUtils.DECELERATE_INTERPOLATOR);
        } else {
            resolveThemeDuration = MotionUtils.resolveThemeDuration(getContext(), f32386F1, 117);
            resolveThemeInterpolator = MotionUtils.resolveThemeInterpolator(getContext(), f32388H1, AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR);
        }
        ofFloat.setDuration(resolveThemeDuration);
        ofFloat.setInterpolator(resolveThemeInterpolator);
        ofFloat.addUpdateListener(new C5384a());
        return ofFloat;
    }

    /* renamed from: n0 */
    public final double m24966n0(float f) {
        float f2 = this.f32421O0;
        if (f2 <= 0.0f) {
            return f;
        }
        return Math.round(f * r2) / ((int) ((this.f32416K0 - this.f32415J0) / f2));
    }

    /* renamed from: o */
    public final void m24967o() {
        if (this.f32457p.size() > this.f32417L0.size()) {
            List<TooltipDrawable> subList = this.f32457p.subList(this.f32417L0.size(), this.f32457p.size());
            for (TooltipDrawable tooltipDrawable : subList) {
                if (ViewCompat.isAttachedToWindow(this)) {
                    m24969p(tooltipDrawable);
                }
            }
            subList.clear();
        }
        while (true) {
            if (this.f32457p.size() >= this.f32417L0.size()) {
                break;
            }
            TooltipDrawable createFromAttributes = TooltipDrawable.createFromAttributes(getContext(), null, 0, this.f32456o);
            this.f32457p.add(createFromAttributes);
            if (ViewCompat.isAttachedToWindow(this)) {
                m24955i(createFromAttributes);
            }
        }
        int i = this.f32457p.size() != 1 ? 1 : 0;
        Iterator<TooltipDrawable> it2 = this.f32457p.iterator();
        while (it2.hasNext()) {
            it2.next().setStrokeWidth(i);
        }
    }

    /* renamed from: o0 */
    public final boolean m24968o0(int i, float f) {
        this.f32419N0 = i;
        if (Math.abs(f - this.f32417L0.get(i).floatValue()) < 1.0E-4d) {
            return false;
        }
        this.f32417L0.set(i, Float.valueOf(m24924E(i, f)));
        m24973r(i);
        return true;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnScrollChangedListener(this.f32452k1);
        Iterator<TooltipDrawable> it2 = this.f32457p.iterator();
        while (it2.hasNext()) {
            m24955i(it2.next());
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        BaseSlider<S, L, T>.RunnableC5387d runnableC5387d = this.f32455n;
        if (runnableC5387d != null) {
            removeCallbacks(runnableC5387d);
        }
        this.f32461s = false;
        Iterator<TooltipDrawable> it2 = this.f32457p.iterator();
        while (it2.hasNext()) {
            m24969p(it2.next());
        }
        getViewTreeObserver().removeOnScrollChangedListener(this.f32452k1);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(@NonNull Canvas canvas) {
        if (this.f32430W0) {
            m24984w0();
            m24939T();
        }
        super.onDraw(canvas);
        int m24963m = m24963m();
        float floatValue = this.f32417L0.get(0).floatValue();
        ArrayList<Float> arrayList = this.f32417L0;
        float floatValue2 = arrayList.get(arrayList.size() - 1).floatValue();
        if (floatValue2 < this.f32416K0 || (this.f32417L0.size() > 1 && floatValue > this.f32415J0)) {
            m24979u(canvas, this.f32427T0, m24963m);
        }
        if (floatValue2 > this.f32415J0) {
            m24977t(canvas, this.f32427T0, m24963m);
        }
        m24942W(canvas);
        m24941V(canvas, m24963m);
        if ((this.f32413I0 || isFocused()) && isEnabled()) {
            m24940U(canvas, this.f32427T0, m24963m);
        }
        m24976s0();
        m24983w(canvas, this.f32427T0, m24963m);
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z, int i, @Nullable Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (z) {
            m24989z(i);
            this.f32453l.requestKeyboardFocusForVirtualView(this.f32419N0);
        } else {
            this.f32418M0 = -1;
            this.f32453l.clearKeyboardFocusForVirtualView(this.f32419N0);
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, @NonNull KeyEvent keyEvent) {
        if (!isEnabled()) {
            return super.onKeyDown(i, keyEvent);
        }
        if (this.f32417L0.size() == 1) {
            this.f32418M0 = 0;
        }
        if (this.f32418M0 == -1) {
            Boolean m24948c0 = m24948c0(i, keyEvent);
            return m24948c0 != null ? m24948c0.booleanValue() : super.onKeyDown(i, keyEvent);
        }
        this.f32429V0 |= keyEvent.isLongPress();
        Float m24957j = m24957j(i);
        if (m24957j != null) {
            if (m24964m0(this.f32417L0.get(this.f32418M0).floatValue() + m24957j.floatValue())) {
                m24974r0();
                postInvalidate();
            }
            return true;
        }
        if (i != 23) {
            if (i == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return m24945Z(1);
                }
                if (keyEvent.isShiftPressed()) {
                    return m24945Z(-1);
                }
                return false;
            }
            if (i != 66) {
                return super.onKeyDown(i, keyEvent);
            }
        }
        this.f32418M0 = -1;
        postInvalidate();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, @NonNull KeyEvent keyEvent) {
        this.f32429V0 = false;
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(this.f32459q0 + ((this.f32463t0 == 1 || m24960k0()) ? this.f32457p.get(0).getIntrinsicHeight() : 0), 1073741824));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SliderState sliderState = (SliderState) parcelable;
        super.onRestoreInstanceState(sliderState.getSuperState());
        this.f32415J0 = sliderState.valueFrom;
        this.f32416K0 = sliderState.valueTo;
        m24958j0(sliderState.values);
        this.f32421O0 = sliderState.stepSize;
        if (sliderState.hasFocus) {
            requestFocus();
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SliderState sliderState = new SliderState(super.onSaveInstanceState());
        sliderState.valueFrom = this.f32415J0;
        sliderState.valueTo = this.f32416K0;
        sliderState.values = new ArrayList<>(this.f32417L0);
        sliderState.stepSize = this.f32421O0;
        sliderState.hasFocus = hasFocus();
        return sliderState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        m24980u0(i);
        m24974r0();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0033, code lost:
    
        if (r2 != 3) goto L56;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(@androidx.annotation.NonNull android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.slider.BaseSlider.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NonNull View view, int i) {
        ViewOverlayImpl contentViewOverlay;
        super.onVisibilityChanged(view, i);
        if (i == 0 || (contentViewOverlay = ViewUtils.getContentViewOverlay(this)) == null) {
            return;
        }
        Iterator<TooltipDrawable> it2 = this.f32457p.iterator();
        while (it2.hasNext()) {
            contentViewOverlay.remove(it2.next());
        }
    }

    /* renamed from: p */
    public final void m24969p(TooltipDrawable tooltipDrawable) {
        ViewOverlayImpl contentViewOverlay = ViewUtils.getContentViewOverlay(this);
        if (contentViewOverlay != null) {
            contentViewOverlay.remove(tooltipDrawable);
            tooltipDrawable.detachView(ViewUtils.getContentView(this));
        }
    }

    /* renamed from: p0 */
    public final boolean m24970p0() {
        return m24964m0(m24928H());
    }

    public boolean pickActiveThumb() {
        if (this.f32418M0 != -1) {
            return true;
        }
        float m24929I = m24929I();
        float m24923D0 = m24923D0(m24929I);
        this.f32418M0 = 0;
        float abs = Math.abs(this.f32417L0.get(0).floatValue() - m24929I);
        for (int i = 1; i < this.f32417L0.size(); i++) {
            float abs2 = Math.abs(this.f32417L0.get(i).floatValue() - m24929I);
            float m24923D02 = m24923D0(this.f32417L0.get(i).floatValue());
            if (Float.compare(abs2, abs) > 0) {
                break;
            }
            boolean z = !m24936Q() ? m24923D02 - m24923D0 >= 0.0f : m24923D02 - m24923D0 <= 0.0f;
            if (Float.compare(abs2, abs) < 0) {
                this.f32418M0 = i;
            } else {
                if (Float.compare(abs2, abs) != 0) {
                    continue;
                } else {
                    if (Math.abs(m24923D02 - m24923D0) < this.f32466v) {
                        this.f32418M0 = -1;
                        return false;
                    }
                    if (z) {
                        this.f32418M0 = i;
                    }
                }
            }
            abs = abs2;
        }
        return this.f32418M0 != -1;
    }

    /* renamed from: q */
    public final float m24971q(float f) {
        if (f == 0.0f) {
            return 0.0f;
        }
        float f2 = (f - this.f32467v0) / this.f32427T0;
        float f3 = this.f32415J0;
        return (f2 * (f3 - this.f32416K0)) + f3;
    }

    /* renamed from: q0 */
    public void m24972q0(int i, Rect rect) {
        int m24947b0 = this.f32467v0 + ((int) (m24947b0(getValues().get(i).floatValue()) * this.f32427T0));
        int m24963m = m24963m();
        int max = Math.max(this.f32469w0 / 2, this.f32423Q / 2);
        int max2 = Math.max(this.f32471x0 / 2, this.f32423Q / 2);
        rect.set(m24947b0 - max, m24963m - max2, m24947b0 + max, m24963m + max2);
    }

    /* renamed from: r */
    public final void m24973r(int i) {
        Iterator<L> it2 = this.f32458q.iterator();
        while (it2.hasNext()) {
            it2.next().onValueChange(this, this.f32417L0.get(i).floatValue(), true);
        }
        AccessibilityManager accessibilityManager = this.f32454m;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            return;
        }
        m24954h0(i);
    }

    /* renamed from: r0 */
    public final void m24974r0() {
        if (m24962l0() || getMeasuredWidth() <= 0) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof RippleDrawable) {
            int m24947b0 = (int) ((m24947b0(this.f32417L0.get(this.f32419N0).floatValue()) * this.f32427T0) + this.f32467v0);
            int m24963m = m24963m();
            int i = this.f32473y0;
            DrawableCompat.setHotspotBounds(background, m24947b0 - i, m24963m - i, m24947b0 + i, m24963m + i);
        }
    }

    public void removeOnChangeListener(@NonNull L l) {
        this.f32458q.remove(l);
    }

    public void removeOnSliderTouchListener(@NonNull T t) {
        this.f32460r.remove(t);
    }

    /* renamed from: s */
    public final void m24975s() {
        for (L l : this.f32458q) {
            Iterator<Float> it2 = this.f32417L0.iterator();
            while (it2.hasNext()) {
                l.onValueChange(this, it2.next().floatValue(), false);
            }
        }
    }

    /* renamed from: s0 */
    public final void m24976s0() {
        int i = this.f32463t0;
        if (i == 0 || i == 1) {
            if (this.f32418M0 == -1 || !isEnabled()) {
                m24987y();
                return;
            } else {
                m24985x();
                return;
            }
        }
        if (i == 2) {
            m24987y();
            return;
        }
        if (i != 3) {
            throw new IllegalArgumentException("Unexpected labelBehavior: " + this.f32463t0);
        }
        if (isEnabled() && m24937R()) {
            m24985x();
        } else {
            m24987y();
        }
    }

    public void setActiveThumbIndex(int i) {
        this.f32418M0 = i;
    }

    public void setCustomThumbDrawable(@DrawableRes int i) {
        setCustomThumbDrawable(getResources().getDrawable(i));
    }

    public void setCustomThumbDrawablesForValues(@NonNull @DrawableRes int... iArr) {
        Drawable[] drawableArr = new Drawable[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            drawableArr[i] = getResources().getDrawable(iArr[i]);
        }
        setCustomThumbDrawablesForValues(drawableArr);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setLayerType(z ? 0 : 2, null);
    }

    public void setFocusedThumbIndex(int i) {
        if (i < 0 || i >= this.f32417L0.size()) {
            throw new IllegalArgumentException("index out of range");
        }
        this.f32419N0 = i;
        this.f32453l.requestKeyboardFocusForVirtualView(i);
        postInvalidate();
    }

    public void setHaloRadius(@IntRange(from = 0) @Px int i) {
        if (i == this.f32473y0) {
            return;
        }
        this.f32473y0 = i;
        Drawable background = getBackground();
        if (m24962l0() || !(background instanceof RippleDrawable)) {
            postInvalidate();
        } else {
            DrawableUtils.setRippleDrawableRadius((RippleDrawable) background, this.f32473y0);
        }
    }

    public void setHaloRadiusResource(@DimenRes int i) {
        setHaloRadius(getResources().getDimensionPixelSize(i));
    }

    public void setHaloTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f32431X0)) {
            return;
        }
        this.f32431X0 = colorStateList;
        Drawable background = getBackground();
        if (!m24962l0() && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setColor(colorStateList);
            return;
        }
        this.f32444h.setColor(m24926F(colorStateList));
        this.f32444h.setAlpha(63);
        invalidate();
    }

    public void setLabelBehavior(int i) {
        if (this.f32463t0 != i) {
            this.f32463t0 = i;
            requestLayout();
        }
    }

    public void setLabelFormatter(@Nullable LabelFormatter labelFormatter) {
        this.f32412H0 = labelFormatter;
    }

    public void setSeparationUnit(int i) {
        this.f32449j1 = i;
        this.f32430W0 = true;
        postInvalidate();
    }

    public void setStepSize(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException(String.format(f32395q1, Float.valueOf(f), Float.valueOf(this.f32415J0), Float.valueOf(this.f32416K0)));
        }
        if (this.f32421O0 != f) {
            this.f32421O0 = f;
            this.f32430W0 = true;
            postInvalidate();
        }
    }

    public void setThumbElevation(float f) {
        this.f32441f1.setElevation(f);
    }

    public void setThumbElevationResource(@DimenRes int i) {
        setThumbElevation(getResources().getDimension(i));
    }

    public void setThumbHeight(@IntRange(from = 0) @Px int i) {
        if (i == this.f32471x0) {
            return;
        }
        this.f32471x0 = i;
        this.f32441f1.setBounds(0, 0, this.f32469w0, i);
        Drawable drawable = this.f32443g1;
        if (drawable != null) {
            m24953h(drawable);
        }
        Iterator<Drawable> it2 = this.f32445h1.iterator();
        while (it2.hasNext()) {
            m24953h(it2.next());
        }
        m24982v0();
    }

    public void setThumbHeightResource(@DimenRes int i) {
        setThumbHeight(getResources().getDimensionPixelSize(i));
    }

    public void setThumbRadius(@IntRange(from = 0) @Px int i) {
        int i2 = i * 2;
        setThumbWidth(i2);
        setThumbHeight(i2);
    }

    public void setThumbRadiusResource(@DimenRes int i) {
        setThumbRadius(getResources().getDimensionPixelSize(i));
    }

    public void setThumbStrokeColor(@Nullable ColorStateList colorStateList) {
        this.f32441f1.setStrokeColor(colorStateList);
        postInvalidate();
    }

    public void setThumbStrokeColorResource(@ColorRes int i) {
        if (i != 0) {
            setThumbStrokeColor(AppCompatResources.getColorStateList(getContext(), i));
        }
    }

    public void setThumbStrokeWidth(float f) {
        this.f32441f1.setStrokeWidth(f);
        postInvalidate();
    }

    public void setThumbStrokeWidthResource(@DimenRes int i) {
        if (i != 0) {
            setThumbStrokeWidth(getResources().getDimension(i));
        }
    }

    public void setThumbTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f32441f1.getFillColor())) {
            return;
        }
        this.f32441f1.setFillColor(colorStateList);
        invalidate();
    }

    public void setThumbTrackGapSize(@Px int i) {
        if (this.f32475z0 == i) {
            return;
        }
        this.f32475z0 = i;
        invalidate();
    }

    public void setThumbWidth(@IntRange(from = 0) @Px int i) {
        if (i == this.f32469w0) {
            return;
        }
        this.f32469w0 = i;
        this.f32441f1.setShapeAppearanceModel(ShapeAppearanceModel.builder().setAllCorners(0, this.f32469w0 / 2.0f).build());
        this.f32441f1.setBounds(0, 0, this.f32469w0, this.f32471x0);
        Drawable drawable = this.f32443g1;
        if (drawable != null) {
            m24953h(drawable);
        }
        Iterator<Drawable> it2 = this.f32445h1.iterator();
        while (it2.hasNext()) {
            m24953h(it2.next());
        }
        m24982v0();
    }

    public void setThumbWidthResource(@DimenRes int i) {
        setThumbWidth(getResources().getDimensionPixelSize(i));
    }

    public void setTickActiveRadius(@IntRange(from = 0) @Px int i) {
        if (this.f32425R0 != i) {
            this.f32425R0 = i;
            this.f32448j.setStrokeWidth(i * 2);
            m24982v0();
        }
    }

    public void setTickActiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f32432Y0)) {
            return;
        }
        this.f32432Y0 = colorStateList;
        this.f32448j.setColor(m24926F(colorStateList));
        invalidate();
    }

    public void setTickInactiveRadius(@IntRange(from = 0) @Px int i) {
        if (this.f32426S0 != i) {
            this.f32426S0 = i;
            this.f32446i.setStrokeWidth(i * 2);
            m24982v0();
        }
    }

    public void setTickInactiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f32433Z0)) {
            return;
        }
        this.f32433Z0 = colorStateList;
        this.f32446i.setColor(m24926F(colorStateList));
        invalidate();
    }

    public void setTickTintList(@NonNull ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public void setTickVisible(boolean z) {
        if (this.f32424Q0 != z) {
            this.f32424Q0 = z;
            postInvalidate();
        }
    }

    public void setTrackActiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f32434a1)) {
            return;
        }
        this.f32434a1 = colorStateList;
        this.f32440f.setColor(m24926F(colorStateList));
        this.f32450k.setColor(m24926F(this.f32434a1));
        invalidate();
    }

    public void setTrackHeight(@IntRange(from = 0) @Px int i) {
        if (this.f32465u0 != i) {
            this.f32465u0 = i;
            m24932L();
            m24982v0();
        }
    }

    public void setTrackInactiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f32435b1)) {
            return;
        }
        this.f32435b1 = colorStateList;
        this.f32438e.setColor(m24926F(colorStateList));
        invalidate();
    }

    public void setTrackInsideCornerSize(@Px int i) {
        if (this.f32408D0 == i) {
            return;
        }
        this.f32408D0 = i;
        invalidate();
    }

    public void setTrackStopIndicatorSize(@Px int i) {
        if (this.f32407C0 == i) {
            return;
        }
        this.f32407C0 = i;
        this.f32450k.setStrokeWidth(i);
        invalidate();
    }

    public void setTrackTintList(@NonNull ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValueFrom(float f) {
        this.f32415J0 = f;
        this.f32430W0 = true;
        postInvalidate();
    }

    public void setValueTo(float f) {
        this.f32416K0 = f;
        this.f32430W0 = true;
        postInvalidate();
    }

    public void setValues(@NonNull Float... fArr) {
        ArrayList<Float> arrayList = new ArrayList<>();
        Collections.addAll(arrayList, fArr);
        m24958j0(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b4 A[SYNTHETIC] */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m24977t(@androidx.annotation.NonNull android.graphics.Canvas r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.slider.BaseSlider.m24977t(android.graphics.Canvas, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0041  */
    /* renamed from: t0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m24978t0(android.graphics.Canvas r9, android.graphics.Paint r10, android.graphics.RectF r11, com.google.android.material.slider.BaseSlider.FullCornerDirection r12) {
        /*
            r8 = this;
            int r0 = r8.f32465u0
            float r1 = (float) r0
            r2 = 1073741824(0x40000000, float:2.0)
            float r1 = r1 / r2
            float r0 = (float) r0
            float r0 = r0 / r2
            int[] r3 = com.google.android.material.slider.BaseSlider.C5386c.f32478a
            int r4 = r12.ordinal()
            r4 = r3[r4]
            r5 = 3
            r6 = 2
            r7 = 1
            if (r4 == r7) goto L21
            if (r4 == r6) goto L1e
            if (r4 == r5) goto L1a
            goto L25
        L1a:
            int r1 = r8.f32408D0
            float r1 = (float) r1
            goto L25
        L1e:
            int r0 = r8.f32408D0
            goto L24
        L21:
            int r0 = r8.f32408D0
            float r1 = (float) r0
        L24:
            float r0 = (float) r0
        L25:
            android.graphics.Paint$Style r4 = android.graphics.Paint.Style.FILL
            r10.setStyle(r4)
            android.graphics.Paint$Cap r4 = android.graphics.Paint.Cap.BUTT
            r10.setStrokeCap(r4)
            r10.setAntiAlias(r7)
            android.graphics.Path r4 = r8.f32436c1
            r4.reset()
            float r4 = r11.width()
            float r7 = r1 + r0
            int r4 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r4 < 0) goto L52
            android.graphics.Path r12 = r8.f32436c1
            float[] r0 = r8.m24927G(r1, r0)
            android.graphics.Path$Direction r1 = android.graphics.Path.Direction.CW
            r12.addRoundRect(r11, r0, r1)
            android.graphics.Path r8 = r8.f32436c1
            r9.drawPath(r8, r10)
            goto Lab
        L52:
            float r4 = java.lang.Math.min(r1, r0)
            float r0 = java.lang.Math.max(r1, r0)
            r9.save()
            android.graphics.Path r1 = r8.f32436c1
            android.graphics.Path$Direction r7 = android.graphics.Path.Direction.CW
            r1.addRoundRect(r11, r4, r4, r7)
            android.graphics.Path r1 = r8.f32436c1
            r9.clipPath(r1)
            int r12 = r12.ordinal()
            r12 = r3[r12]
            if (r12 == r6) goto L96
            if (r12 == r5) goto L87
            android.graphics.RectF r12 = r8.f32439e1
            float r1 = r11.centerX()
            float r1 = r1 - r0
            float r2 = r11.top
            float r3 = r11.centerX()
            float r3 = r3 + r0
            float r11 = r11.bottom
            r12.set(r1, r2, r3, r11)
            goto La3
        L87:
            android.graphics.RectF r12 = r8.f32439e1
            float r1 = r11.right
            float r2 = r2 * r0
            float r2 = r1 - r2
            float r3 = r11.top
            float r11 = r11.bottom
            r12.set(r2, r3, r1, r11)
            goto La3
        L96:
            android.graphics.RectF r12 = r8.f32439e1
            float r1 = r11.left
            float r3 = r11.top
            float r2 = r2 * r0
            float r2 = r2 + r1
            float r11 = r11.bottom
            r12.set(r1, r3, r2, r11)
        La3:
            android.graphics.RectF r8 = r8.f32439e1
            r9.drawRoundRect(r8, r0, r0, r10)
            r9.restore()
        Lab:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.slider.BaseSlider.m24978t0(android.graphics.Canvas, android.graphics.Paint, android.graphics.RectF, com.google.android.material.slider.BaseSlider$FullCornerDirection):void");
    }

    /* renamed from: u */
    public final void m24979u(@NonNull Canvas canvas, int i, int i2) {
        float[] m24921C = m24921C();
        float f = i;
        float f2 = this.f32467v0 + (m24921C[1] * f);
        if (f2 < r1 + i) {
            if (m24930J()) {
                float f3 = i2;
                int i3 = this.f32465u0;
                this.f32437d1.set(f2 + this.f32475z0, f3 - (i3 / 2.0f), this.f32467v0 + i + (i3 / 2.0f), f3 + (i3 / 2.0f));
                m24978t0(canvas, this.f32438e, this.f32437d1, FullCornerDirection.RIGHT);
            } else {
                this.f32438e.setStyle(Paint.Style.STROKE);
                this.f32438e.setStrokeCap(Paint.Cap.ROUND);
                float f4 = i2;
                canvas.drawLine(f2, f4, this.f32467v0 + i, f4, this.f32438e);
            }
        }
        int i4 = this.f32467v0;
        float f5 = i4 + (m24921C[0] * f);
        if (f5 > i4) {
            if (!m24930J()) {
                this.f32438e.setStyle(Paint.Style.STROKE);
                this.f32438e.setStrokeCap(Paint.Cap.ROUND);
                float f6 = i2;
                canvas.drawLine(this.f32467v0, f6, f5, f6, this.f32438e);
                return;
            }
            RectF rectF = this.f32437d1;
            float f7 = this.f32467v0;
            int i5 = this.f32465u0;
            float f8 = i2;
            rectF.set(f7 - (i5 / 2.0f), f8 - (i5 / 2.0f), f5 - this.f32475z0, f8 + (i5 / 2.0f));
            m24978t0(canvas, this.f32438e, this.f32437d1, FullCornerDirection.LEFT);
        }
    }

    /* renamed from: u0 */
    public final void m24980u0(int i) {
        this.f32427T0 = Math.max(i - (this.f32467v0 * 2), 0);
        m24939T();
    }

    /* renamed from: v */
    public final void m24981v(@NonNull Canvas canvas, int i, int i2, float f, @NonNull Drawable drawable) {
        canvas.save();
        canvas.translate((this.f32467v0 + ((int) (m24947b0(f) * i))) - (drawable.getBounds().width() / 2.0f), i2 - (drawable.getBounds().height() / 2.0f));
        drawable.draw(canvas);
        canvas.restore();
    }

    /* renamed from: v0 */
    public final void m24982v0() {
        boolean m24944Y = m24944Y();
        boolean m24943X = m24943X();
        if (m24944Y) {
            requestLayout();
        } else if (m24943X) {
            postInvalidate();
        }
    }

    /* renamed from: w */
    public final void m24983w(@NonNull Canvas canvas, int i, int i2) {
        for (int i3 = 0; i3 < this.f32417L0.size(); i3++) {
            float floatValue = this.f32417L0.get(i3).floatValue();
            Drawable drawable = this.f32443g1;
            if (drawable != null) {
                m24981v(canvas, i, i2, floatValue, drawable);
            } else if (i3 < this.f32445h1.size()) {
                m24981v(canvas, i, i2, floatValue, this.f32445h1.get(i3));
            } else {
                if (!isEnabled()) {
                    canvas.drawCircle(this.f32467v0 + (m24947b0(floatValue) * i), i2, getThumbRadius(), this.f32442g);
                }
                m24981v(canvas, i, i2, floatValue, this.f32441f1);
            }
        }
    }

    /* renamed from: w0 */
    public final void m24984w0() {
        if (this.f32430W0) {
            m24990z0();
            m24918A0();
            m24988y0();
            m24920B0();
            m24986x0();
            m24925E0();
            this.f32430W0 = false;
        }
    }

    /* renamed from: x */
    public final void m24985x() {
        if (!this.f32461s) {
            this.f32461s = true;
            ValueAnimator m24965n = m24965n(true);
            this.f32462t = m24965n;
            this.f32464u = null;
            m24965n.start();
        }
        Iterator<TooltipDrawable> it2 = this.f32457p.iterator();
        for (int i = 0; i < this.f32417L0.size() && it2.hasNext(); i++) {
            if (i != this.f32419N0) {
                m24956i0(it2.next(), this.f32417L0.get(i).floatValue());
            }
        }
        if (!it2.hasNext()) {
            throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(this.f32457p.size()), Integer.valueOf(this.f32417L0.size())));
        }
        m24956i0(it2.next(), this.f32417L0.get(this.f32419N0).floatValue());
    }

    /* renamed from: x0 */
    public final void m24986x0() {
        float minSeparation = getMinSeparation();
        if (minSeparation < 0.0f) {
            throw new IllegalStateException(String.format(f32396r1, Float.valueOf(minSeparation)));
        }
        float f = this.f32421O0;
        if (f <= 0.0f || minSeparation <= 0.0f) {
            return;
        }
        if (this.f32449j1 != 1) {
            throw new IllegalStateException(String.format(f32397s1, Float.valueOf(minSeparation), Float.valueOf(this.f32421O0)));
        }
        if (minSeparation < f || !m24934O(minSeparation)) {
            throw new IllegalStateException(String.format(f32398t1, Float.valueOf(minSeparation), Float.valueOf(this.f32421O0), Float.valueOf(this.f32421O0)));
        }
    }

    /* renamed from: y */
    public final void m24987y() {
        if (this.f32461s) {
            this.f32461s = false;
            ValueAnimator m24965n = m24965n(false);
            this.f32464u = m24965n;
            this.f32462t = null;
            m24965n.addListener(new C5385b());
            this.f32464u.start();
        }
    }

    /* renamed from: y0 */
    public final void m24988y0() {
        if (this.f32421O0 > 0.0f && !m24922C0(this.f32416K0)) {
            throw new IllegalStateException(String.format(f32395q1, Float.valueOf(this.f32421O0), Float.valueOf(this.f32415J0), Float.valueOf(this.f32416K0)));
        }
    }

    /* renamed from: z */
    public final void m24989z(int i) {
        if (i == 1) {
            m24945Z(Integer.MAX_VALUE);
            return;
        }
        if (i == 2) {
            m24945Z(Integer.MIN_VALUE);
        } else if (i == 17) {
            m24946a0(Integer.MAX_VALUE);
        } else {
            if (i != 66) {
                return;
            }
            m24946a0(Integer.MIN_VALUE);
        }
    }

    /* renamed from: z0 */
    public final void m24990z0() {
        if (this.f32415J0 >= this.f32416K0) {
            throw new IllegalStateException(String.format(f32393o1, Float.valueOf(this.f32415J0), Float.valueOf(this.f32416K0)));
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$d */
    /* loaded from: classes6.dex */
    public class RunnableC5387d implements Runnable {

        /* renamed from: e */
        public int f32479e;

        public RunnableC5387d() {
            this.f32479e = -1;
        }

        /* renamed from: a */
        public void m24993a(int i) {
            this.f32479e = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseSlider.this.f32453l.sendEventForVirtualView(this.f32479e, 4);
        }

        public /* synthetic */ RunnableC5387d(BaseSlider baseSlider, C5384a c5384a) {
            this();
        }
    }

    public BaseSlider(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.sliderStyle);
    }

    public void setCustomThumbDrawable(@NonNull Drawable drawable) {
        this.f32443g1 = m24931K(drawable);
        this.f32445h1.clear();
        postInvalidate();
    }

    public BaseSlider(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, f32404z1), attributeSet, i);
        this.f32457p = new ArrayList();
        this.f32458q = new ArrayList();
        this.f32460r = new ArrayList();
        this.f32461s = false;
        this.f32405A0 = -1;
        this.f32406B0 = -1;
        this.f32413I0 = false;
        this.f32417L0 = new ArrayList<>();
        this.f32418M0 = -1;
        this.f32419N0 = -1;
        this.f32421O0 = 0.0f;
        this.f32424Q0 = true;
        this.f32429V0 = false;
        this.f32436c1 = new Path();
        this.f32437d1 = new RectF();
        this.f32439e1 = new RectF();
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        this.f32441f1 = materialShapeDrawable;
        this.f32445h1 = Collections.emptyList();
        this.f32449j1 = 0;
        this.f32452k1 = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.sunia.HTREnginev2.io
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                BaseSlider.this.m24976s0();
            }
        };
        Context context2 = getContext();
        this.f32438e = new Paint();
        this.f32440f = new Paint();
        Paint paint = new Paint(1);
        this.f32442g = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint2 = new Paint(1);
        this.f32444h = paint2;
        paint2.setStyle(Paint.Style.FILL);
        Paint paint3 = new Paint();
        this.f32446i = paint3;
        paint3.setStyle(Paint.Style.STROKE);
        paint3.setStrokeCap(Paint.Cap.ROUND);
        Paint paint4 = new Paint();
        this.f32448j = paint4;
        paint4.setStyle(Paint.Style.STROKE);
        paint4.setStrokeCap(Paint.Cap.ROUND);
        Paint paint5 = new Paint();
        this.f32450k = paint5;
        paint5.setStyle(Paint.Style.FILL);
        paint5.setStrokeCap(Paint.Cap.ROUND);
        m24938S(context2.getResources());
        m24952g0(context2, attributeSet, i);
        setFocusable(true);
        setClickable(true);
        materialShapeDrawable.setShadowCompatibilityMode(2);
        this.f32466v = ViewConfiguration.get(context2).getScaledTouchSlop();
        C5388e c5388e = new C5388e(this);
        this.f32453l = c5388e;
        ViewCompat.setAccessibilityDelegate(this, c5388e);
        this.f32454m = (AccessibilityManager) getContext().getSystemService("accessibility");
    }

    public void setValues(@NonNull List<Float> list) {
        m24958j0(new ArrayList<>(list));
    }

    public void setCustomThumbDrawablesForValues(@NonNull Drawable... drawableArr) {
        this.f32443g1 = null;
        this.f32445h1 = new ArrayList();
        for (Drawable drawable : drawableArr) {
            this.f32445h1.add(m24931K(drawable));
        }
        postInvalidate();
    }
}
