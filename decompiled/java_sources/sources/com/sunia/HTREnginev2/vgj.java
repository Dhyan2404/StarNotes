package com.sunia.HTREnginev2;

import android.text.InputFilter;
import android.text.Spanned;

/* loaded from: classes6.dex */
public class vgj implements InputFilter {

    /* renamed from: a */
    public int f87481a;

    public vgj(int i) {
        this.f87481a = i;
    }

    /* renamed from: a */
    public int m57793a() {
        return this.f87481a;
    }

    /* renamed from: b */
    public void m57794b(int i) {
        this.f87481a = i;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        try {
            StringBuilder sb = new StringBuilder(spanned);
            sb.replace(i3, i4, charSequence.subSequence(i, i2).toString());
            if (Integer.parseInt(sb.toString()) <= this.f87481a) {
                return null;
            }
            return "";
        } catch (NumberFormatException unused) {
            return "";
        }
    }
}
