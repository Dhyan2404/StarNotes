package com.onegravity.colorpreference;

import android.content.Context;
import android.util.AttributeSet;
import com.onegravity.colorpicker.ColorPicker;
import com.onegravity.colorpicker.ColorPickerListener;

/* loaded from: classes7.dex */
public class ColorPickerPreference extends ColorPreferenceCompat implements ColorPickerListener {
    public ColorPickerPreference(Context context) {
        super(context);
    }

    @Override // androidx.preference.Preference
    public void onClick() {
        new ColorPicker(getContext(), getValue(), true, this).show();
    }

    @Override // com.onegravity.colorpicker.OnColorChangedListener
    public void onColorChanged(int i) {
        setValue(i);
    }

    @Override // com.onegravity.colorpicker.ColorPickerListener
    public void onDialogClosing() {
    }

    public ColorPickerPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ColorPickerPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
