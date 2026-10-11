package com.onyx.android.sdk.universal.pdf.utils;

import android.graphics.Bitmap;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.neopdf.PdfRichTextBuilder;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.neopdf.PdfTextRun;
import com.onyx.android.sdk.neopdf.richtext.Body;
import com.onyx.android.sdk.neopdf.richtext.Paragraph;
import com.onyx.android.sdk.neopdf.richtext.RichTextXmlFormatter;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeArgs;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bJ\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000b\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;", "embedShapeArgs", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "createPdfShape", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "shapeBean", "pdfShape", "textShape", "", "b", "Lcom/onyx/android/sdk/neopdf/richtext/Body;", "body", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPdfShapeUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfShapeUtils.kt\ncom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,75:1\n37#2,2:76\n*S KotlinDebug\n*F\n+ 1 PdfShapeUtils.kt\ncom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils\n*L\n58#1:76,2\n*E\n"})
/* loaded from: classes8.dex */
public final class PdfShapeUtils {

    @NotNull
    public static final PdfShapeUtils INSTANCE = new PdfShapeUtils();

    /* renamed from: a */
    public final String m41589a(Shape textShape, Body body) {
        if (body == null) {
            Debug.INSTANCE.m32044e(PdfShapeUtils.class, "TextRendererHtmlFormatter parse html failed: " + textShape.getRichText(), new Object[0]);
            return textShape.getText();
        }
        StringBuilder sb = new StringBuilder();
        Paragraph paragraph = body.getParagraph();
        Intrinsics.checkNotNull(paragraph);
        int size = paragraph.getSpans().size();
        for (int i = 0; i < size; i++) {
            Paragraph paragraph2 = body.getParagraph();
            Intrinsics.checkNotNull(paragraph2);
            sb.append(paragraph2.getSpans().get(i).getText());
        }
        return sb.toString();
    }

    /* renamed from: b */
    public final void m41590b(PdfShapeInfo pdfShape, Shape textShape) {
        List<PdfTextRun> list;
        Bitmap bitmap = pdfShape.getBitmap();
        if (bitmap != null && BitmapKt.isValid(bitmap)) {
            return;
        }
        if (textShape.getShapeUniqueId().length() == 0) {
            PdfTextRunUtils pdfTextRunUtils = PdfTextRunUtils.INSTANCE;
            Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
            Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
            list = pdfTextRunUtils.loadTextShapePdfTextRun(textShape, FLOAT_ONE.floatValue());
            pdfShape.setRichText(PdfRichTextBuilder.INSTANCE.createFromFreeTextShape(pdfShape).build());
        } else {
            Body parseHtml = PdfRichTextUtils.INSTANCE.parseHtml(textShape);
            List<PdfTextRun> loadRichTextPdfTextRun = PdfTextRunUtils.INSTANCE.loadRichTextPdfTextRun(textShape);
            pdfShape.setText(m41589a(textShape, parseHtml));
            pdfShape.setRichText(parseHtml == null ? "" : RichTextXmlFormatter.INSTANCE.formatRichTextString(parseHtml));
            list = loadRichTextPdfTextRun;
        }
        pdfShape.setTextRuns((PdfTextRun[]) list.toArray(new PdfTextRun[0]));
    }

    @NotNull
    public final PdfShapeInfo createPdfShape(@NotNull Shape shape, @NotNull EmbedShapeArgs embedShapeArgs) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(embedShapeArgs, "embedShapeArgs");
        EmbedShapeBean fromShape = EmbedShapeBean.INSTANCE.fromShape(shape, embedShapeArgs.getRenderMatrix());
        fromShape.setShowExcerptIndicator(AppConfig.INSTANCE.getRenderExcerptIndicatorInPdf());
        return createPdfShape(shape, fromShape);
    }

    @NotNull
    public final PdfShapeInfo createPdfShape(@NotNull Shape shape, @NotNull EmbedShapeBean shapeBean) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(shapeBean, "shapeBean");
        PdfShapeInfo pdfShape = shape.toPdfShape(shapeBean);
        if (shapeBean.getShapeType() == 16) {
            m41590b(pdfShape, EmbedShapeBean.INSTANCE.toShape(shapeBean));
        }
        return pdfShape;
    }
}
