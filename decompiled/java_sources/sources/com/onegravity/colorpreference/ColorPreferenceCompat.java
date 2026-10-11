package com.onegravity.colorpreference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.preference.Preference;
import androidx.preference.PreferenceViewHolder;
import com.onegravity.colorpicker.C7020R;
import com.onegravity.colorpreference.ColorDialog;

/* loaded from: classes7.dex */
public class ColorPreferenceCompat extends Preference implements ColorDialog.OnColorSelectedListener {

    /* renamed from: J0 */
    public int[] f40046J0;

    /* renamed from: K0 */
    public int f40047K0;

    /* renamed from: L0 */
    public final int f40048L0;

    /* renamed from: M0 */
    public final int f40049M0;

    /* renamed from: N0 */
    public int f40050N0;

    /* renamed from: O0 */
    public ColorShape f40051O0;

    /* renamed from: P0 */
    public boolean f40052P0;

    public ColorPreferenceCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f40046J0 = new int[0];
        this.f40047K0 = 0;
        this.f40048L0 = C7020R.layout.pref_color_layout;
        this.f40049M0 = C7020R.layout.pref_color_layout_large;
        this.f40050N0 = 5;
        this.f40051O0 = ColorShape.CIRCLE;
        this.f40052P0 = true;
        m31495o(attributeSet, i);
    }

    public String getFragmentTag() {
        return "color_" + getKey();
    }

    public int getValue() {
        return this.f40047K0;
    }

    /* renamed from: o */
    public final void m31495o(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, C7020R.styleable.ColorPreferenceCompat, i, i);
        try {
            this.f40050N0 = obtainStyledAttributes.getInteger(C7020R.styleable.ColorPreferenceCompat_numColumns, this.f40050N0);
            this.f40051O0 = ColorShape.getShape(obtainStyledAttributes.getInteger(C7020R.styleable.ColorPreferenceCompat_colorShape, 1));
            PreviewSize size = PreviewSize.getSize(obtainStyledAttributes.getInteger(C7020R.styleable.ColorPreferenceCompat_viewSize, 1));
            this.f40052P0 = obtainStyledAttributes.getBoolean(C7020R.styleable.ColorPreferenceCompat_showDialog, true);
            this.f40046J0 = C7021a.m31502b(obtainStyledAttributes.getResourceId(C7020R.styleable.ColorPreferenceCompat_colorChoices, C7020R.array.default_color_choice_values), getContext());
            obtainStyledAttributes.recycle();
            setWidgetLayoutResource(size == PreviewSize.NORMAL ? this.f40048L0 : this.f40049M0);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // androidx.preference.Preference
    public void onAttached() {
        super.onAttached();
        if (this.f40052P0) {
            C7021a.m31501a(getContext(), this, getFragmentTag());
        }
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        ImageView imageView = (ImageView) preferenceViewHolder.findViewById(C7020R.id.color_view);
        if (imageView == null || !(imageView instanceof ColorPreferenceView)) {
            return;
        }
        ((ColorPreferenceView) imageView).setPreviewColor(this.f40047K0, true);
    }

    @Override // com.onegravity.colorpreference.ColorDialog.OnColorSelectedListener
    public void onColorSelected(int i, String str) {
        setValue(i);
    }

    @Override // androidx.preference.Preference
    public Object onGetDefaultValue(TypedArray typedArray, int i) {
        return Integer.valueOf(typedArray.getInt(i, 0));
    }

    @Override // androidx.preference.Preference
    public void onSetInitialValue(boolean z, Object obj) {
        setValue(z ? getPersistedInt(0) : ((Integer) obj).intValue());
    }

    public void setValue(int i) {
        if (callChangeListener(Integer.valueOf(i))) {
            this.f40047K0 = i;
            persistInt(i);
            notifyChanged();
        }
    }

    public ColorPreferenceCompat(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f40046J0 = new int[0];
        this.f40047K0 = 0;
        this.f40048L0 = C7020R.layout.pref_color_layout;
        this.f40049M0 = C7020R.layout.pref_color_layout_large;
        this.f40050N0 = 5;
        this.f40051O0 = ColorShape.CIRCLE;
        this.f40052P0 = true;
        m31495o(attributeSet, 0);
    }

    public ColorPreferenceCompat(Context context) {
        super(context);
        this.f40046J0 = new int[0];
        this.f40047K0 = 0;
        this.f40048L0 = C7020R.layout.pref_color_layout;
        this.f40049M0 = C7020R.layout.pref_color_layout_large;
        this.f40050N0 = 5;
        this.f40051O0 = ColorShape.CIRCLE;
        this.f40052P0 = true;
        m31495o(null, 0);
    }
}
