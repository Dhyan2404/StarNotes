package com.sunia.HTREnginev2;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.C0118R;
import androidx.emoji2.viewsintegration.EmojiTextViewHelper;

/* renamed from: com.sunia.HTREnginev2.nc */
/* loaded from: classes3.dex */
public class C14132nc {

    /* renamed from: a */
    @NonNull
    public final TextView f78501a;

    /* renamed from: b */
    @NonNull
    public final EmojiTextViewHelper f78502b;

    public C14132nc(@NonNull TextView textView) {
        this.f78501a = textView;
        this.f78502b = new EmojiTextViewHelper(textView, false);
    }

    @NonNull
    /* renamed from: a */
    public InputFilter[] m55733a(@NonNull InputFilter[] inputFilterArr) {
        return this.f78502b.getFilters(inputFilterArr);
    }

    /* renamed from: b */
    public boolean m55734b() {
        return this.f78502b.isEnabled();
    }

    /* renamed from: c */
    public void m55735c(@Nullable AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = this.f78501a.getContext().obtainStyledAttributes(attributeSet, C0118R.styleable.AppCompatTextView, i, 0);
        try {
            boolean z = obtainStyledAttributes.hasValue(C0118R.styleable.AppCompatTextView_emojiCompatEnabled) ? obtainStyledAttributes.getBoolean(C0118R.styleable.AppCompatTextView_emojiCompatEnabled, true) : true;
            obtainStyledAttributes.recycle();
            m55737e(z);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* renamed from: d */
    public void m55736d(boolean z) {
        this.f78502b.setAllCaps(z);
    }

    /* renamed from: e */
    public void m55737e(boolean z) {
        this.f78502b.setEnabled(z);
    }

    @Nullable
    /* renamed from: f */
    public TransformationMethod m55738f(@Nullable TransformationMethod transformationMethod) {
        return this.f78502b.wrapTransformationMethod(transformationMethod);
    }
}
