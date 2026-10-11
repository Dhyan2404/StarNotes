package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.resources.TextAppearanceFontCallback;
import java.lang.ref.WeakReference;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class TextDrawableHelper {

    /* renamed from: c */
    public float f31691c;

    /* renamed from: d */
    public float f31692d;

    /* renamed from: g */
    @Nullable
    public TextAppearance f31695g;

    /* renamed from: a */
    public final TextPaint f31689a = new TextPaint(1);

    /* renamed from: b */
    public final TextAppearanceFontCallback f31690b = new C5314a();

    /* renamed from: e */
    public boolean f31693e = true;

    /* renamed from: f */
    @Nullable
    public WeakReference<TextDrawableDelegate> f31694f = new WeakReference<>(null);

    /* loaded from: classes6.dex */
    public interface TextDrawableDelegate {
        @NonNull
        int[] getState();

        boolean onStateChange(int[] iArr);

        void onTextSizeChange();
    }

    /* renamed from: com.google.android.material.internal.TextDrawableHelper$a */
    /* loaded from: classes6.dex */
    public class C5314a extends TextAppearanceFontCallback {
        public C5314a() {
        }

        @Override // com.google.android.material.resources.TextAppearanceFontCallback
        public void onFontRetrievalFailed(int i) {
            TextDrawableHelper.this.f31693e = true;
            TextDrawableDelegate textDrawableDelegate = (TextDrawableDelegate) TextDrawableHelper.this.f31694f.get();
            if (textDrawableDelegate != null) {
                textDrawableDelegate.onTextSizeChange();
            }
        }

        @Override // com.google.android.material.resources.TextAppearanceFontCallback
        public void onFontRetrieved(@NonNull Typeface typeface, boolean z) {
            if (z) {
                return;
            }
            TextDrawableHelper.this.f31693e = true;
            TextDrawableDelegate textDrawableDelegate = (TextDrawableDelegate) TextDrawableHelper.this.f31694f.get();
            if (textDrawableDelegate != null) {
                textDrawableDelegate.onTextSizeChange();
            }
        }
    }

    public TextDrawableHelper(@Nullable TextDrawableDelegate textDrawableDelegate) {
        setDelegate(textDrawableDelegate);
    }

    /* renamed from: c */
    public final float m24300c(@Nullable String str) {
        if (str == null) {
            return 0.0f;
        }
        return Math.abs(this.f31689a.getFontMetrics().ascent);
    }

    /* renamed from: d */
    public final float m24301d(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            return 0.0f;
        }
        return this.f31689a.measureText(charSequence, 0, charSequence.length());
    }

    /* renamed from: e */
    public final void m24302e(String str) {
        this.f31691c = m24301d(str);
        this.f31692d = m24300c(str);
        this.f31693e = false;
    }

    @Nullable
    public TextAppearance getTextAppearance() {
        return this.f31695g;
    }

    public float getTextHeight(@Nullable String str) {
        if (!this.f31693e) {
            return this.f31692d;
        }
        m24302e(str);
        return this.f31692d;
    }

    @NonNull
    public TextPaint getTextPaint() {
        return this.f31689a;
    }

    public float getTextWidth(String str) {
        if (!this.f31693e) {
            return this.f31691c;
        }
        m24302e(str);
        return this.f31691c;
    }

    public boolean isTextWidthDirty() {
        return this.f31693e;
    }

    public void setDelegate(@Nullable TextDrawableDelegate textDrawableDelegate) {
        this.f31694f = new WeakReference<>(textDrawableDelegate);
    }

    public void setTextAppearance(@Nullable TextAppearance textAppearance, Context context) {
        if (this.f31695g != textAppearance) {
            this.f31695g = textAppearance;
            if (textAppearance != null) {
                textAppearance.updateMeasureState(context, this.f31689a, this.f31690b);
                TextDrawableDelegate textDrawableDelegate = this.f31694f.get();
                if (textDrawableDelegate != null) {
                    this.f31689a.drawableState = textDrawableDelegate.getState();
                }
                textAppearance.updateDrawState(context, this.f31689a, this.f31690b);
                this.f31693e = true;
            }
            TextDrawableDelegate textDrawableDelegate2 = this.f31694f.get();
            if (textDrawableDelegate2 != null) {
                textDrawableDelegate2.onTextSizeChange();
                textDrawableDelegate2.onStateChange(textDrawableDelegate2.getState());
            }
        }
    }

    public void setTextSizeDirty(boolean z) {
        this.f31693e = z;
    }

    public void setTextWidthDirty(boolean z) {
        this.f31693e = z;
    }

    public void updateTextPaintDrawState(Context context) {
        this.f31695g.updateDrawState(context, this.f31689a, this.f31690b);
    }
}
