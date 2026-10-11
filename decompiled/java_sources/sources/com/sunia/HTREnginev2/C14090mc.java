package com.sunia.HTREnginev2;

import android.content.res.TypedArray;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.C0118R;
import androidx.emoji2.viewsintegration.EmojiEditTextHelper;

/* renamed from: com.sunia.HTREnginev2.mc */
/* loaded from: classes3.dex */
public class C14090mc {

    /* renamed from: a */
    @NonNull
    public final EditText f77447a;

    /* renamed from: b */
    @NonNull
    public final EmojiEditTextHelper f77448b;

    public C14090mc(@NonNull EditText editText) {
        this.f77447a = editText;
        this.f77448b = new EmojiEditTextHelper(editText, false);
    }

    @Nullable
    /* renamed from: a */
    public KeyListener m55588a(@Nullable KeyListener keyListener) {
        return m55589b(keyListener) ? this.f77448b.getKeyListener(keyListener) : keyListener;
    }

    /* renamed from: b */
    public boolean m55589b(KeyListener keyListener) {
        return !(keyListener instanceof NumberKeyListener);
    }

    /* renamed from: c */
    public boolean m55590c() {
        return this.f77448b.isEnabled();
    }

    /* renamed from: d */
    public void m55591d(@Nullable AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = this.f77447a.getContext().obtainStyledAttributes(attributeSet, C0118R.styleable.AppCompatTextView, i, 0);
        try {
            boolean z = obtainStyledAttributes.hasValue(C0118R.styleable.AppCompatTextView_emojiCompatEnabled) ? obtainStyledAttributes.getBoolean(C0118R.styleable.AppCompatTextView_emojiCompatEnabled, true) : true;
            obtainStyledAttributes.recycle();
            m55593f(z);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Nullable
    /* renamed from: e */
    public InputConnection m55592e(@Nullable InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
        return this.f77448b.onCreateInputConnection(inputConnection, editorInfo);
    }

    /* renamed from: f */
    public void m55593f(boolean z) {
        this.f77448b.setEnabled(z);
    }
}
