package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Configuration;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.C5139R;
import com.google.android.material.chip.Chip;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class ChipTextInputComboView extends FrameLayout implements Checkable {

    /* renamed from: e */
    public final Chip f32842e;

    /* renamed from: f */
    public final TextInputLayout f32843f;

    /* renamed from: g */
    public final EditText f32844g;

    /* renamed from: h */
    public TextWatcher f32845h;

    /* renamed from: i */
    public TextView f32846i;

    /* renamed from: com.google.android.material.timepicker.ChipTextInputComboView$b */
    /* loaded from: classes6.dex */
    public class C5428b extends TextWatcherAdapter {

        /* renamed from: f */
        public static final String f32847f = "00";

        public C5428b() {
        }

        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                ChipTextInputComboView.this.f32842e.setText(ChipTextInputComboView.this.m25366d("00"));
                return;
            }
            String m25366d = ChipTextInputComboView.this.m25366d(editable);
            Chip chip = ChipTextInputComboView.this.f32842e;
            if (TextUtils.isEmpty(m25366d)) {
                m25366d = ChipTextInputComboView.this.m25366d("00");
            }
            chip.setText(m25366d);
        }
    }

    public ChipTextInputComboView(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: c */
    public void m25365c(InputFilter inputFilter) {
        InputFilter[] filters = this.f32844g.getFilters();
        InputFilter[] inputFilterArr = (InputFilter[]) Arrays.copyOf(filters, filters.length + 1);
        inputFilterArr[filters.length] = inputFilter;
        this.f32844g.setFilters(inputFilterArr);
    }

    /* renamed from: d */
    public final String m25366d(CharSequence charSequence) {
        return TimeModel.formatText(getResources(), charSequence);
    }

    @VisibleForTesting
    /* renamed from: e */
    public CharSequence m25367e() {
        return this.f32842e.getText();
    }

    /* renamed from: f */
    public TextInputLayout m25368f() {
        return this.f32843f;
    }

    /* renamed from: g */
    public void m25369g(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.f32842e, accessibilityDelegateCompat);
    }

    /* renamed from: h */
    public void m25370h(boolean z) {
        this.f32844g.setCursorVisible(z);
    }

    /* renamed from: i */
    public void m25371i(CharSequence charSequence) {
        this.f32846i.setText(charSequence);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f32842e.isChecked();
    }

    /* renamed from: j */
    public void m25372j(CharSequence charSequence) {
        String m25366d = m25366d(charSequence);
        this.f32842e.setText(m25366d);
        if (TextUtils.isEmpty(m25366d)) {
            return;
        }
        this.f32844g.removeTextChangedListener(this.f32845h);
        this.f32844g.setText(m25366d);
        this.f32844g.addTextChangedListener(this.f32845h);
    }

    /* renamed from: k */
    public final void m25373k() {
        this.f32844g.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m25373k();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        this.f32842e.setChecked(z);
        this.f32844g.setVisibility(z ? 0 : 4);
        this.f32842e.setVisibility(z ? 8 : 0);
        if (isChecked()) {
            ViewUtils.requestFocusAndShowKeyboard(this.f32844g, false);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f32842e.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        this.f32842e.setTag(i, obj);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this.f32842e.toggle();
    }

    public ChipTextInputComboView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ChipTextInputComboView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater from = LayoutInflater.from(context);
        Chip chip = (Chip) from.inflate(C5139R.layout.material_time_chip, (ViewGroup) this, false);
        this.f32842e = chip;
        chip.setAccessibilityClassName("android.view.View");
        TextInputLayout textInputLayout = (TextInputLayout) from.inflate(C5139R.layout.material_time_input, (ViewGroup) this, false);
        this.f32843f = textInputLayout;
        EditText editText = textInputLayout.getEditText();
        this.f32844g = editText;
        editText.setVisibility(4);
        C5428b c5428b = new C5428b();
        this.f32845h = c5428b;
        editText.addTextChangedListener(c5428b);
        m25373k();
        addView(chip);
        addView(textInputLayout);
        this.f32846i = (TextView) findViewById(C5139R.id.material_label);
        editText.setId(ViewCompat.generateViewId());
        ViewCompat.setLabelFor(this.f32846i, editText.getId());
        editText.setSaveEnabled(false);
        editText.setLongClickable(false);
    }
}
