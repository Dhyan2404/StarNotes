package com.onyx.android.sdk.neopdf.richtext;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.neopdf.richtext.style.RichTextStyle;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0006\u0010\u0003\u001a\u00020\u0002R$\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR(\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/richtext/ParagraphBuilder;", "", "Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;", PrivilegedApp.f6529f, "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "a", "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "getStyle", "()Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "setStyle", "(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)V", "style", "", "Lcom/onyx/android/sdk/neopdf/richtext/Span;", "b", "Ljava/util/List;", "getSpans", "()Ljava/util/List;", "setSpans", "(Ljava/util/List;)V", "spans", Constants.CONSTRUCTOR_NAME, "()V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class ParagraphBuilder {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public RichTextStyle style;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<Span> spans = new ArrayList();

    @NotNull
    public final Paragraph build() {
        return new Paragraph(this.style, this.spans);
    }

    @NotNull
    public final List<Span> getSpans() {
        return this.spans;
    }

    @Nullable
    public final RichTextStyle getStyle() {
        return this.style;
    }

    public final void setSpans(@NotNull List<Span> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.spans = list;
    }

    public final void setStyle(@Nullable RichTextStyle richTextStyle) {
        this.style = richTextStyle;
    }
}
