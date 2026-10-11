package com.onyx.android.sdk.neopdf.richtext;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.neopdf.richtext.style.RichTextStyle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/richtext/SpanBuilder;", "", "Lcom/onyx/android/sdk/neopdf/richtext/Span;", PrivilegedApp.f6529f, "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "style", "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "getStyle", "()Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "setStyle", "(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)V", "", "a", Constants.STRING_SIG, "getText", "()Ljava/lang/String;", "setText", "(Ljava/lang/String;)V", "text", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class SpanBuilder {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String text = "";
    public RichTextStyle style;

    @NotNull
    public final Span build() {
        return new Span(getStyle(), this.text);
    }

    @NotNull
    public final RichTextStyle getStyle() {
        RichTextStyle richTextStyle = this.style;
        if (richTextStyle != null) {
            return richTextStyle;
        }
        Intrinsics.throwUninitializedPropertyAccessException("style");
        return null;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    public final void setStyle(@NotNull RichTextStyle richTextStyle) {
        Intrinsics.checkNotNullParameter(richTextStyle, "<set-?>");
        this.style = richTextStyle;
    }

    public final void setText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.text = str;
    }
}
