package com.google.android.material.timepicker;

import android.text.Editable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputLayout;

/* renamed from: com.google.android.material.timepicker.c */
/* loaded from: classes6.dex */
public class ViewOnKeyListenerC5444c implements TextView.OnEditorActionListener, View.OnKeyListener {

    /* renamed from: e */
    public final ChipTextInputComboView f32962e;

    /* renamed from: f */
    public final ChipTextInputComboView f32963f;

    /* renamed from: g */
    public final TimeModel f32964g;

    /* renamed from: h */
    public boolean f32965h = false;

    public ViewOnKeyListenerC5444c(ChipTextInputComboView chipTextInputComboView, ChipTextInputComboView chipTextInputComboView2, TimeModel timeModel) {
        this.f32962e = chipTextInputComboView;
        this.f32963f = chipTextInputComboView2;
        this.f32964g = timeModel;
    }

    /* renamed from: a */
    public void m25474a() {
        TextInputLayout m25368f = this.f32962e.m25368f();
        TextInputLayout m25368f2 = this.f32963f.m25368f();
        EditText editText = m25368f.getEditText();
        EditText editText2 = m25368f2.getEditText();
        editText.setImeOptions(268435461);
        editText2.setImeOptions(268435462);
        editText.setOnEditorActionListener(this);
        editText.setOnKeyListener(this);
        editText2.setOnKeyListener(this);
    }

    /* renamed from: b */
    public final void m25475b(EditText editText) {
        if (editText.getSelectionStart() == 0 && editText.length() == 2) {
            editText.getText().clear();
        }
    }

    /* renamed from: c */
    public final void m25476c(int i) {
        this.f32963f.setChecked(i == 12);
        this.f32962e.setChecked(i == 10);
        this.f32964g.selection = i;
    }

    /* renamed from: d */
    public final boolean m25477d(int i, KeyEvent keyEvent, EditText editText) {
        Editable text = editText.getText();
        if (text == null) {
            return false;
        }
        if (i >= 7 && i <= 16 && keyEvent.getAction() == 1 && editText.getSelectionStart() == 2 && text.length() == 2) {
            m25476c(12);
            return true;
        }
        m25475b(editText);
        return false;
    }

    /* renamed from: e */
    public final boolean m25478e(int i, KeyEvent keyEvent, EditText editText) {
        if (i == 67 && keyEvent.getAction() == 0 && TextUtils.isEmpty(editText.getText())) {
            m25476c(10);
            return true;
        }
        m25475b(editText);
        return false;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        boolean z = i == 5;
        if (z) {
            m25476c(12);
        }
        return z;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (this.f32965h) {
            return false;
        }
        this.f32965h = true;
        EditText editText = (EditText) view;
        boolean m25478e = this.f32964g.selection == 12 ? m25478e(i, keyEvent, editText) : m25477d(i, keyEvent, editText);
        this.f32965h = false;
        return m25478e;
    }
}
