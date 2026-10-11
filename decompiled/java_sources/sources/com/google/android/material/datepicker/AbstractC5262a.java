package com.google.android.material.datepicker;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.C5139R;
import com.google.android.material.datepicker.AbstractC5262a;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.textfield.TextInputLayout;
import com.sunia.HTREnginev2.kve;
import com.sunia.HTREnginev2.yyn;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.Locale;

/* renamed from: com.google.android.material.datepicker.a */
/* loaded from: classes6.dex */
public abstract class AbstractC5262a extends TextWatcherAdapter {

    /* renamed from: e */
    @NonNull
    public final TextInputLayout f31204e;

    /* renamed from: f */
    public final String f31205f;

    /* renamed from: g */
    public final DateFormat f31206g;

    /* renamed from: h */
    public final CalendarConstraints f31207h;

    /* renamed from: i */
    public final String f31208i;

    /* renamed from: j */
    public final Runnable f31209j;

    /* renamed from: k */
    public Runnable f31210k;

    /* renamed from: l */
    public int f31211l = 0;

    public AbstractC5262a(final String str, DateFormat dateFormat, @NonNull TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.f31205f = str;
        this.f31206g = dateFormat;
        this.f31204e = textInputLayout;
        this.f31207h = calendarConstraints;
        this.f31208i = textInputLayout.getContext().getString(C5139R.string.mtrl_picker_out_of_range);
        this.f31209j = new Runnable() { // from class: com.sunia.HTREnginev2.fve
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC5262a.this.m24005e(str);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m24004d(long j) {
        this.f31204e.setError(String.format(this.f31208i, m24008i(kve.m55330c(j))));
        mo23990f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m24005e(String str) {
        TextInputLayout textInputLayout = this.f31204e;
        DateFormat dateFormat = this.f31206g;
        Context context = textInputLayout.getContext();
        textInputLayout.setError(context.getString(C5139R.string.mtrl_picker_invalid_format) + "\n" + String.format(context.getString(C5139R.string.mtrl_picker_invalid_format_use), m24008i(str)) + "\n" + String.format(context.getString(C5139R.string.mtrl_picker_invalid_format_example), m24008i(dateFormat.format(new Date(yyn.m58536v().getTimeInMillis())))));
        mo23990f();
    }

    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public void afterTextChanged(@NonNull Editable editable) {
        if (!Locale.getDefault().getLanguage().equals(Locale.KOREAN.getLanguage()) && editable.length() != 0 && editable.length() < this.f31205f.length() && editable.length() >= this.f31211l) {
            char charAt = this.f31205f.charAt(editable.length());
            if (Character.isLetterOrDigit(charAt)) {
                return;
            }
            editable.append(charAt);
        }
    }

    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public void beforeTextChanged(@NonNull CharSequence charSequence, int i, int i2, int i3) {
        this.f31211l = charSequence.length();
    }

    /* renamed from: c */
    public final Runnable m24006c(final long j) {
        return new Runnable() { // from class: com.sunia.HTREnginev2.gve
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC5262a.this.m24004d(j);
            }
        };
    }

    /* renamed from: f */
    public void mo23990f() {
    }

    /* renamed from: g */
    public abstract void mo23991g(@Nullable Long l);

    /* renamed from: h */
    public void m24007h(View view, Runnable runnable) {
        view.post(runnable);
    }

    /* renamed from: i */
    public final String m24008i(String str) {
        return str.replace(' ', (char) 160);
    }

    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public void onTextChanged(@NonNull CharSequence charSequence, int i, int i2, int i3) {
        this.f31204e.removeCallbacks(this.f31209j);
        this.f31204e.removeCallbacks(this.f31210k);
        this.f31204e.setError(null);
        mo23991g(null);
        if (TextUtils.isEmpty(charSequence) || charSequence.length() < this.f31205f.length()) {
            return;
        }
        try {
            Date parse = this.f31206g.parse(charSequence.toString());
            this.f31204e.setError(null);
            long time = parse.getTime();
            if (this.f31207h.getDateValidator().isValid(time) && this.f31207h.isWithinBounds(time)) {
                mo23991g(Long.valueOf(parse.getTime()));
                return;
            }
            Runnable m24006c = m24006c(time);
            this.f31210k = m24006c;
            m24007h(this.f31204e, m24006c);
        } catch (ParseException unused) {
            m24007h(this.f31204e, this.f31209j);
        }
    }
}
