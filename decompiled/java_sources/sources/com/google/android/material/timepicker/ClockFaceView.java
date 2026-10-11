package com.google.android.material.timepicker;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.C5139R;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.timepicker.ClockHandView;
import com.sunia.HTREnginev2.gcl;
import java.util.Arrays;

/* loaded from: classes6.dex */
class ClockFaceView extends gcl implements ClockHandView.OnRotateListener {

    /* renamed from: R0 */
    public static final float f32849R0 = 0.001f;

    /* renamed from: S0 */
    public static final int f32850S0 = 12;

    /* renamed from: T0 */
    public static final String f32851T0 = "";

    /* renamed from: C0 */
    public final ClockHandView f32852C0;

    /* renamed from: D0 */
    public final Rect f32853D0;

    /* renamed from: E0 */
    public final RectF f32854E0;

    /* renamed from: F0 */
    public final Rect f32855F0;

    /* renamed from: G0 */
    public final SparseArray<TextView> f32856G0;

    /* renamed from: H0 */
    public final AccessibilityDelegateCompat f32857H0;

    /* renamed from: I0 */
    public final int[] f32858I0;

    /* renamed from: J0 */
    public final float[] f32859J0;

    /* renamed from: K0 */
    public final int f32860K0;

    /* renamed from: L0 */
    public final int f32861L0;

    /* renamed from: M0 */
    public final int f32862M0;

    /* renamed from: N0 */
    public final int f32863N0;

    /* renamed from: O0 */
    public String[] f32864O0;

    /* renamed from: P0 */
    public float f32865P0;

    /* renamed from: Q0 */
    public final ColorStateList f32866Q0;

