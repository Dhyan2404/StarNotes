package com.onyx.android.sdk.universal.pdf.utils;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.HtmlUtils;
import com.onyx.android.sdk.neopdf.FontManager;
import com.onyx.android.sdk.neopdf.PdfTextRun;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeMatrixUtils;
import com.onyx.android.sdk.note.common.utils.StaticLayoutWrapper;
import com.onyx.android.sdk.note.common.utils.TextLayoutWrapperUtils;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.textbox.pdf.PdfTextRunCreateArgs;
import com.onyx.android.sdk.textbox.richtext.RichTextRun;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u00062\u0006\u0010\u0003\u001a\u00020\u0002J&\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u00062\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tJ\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\f2\u0006\u0010\b\u001a\u00020\u0002J\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\f2\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00050\f2\u0006\u0010\u0010\u001a\u00020\u000fJ8\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u00062\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J8\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u00062\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/pdf/utils/PdfTextRunUtils;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/neopdf/PdfTextRun;", "Lkotlin/collections/ArrayList;", "ensureLoadTextShapePdfTextRun", "textShape", "", "renderScale", "loadTextShapePdfTextRun", "", "loadRichTextPdfTextRun", "ensureLoadRichTextPdfTextRun", "Lcom/onyx/android/sdk/textbox/pdf/PdfTextRunCreateArgs;", "args", "createPdfTextRunListFromArgs", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "textStyle", "", "text", "a", "b", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPdfTextRunUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfTextRunUtils.kt\ncom/onyx/android/sdk/universal/pdf/utils/PdfTextRunUtils\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,224:1\n37#2,2:225\n37#2,2:227\n37#2,2:229\n37#2,2:231\n*S KotlinDebug\n*F\n+ 1 PdfTextRunUtils.kt\ncom/onyx/android/sdk/universal/pdf/utils/PdfTextRunUtils\n*L\n84#1:225,2\n129#1:227,2\n137#1:229,2\n211#1:231,2\n*E\n"})
/* loaded from: classes8.dex */
public final class PdfTextRunUtils {

    @NotNull
    public static final PdfTextRunUtils INSTANCE = new PdfTextRunUtils();

    /* renamed from: a */
    public final ArrayList<PdfTextRun> m41591a(Shape textShape, float renderScale, ShapeTextStyle textStyle, String text) {
        boolean isBlank;
        ArrayList arrayList = new ArrayList();
        isBlank = StringsKt__StringsJVMKt.isBlank(text);
        if (!isBlank) {
            TextLayoutWrapperUtils textLayoutWrapperUtils = TextLayoutWrapperUtils.INSTANCE;
            float fontBaseLineTranslate = textLayoutWrapperUtils.getFontBaseLineTranslate(textShape);
            StaticLayoutWrapper createTextLayout = textLayoutWrapperUtils.createTextLayout(textShape);
            int lineCount = createTextLayout.getLineCount();
            TouchPoint touchPoint = new TouchPoint(textShape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().get(0));
            touchPoint.mapMatrix(textShape.getShapeMatrix());
            touchPoint.scale(renderScale);
            for (int i = 0; i < lineCount; i++) {
                RectF rectF = new RectF();
                createTextLayout.getLineBounds(i, rectF);
                int lineStart = createTextLayout.getLineStart(i);
                int lineEnd = createTextLayout.getLineEnd(i);
                float lineDescent = createTextLayout.getLineDescent(i);
                for (int i2 = lineStart; i2 < lineEnd; i2++) {
                    char charAt = text.charAt(i2);
                    if (charAt != '\n' && charAt != '\r') {
                        PdfTextRun.RunChar runChar = new PdfTextRun.RunChar();
                        runChar.setLeft(createTextLayout.getPrimaryHorizontal(i2) + touchPoint.getX());
                        int i3 = i2 - 1;
                        if (i3 >= lineStart && Character.isHighSurrogate(text.charAt(i3))) {
                            runChar.setLeft(createTextLayout.getPrimaryHorizontal(i3) + touchPoint.getX());
                        }
                        runChar.setBaseline(((rectF.bottom + touchPoint.getY()) - lineDescent) + fontBaseLineTranslate);
                        runChar.setCh(charAt);
                        arrayList.add(runChar);
                    }
                }
            }
        }
        return PdfTextRun.INSTANCE.create((PdfTextRun.RunChar[]) arrayList.toArray(new PdfTextRun.RunChar[0]), textStyle.getFontFace(), textStyle.getTextSize(), textShape.getStrokeColor(), textStyle.getTextBold(), textStyle.getTextItalic(), textStyle.getTextUnderline(), new Function4<String[], String[], String[], int[], Boolean>() { // from class: com.onyx.android.sdk.universal.pdf.utils.PdfTextRunUtils$loadTextShapePdfTextRunForHorizontalLayout$1
            @Override // kotlin.jvm.functions.Function4
            @NotNull
            public final Boolean invoke(@NotNull String[] charList, @NotNull String[] fontList, @NotNull String[] substFontList, @NotNull int[] faceIndexList) {
                Intrinsics.checkNotNullParameter(charList, "charList");
                Intrinsics.checkNotNullParameter(fontList, "fontList");
                Intrinsics.checkNotNullParameter(substFontList, "substFontList");
                Intrinsics.checkNotNullParameter(faceIndexList, "faceIndexList");
                return Boolean.valueOf(FontManager.findSubstFonts(charList, fontList, substFontList, faceIndexList));
            }
        });
    }

