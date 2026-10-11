package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import androidx.annotation.FontRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.res.ResourcesCompat;
import com.google.android.material.C5139R;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class TextAppearance {

    /* renamed from: f */
    public static final String f32007f = "TextAppearance";

    /* renamed from: g */
    public static final int f32008g = 1;

    /* renamed from: h */
    public static final int f32009h = 2;

    /* renamed from: i */
    public static final int f32010i = 3;

    /* renamed from: a */
    @Nullable
    public ColorStateList f32011a;

    /* renamed from: b */
    public float f32012b;

    /* renamed from: c */
    @FontRes
    public final int f32013c;

    /* renamed from: d */
    public boolean f32014d = false;

    /* renamed from: e */
    public Typeface f32015e;

    @Nullable
    public final String fontFamily;
    public final boolean hasLetterSpacing;
    public final float letterSpacing;

    @Nullable
    public final ColorStateList shadowColor;
    public final float shadowDx;
    public final float shadowDy;
    public final float shadowRadius;
    public final boolean textAllCaps;

    @Nullable
    public final ColorStateList textColorHint;

    @Nullable
    public final ColorStateList textColorLink;
    public final int textStyle;
    public final int typeface;

    /* renamed from: com.google.android.material.resources.TextAppearance$a */
    /* loaded from: classes6.dex */
    public class C5356a extends ResourcesCompat.FontCallback {

        /* renamed from: a */
        public final /* synthetic */ TextAppearanceFontCallback f32016a;

        public C5356a(TextAppearanceFontCallback textAppearanceFontCallback) {
            this.f32016a = textAppearanceFontCallback;
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        /* renamed from: onFontRetrievalFailed */
        public void m2880c(int i) {
            TextAppearance.this.f32014d = true;
            this.f32016a.onFontRetrievalFailed(i);
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        /* renamed from: onFontRetrieved */
        public void m2881d(@NonNull Typeface typeface) {
            TextAppearance textAppearance = TextAppearance.this;
            textAppearance.f32015e = Typeface.create(typeface, textAppearance.textStyle);
            TextAppearance.this.f32014d = true;
            this.f32016a.onFontRetrieved(TextAppearance.this.f32015e, false);
        }
    }

    /* renamed from: com.google.android.material.resources.TextAppearance$b */
    /* loaded from: classes6.dex */
    public class C5357b extends TextAppearanceFontCallback {

        /* renamed from: a */
        public final /* synthetic */ Context f32018a;

        /* renamed from: b */
        public final /* synthetic */ TextPaint f32019b;

        /* renamed from: c */
        public final /* synthetic */ TextAppearanceFontCallback f32020c;

        public C5357b(Context context, TextPaint textPaint, TextAppearanceFontCallback textAppearanceFontCallback) {
            this.f32018a = context;
            this.f32019b = textPaint;
            this.f32020c = textAppearanceFontCallback;
        }

        @Override // com.google.android.material.resources.TextAppearanceFontCallback
        public void onFontRetrievalFailed(int i) {
            this.f32020c.onFontRetrievalFailed(i);
        }

        @Override // com.google.android.material.resources.TextAppearanceFontCallback
        public void onFontRetrieved(@NonNull Typeface typeface, boolean z) {
            TextAppearance.this.updateTextPaintMeasureState(this.f32018a, this.f32019b, typeface);
            this.f32020c.onFontRetrieved(typeface, z);
        }
    }

    public TextAppearance(@NonNull Context context, @StyleRes int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, C5139R.styleable.TextAppearance);
        setTextSize(obtainStyledAttributes.getDimension(C5139R.styleable.TextAppearance_android_textSize, 0.0f));
        setTextColor(MaterialResources.getColorStateList(context, obtainStyledAttributes, C5139R.styleable.TextAppearance_android_textColor));
        this.textColorHint = MaterialResources.getColorStateList(context, obtainStyledAttributes, C5139R.styleable.TextAppearance_android_textColorHint);
        this.textColorLink = MaterialResources.getColorStateList(context, obtainStyledAttributes, C5139R.styleable.TextAppearance_android_textColorLink);
        this.textStyle = obtainStyledAttributes.getInt(C5139R.styleable.TextAppearance_android_textStyle, 0);
        this.typeface = obtainStyledAttributes.getInt(C5139R.styleable.TextAppearance_android_typeface, 1);
        int m24530b = MaterialResources.m24530b(obtainStyledAttributes, C5139R.styleable.TextAppearance_fontFamily, C5139R.styleable.TextAppearance_android_fontFamily);
        this.f32013c = obtainStyledAttributes.getResourceId(m24530b, 0);
        this.fontFamily = obtainStyledAttributes.getString(m24530b);
        this.textAllCaps = obtainStyledAttributes.getBoolean(C5139R.styleable.TextAppearance_textAllCaps, false);
        this.shadowColor = MaterialResources.getColorStateList(context, obtainStyledAttributes, C5139R.styleable.TextAppearance_android_shadowColor);
        this.shadowDx = obtainStyledAttributes.getFloat(C5139R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.shadowDy = obtainStyledAttributes.getFloat(C5139R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.shadowRadius = obtainStyledAttributes.getFloat(C5139R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(i, C5139R.styleable.MaterialTextAppearance);
        this.hasLetterSpacing = obtainStyledAttributes2.hasValue(C5139R.styleable.MaterialTextAppearance_android_letterSpacing);
        this.letterSpacing = obtainStyledAttributes2.getFloat(C5139R.styleable.MaterialTextAppearance_android_letterSpacing, 0.0f);
        obtainStyledAttributes2.recycle();
    }

    /* renamed from: d */
    public final void m24534d() {
        String str;
        if (this.f32015e == null && (str = this.fontFamily) != null) {
            this.f32015e = Typeface.create(str, this.textStyle);
        }
        if (this.f32015e == null) {
            int i = this.typeface;
            if (i == 1) {
                this.f32015e = Typeface.SANS_SERIF;
            } else if (i == 2) {
                this.f32015e = Typeface.SERIF;
            } else if (i != 3) {
                this.f32015e = Typeface.DEFAULT;
            } else {
                this.f32015e = Typeface.MONOSPACE;
            }
            this.f32015e = Typeface.create(this.f32015e, this.textStyle);
        }
    }

    /* renamed from: e */
    public final boolean m24535e(Context context) {
        if (TextAppearanceConfig.shouldLoadFontSynchronously()) {
            return true;
        }
        int i = this.f32013c;
        return (i != 0 ? ResourcesCompat.getCachedFont(context, i) : null) != null;
    }

    public Typeface getFallbackFont() {
        m24534d();
        return this.f32015e;
    }

    @NonNull
    @VisibleForTesting
    public Typeface getFont(@NonNull Context context) {
        if (this.f32014d) {
            return this.f32015e;
        }
        if (!context.isRestricted()) {
            try {
                Typeface font = ResourcesCompat.getFont(context, this.f32013c);
                this.f32015e = font;
                if (font != null) {
                    this.f32015e = Typeface.create(font, this.textStyle);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception e) {
                Log.d(f32007f, "Error loading font " + this.fontFamily, e);
            }
        }
        m24534d();
        this.f32014d = true;
        return this.f32015e;
    }

    public void getFontAsync(@NonNull Context context, @NonNull TextAppearanceFontCallback textAppearanceFontCallback) {
        if (m24535e(context)) {
            getFont(context);
        } else {
            m24534d();
        }
        int i = this.f32013c;
        if (i == 0) {
            this.f32014d = true;
        }
        if (this.f32014d) {
            textAppearanceFontCallback.onFontRetrieved(this.f32015e, true);
            return;
        }
        try {
            ResourcesCompat.getFont(context, i, new C5356a(textAppearanceFontCallback), null);
        } catch (Resources.NotFoundException unused) {
            this.f32014d = true;
            textAppearanceFontCallback.onFontRetrievalFailed(1);
        } catch (Exception e) {
            Log.d(f32007f, "Error loading font " + this.fontFamily, e);
            this.f32014d = true;
            textAppearanceFontCallback.onFontRetrievalFailed(-3);
        }
    }

    @Nullable
    public ColorStateList getTextColor() {
        return this.f32011a;
    }

    public float getTextSize() {
        return this.f32012b;
    }

    public void setTextColor(@Nullable ColorStateList colorStateList) {
        this.f32011a = colorStateList;
    }

    public void setTextSize(float f) {
        this.f32012b = f;
    }

    public void updateDrawState(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull TextAppearanceFontCallback textAppearanceFontCallback) {
        updateMeasureState(context, textPaint, textAppearanceFontCallback);
        ColorStateList colorStateList = this.f32011a;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        float f = this.shadowRadius;
        float f2 = this.shadowDx;
        float f3 = this.shadowDy;
        ColorStateList colorStateList2 = this.shadowColor;
        textPaint.setShadowLayer(f, f2, f3, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public void updateMeasureState(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull TextAppearanceFontCallback textAppearanceFontCallback) {
        if (m24535e(context)) {
            updateTextPaintMeasureState(context, textPaint, getFont(context));
        } else {
            getFontAsync(context, textPaint, textAppearanceFontCallback);
        }
    }

    public void updateTextPaintMeasureState(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull Typeface typeface) {
        Typeface maybeCopyWithFontWeightAdjustment = TypefaceUtils.maybeCopyWithFontWeightAdjustment(context, typeface);
        if (maybeCopyWithFontWeightAdjustment != null) {
            typeface = maybeCopyWithFontWeightAdjustment;
        }
        textPaint.setTypeface(typeface);
        int i = this.textStyle & (~typeface.getStyle());
        textPaint.setFakeBoldText((i & 1) != 0);
        textPaint.setTextSkewX((i & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f32012b);
        if (this.hasLetterSpacing) {
            textPaint.setLetterSpacing(this.letterSpacing);
        }
    }

    public void getFontAsync(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull TextAppearanceFontCallback textAppearanceFontCallback) {
        updateTextPaintMeasureState(context, textPaint, getFallbackFont());
        getFontAsync(context, new C5357b(context, textPaint, textAppearanceFontCallback));
    }
}
