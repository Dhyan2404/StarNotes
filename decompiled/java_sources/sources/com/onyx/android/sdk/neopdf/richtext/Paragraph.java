package com.onyx.android.sdk.neopdf.richtext;

import com.onyx.android.sdk.neopdf.richtext.style.RichTextStyle;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0019\u0010\u001aJ\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003J%\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;", "", "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "component1", "", "Lcom/onyx/android/sdk/neopdf/richtext/Span;", "component2", "style", "spans", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "getStyle", "()Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "b", "Ljava/util/List;", "getSpans", "()Ljava/util/List;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;Ljava/util/List;)V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class Paragraph {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @Nullable
    public final RichTextStyle style;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<Span> spans;

    /* JADX WARN: Multi-variable type inference failed */
    public Paragraph() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Paragraph copy$default(Paragraph paragraph, RichTextStyle richTextStyle, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            richTextStyle = paragraph.style;
        }
        if ((i & 2) != 0) {
            list = paragraph.spans;
        }
        return paragraph.copy(richTextStyle, list);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final RichTextStyle getStyle() {
        return this.style;
    }

    @NotNull
    public final List<Span> component2() {
        return this.spans;
    }

    @NotNull
    public final Paragraph copy(@Nullable RichTextStyle style, @NotNull List<Span> spans) {
        Intrinsics.checkNotNullParameter(spans, "spans");
        return new Paragraph(style, spans);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Paragraph)) {
            return false;
        }
        Paragraph paragraph = (Paragraph) other;
        return Intrinsics.areEqual(this.style, paragraph.style) && Intrinsics.areEqual(this.spans, paragraph.spans);
    }

    @NotNull
    public final List<Span> getSpans() {
        return this.spans;
    }

    @Nullable
    public final RichTextStyle getStyle() {
        return this.style;
    }

    public int hashCode() {
        RichTextStyle richTextStyle = this.style;
        return ((richTextStyle == null ? 0 : richTextStyle.hashCode()) * 31) + this.spans.hashCode();
    }

    @NotNull
    public String toString() {
        return "Paragraph(style=" + this.style + ", spans=" + this.spans + ')';
    }

    public Paragraph(@Nullable RichTextStyle richTextStyle, @NotNull List<Span> spans) {
        Intrinsics.checkNotNullParameter(spans, "spans");
        this.style = richTextStyle;
        this.spans = spans;
    }

    public /* synthetic */ Paragraph(RichTextStyle richTextStyle, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : richTextStyle, (i & 2) != 0 ? new ArrayList() : list);
    }
}
