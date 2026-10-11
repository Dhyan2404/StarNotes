package com.onyx.android.sdk.neopdf.richtext.style;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b'\b\u0086\b\u0018\u0000 G2\u00020\u0001:\u0001GBa\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0017\u001a\u00020\t\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0019\u001a\u00020\r\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0011¢\u0006\u0004\bE\u0010FJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\t\u0010\n\u001a\u00020\tHÆ\u0003J\t\u0010\f\u001a\u00020\u000bHÆ\u0003J\t\u0010\u000e\u001a\u00020\rHÆ\u0003J\t\u0010\u0010\u001a\u00020\u000fHÆ\u0003J\t\u0010\u0012\u001a\u00020\u0011HÆ\u0003Jc\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0013\u001a\u00020\u00022\b\b\u0002\u0010\u0014\u001a\u00020\u00042\b\b\u0002\u0010\u0015\u001a\u00020\u00042\b\b\u0002\u0010\u0016\u001a\u00020\u00072\b\b\u0002\u0010\u0017\u001a\u00020\t2\b\b\u0002\u0010\u0018\u001a\u00020\u000b2\b\b\u0002\u0010\u0019\u001a\u00020\r2\b\b\u0002\u0010\u001a\u001a\u00020\u000f2\b\b\u0002\u0010\u001b\u001a\u00020\u0011HÆ\u0001J\t\u0010\u001e\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001f\u001a\u00020\rHÖ\u0001J\u0013\u0010\"\u001a\u00020!2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0013\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0017\u0010\u0014\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0017\u0010\u0015\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b+\u0010(\u001a\u0004\b,\u0010*R\u0017\u0010\u0016\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u0017\u0010\u0017\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\u0017\u0010\u0018\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b5\u00106\u001a\u0004\b7\u00108R\u0017\u0010\u0019\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R\u0017\u0010\u001a\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@R\u0017\u0010\u001b\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D¨\u0006H"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "", "Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;", "component1", "", "component2", "component3", "Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;", "component4", "Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;", "component5", "Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;", "component6", "", "component7", "Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;", "component8", "Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;", "component9", gon.f71264Q, gon.f71257J, "lineHeight", gon.f71256I, gon.f71259L, gon.f71258K, "color", gon.f71263P, "fontStretch", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;", "getTextAlign", "()Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;", "b", "F", "getFontSize", "()F", "c", "getLineHeight", "d", "Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;", "getFontStyle", "()Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;", "e", "Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;", "getFontWeight", "()Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;", C6997f.f39671c, "Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;", "getFontFamily", "()Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;", C6998g.f39679a, "I", "getColor", "()I", C6999h.f39688c, "Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;", "getTextDecoration", "()Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;", "i", "Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;", "getFontStretch", "()Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;FFLcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;ILcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;)V", "Companion", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class RichTextStyle {
    public static final float DEFAULT_FONT_SIZE = 12.0f;

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final TextAlign textAlign;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final float fontSize;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final float lineHeight;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public final FontStyle fontStyle;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    @NotNull
    public final FontWeight fontWeight;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    @NotNull
    public final FontFamily fontFamily;

    /* renamed from: g, reason: from kotlin metadata and from toString */
    public final int color;

    /* renamed from: h, reason: from kotlin metadata and from toString */
    @NotNull
    public final TextDecoration textDecoration;

    /* renamed from: i, reason: from kotlin metadata and from toString */
    @NotNull
    public final FontStretch fontStretch;

    public RichTextStyle() {
        this(null, 0.0f, 0.0f, null, null, null, 0, null, null, 511, null);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final TextAlign getTextAlign() {
        return this.textAlign;
    }

    /* renamed from: component2, reason: from getter */
    public final float getFontSize() {
        return this.fontSize;
    }

    /* renamed from: component3, reason: from getter */
    public final float getLineHeight() {
        return this.lineHeight;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final FontStyle getFontStyle() {
        return this.fontStyle;
    }

    @NotNull
    /* renamed from: component5, reason: from getter */
    public final FontWeight getFontWeight() {
        return this.fontWeight;
    }

    @NotNull
    /* renamed from: component6, reason: from getter */
    public final FontFamily getFontFamily() {
        return this.fontFamily;
    }

    /* renamed from: component7, reason: from getter */
    public final int getColor() {
        return this.color;
    }

    @NotNull
    /* renamed from: component8, reason: from getter */
    public final TextDecoration getTextDecoration() {
        return this.textDecoration;
    }

    @NotNull
    /* renamed from: component9, reason: from getter */
    public final FontStretch getFontStretch() {
        return this.fontStretch;
    }

    @NotNull
    public final RichTextStyle copy(@NotNull TextAlign textAlign, float fontSize, float lineHeight, @NotNull FontStyle fontStyle, @NotNull FontWeight fontWeight, @NotNull FontFamily fontFamily, int color, @NotNull TextDecoration textDecoration, @NotNull FontStretch fontStretch) {
        Intrinsics.checkNotNullParameter(textAlign, "textAlign");
        Intrinsics.checkNotNullParameter(fontStyle, "fontStyle");
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        Intrinsics.checkNotNullParameter(fontFamily, "fontFamily");
        Intrinsics.checkNotNullParameter(textDecoration, "textDecoration");
        Intrinsics.checkNotNullParameter(fontStretch, "fontStretch");
        return new RichTextStyle(textAlign, fontSize, lineHeight, fontStyle, fontWeight, fontFamily, color, textDecoration, fontStretch);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RichTextStyle)) {
            return false;
        }
        RichTextStyle richTextStyle = (RichTextStyle) other;
        return this.textAlign == richTextStyle.textAlign && Float.compare(this.fontSize, richTextStyle.fontSize) == 0 && Float.compare(this.lineHeight, richTextStyle.lineHeight) == 0 && this.fontStyle == richTextStyle.fontStyle && this.fontWeight == richTextStyle.fontWeight && Intrinsics.areEqual(this.fontFamily, richTextStyle.fontFamily) && this.color == richTextStyle.color && this.textDecoration == richTextStyle.textDecoration && this.fontStretch == richTextStyle.fontStretch;
    }

    public final int getColor() {
        return this.color;
    }

    @NotNull
    public final FontFamily getFontFamily() {
        return this.fontFamily;
    }

    public final float getFontSize() {
        return this.fontSize;
    }

    @NotNull
    public final FontStretch getFontStretch() {
        return this.fontStretch;
    }

    @NotNull
    public final FontStyle getFontStyle() {
        return this.fontStyle;
    }

    @NotNull
    public final FontWeight getFontWeight() {
        return this.fontWeight;
    }

    public final float getLineHeight() {
        return this.lineHeight;
    }

    @NotNull
    public final TextAlign getTextAlign() {
        return this.textAlign;
    }

    @NotNull
    public final TextDecoration getTextDecoration() {
        return this.textDecoration;
    }

    public int hashCode() {
        return (((((((((((((((this.textAlign.hashCode() * 31) + Float.hashCode(this.fontSize)) * 31) + Float.hashCode(this.lineHeight)) * 31) + this.fontStyle.hashCode()) * 31) + this.fontWeight.hashCode()) * 31) + this.fontFamily.hashCode()) * 31) + Integer.hashCode(this.color)) * 31) + this.textDecoration.hashCode()) * 31) + this.fontStretch.hashCode();
    }

    @NotNull
    public String toString() {
        return "RichTextStyle(textAlign=" + this.textAlign + ", fontSize=" + this.fontSize + ", lineHeight=" + this.lineHeight + ", fontStyle=" + this.fontStyle + ", fontWeight=" + this.fontWeight + ", fontFamily=" + this.fontFamily + ", color=" + this.color + ", textDecoration=" + this.textDecoration + ", fontStretch=" + this.fontStretch + ')';
    }

    public RichTextStyle(@NotNull TextAlign textAlign, float f, float f2, @NotNull FontStyle fontStyle, @NotNull FontWeight fontWeight, @NotNull FontFamily fontFamily, int i, @NotNull TextDecoration textDecoration, @NotNull FontStretch fontStretch) {
        Intrinsics.checkNotNullParameter(textAlign, "textAlign");
        Intrinsics.checkNotNullParameter(fontStyle, "fontStyle");
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        Intrinsics.checkNotNullParameter(fontFamily, "fontFamily");
        Intrinsics.checkNotNullParameter(textDecoration, "textDecoration");
        Intrinsics.checkNotNullParameter(fontStretch, "fontStretch");
        this.textAlign = textAlign;
        this.fontSize = f;
        this.lineHeight = f2;
        this.fontStyle = fontStyle;
        this.fontWeight = fontWeight;
        this.fontFamily = fontFamily;
        this.color = i;
        this.textDecoration = textDecoration;
        this.fontStretch = fontStretch;
    }

    public /* synthetic */ RichTextStyle(TextAlign textAlign, float f, float f2, FontStyle fontStyle, FontWeight fontWeight, FontFamily fontFamily, int i, TextDecoration textDecoration, FontStretch fontStretch, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? TextAlign.LEFT : textAlign, (i2 & 2) != 0 ? 12.0f : f, (i2 & 4) != 0 ? 1.0f : f2, (i2 & 8) != 0 ? FontStyle.NORMAL : fontStyle, (i2 & 16) != 0 ? FontWeight.NORMAL : fontWeight, (i2 & 32) != 0 ? new FontFamily() : fontFamily, (i2 & 64) != 0 ? -16777216 : i, (i2 & 128) != 0 ? TextDecoration.NORMAL : textDecoration, (i2 & 256) != 0 ? FontStretch.NORMAL : fontStretch);
    }
}
