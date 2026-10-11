package com.sunia.HTREnginev2;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import com.google.android.material.C5139R;
import com.google.android.material.textfield.C5426a;

/* loaded from: classes6.dex */
public class czk extends qqf {

    /* renamed from: e */
    public int f67348e;

    /* renamed from: f */
    @Nullable
    public EditText f67349f;

    /* renamed from: g */
    public final View.OnClickListener f67350g;

    public czk(@NonNull C5426a c5426a, @DrawableRes int i) {
        super(c5426a);
        this.f67348e = C5139R.drawable.design_password_eye;
        this.f67350g = new View.OnClickListener() { // from class: com.sunia.HTREnginev2.bzk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                czk.this.m53551y(view);
            }
        };
        if (i != 0) {
            this.f67348e = i;
        }
    }

    /* renamed from: x */
    public static boolean m53550x(EditText editText) {
        return editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y */
    public /* synthetic */ void m53551y(View view) {
        EditText editText = this.f67349f;
        if (editText == null) {
            return;
        }
        int selectionEnd = editText.getSelectionEnd();
        if (m53561w()) {
            this.f67349f.setTransformationMethod(null);
        } else {
            this.f67349f.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
        if (selectionEnd >= 0) {
            this.f67349f.setSelection(selectionEnd);
        }
        m56759r();
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: b */
    public void mo53552b(CharSequence charSequence, int i, int i2, int i3) {
        m56759r();
    }

    @Override // com.sunia.HTREnginev2.qqf
    @StringRes
    /* renamed from: c */
    public int mo53553c() {
        return C5139R.string.password_toggle_content_description;
    }

    @Override // com.sunia.HTREnginev2.qqf
    @DrawableRes
    /* renamed from: d */
    public int mo53554d() {
        return this.f67348e;
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: f */
    public View.OnClickListener mo53555f() {
        return this.f67350g;
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: l */
    public boolean mo53556l() {
        return true;
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: m */
    public boolean mo53557m() {
        return !m53561w();
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: n */
    public void mo53558n(@Nullable EditText editText) {
        this.f67349f = editText;
        m56759r();
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: s */
    public void mo53559s() {
        if (m53550x(this.f67349f)) {
            this.f67349f.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: u */
    public void mo53560u() {
        EditText editText = this.f67349f;
        if (editText != null) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }

    /* renamed from: w */
    public final boolean m53561w() {
        EditText editText = this.f67349f;
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }
}