    /* renamed from: com.google.android.material.timepicker.ClockFaceView$a */
    /* loaded from: classes6.dex */
    public class ViewTreeObserverOnPreDrawListenerC5429a implements ViewTreeObserver.OnPreDrawListener {
        public ViewTreeObserverOnPreDrawListenerC5429a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (!ClockFaceView.this.isShown()) {
                return true;
            }
            ClockFaceView.this.getViewTreeObserver().removeOnPreDrawListener(this);
            ClockFaceView.this.mo25385q(((ClockFaceView.this.getHeight() / 2) - ClockFaceView.this.f32852C0.m25399j()) - ClockFaceView.this.f32860K0);
            return true;
        }
    }

    /* renamed from: com.google.android.material.timepicker.ClockFaceView$b */
    /* loaded from: classes6.dex */
    public class C5430b extends AccessibilityDelegateCompat {
        public C5430b() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            int intValue = ((Integer) view.getTag(C5139R.id.material_value_index)).intValue();
            if (intValue > 0) {
                accessibilityNodeInfoCompat.setTraversalAfter((View) ClockFaceView.this.f32856G0.get(intValue - 1));
            }
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, intValue, 1, false, view.isSelected()));
            accessibilityNodeInfoCompat.setClickable(true);
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (i != 16) {
                return super.performAccessibilityAction(view, i, bundle);
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            view.getHitRect(ClockFaceView.this.f32853D0);
            float centerX = ClockFaceView.this.f32853D0.centerX();
            float centerY = ClockFaceView.this.f32853D0.centerY();
            ClockFaceView.this.f32852C0.onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, centerX, centerY, 0));
            ClockFaceView.this.f32852C0.onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 1, centerX, centerY, 0));
            return true;
        }
    }

    public ClockFaceView(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: C */
    public static float m25374C(float f, float f2, float f3) {
        return Math.max(Math.max(f, f2), f3);
    }

    @Nullable
    /* renamed from: A */
    public final RadialGradient m25379A(RectF rectF, TextView textView) {
        textView.getHitRect(this.f32853D0);
        this.f32854E0.set(this.f32853D0);
        textView.getLineBounds(0, this.f32855F0);
        RectF rectF2 = this.f32854E0;
        Rect rect = this.f32855F0;
        rectF2.inset(rect.left, rect.top);
        if (RectF.intersects(rectF, this.f32854E0)) {
            return new RadialGradient(rectF.centerX() - this.f32854E0.left, rectF.centerY() - this.f32854E0.top, rectF.width() * 0.5f, this.f32858I0, this.f32859J0, Shader.TileMode.CLAMP);
        }
        return null;
    }

    @Nullable
    /* renamed from: B */
    public final TextView m25380B(RectF rectF) {
        float f = Float.MAX_VALUE;
        TextView textView = null;
        for (int i = 0; i < this.f32856G0.size(); i++) {
            TextView textView2 = this.f32856G0.get(i);
            if (textView2 != null) {
                textView2.getHitRect(this.f32853D0);
                this.f32854E0.set(this.f32853D0);
                this.f32854E0.union(rectF);
                float width = this.f32854E0.width() * this.f32854E0.height();
                if (width < f) {
                    textView = textView2;
                    f = width;
                }
            }
        }
        return textView;
    }

    /* renamed from: D */
    public void m25381D(int i) {
        this.f32852C0.m25404p(i);
    }

    /* renamed from: E */
    public final void m25382E(@StringRes int i) {
        LayoutInflater from = LayoutInflater.from(getContext());
        int size = this.f32856G0.size();
        boolean z = false;
        for (int i2 = 0; i2 < Math.max(this.f32864O0.length, size); i2++) {
            TextView textView = this.f32856G0.get(i2);
            if (i2 >= this.f32864O0.length) {
                removeView(textView);
                this.f32856G0.remove(i2);
            } else {
                if (textView == null) {
                    textView = (TextView) from.inflate(C5139R.layout.material_clockface_textview, (ViewGroup) this, false);
                    this.f32856G0.put(i2, textView);
                    addView(textView);
                }
                textView.setText(this.f32864O0[i2]);
                textView.setTag(C5139R.id.material_value_index, Integer.valueOf(i2));
                int i3 = (i2 / 12) + 1;
                textView.setTag(C5139R.id.material_clock_level, Integer.valueOf(i3));
                if (i3 > 1) {
                    z = true;
                }
                ViewCompat.setAccessibilityDelegate(textView, this.f32857H0);
                textView.setTextColor(this.f32866Q0);
                if (i != 0) {
                    textView.setContentDescription(getResources().getString(i, this.f32864O0[i2]));
                }
            }
        }
        this.f32852C0.m25408t(z);
    }

    /* renamed from: c */
    public void m25383c(String[] strArr, @StringRes int i) {
        this.f32864O0 = strArr;
        m25382E(i);
    }

    /* renamed from: d */
    public void m25384d(@FloatRange(from = 0.0d, m280to = 360.0d) float f) {
        this.f32852C0.m25405q(f);
        m25387y();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, this.f32864O0.length, false, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m25387y();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public void onMeasure(int i, int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int m25374C = (int) (this.f32863N0 / m25374C(this.f32861L0 / displayMetrics.heightPixels, this.f32862M0 / displayMetrics.widthPixels, 1.0f));
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(m25374C, 1073741824);
        setMeasuredDimension(m25374C, m25374C);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.OnRotateListener
    public void onRotate(float f, boolean z) {
        if (Math.abs(this.f32865P0 - f) > 0.001f) {
            this.f32865P0 = f;
            m25387y();
        }
    }

    @Override // com.sunia.HTREnginev2.gcl
    /* renamed from: q */
    public void mo25385q(int i) {
        if (i != m54257p()) {
            super.mo25385q(i);
            this.f32852C0.m25403o(m54257p());
        }
    }

    @Override // com.sunia.HTREnginev2.gcl
    /* renamed from: s */
    public void mo25386s() {
        super.mo25386s();
        for (int i = 0; i < this.f32856G0.size(); i++) {
            this.f32856G0.get(i).setVisibility(0);
        }
    }

    /* renamed from: y */
    public final void m25387y() {
        RectF m25395f = this.f32852C0.m25395f();
        TextView m25380B = m25380B(m25395f);
        for (int i = 0; i < this.f32856G0.size(); i++) {
            TextView textView = this.f32856G0.get(i);
            if (textView != null) {
                textView.setSelected(textView == m25380B);
                textView.getPaint().setShader(m25379A(m25395f, textView));
                textView.invalidate();
            }
        }
    }

    /* renamed from: z */
    public int m25388z() {
        return this.f32852C0.m25394e();
    }

    public ClockFaceView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.materialClockStyle);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public ClockFaceView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f32853D0 = new Rect();
        this.f32854E0 = new RectF();
        this.f32855F0 = new Rect();
        this.f32856G0 = new SparseArray<>();
        this.f32859J0 = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5139R.styleable.ClockFaceView, i, C5139R.style.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList colorStateList = MaterialResources.getColorStateList(context, obtainStyledAttributes, C5139R.styleable.ClockFaceView_clockNumberTextColor);
        this.f32866Q0 = colorStateList;
        LayoutInflater.from(context).inflate(C5139R.layout.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(C5139R.id.material_clock_hand);
        this.f32852C0 = clockHandView;
        this.f32860K0 = resources.getDimensionPixelSize(C5139R.dimen.material_clock_hand_padding);
        int colorForState = colorStateList.getColorForState(new int[]{R.attr.state_selected}, colorStateList.getDefaultColor());
        this.f32858I0 = new int[]{colorForState, colorForState, colorStateList.getDefaultColor()};
        clockHandView.m25391b(this);
        int defaultColor = AppCompatResources.getColorStateList(context, C5139R.color.material_timepicker_clockface).getDefaultColor();
        ColorStateList colorStateList2 = MaterialResources.getColorStateList(context, obtainStyledAttributes, C5139R.styleable.ClockFaceView_clockFaceBackgroundColor);
        setBackgroundColor(colorStateList2 != null ? colorStateList2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserverOnPreDrawListenerC5429a());
        setFocusable(true);
        obtainStyledAttributes.recycle();
        this.f32857H0 = new C5430b();
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        m25383c(strArr, 0);
        this.f32861L0 = resources.getDimensionPixelSize(C5139R.dimen.material_time_picker_minimum_screen_height);
        this.f32862M0 = resources.getDimensionPixelSize(C5139R.dimen.material_time_picker_minimum_screen_width);
        this.f32863N0 = resources.getDimensionPixelSize(C5139R.dimen.material_clock_size);
    }
}
