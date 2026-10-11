package com.onyx.android.sdk.neopdf.richtext;

import com.onyx.android.sdk.neopdf.richtext.style.RichTextStyle;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u001b\u0010\u001cJ\u0006\u0010\u0003\u001a\u00020\u0002J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\u001d\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u0006HÆ\u0001J\t\u0010\u000b\u001a\u00020\u0006HÖ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\"\u0010\t\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/richtext/Span;", "", "", "appendTextLineBreak", "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "component1", "", "component2", "style", "text", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "getStyle", "()Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getText", "()Ljava/lang/String;", "setText", "(Ljava/lang/String;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;Ljava/lang/String;)V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class Span {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final RichTextStyle style;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public String text;

    public Span(@NotNull RichTextStyle style, @NotNull String text) {
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(text, "text");
        this.style = style;
        this.text = text;
    }

    public static /* synthetic */ Span copy$default(Span span, RichTextStyle richTextStyle, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            richTextStyle = span.style;
        }
        if ((i & 2) != 0) {
            str = span.text;
        }
        return span.copy(richTextStyle, str);
    }

    public final void appendTextLineBreak() {
        this.text += '\r';
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final RichTextStyle getStyle() {
        return this.style;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getText() {
        return this.text;
    }

    @NotNull
    public final Span copy(@NotNull RichTextStyle style, @NotNull String text) {
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(text, "text");
        return new Span(style, text);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Span)) {
            return false;
        }
        Span span = (Span) other;
        return Intrinsics.areEqual(this.style, span.style) && Intrinsics.areEqual(this.text, span.text);
    }

    @NotNull
    public final RichTextStyle getStyle() {
        return this.style;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        return (this.style.hashCode() * 31) + this.text.hashCode();
    }

    public final void setText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.text = str;
    }

    @NotNull
    public String toString() {
        return "Span(style=" + this.style + ", text=" + this.text + ')';
    }
}
