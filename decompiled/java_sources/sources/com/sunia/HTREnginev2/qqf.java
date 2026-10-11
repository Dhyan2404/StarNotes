package com.sunia.HTREnginev2;

import android.content.Context;
import android.text.Editable;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EditText;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.C5426a;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes6.dex */
public abstract class qqf {

    /* renamed from: a */
    public final TextInputLayout f82329a;

    /* renamed from: b */
    public final C5426a f82330b;

    /* renamed from: c */
    public final Context f82331c;

    /* renamed from: d */
    public final CheckableImageButton f82332d;

    public qqf(@NonNull C5426a c5426a) {
        this.f82329a = c5426a.f32811e;
        this.f82330b = c5426a;
        this.f82331c = c5426a.getContext();
        this.f82332d = c5426a.m25338t();
    }

    /* renamed from: a */
    public void mo56749a(Editable editable) {
    }

    /* renamed from: b */
    public void mo53552b(CharSequence charSequence, int i, int i2, int i3) {
    }

    @StringRes
    /* renamed from: c */
    public int mo53553c() {
        return 0;
    }

    @DrawableRes
    /* renamed from: d */
    public int mo53554d() {
        return 0;
    }

    /* renamed from: e */
    public View.OnFocusChangeListener mo56750e() {
        return null;
    }

    /* renamed from: f */
    public View.OnClickListener mo53555f() {
        return null;
    }

    /* renamed from: g */
    public View.OnFocusChangeListener mo56751g() {
        return null;
    }

    /* renamed from: h */
    public AccessibilityManagerCompat.TouchExplorationStateChangeListener mo56752h() {
        return null;
    }

    /* renamed from: i */
    public boolean mo56753i(int i) {
        return true;
    }

    /* renamed from: j */
    public boolean mo56754j() {
        return false;
    }

    /* renamed from: k */
    public boolean mo56755k() {
        return false;
    }

    /* renamed from: l */
    public boolean mo53556l() {
        return false;
    }

    /* renamed from: m */
    public boolean mo53557m() {
        return false;
    }

    /* renamed from: n */
    public void mo53558n(@Nullable EditText editText) {
    }

    /* renamed from: o */
    public void mo56756o(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    /* renamed from: p */
    public void mo56757p(View view, @NonNull AccessibilityEvent accessibilityEvent) {
    }

    /* renamed from: q */
    public void mo56758q(boolean z) {
    }

    /* renamed from: r */
    public final void m56759r() {
        this.f82330b.m25295P(false);
    }

    /* renamed from: s */
    public void mo53559s() {
    }

    /* renamed from: t */
    public boolean mo56760t() {
        return false;
    }

    /* renamed from: u */
    public void mo53560u() {
    }
}
