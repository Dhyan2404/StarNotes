package com.onegravity.rteditor.converter.html;

import android.text.Spanned;
import com.onegravity.rteditor.api.format.RTFormat;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.converter.ConverterSpannedToHtml;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\b&\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0006\u001a\u00020\u000e\u0012\u0006\u0010\u0018\u001a\u00020\u0013\u0012\n\u0010\u001f\u001a\u00060\u0019j\u0002`\u001a¢\u0006\u0004\b%\u0010&J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J'\u0010\r\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0000¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0006\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0018\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001b\u0010\u001f\u001a\u00060\u0019j\u0002`\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR \u0010$\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#¨\u0006'"}, m61528d2 = {"Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;", "Lcom/onegravity/rteditor/converter/html/ISpannedToHtmlConverter;", "", "Lcom/onegravity/rteditor/api/media/RTImage;", "getImageList", "", "text", "", gon.f71290o0, "end", "", "escape$sdk_rteditor_release", "(Ljava/lang/CharSequence;II)Ljava/lang/String;", "escape", "Landroid/text/Spanned;", "a", "Landroid/text/Spanned;", "getText", "()Landroid/text/Spanned;", "Lcom/onegravity/rteditor/api/format/RTFormat;", "b", "Lcom/onegravity/rteditor/api/format/RTFormat;", "getFormat", "()Lcom/onegravity/rteditor/api/format/RTFormat;", Constants.ATTRNAME_FORMAT, "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "c", "Ljava/lang/StringBuilder;", "getOut", "()Ljava/lang/StringBuilder;", "out", "d", "Ljava/util/List;", "getImages$sdk_rteditor_release", "()Ljava/util/List;", MessageConst.KEY_IMAGES, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/text/Spanned;Lcom/onegravity/rteditor/api/format/RTFormat;Ljava/lang/StringBuilder;)V", "sdk-rteditor_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public abstract class BaseSpannedToHtmlConverter implements ISpannedToHtmlConverter {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Spanned text;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final RTFormat format;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final StringBuilder out;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final List<RTImage> images;

    public BaseSpannedToHtmlConverter(@NotNull Spanned text, @NotNull RTFormat format, @NotNull StringBuilder out) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(out, "out");
        this.text = text;
        this.format = format;
        this.out = out;
        this.images = new ArrayList();
    }

    @NotNull
    public final String escape$sdk_rteditor_release(@NotNull CharSequence text, int start, int end) {
        int i;
        Intrinsics.checkNotNullParameter(text, "text");
        StringBuilder sb = new StringBuilder();
        while (start < end) {
            char charAt = text.charAt(start);
            if (charAt == '\n') {
                sb.append(ConverterSpannedToHtml.f40174BR);
            } else if (charAt == '<') {
                sb.append("&lt;");
            } else if (charAt == '>') {
                sb.append("&gt;");
            } else if (charAt == '&') {
                sb.append("&amp;");
            } else if (charAt == 8203 && (i = start + 1) < end && text.charAt(i) != '\n') {
                sb.append("");
            } else if (charAt == ' ') {
                while (true) {
                    int i2 = start + 1;
                    if (i2 >= end || text.charAt(i2) != ' ') {
                        break;
                    }
                    sb.append(ConverterSpannedToHtml.NBSP);
                    start = i2;
                }
                sb.append(' ');
            } else if (Intrinsics.compare((int) charAt, 32) < 0) {
                sb.append("&#" + ((int) charAt) + ';');
            } else {
                sb.append(charAt);
            }
            start++;
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @NotNull
    public final RTFormat getFormat() {
        return this.format;
    }

    @Override // com.onegravity.rteditor.converter.html.ISpannedToHtmlConverter
    @NotNull
    public List<RTImage> getImageList() {
        return this.images;
    }

    @NotNull
    public final List<RTImage> getImages$sdk_rteditor_release() {
        return this.images;
    }

    @NotNull
    public final StringBuilder getOut() {
        return this.out;
    }

    @NotNull
    public final Spanned getText() {
        return this.text;
    }
}
