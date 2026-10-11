package com.sunia.HTREnginev2;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public final class vof implements TextWatcher {

    /* renamed from: e */
    public final EditText f87760e;

    /* renamed from: f */
    public final boolean f87761f;

    /* renamed from: g */
    public EmojiCompat.InitCallback f87762g;

    /* renamed from: h */
    public int f87763h = Integer.MAX_VALUE;

    /* renamed from: i */
    public int f87764i = 0;

    /* renamed from: j */
    public boolean f87765j = true;

    @RequiresApi(19)
    /* renamed from: com.sunia.HTREnginev2.vof$a */
    /* loaded from: classes3.dex */
    public static class C14557a extends EmojiCompat.InitCallback {

        /* renamed from: a */
        public final Reference<EditText> f87766a;

        public C14557a(EditText editText) {
            this.f87766a = new WeakReference(editText);
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public void onInitialized() {
            super.onInitialized();
            vof.m57858e(this.f87766a.get(), 1);
        }
    }

    public vof(EditText editText, boolean z) {
        this.f87760e = editText;
        this.f87761f = z;
    }

    /* renamed from: e */
    public static void m57858e(@Nullable EditText editText, int i) {
        if (i == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            EmojiCompat.get().process(editableText);
            uof.m57649b(editableText, selectionStart, selectionEnd);
        }
    }

    /* renamed from: a */
    public int m57859a() {
        return this.f87764i;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    /* renamed from: b */
    public final EmojiCompat.InitCallback m57860b() {
        if (this.f87762g == null) {
            this.f87762g = new C14557a(this.f87760e);
        }
        return this.f87762g;
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    /* renamed from: c */
    public int m57861c() {
        return this.f87763h;
    }

    /* renamed from: d */
    public boolean m57862d() {
        return this.f87765j;
    }

    /* renamed from: f */
    public void m57863f(int i) {
        this.f87764i = i;
    }

    /* renamed from: g */
    public void m57864g(boolean z) {
        if (this.f87765j != z) {
            if (this.f87762g != null) {
                EmojiCompat.get().unregisterInitCallback(this.f87762g);
            }
            this.f87765j = z;
            if (z) {
                m57858e(this.f87760e, EmojiCompat.get().getLoadState());
            }
        }
    }

    /* renamed from: h */
    public void m57865h(int i) {
        this.f87763h = i;
    }

    /* renamed from: i */
    public final boolean m57866i() {
        return (this.f87765j && (this.f87761f || EmojiCompat.isConfigured())) ? false : true;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (this.f87760e.isInEditMode() || m57866i() || i2 > i3 || !(charSequence instanceof Spannable)) {
            return;
        }
        int loadState = EmojiCompat.get().getLoadState();
        if (loadState != 0) {
            if (loadState == 1) {
                EmojiCompat.get().process((Spannable) charSequence, i, i + i3, this.f87763h, this.f87764i);
                return;
            } else if (loadState != 3) {
                return;
            }
        }
        EmojiCompat.get().registerInitCallback(m57860b());
    }
}
