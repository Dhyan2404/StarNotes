package com.sunia.HTREnginev2;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class yjn {

    /* renamed from: h */
    public static final String f90804h = "TooltipPopup";

    /* renamed from: a */
    public final Context f90805a;

    /* renamed from: b */
    public final View f90806b;

    /* renamed from: c */
    public final TextView f90807c;

    /* renamed from: d */
    public final WindowManager.LayoutParams f90808d;

    /* renamed from: e */
    public final Rect f90809e;

    /* renamed from: f */
    public final int[] f90810f;

    /* renamed from: g */
    public final int[] f90811g;

    public yjn(@NonNull Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f90808d = layoutParams;
        this.f90809e = new Rect();
        this.f90810f = new int[2];
        this.f90811g = new int[2];
        this.f90805a = context;
        View inflate = LayoutInflater.from(context).inflate(C0118R.layout.abc_tooltip, (ViewGroup) null);
        this.f90806b = inflate;
        this.f90807c = (TextView) inflate.findViewById(C0118R.id.message);
        layoutParams.setTitle(getClass().getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = C0118R.style.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    /* renamed from: b */
    public static View m58443b(View view) {
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams = rootView.getLayoutParams();
        if ((layoutParams instanceof WindowManager.LayoutParams) && ((WindowManager.LayoutParams) layoutParams).type == 2) {
            return rootView;
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return ((Activity) context).getWindow().getDecorView();
            }
        }
        return rootView;
    }

    /* renamed from: a */
    public final void m58444a(View view, int i, int i2, boolean z, WindowManager.LayoutParams layoutParams) {
        int height;
        int i3;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f90805a.getResources().getDimensionPixelOffset(C0118R.dimen.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f90805a.getResources().getDimensionPixelOffset(C0118R.dimen.tooltip_precise_anchor_extra_offset);
            height = i2 + dimensionPixelOffset2;
            i3 = i2 - dimensionPixelOffset2;
        } else {
            height = view.getHeight();
            i3 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f90805a.getResources().getDimensionPixelOffset(z ? C0118R.dimen.tooltip_y_offset_touch : C0118R.dimen.tooltip_y_offset_non_touch);
        View m58443b = m58443b(view);
        if (m58443b == null) {
            Log.e(f90804h, "Cannot find app view");
            return;
        }
        m58443b.getWindowVisibleDisplayFrame(this.f90809e);
        Rect rect = this.f90809e;
        if (rect.left < 0 && rect.top < 0) {
            Resources resources = this.f90805a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.f90809e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        m58443b.getLocationOnScreen(this.f90811g);
        view.getLocationOnScreen(this.f90810f);
        int[] iArr = this.f90810f;
        int i4 = iArr[0];
        int[] iArr2 = this.f90811g;
        int i5 = i4 - iArr2[0];
        iArr[0] = i5;
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.x = (i5 + i) - (m58443b.getWidth() / 2);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f90806b.measure(makeMeasureSpec, makeMeasureSpec);
        int measuredHeight = this.f90806b.getMeasuredHeight();
        int i6 = this.f90810f[1];
        int i7 = ((i3 + i6) - dimensionPixelOffset3) - measuredHeight;
        int i8 = i6 + height + dimensionPixelOffset3;
        if (z) {
            if (i7 >= 0) {
                layoutParams.y = i7;
                return;
            } else {
                layoutParams.y = i8;
                return;
            }
        }
        if (measuredHeight + i8 <= this.f90809e.height()) {
            layoutParams.y = i8;
        } else {
            layoutParams.y = i7;
        }
    }

    /* renamed from: c */
    public void m58445c() {
        if (m58446d()) {
            ((WindowManager) this.f90805a.getSystemService("window")).removeView(this.f90806b);
        }
    }

    /* renamed from: d */
    public boolean m58446d() {
        return this.f90806b.getParent() != null;
    }

    /* renamed from: e */
    public void m58447e(View view, int i, int i2, boolean z, CharSequence charSequence) {
        if (m58446d()) {
            m58445c();
        }
        this.f90807c.setText(charSequence);
        m58444a(view, i, i2, z, this.f90808d);
        ((WindowManager) this.f90805a.getSystemService("window")).addView(this.f90806b, this.f90808d);
    }
}
