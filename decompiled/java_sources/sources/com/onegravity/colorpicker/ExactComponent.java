package com.onegravity.colorpicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

/* loaded from: classes7.dex */
public class ExactComponent {

    /* renamed from: a */
    public final OnColorChangedListener f39905a;

    /* renamed from: b */
    public EditText f39906b;

    /* renamed from: c */
    public EditText f39907c;

    /* renamed from: d */
    public EditText f39908d;

    /* renamed from: e */
    public EditText f39909e;

    /* renamed from: f */
    public ColorWheelView f39910f;

    /* renamed from: g */
    public final int f39911g;

    /* renamed from: h */
    public final boolean f39912h;

    /* renamed from: i */
    public int f39913i;

    /* renamed from: j */
    public boolean f39914j;

    /* renamed from: k */
    public final TextWatcher f39915k = new C7019a();

    /* renamed from: com.onegravity.colorpicker.ExactComponent$a */
    /* loaded from: classes7.dex */
    public class C7019a implements TextWatcher {
        public C7019a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (ExactComponent.this.f39914j) {
                return;
            }
            try {
                int convertToColorInt = Util.convertToColorInt(ExactComponent.this.f39906b.getText().toString(), ExactComponent.this.f39907c.getText().toString(), ExactComponent.this.f39908d.getText().toString(), ExactComponent.this.f39909e.getText().toString(), ExactComponent.this.f39912h);
                ExactComponent.this.f39910f.setNewCenterColor(convertToColorInt);
                if (ExactComponent.this.f39905a != null) {
                    ExactComponent.this.f39905a.onColorChanged(convertToColorInt);
                }
            } catch (NumberFormatException unused) {
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public ExactComponent(int i, int i2, boolean z, OnColorChangedListener onColorChangedListener) {
        this.f39911g = i;
        this.f39913i = i2;
        this.f39912h = z;
        this.f39905a = onColorChangedListener;
    }

    /* renamed from: i */
    public void m31481i(Context context, int i) {
        this.f39913i = i;
        m31484l(i);
        this.f39910f.setOldCenterColor(this.f39911g);
        this.f39910f.setNewCenterColor(this.f39913i);
        ((InputMethodManager) context.getSystemService("input_method")).showSoftInput(this.f39907c, 0);
    }

    @SuppressLint({"InflateParams"})
    /* renamed from: j */
    public View m31482j(Context context) {
        View inflate = LayoutInflater.from(context).inflate(C7020R.layout.dialog_color_exact, (ViewGroup) null);
        this.f39906b = (EditText) inflate.findViewById(C7020R.id.exactA);
        this.f39907c = (EditText) inflate.findViewById(C7020R.id.exactR);
        this.f39908d = (EditText) inflate.findViewById(C7020R.id.exactG);
        this.f39909e = (EditText) inflate.findViewById(C7020R.id.exactB);
        InputFilter[] inputFilterArr = {new InputFilter.LengthFilter(2)};
        this.f39906b.setFilters(inputFilterArr);
        this.f39907c.setFilters(inputFilterArr);
        this.f39908d.setFilters(inputFilterArr);
        this.f39909e.setFilters(inputFilterArr);
        this.f39906b.setVisibility(this.f39912h ? 0 : 8);
        m31484l(this.f39911g);
        this.f39906b.addTextChangedListener(this.f39915k);
        this.f39907c.addTextChangedListener(this.f39915k);
        this.f39908d.addTextChangedListener(this.f39915k);
        this.f39909e.addTextChangedListener(this.f39915k);
        ColorWheelView colorWheelView = (ColorWheelView) inflate.findViewById(C7020R.id.picker_exact);
        this.f39910f = colorWheelView;
        colorWheelView.setOldCenterColor(this.f39911g);
        this.f39910f.setNewCenterColor(this.f39913i);
        return inflate;
    }

    /* renamed from: k */
    public void m31483k(Context context) {
        ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(this.f39906b.getWindowToken(), 0);
    }

    /* renamed from: l */
    public final void m31484l(int i) {
        this.f39914j = true;
        String[] convertToARGB = Util.convertToARGB(i);
        this.f39906b.setText(convertToARGB[0]);
        this.f39907c.setText(convertToARGB[1]);
        this.f39908d.setText(convertToARGB[2]);
        this.f39909e.setText(convertToARGB[3]);
        this.f39914j = false;
    }
}