    /* renamed from: b */
    public final ArrayList<PdfTextRun> m41592b(Shape textShape, float renderScale, ShapeTextStyle textStyle, String text) {
        PdfTextRun pdfTextRun = new PdfTextRun();
        StaticLayoutWrapper createTextLayout = TextLayoutWrapperUtils.INSTANCE.createTextLayout(textShape);
        int lineCount = createTextLayout.getLineCount();
        TouchPoint touchPoint = new TouchPoint(textShape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().get(0));
        touchPoint.mapMatrix(textShape.getShapeMatrix());
        touchPoint.scale(renderScale);
        ArrayList arrayList = new ArrayList();
        float f = -createTextLayout.getBaseLineHeight();
        float f2 = -createTextLayout.getDescentHeight();
        for (int i = 0; i < lineCount; i++) {
            int lineEnd = createTextLayout.getLineEnd(i);
            for (int lineStart = createTextLayout.getLineStart(i); lineStart < lineEnd; lineStart++) {
                char charAt = text.charAt(lineStart);
                if (charAt != '\n' && charAt != '\r') {
                    PdfTextRun.RunChar runChar = new PdfTextRun.RunChar();
                    if (createTextLayout.needRotate(charAt)) {
                        runChar.setRotation(90);
                        runChar.setLeft(touchPoint.getX() + f);
                        runChar.setBaseline(touchPoint.getY() + createTextLayout.getSecondaryHorizontal(lineStart));
                    } else {
                        runChar.setLeft(touchPoint.getX() + f2);
                        runChar.setBaseline(touchPoint.getY() + createTextLayout.getSecondaryHorizontal(lineStart) + createTextLayout.getFontWidth(charAt));
                    }
                    runChar.setCh(charAt);
                    arrayList.add(runChar);
                }
            }
            f -= createTextLayout.getLineHeight(i);
            f2 -= createTextLayout.getLineHeight(i);
        }
        pdfTextRun.setCharList((PdfTextRun.RunChar[]) arrayList.toArray(new PdfTextRun.RunChar[0]));
        pdfTextRun.setFontPath(textStyle.getFontFace());
        pdfTextRun.setFontColor(textShape.getStrokeColor());
        pdfTextRun.setFontSize(textStyle.getTextSize());
        pdfTextRun.setBold(textStyle.getTextBold());
        pdfTextRun.setItalic(textStyle.getTextItalic());
        pdfTextRun.setUnderline(textStyle.getTextUnderline());
        return PdfTextRun.INSTANCE.create((PdfTextRun.RunChar[]) arrayList.toArray(new PdfTextRun.RunChar[0]), textStyle.getFontFace(), textStyle.getTextSize(), textShape.getStrokeColor(), textStyle.getTextBold(), textStyle.getTextItalic(), textStyle.getTextUnderline(), new Function4<String[], String[], String[], int[], Boolean>() { // from class: com.onyx.android.sdk.universal.pdf.utils.PdfTextRunUtils$loadTextShapePdfTextRunForVerticalLayout$1
            @Override // kotlin.jvm.functions.Function4
            @NotNull
            public final Boolean invoke(@NotNull String[] charList, @NotNull String[] fontList, @NotNull String[] substFontList, @NotNull int[] faceIndexList) {
                Intrinsics.checkNotNullParameter(charList, "charList");
                Intrinsics.checkNotNullParameter(fontList, "fontList");
                Intrinsics.checkNotNullParameter(substFontList, "substFontList");
                Intrinsics.checkNotNullParameter(faceIndexList, "faceIndexList");
                return Boolean.valueOf(FontManager.findSubstFonts(charList, fontList, substFontList, faceIndexList));
            }
        });
    }

