package com.sunia.HTREnginev2;

import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public final class uof implements InputFilter {

    /* renamed from: a */
    public final TextView f86693a;

    /* renamed from: b */
    public EmojiCompat.InitCallback f86694b;

    @RequiresApi(19)
    /* renamed from: com.sunia.HTREnginev2.uof$a */
    /* loaded from: classes3.dex */
    public static class C14514a extends EmojiCompat.InitCallback {

        /* renamed from: a */
        public final Reference<TextView> f86695a;

        /* renamed from: b */
        public final Reference<uof> f86696b;

        public C14514a(TextView textView, uof uofVar) {
            this.f86695a = new WeakReference(textView);
            this.f86696b = new WeakReference(uofVar);
        }

        /* renamed from: a */
        public final boolean m57651a(@Nullable TextView textView, @Nullable InputFilter inputFilter) {
            InputFilter[] filters;
            if (inputFilter == null || textView == null || (filters = textView.getFilters()) == null) {
                return false;
            }
            for (InputFilter inputFilter2 : filters) {
                if (inputFilter2 == inputFilter) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public void onInitialized() {
            CharSequence text;
            CharSequence process;
            super.onInitialized();
            TextView textView = this.f86695a.get();
            if (m57651a(textView, this.f86696b.get()) && textView.isAttachedToWindow() && text != (process = EmojiCompat.get().process((text = textView.getText())))) {
                int selectionStart = Selection.getSelectionStart(process);
                int selectionEnd = Selection.getSelectionEnd(process);
                textView.setText(process);
                if (process instanceof Spannable) {
                    uof.m57649b((Spannable) process, selectionStart, selectionEnd);
                }
            }
        }
    }

    public uof(@NonNull TextView textView) {
        this.f86693a = textView;
    }

    /* renamed from: b */
    public static void m57649b(Spannable spannable, int i, int i2) {
        if (i >= 0 && i2 >= 0) {
            Selection.setSelection(spannable, i, i2);
        } else if (i >= 0) {
            Selection.setSelection(spannable, i);
        } else if (i2 >= 0) {
            Selection.setSelection(spannable, i2);
        }
    }

    /* renamed from: a */
    public final EmojiCompat.InitCallback m57650a() {
        if (this.f86694b == null) {
            this.f86694b = new C14514a(this.f86693a, this);
        }
        return this.f86694b;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        if (this.f86693a.isInEditMode()) {
            return charSequence;
        }
        int loadState = EmojiCompat.get().getLoadState();
        if (loadState != 0) {
            boolean z = true;
            if (loadState == 1) {
                if (i4 == 0 && i3 == 0 && spanned.length() == 0 && charSequence == this.f86693a.getText()) {
                    z = false;
                }
                if (!z || charSequence == null) {
                    return charSequence;
                }
                if (i != 0 || i2 != charSequence.length()) {
                    charSequence = charSequence.subSequence(i, i2);
                }
                return EmojiCompat.get().process(charSequence, 0, charSequence.length());
            }
            if (loadState != 3) {
                return charSequence;
            }
        }
        EmojiCompat.get().registerInitCallback(m57650a());
        return charSequence;
    }
}
