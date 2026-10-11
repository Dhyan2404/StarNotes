package com.sunia.HTREnginev2;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.view.ViewCompat;
import com.google.android.material.C5139R;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.RelativeCornerSize;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes6.dex */
public class gcl extends ConstraintLayout {

    /* renamed from: A0 */
    public static final int f70905A0 = 2;

    /* renamed from: B0 */
    public static final float f70906B0 = 0.66f;

    /* renamed from: y0 */
    public static final String f70907y0 = "skip";

    /* renamed from: z0 */
    public static final int f70908z0 = 1;

    /* renamed from: v0 */
    public final Runnable f70909v0;

    /* renamed from: w0 */
    public int f70910w0;

    /* renamed from: x0 */
    public MaterialShapeDrawable f70911x0;

    public gcl(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: r */
    public static boolean m54253r(View view) {
        return "skip".equals(view.getTag());
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (view.getId() == -1) {
            view.setId(ViewCompat.generateViewId());
        }
        m54258t();
    }

    /* renamed from: m */
    public final void m54254m(List<View> list, ConstraintSet constraintSet, int i) {
        Iterator<View> it2 = list.iterator();
        float f = 0.0f;
        while (it2.hasNext()) {
            constraintSet.constrainCircle(it2.next().getId(), C5139R.id.circle_center, i, f);
            f += 360.0f / list.size();
        }
    }

    /* renamed from: n */
    public final Drawable m54255n() {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        this.f70911x0 = materialShapeDrawable;
        materialShapeDrawable.setCornerSize(new RelativeCornerSize(0.5f));
        this.f70911x0.setFillColor(ColorStateList.valueOf(-1));
        return this.f70911x0;
    }

    @Dimension
    /* renamed from: o */
    public int m54256o(int i) {
        int i2 = this.f70910w0;
        return i == 2 ? Math.round(i2 * 0.66f) : i2;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        mo25386s();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        m54258t();
    }

    @Dimension
    /* renamed from: p */
    public int m54257p() {
        return this.f70910w0;
    }

    /* renamed from: q */
    public void mo25385q(@Dimension int i) {
        this.f70910w0 = i;
        mo25386s();
    }

    /* renamed from: s */
    public void mo25386s() {
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(this);
        HashMap hashMap = new HashMap();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getId() != C5139R.id.circle_center && !m54253r(childAt)) {
                int i2 = (Integer) childAt.getTag(C5139R.id.material_clock_level);
                if (i2 == null) {
                    i2 = 1;
                }
                if (!hashMap.containsKey(i2)) {
                    hashMap.put(i2, new ArrayList());
                }
                ((List) hashMap.get(i2)).add(childAt);
            }
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            m54254m((List) entry.getValue(), constraintSet, m54256o(((Integer) entry.getKey()).intValue()));
        }
        constraintSet.applyTo(this);
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i) {
        this.f70911x0.setFillColor(ColorStateList.valueOf(i));
    }

    /* renamed from: t */
    public final void m54258t() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.f70909v0);
            handler.post(this.f70909v0);
        }
    }

    public gcl(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public gcl(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(C5139R.layout.material_radial_view_group, this);
        ViewCompat.setBackground(this, m54255n());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5139R.styleable.RadialViewGroup, i, 0);
        this.f70910w0 = obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.RadialViewGroup_materialCircleRadius, 0);
        this.f70909v0 = new Runnable() { // from class: com.sunia.HTREnginev2.fcl
            @Override // java.lang.Runnable
            public final void run() {
                gcl.this.mo25386s();
            }
        };
        obtainStyledAttributes.recycle();
    }
}