    @NotNull
    public final List<PdfTextRun> createPdfTextRunListFromArgs(@NotNull PdfTextRunCreateArgs args) {
        float baseline;
        float offsetY;
        Intrinsics.checkNotNullParameter(args, "args");
        ArrayList arrayList = new ArrayList();
        RichTextRun richTextRun = args.getRichTextRun();
        if (richTextRun == null) {
            return arrayList;
        }
        for (RichTextRun.TextRunChar textRunChar : richTextRun.getItems()) {
            int i = (!args.getIsVertical() || StringKt.isCJK(textRunChar.getText())) ? 0 : 90;
            if (i == 90) {
                baseline = textRunChar.getY() * args.getScaleY();
                offsetY = args.getOffsetY();
            } else {
                baseline = textRunChar.getBaseline() * args.getScaleY();
                offsetY = args.getOffsetY();
            }
            float f = baseline + offsetY;
            float x = textRunChar.getX() * args.getScaleX();
            RichTextRun.TextRunStyle style = textRunChar.getStyle();
            char[] chars = textRunChar.getChars();
            ArrayList arrayList2 = new ArrayList();
            for (char c : chars) {
                arrayList2.add(PdfTextRun.RunChar.INSTANCE.create(c, args.getOffsetX() + x, f, i));
            }
            arrayList.addAll(PdfTextRun.INSTANCE.create((PdfTextRun.RunChar[]) arrayList2.toArray(new PdfTextRun.RunChar[0]), style.getFontPath(), style.getFontSize(args.getCom.sunia.HTREnginev2.gon.J java.lang.String()) * args.getScaleX(), style.getColor(), style.isBold(), style.isItalic(), style.isUnderline(), new Function4<String[], String[], String[], int[], Boolean>() { // from class: com.onyx.android.sdk.universal.pdf.utils.PdfTextRunUtils$createPdfTextRunListFromArgs$pdfTextRuns$1
                @Override // kotlin.jvm.functions.Function4
                @NotNull
                public final Boolean invoke(@NotNull String[] charList, @NotNull String[] fontList, @NotNull String[] substFontList, @NotNull int[] faceIndexList) {
                    Intrinsics.checkNotNullParameter(charList, "charList");
                    Intrinsics.checkNotNullParameter(fontList, "fontList");
                    Intrinsics.checkNotNullParameter(substFontList, "substFontList");
                    Intrinsics.checkNotNullParameter(faceIndexList, "faceIndexList");
                    return Boolean.valueOf(FontManager.findSubstFonts(charList, fontList, substFontList, faceIndexList));
                }
            }));
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((PdfTextRun) it2.next()).setVertical(args.getIsVertical());
        }
        return arrayList;
    }

