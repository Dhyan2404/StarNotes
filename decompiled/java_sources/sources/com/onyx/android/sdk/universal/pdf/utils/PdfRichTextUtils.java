package com.onyx.android.sdk.universal.pdf.utils;

import android.graphics.RectF;
import androidx.annotation.WorkerThread;
import com.onyx.android.sdk.neopdf.richtext.Body;
import com.onyx.android.sdk.neopdf.richtext.NativeEditorHtmlFormatter;
import com.onyx.android.sdk.neopdf.richtext.style.RichTextStyle;
import com.onyx.android.sdk.neopdf.richtext.style.RichTextStyleBuilder;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.textbox.action.NativeTextRunAction;
import com.onyx.android.sdk.textbox.richtext.RichTextRun;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0016\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\b\u001a\u00020\u0007J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000bH\u0007J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0002J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\u0007H\u0002R \u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/pdf/utils/PdfRichTextUtils;", "", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "textStyle", "", "text", "buildHtml", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "textShape", "Lcom/onyx/android/sdk/neopdf/richtext/Body;", "parseHtml", "Landroid/graphics/RectF;", "boundingRect", "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;", "loadRichRun", "richText", "b", "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "a", "", "Ljava/util/Map;", "invalidTagMap", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PdfRichTextUtils {

    @NotNull
    public static final PdfRichTextUtils INSTANCE = new PdfRichTextUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Map<String, String> invalidTagMap;

    static {
        Map<String, String> mapOf;
        mapOf = MapsKt__MapsJVMKt.mapOf(new Pair(com.onegravity.rteditor.utils.Constants.TAG_BR_INVALID, "<br/>"));
        invalidTagMap = mapOf;
    }

    /* renamed from: a */
    public final RichTextStyle m41587a(Shape textShape) {
        ShapeTextStyle textStyle = textShape.getTextStyle();
        if (textStyle == null) {
            textStyle = new ShapeTextStyle();
        }
        RichTextStyleBuilder richTextStyleBuilder = new RichTextStyleBuilder();
        richTextStyleBuilder.setColor(textShape.getStrokeColor());
        richTextStyleBuilder.setFontSize(textStyle.getTextSize());
        richTextStyleBuilder.setLineHeight(textStyle.getTextSpacing());
        return richTextStyleBuilder.build();
    }

    /* renamed from: b */
    public final String m41588b(String richText) {
        Document parse = Jsoup.parse(richText);
        parse.outputSettings().prettyPrint(false);
        String html = parse.html();
        String str = html;
        for (Map.Entry<String, String> entry : invalidTagMap.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            Intrinsics.checkNotNull(str);
            str = StringsKt__StringsJVMKt.replace$default(str, key, value, false, 4, (Object) null);
        }
        Intrinsics.checkNotNull(str);
        return str;
    }

    @NotNull
    public final String buildHtml(@NotNull ShapeTextStyle textStyle, @NotNull String text) {
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        Intrinsics.checkNotNullParameter(text, "text");
        return "<html><body><div>" + text + "</div></body></html>";
    }

    @WorkerThread
    @Nullable
    public final RichTextRun loadRichRun(@NotNull Shape textShape, @NotNull RectF boundingRect) {
        Intrinsics.checkNotNullParameter(textShape, "textShape");
        Intrinsics.checkNotNullParameter(boundingRect, "boundingRect");
        return new NativeTextRunAction(textShape).getRichTextRun();
    }

    @Nullable
    public final Body parseHtml(@NotNull Shape textShape) {
        Intrinsics.checkNotNullParameter(textShape, "textShape");
        ShapeTextStyle textStyle = textShape.getTextStyle();
        if (textStyle == null) {
            textStyle = new ShapeTextStyle();
        }
        String richText = textShape.getRichText();
        if (richText == null) {
            richText = "";
        }
        return NativeEditorHtmlFormatter.INSTANCE.parseHtml(m41588b(buildHtml(textStyle, richText)), m41587a(textShape));
    }
}
