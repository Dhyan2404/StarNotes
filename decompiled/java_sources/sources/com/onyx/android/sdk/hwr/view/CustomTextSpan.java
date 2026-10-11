package com.onyx.android.sdk.hwr.view;

import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.TextAppearanceSpan;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B1\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u0010\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0012\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/view/CustomTextSpan;", "Landroid/text/style/TextAppearanceSpan;", "typeface", "Landroid/graphics/Typeface;", "style", "", "size", "color", "Landroid/content/res/ColorStateList;", "linkColor", "(Landroid/graphics/Typeface;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V", "applyCustomTypeFace", "", "ds", "Landroid/text/TextPaint;", "updateDrawState", "updateMeasureState", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CustomTextSpan extends TextAppearanceSpan {

    @JvmField
    @NotNull
    public Typeface typeface;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomTextSpan(@NotNull Typeface typeface, int i, int i2, @NotNull ColorStateList color, @Nullable ColorStateList colorStateList) {
        super("", i, i2, color, colorStateList);
        Intrinsics.checkNotNullParameter(typeface, "typeface");
        Intrinsics.checkNotNullParameter(color, "color");
        this.typeface = typeface;
    }

    private final void applyCustomTypeFace(TextPaint ds) {
        Typeface create;
        int textStyle = getTextStyle();
        if (this.typeface != null || textStyle != 0) {
            Typeface typeface = ds.getTypeface();
            Intrinsics.checkNotNull(typeface);
            int style = textStyle | (typeface != null ? typeface.getStyle() : 0);
            Typeface typeface2 = this.typeface;
            if (typeface2 != null) {
                create = Typeface.create(typeface2, style);
                Intrinsics.checkNotNullExpressionValue(create, "create(...)");
            } else if (typeface == null) {
                create = Typeface.defaultFromStyle(style);
                Intrinsics.checkNotNullExpressionValue(create, "defaultFromStyle(...)");
            } else {
                create = Typeface.create(typeface, style);
                Intrinsics.checkNotNullExpressionValue(create, "create(...)");
            }
            int i = style & (~create.getStyle());
            if ((i & 1) != 0) {
                ds.setFakeBoldText(true);
            }
            if ((i & 2) != 0) {
                ds.setTextSkewX(-0.25f);
            }
            ds.setTypeface(create);
        }
        int textSize = getTextSize();
        if (textSize > 0) {
            ds.setTextSize(textSize);
        }
    }

    @Override // android.text.style.TextAppearanceSpan, android.text.style.CharacterStyle
    public void updateDrawState(@NotNull TextPaint ds) {
        Intrinsics.checkNotNullParameter(ds, "ds");
        applyCustomTypeFace(ds);
        ColorStateList textColor = getTextColor();
        if (textColor != null) {
            ds.setColor(textColor.getColorForState(ds.drawableState, 0));
        }
        ColorStateList linkTextColor = getLinkTextColor();
        if (linkTextColor != null) {
            ds.linkColor = linkTextColor.getColorForState(ds.drawableState, 0);
        }
    }

    @Override // android.text.style.TextAppearanceSpan, android.text.style.MetricAffectingSpan
    public void updateMeasureState(@NotNull TextPaint ds) {
        Intrinsics.checkNotNullParameter(ds, "ds");
        applyCustomTypeFace(ds);
    }
}
