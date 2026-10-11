package com.onegravity.colorpreference;

import android.content.Context;
import android.content.res.TypedArray;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.onegravity.colorpicker.C7020R;
import com.onegravity.colorpreference.ColorDialog;

/* loaded from: classes7.dex */
public class ColorPreference extends Preference implements ColorDialog.OnColorSelectedListener {

    /* renamed from: e */
    public int[] f40039e;

    /* renamed from: f */
    public int f40040f;

    /* renamed from: g */
    public final int f40041g;

    /* renamed from: h */
    public final int f40042h;

    /* renamed from: i */
    public int f40043i;

    /* renamed from: j */
    public ColorShape f40044j;

    /* renamed from: k */
    public boolean f40045k;

    public ColorPreference(Context context) {
        super(context);
        this.f40039e = new int[0];
        this.f40040f = 0;
        this.f40041g = C7020R.layout.pref_color_layout;
        this.f40042h = C7020R.layout.pref_color_layout_large;
        this.f40043i = 5;
        this.f40044j = ColorShape.CIRCLE;
        this.f40045k = true;
        m31494a(null, 0);
    }

    /* renamed from: a */
    public final void m31494a(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, C7020R.styleable.ColorPreference, i, i);
        try {
            this.f40043i = obtainStyledAttributes.getInteger(C7020R.styleable.ColorPreference_numColumns, this.f40043i);
            this.f40044j = ColorShape.getShape(obtainStyledAttributes.getInteger(C7020R.styleable.ColorPreference_colorShape, 1));
            PreviewSize size = PreviewSize.getSize(obtainStyledAttributes.getInteger(C7020R.styleable.ColorPreference_viewSize, 1));
            this.f40045k = obtainStyledAttributes.getBoolean(C7020R.styleable.ColorPreference_showDialog, true);
            this.f40039e = C7021a.m31502b(obtainStyledAttributes.getResourceId(C7020R.styleable.ColorPreference_colorChoices, C7020R.array.default_color_choice_values), getContext());
            obtainStyledAttributes.recycle();
            setWidgetLayoutResource(size == PreviewSize.NORMAL ? this.f40041g : this.f40042h);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public String getFragmentTag() {
        return "color_" + getKey();
    }

    public int getValue() {
        return this.f40040f;
    }

    @Override // android.preference.Preference
    public void onAttachedToActivity() {
        super.onAttachedToActivity();
        if (this.f40045k) {
            C7021a.m31501a(getContext(), this, getFragmentTag());
        }
    }

    @Override // android.preference.Preference
    public void onBindView(View view) {
        super.onBindView(view);
        ImageView imageView = (ImageView) view.findViewById(C7020R.id.color_view);
        if (imageView == null || !(imageView instanceof ColorPreferenceView)) {
            return;
        }
        ((ColorPreferenceView) imageView).setPreviewColor(this.f40040f, true);
    }

    @Override // android.preference.Preference
    public void onClick() {
        super.onClick();
        if (this.f40045k) {
            C7021a.m31503c(getContext(), this, getFragmentTag(), this.f40043i, this.f40044j, this.f40039e, getValue());
        }
    }

    @Override // com.onegravity.colorpreference.ColorDialog.OnColorSelectedListener
    public void onColorSelected(int i, String str) {
        setValue(i);
    }

    @Override // android.preference.Preference
    public Object onGetDefaultValue(TypedArray typedArray, int i) {
        return Integer.valueOf(typedArray.getInt(i, 0));
    }

    @Override // android.preference.Preference
    public void onSetInitialValue(boolean z, Object obj) {
        setValue(z ? getPersistedInt(0) : ((Integer) obj).intValue());
    }

    public void setValue(int i) {
        if (callChangeListener(Integer.valueOf(i))) {
            this.f40040f = i;
            persistInt(i);
            notifyChanged();
        }
    }

    public ColorPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f40039e = new int[0];
        this.f40040f = 0;
        this.f40041g = C7020R.layout.pref_color_layout;
        this.f40042h = C7020R.layout.pref_color_layout_large;
        this.f40043i = 5;
        this.f40044j = ColorShape.CIRCLE;
        this.f40045k = true;
        m31494a(attributeSet, 0);
    }

    public ColorPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f40039e = new int[0];
        this.f40040f = 0;
        this.f40041g = C7020R.layout.pref_color_layout;
        this.f40042h = C7020R.layout.pref_color_layout_large;
        this.f40043i = 5;
        this.f40044j = ColorShape.CIRCLE;
        this.f40045k = true;
        m31494a(attributeSet, i);
    }
}
