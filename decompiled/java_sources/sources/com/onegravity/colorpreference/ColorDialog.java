package com.onegravity.colorpreference;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.GridLayout;
import androidx.annotation.ArrayRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.onegravity.colorpicker.C7020R;
import com.sunia.HTREnginev2.hzn;

/* loaded from: classes7.dex */
public class ColorDialog extends DialogFragment {

    /* renamed from: g */
    public static final String f40027g = "num_columns";

    /* renamed from: h */
    public static final String f40028h = "color_shape";

    /* renamed from: i */
    public static final String f40029i = "color_choices";

    /* renamed from: j */
    public static final String f40030j = "selected_color";

    /* renamed from: e */
    public GridLayout f40031e;

    /* renamed from: f */
    public OnColorSelectedListener f40032f;

    /* loaded from: classes7.dex */
    public static class Builder {

        /* renamed from: b */
        public int[] f40034b;

        /* renamed from: d */
        public Context f40036d;

        /* renamed from: e */
        public int f40037e;

        /* renamed from: f */
        public String f40038f;

        /* renamed from: a */
        public int f40033a = 5;

        /* renamed from: c */
        public ColorShape f40035c = ColorShape.CIRCLE;

        /* JADX WARN: Multi-variable type inference failed */
        public <ColorActivityType extends Activity & OnColorSelectedListener> Builder(@NonNull ColorActivityType coloractivitytype) {
            this.f40036d = coloractivitytype;
            setColorChoices(C7020R.array.default_color_choice_values);
        }

        public ColorDialog build() {
            ColorDialog newInstance = ColorDialog.newInstance(this.f40033a, this.f40035c, this.f40034b, this.f40037e);
            newInstance.setOnColorSelectedListener((OnColorSelectedListener) this.f40036d);
            return newInstance;
        }

        public Builder setColorChoices(@ArrayRes int i) {
            this.f40034b = C7021a.m31502b(i, this.f40036d);
            return this;
        }

        public Builder setColorShape(ColorShape colorShape) {
            this.f40035c = colorShape;
            return this;
        }

        public Builder setNumColumns(int i) {
            this.f40033a = i;
            return this;
        }

        public Builder setSelectedColor(@ColorInt int i) {
            this.f40037e = i;
            return this;
        }

        public Builder setTag(String str) {
            this.f40038f = str;
            return this;
        }

        public ColorDialog show() {
            ColorDialog build = build();
            FragmentManager fragmentManager = hzn.m54661a(this.f40036d).getFragmentManager();
            String str = this.f40038f;
            if (str == null) {
                str = String.valueOf(System.currentTimeMillis());
            }
            build.show(fragmentManager, str);
            return build;
        }
    }

    /* loaded from: classes7.dex */
    public interface OnColorSelectedListener {
        void onColorSelected(int i, String str);
    }

    public static ColorDialog newInstance(int i, ColorShape colorShape, int[] iArr, int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt(f40027g, i);
        bundle.putSerializable(f40028h, colorShape);
        bundle.putIntArray(f40029i, iArr);
        bundle.putInt(f40030j, i2);
        ColorDialog colorDialog = new ColorDialog();
        colorDialog.setArguments(bundle);
        return colorDialog;
    }

    /* renamed from: a */
    public final void m31493a() {
        Dialog dialog;
        if (this.f40032f == null || this.f40031e == null || (dialog = getDialog()) == null) {
            return;
        }
        Resources resources = this.f40031e.getContext().getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        this.f40031e.measure(View.MeasureSpec.makeMeasureSpec(displayMetrics.widthPixels, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(displayMetrics.heightPixels, Integer.MIN_VALUE));
        int measuredWidth = this.f40031e.getMeasuredWidth();
        int measuredHeight = this.f40031e.getMeasuredHeight();
        int dimensionPixelSize = resources.getDimensionPixelSize(C7020R.dimen.color_grid_extra_padding);
        dialog.getWindow().setLayout(measuredWidth + dimensionPixelSize, measuredHeight + dimensionPixelSize);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.DialogFragment, android.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof OnColorSelectedListener) {
            setOnColorSelectedListener((OnColorSelectedListener) context);
        }
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onStart() {
        super.onStart();
        m31493a();
    }

    public void setOnColorSelectedListener(OnColorSelectedListener onColorSelectedListener) {
        this.f40032f = onColorSelectedListener;
    }
}
