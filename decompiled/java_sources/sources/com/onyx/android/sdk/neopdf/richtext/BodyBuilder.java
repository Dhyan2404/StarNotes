package com.onyx.android.sdk.neopdf.richtext;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.neopdf.richtext.style.RichTextStyle;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0006\u0010\u0003\u001a\u00020\u0002R$\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR$\u0010\u0013\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/richtext/BodyBuilder;", "", "Lcom/onyx/android/sdk/neopdf/richtext/Body;", PrivilegedApp.f6529f, "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "a", "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "getStyle", "()Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "setStyle", "(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)V", "style", "Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;", "b", "Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;", "getParagraph", "()Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;", "setParagraph", "(Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;)V", "paragraph", Constants.CONSTRUCTOR_NAME, "()V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BodyBuilder {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public RichTextStyle style;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public Paragraph paragraph;

    @NotNull
    public final Body build() {
        return new Body(this.style, this.paragraph);
    }

    @Nullable
    public final Paragraph getParagraph() {
        return this.paragraph;
    }

    @Nullable
    public final RichTextStyle getStyle() {
        return this.style;
    }

    public final void setParagraph(@Nullable Paragraph paragraph) {
        this.paragraph = paragraph;
    }

    public final void setStyle(@Nullable RichTextStyle richTextStyle) {
        this.style = richTextStyle;
    }
}
