package com.onegravity.rteditor.converter.html;

import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.SubscriptSpan;
import android.text.style.SuperscriptSpan;
import android.text.style.URLSpan;
import com.onegravity.rteditor.api.format.RTFormat;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.converter.tagsoup.util.StringEscapeUtils;
import com.onegravity.rteditor.spans.AudioSpan;
import com.onegravity.rteditor.spans.BoldSpan;
import com.onegravity.rteditor.spans.ImageSpan;
import com.onegravity.rteditor.spans.ItalicSpan;
import com.onegravity.rteditor.spans.LinkSpan;
import com.onegravity.rteditor.spans.TypefaceSpan;
import com.onegravity.rteditor.spans.UnderlineSpan;
import com.onegravity.rteditor.spans.VideoSpan;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.List;
import java.util.SortedSet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\n\u0010\u0014\u001a\u00060\u0012j\u0002`\u0013¢\u0006\u0004\b\u0015\u0010\u0016J&\u0010\t\u001a\u00020\b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0003H\u0002J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0003H\u0002¨\u0006\u0017"}, m61528d2 = {"Lcom/onegravity/rteditor/converter/html/DefaultSpannedToHtmlConverter;", "Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;", "Ljava/util/SortedSet;", "Landroid/text/style/CharacterStyle;", "spans", "", gon.f71290o0, "end", "", "convertText", "style", "", "b", "a", "Landroid/text/Spanned;", "text", "Lcom/onegravity/rteditor/api/format/RTFormat;", Constants.ATTRNAME_FORMAT, "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "out", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/text/Spanned;Lcom/onegravity/rteditor/api/format/RTFormat;Ljava/lang/StringBuilder;)V", "sdk-rteditor_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DefaultSpannedToHtmlConverter extends BaseSpannedToHtmlConverter {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultSpannedToHtmlConverter(@NotNull Spanned text, @NotNull RTFormat format, @NotNull StringBuilder out) {
        super(text, format, out);
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(out, "out");
    }

    /* renamed from: a */
    public final void m31616a(CharacterStyle style) {
        if (style instanceof URLSpan) {
            getOut().append("</a>");
            return;
        }
        if (style instanceof TypefaceSpan) {
            getOut().append("</font>");
            return;
        }
        if (style instanceof ForegroundColorSpan) {
            getOut().append("</font>");
            return;
        }
        if (style instanceof BackgroundColorSpan) {
            getOut().append("</font>");
            return;
        }
        if (style instanceof AbsoluteSizeSpan) {
            getOut().append("</font>");
            return;
        }
        if (style instanceof StrikethroughSpan) {
            getOut().append("</strike>");
            return;
        }
        if (style instanceof SubscriptSpan) {
            getOut().append("</sub>");
            return;
        }
        if (style instanceof SuperscriptSpan) {
            getOut().append("</sup>");
            return;
        }
        if (style instanceof UnderlineSpan) {
            getOut().append("</u>");
        } else if (style instanceof BoldSpan) {
            getOut().append("</b>");
        } else if (style instanceof ItalicSpan) {
            getOut().append("</i>");
        }
    }

    /* renamed from: b */
    public final boolean m31617b(CharacterStyle style) {
        if (style instanceof BoldSpan) {
            getOut().append("<b>");
            return true;
        }
        if (style instanceof ItalicSpan) {
            getOut().append("<i>");
            return true;
        }
        if (style instanceof UnderlineSpan) {
            getOut().append("<u>");
            return true;
        }
        if (style instanceof SuperscriptSpan) {
            getOut().append("<sup>");
            return true;
        }
        if (style instanceof SubscriptSpan) {
            getOut().append("<sub>");
            return true;
        }
        if (style instanceof StrikethroughSpan) {
            getOut().append("<strike>");
            return true;
        }
        if (style instanceof TypefaceSpan) {
            getOut().append("<font face=\"");
            getOut().append(StringEscapeUtils.escapeHtml4(((TypefaceSpan) style).getValue().getName()));
            getOut().append("\">");
            return true;
        }
        if (style instanceof AbsoluteSizeSpan) {
            int size = ((AbsoluteSizeSpan) style).getSize();
            getOut().append("<font ");
            StringBuilder out = getOut();
            out.append(com.onegravity.rteditor.utils.Constants.TAG_FONT_SIZE_COMPAT);
            out.append("=\"");
            out.append(size);
            out.append("px\" ");
            getOut().append("style=\"font-size:");
            getOut().append(size);
            getOut().append("px\">");
            return true;
        }
        if (style instanceof ForegroundColorSpan) {
            getOut().append("<font style=\"color:#");
            String hexString = Integer.toHexString(((ForegroundColorSpan) style).getForegroundColor());
            while (hexString.length() < 6) {
                hexString = '0' + hexString;
            }
            getOut().append(hexString);
            getOut().append("\">");
            return true;
        }
        if (style instanceof BackgroundColorSpan) {
            getOut().append("<font style=\"background-color:#");
            String hexString2 = Integer.toHexString(((BackgroundColorSpan) style).getBackgroundColor());
            while (hexString2.length() < 6) {
                hexString2 = '0' + hexString2;
            }
            getOut().append(hexString2);
            getOut().append("\">");
            return true;
        }
        if (style instanceof LinkSpan) {
            getOut().append("<a href=\"");
            StringBuilder out2 = getOut();
            Intrinsics.checkNotNull(style, "null cannot be cast to non-null type android.text.style.URLSpan");
            out2.append(((URLSpan) style).getURL());
            getOut().append("\">");
            return true;
        }
        if (style instanceof ImageSpan) {
            RTImage image = ((ImageSpan) style).getImage();
            List<RTImage> images$sdk_rteditor_release = getImages$sdk_rteditor_release();
            Intrinsics.checkNotNull(image);
            images$sdk_rteditor_release.add(image);
            String filePath = image.getFilePath(getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_FORMAT java.lang.String());
            getOut().append("<img src=\"" + filePath + "\">");
            return false;
        }
        if (style instanceof AudioSpan) {
            String filePath2 = ((AudioSpan) style).getAudio().getFilePath(getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_FORMAT java.lang.String());
            getOut().append("<embed src=\"" + filePath2 + "\">");
            return false;
        }
        if (!(style instanceof VideoSpan)) {
            return true;
        }
        String filePath3 = ((VideoSpan) style).getVideo().getFilePath(getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_FORMAT java.lang.String());
        getOut().append("<video controls src=\"" + filePath3 + "\">");
        return false;
    }

    @Override // com.onegravity.rteditor.converter.html.ISpannedToHtmlConverter
    public void convertText(@NotNull SortedSet<CharacterStyle> spans, int start, int end) {
        Intrinsics.checkNotNullParameter(spans, "spans");
        while (start < end) {
            CharacterStyle first = spans.isEmpty() ? null : spans.first();
            int spanStart = first == null ? Integer.MAX_VALUE : getText().getSpanStart(first);
            int spanEnd = first != null ? getText().getSpanEnd(first) : Integer.MAX_VALUE;
            if (start < spanStart) {
                getOut().append(escape$sdk_rteditor_release(getText(), start, Math.min(end, spanStart)));
                start = spanStart;
            } else {
                spans.remove(first);
                Intrinsics.checkNotNull(first);
                if (m31617b(first)) {
                    convertText(spans, Math.max(spanStart, start), Math.min(spanEnd, end));
                }
                m31616a(first);
                start = spanEnd;
            }
        }
    }
}
