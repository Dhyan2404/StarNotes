package com.onyx.android.sdk.neopdf.richtext;

import com.onyx.android.sdk.neopdf.richtext.style.RichTextStyle;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0018\u0010\u0019J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003J!\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/richtext/Body;", "", "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "component1", "Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;", "component2", "style", "paragraph", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "getStyle", "()Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "b", "Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;", "getParagraph", "()Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;)V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class Body {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @Nullable
    public final RichTextStyle style;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public final Paragraph paragraph;

    /* JADX WARN: Multi-variable type inference failed */
    public Body() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ Body copy$default(Body body, RichTextStyle richTextStyle, Paragraph paragraph, int i, Object obj) {
        if ((i & 1) != 0) {
            richTextStyle = body.style;
        }
        if ((i & 2) != 0) {
            paragraph = body.paragraph;
        }
        return body.copy(richTextStyle, paragraph);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final RichTextStyle getStyle() {
        return this.style;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final Paragraph getParagraph() {
        return this.paragraph;
    }

    @NotNull
    public final Body copy(@Nullable RichTextStyle style, @Nullable Paragraph paragraph) {
        return new Body(style, paragraph);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Body)) {
            return false;
        }
        Body body = (Body) other;
        return Intrinsics.areEqual(this.style, body.style) && Intrinsics.areEqual(this.paragraph, body.paragraph);
    }

    @Nullable
    public final Paragraph getParagraph() {
        return this.paragraph;
    }

    @Nullable
    public final RichTextStyle getStyle() {
        return this.style;
    }

    public int hashCode() {
        RichTextStyle richTextStyle = this.style;
        int hashCode = (richTextStyle == null ? 0 : richTextStyle.hashCode()) * 31;
        Paragraph paragraph = this.paragraph;
        return hashCode + (paragraph != null ? paragraph.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "Body(style=" + this.style + ", paragraph=" + this.paragraph + ')';
    }

    public Body(@Nullable RichTextStyle richTextStyle, @Nullable Paragraph paragraph) {
        this.style = richTextStyle;
        this.paragraph = paragraph;
    }

    public /* synthetic */ Body(RichTextStyle richTextStyle, Paragraph paragraph, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : richTextStyle, (i & 2) != 0 ? null : paragraph);
    }
}
