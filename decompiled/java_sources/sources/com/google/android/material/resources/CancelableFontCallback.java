package com.google.android.material.resources;

import android.graphics.Typeface;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class CancelableFontCallback extends TextAppearanceFontCallback {

    /* renamed from: a */
    public final Typeface f32002a;

    /* renamed from: b */
    public final ApplyFont f32003b;

    /* renamed from: c */
    public boolean f32004c;

    /* loaded from: classes6.dex */
    public interface ApplyFont {
        void apply(Typeface typeface);
    }

    public CancelableFontCallback(ApplyFont applyFont, Typeface typeface) {
        this.f32002a = typeface;
        this.f32003b = applyFont;
    }

    /* renamed from: a */
    public final void m24528a(Typeface typeface) {
        if (this.f32004c) {
            return;
        }
        this.f32003b.apply(typeface);
    }

    public void cancel() {
        this.f32004c = true;
    }

    @Override // com.google.android.material.resources.TextAppearanceFontCallback
    public void onFontRetrievalFailed(int i) {
        m24528a(this.f32002a);
    }

    @Override // com.google.android.material.resources.TextAppearanceFontCallback
    public void onFontRetrieved(Typeface typeface, boolean z) {
        m24528a(typeface);
    }
}
