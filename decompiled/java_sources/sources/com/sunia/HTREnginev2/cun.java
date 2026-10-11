package com.sunia.HTREnginev2;

import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.text.PrecomputedTextCompat;
import java.util.stream.IntStream;

/* loaded from: classes3.dex */
public class cun implements Spannable {

    /* renamed from: e */
    public boolean f67205e = false;

    /* renamed from: f */
    @NonNull
    public Spannable f67206f;

    @RequiresApi(24)
    /* renamed from: com.sunia.HTREnginev2.cun$a */
    /* loaded from: classes3.dex */
    public static class C13588a {
        /* renamed from: a */
        public static IntStream m53522a(CharSequence charSequence) {
            return charSequence.chars();
        }

        /* renamed from: b */
        public static IntStream m53523b(CharSequence charSequence) {
            return charSequence.codePoints();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.cun$b */
    /* loaded from: classes3.dex */
    public static class C13589b {
        /* renamed from: a */
        public boolean mo53524a(CharSequence charSequence) {
            return charSequence instanceof PrecomputedTextCompat;
        }
    }

    @RequiresApi(28)
    /* renamed from: com.sunia.HTREnginev2.cun$c */
    /* loaded from: classes3.dex */
    public static class C13590c extends C13589b {
        @Override // com.sunia.HTREnginev2.cun.C13589b
        /* renamed from: a */
        public boolean mo53524a(CharSequence charSequence) {
            return (charSequence instanceof PrecomputedText) || (charSequence instanceof PrecomputedTextCompat);
        }
    }

    public cun(@NonNull Spannable spannable) {
        this.f67206f = spannable;
    }

    /* renamed from: c */
    public static C13589b m53519c() {
        return new C13590c();
    }

    /* renamed from: a */
    public final void m53520a() {
        Spannable spannable = this.f67206f;
        if (!this.f67205e && m53519c().mo53524a(spannable)) {
            this.f67206f = new SpannableString(spannable);
        }
        this.f67205e = true;
    }

    /* renamed from: b */
    public Spannable m53521b() {
        return this.f67206f;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.f67206f.charAt(i);
    }

    @Override // java.lang.CharSequence
    @NonNull
    @RequiresApi(api = 24)
    public IntStream chars() {
        return C13588a.m53522a(this.f67206f);
    }

    @Override // java.lang.CharSequence
    @NonNull
    @RequiresApi(api = 24)
    public IntStream codePoints() {
        return C13588a.m53523b(this.f67206f);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f67206f.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f67206f.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f67206f.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        return (T[]) this.f67206f.getSpans(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f67206f.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        return this.f67206f.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        m53520a();
        this.f67206f.removeSpan(obj);
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i, int i2, int i3) {
        m53520a();
        this.f67206f.setSpan(obj, i, i2, i3);
    }

    @Override // java.lang.CharSequence
    @NonNull
    public CharSequence subSequence(int i, int i2) {
        return this.f67206f.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    @NonNull
    public String toString() {
        return this.f67206f.toString();
    }

    public cun(@NonNull Spanned spanned) {
        this.f67206f = new SpannableString(spanned);
    }

    public cun(@NonNull CharSequence charSequence) {
        this.f67206f = new SpannableString(charSequence);
    }
}