    @NotNull
    public final List<PdfTextRun> ensureLoadRichTextPdfTextRun(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (!(HtmlUtils.INSTANCE.getHtmlTextContent(shape.getRichText()).length() == 0)) {
            return loadRichTextPdfTextRun(shape);
        }
        String richText = shape.getRichText();
        shape.setRichText("t");
        List<PdfTextRun> loadRichTextPdfTextRun = loadRichTextPdfTextRun(shape);
        Iterator<PdfTextRun> it2 = loadRichTextPdfTextRun.iterator();
        while (it2.hasNext()) {
            it2.next().setCharList(new PdfTextRun.RunChar[0]);
        }
        shape.setRichText(richText);
        return loadRichTextPdfTextRun;
    }

    @NotNull
    public final ArrayList<PdfTextRun> ensureLoadTextShapePdfTextRun(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        String text = shape.getText();
        if (!(text == null || text.length() == 0)) {
            Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
            Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
            return loadTextShapePdfTextRun(shape, FLOAT_ONE.floatValue());
        }
        shape.setText("t");
        Float FLOAT_ONE2 = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE2, "FLOAT_ONE");
        ArrayList<PdfTextRun> loadTextShapePdfTextRun = loadTextShapePdfTextRun(shape, FLOAT_ONE2.floatValue());
        Iterator<PdfTextRun> it2 = loadTextShapePdfTextRun.iterator();
        while (it2.hasNext()) {
            it2.next().setCharList(new PdfTextRun.RunChar[0]);
        }
        shape.setText("");
        return loadTextShapePdfTextRun;
    }

    @NotNull
    public final List<PdfTextRun> loadRichTextPdfTextRun(@NotNull Shape textShape) {
        Intrinsics.checkNotNullParameter(textShape, "textShape");
        ShapeMatrixUtils shapeMatrixUtils = ShapeMatrixUtils.INSTANCE;
        RectF rectF = new RectF(textShape.getOriginRect());
        Matrix shapeMatrix = textShape.getShapeMatrix();
        if (shapeMatrix == null) {
            shapeMatrix = new Matrix();
        }
        RectF originRectF = shapeMatrixUtils.getTransformRect(rectF, shapeMatrix).getOriginRectF();
        RichTextRun loadRichRun = PdfRichTextUtils.INSTANCE.loadRichRun(textShape, originRectF);
        ShapeTextStyle textStyle = textShape.getTextStyle();
        if (textStyle == null) {
            textStyle = new ShapeTextStyle();
        }
        float maxScale = MatrixKt.getMaxScale(textShape.getShapeMatrix());
        return createPdfTextRunListFromArgs(PdfTextRunCreateArgs.INSTANCE.create(loadRichRun, maxScale, maxScale).setFontPath(FileUtils.INSTANCE.fileExist(textStyle.getFontFace()) ? textStyle.getFontFace() : "").setVertical(textStyle.isVertical()).setFontSize(textStyle.getTextSize()).setOffsetX(originRectF.left).setOffsetY(originRectF.top));
    }

    @NotNull
    public final ArrayList<PdfTextRun> loadTextShapePdfTextRun(@NotNull Shape textShape, float renderScale) {
        Intrinsics.checkNotNullParameter(textShape, "textShape");
        ShapeTextStyle textStyle = textShape.getTextStyle();
        if (textStyle == null) {
            return new ArrayList<>();
        }
        String text = textShape.getText();
        return text == null || text.length() == 0 ? new ArrayList<>() : textStyle.isVertical() ? m41592b(textShape, renderScale, textStyle, text) : m41591a(textShape, renderScale, textStyle, text);
    }
}
