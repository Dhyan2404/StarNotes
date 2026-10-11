package com.onyx.android.sdk.ocr.utils;

import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.mlkit.vision.text.Text;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.ocr.data.model.OcrText;
import com.onyx.android.sdk.ocr.data.model.OcrTextBlock;
import com.onyx.android.sdk.ocr.data.model.OcrTextElement;
import com.onyx.android.sdk.ocr.data.model.OcrTextLine;
import com.onyx.android.sdk.ocr.data.model.OcrTextSymbol;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0002J\f\u0010\u0007\u001a\u00020\u0006*\u00020\u0005H\u0002J\f\u0010\n\u001a\u00020\t*\u00020\bH\u0002J\f\u0010\r\u001a\u00020\f*\u00020\u000bH\u0002J\f\u0010\u0010\u001a\u00020\u000f*\u00020\u000eH\u0002J!\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013*\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0019\u001a\u00020\u0018*\u0004\u0018\u00010\u0017H\u0002¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;", "", "Lcom/google/mlkit/vision/text/Text;", "Lcom/onyx/android/sdk/ocr/data/model/OcrText;", "convert", "Lcom/google/mlkit/vision/text/Text$TextBlock;", "Lcom/onyx/android/sdk/ocr/data/model/OcrTextBlock;", "b", "Lcom/google/mlkit/vision/text/Text$Line;", "Lcom/onyx/android/sdk/ocr/data/model/OcrTextLine;", "d", "Lcom/google/mlkit/vision/text/Text$Element;", "Lcom/onyx/android/sdk/ocr/data/model/OcrTextElement;", "c", "Lcom/google/mlkit/vision/text/Text$Symbol;", "Lcom/onyx/android/sdk/ocr/data/model/OcrTextSymbol;", "e", "", "Landroid/graphics/Point;", "", "Landroid/graphics/PointF;", C6997f.f39671c, "([Landroid/graphics/Point;)Ljava/util/List;", "Landroid/graphics/Rect;", "Landroid/graphics/RectF;", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-ocr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nGoogleOcrUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleOcrUtils.kt\ncom/onyx/android/sdk/ocr/utils/GoogleOcrUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 4 Point.kt\nandroidx/core/graphics/PointKt\n+ 5 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,84:1\n1549#2:85\n1620#2,3:86\n1549#2:89\n1620#2,3:90\n1549#2:93\n1620#2,3:94\n1549#2:97\n1620#2,3:98\n1549#2:102\n1620#2,2:103\n1622#2:106\n26#3:101\n159#4:105\n337#5:107\n*S KotlinDebug\n*F\n+ 1 GoogleOcrUtils.kt\ncom/onyx/android/sdk/ocr/utils/GoogleOcrUtils\n*L\n26#1:85\n26#1:86,3\n36#1:89\n36#1:90,3\n48#1:93\n48#1:94,3\n60#1:97\n60#1:98,3\n77#1:102\n77#1:103,2\n77#1:106\n76#1:101\n77#1:105\n82#1:107\n*E\n"})
/* loaded from: classes8.dex */
public final class GoogleOcrUtils {

    @NotNull
    public static final GoogleOcrUtils INSTANCE = new GoogleOcrUtils();

    /* renamed from: a */
    public final RectF m34234a(Rect rect) {
        if (rect == null) {
            rect = new Rect();
        }
        return new RectF(rect);
    }

    /* renamed from: b */
    public final OcrTextBlock m34235b(Text.TextBlock textBlock) {
        int collectionSizeOrDefault;
        List<OcrTextLine> mutableList;
        OcrTextBlock ocrTextBlock = new OcrTextBlock();
        String text = textBlock.getText();
        Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
        ocrTextBlock.setText(text);
        ocrTextBlock.setCornerPoints(m34239f(textBlock.getCornerPoints()));
        ocrTextBlock.setBoundingBox(m34234a(textBlock.getBoundingBox()));
        List<Text.Line> lines = textBlock.getLines();
        Intrinsics.checkNotNullExpressionValue(lines, "getLines(...)");
        List<Text.Line> list = lines;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Text.Line line : list) {
            GoogleOcrUtils googleOcrUtils = INSTANCE;
            Intrinsics.checkNotNull(line);
            arrayList.add(googleOcrUtils.m34237d(line));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        ocrTextBlock.setLines(mutableList);
        return ocrTextBlock;
    }

    /* renamed from: c */
    public final OcrTextElement m34236c(Text.Element element) {
        int collectionSizeOrDefault;
        List<OcrTextSymbol> mutableList;
        OcrTextElement ocrTextElement = new OcrTextElement();
        String text = element.getText();
        Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
        ocrTextElement.setText(text);
        ocrTextElement.setAngle(element.getAngle());
        ocrTextElement.setConfidence(element.getConfidence());
        ocrTextElement.setCornerPoints(m34239f(element.getCornerPoints()));
        ocrTextElement.setBoundingBox(m34234a(element.getBoundingBox()));
        List<Text.Symbol> symbols = element.getSymbols();
        Intrinsics.checkNotNullExpressionValue(symbols, "getSymbols(...)");
        List<Text.Symbol> list = symbols;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Text.Symbol symbol : list) {
            GoogleOcrUtils googleOcrUtils = INSTANCE;
            Intrinsics.checkNotNull(symbol);
            arrayList.add(googleOcrUtils.m34238e(symbol));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        ocrTextElement.setSymbols(mutableList);
        return ocrTextElement;
    }

    @NotNull
    public final OcrText convert(@NotNull Text text) {
        int collectionSizeOrDefault;
        List<OcrTextBlock> mutableList;
        Intrinsics.checkNotNullParameter(text, "<this>");
        OcrText ocrText = new OcrText();
        String text2 = text.getText();
        Intrinsics.checkNotNullExpressionValue(text2, "getText(...)");
        ocrText.setText(text2);
        List<Text.TextBlock> textBlocks = text.getTextBlocks();
        Intrinsics.checkNotNullExpressionValue(textBlocks, "getTextBlocks(...)");
        List<Text.TextBlock> list = textBlocks;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Text.TextBlock textBlock : list) {
            GoogleOcrUtils googleOcrUtils = INSTANCE;
            Intrinsics.checkNotNull(textBlock);
            arrayList.add(googleOcrUtils.m34235b(textBlock));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        ocrText.setBlocks(mutableList);
        return ocrText;
    }

    /* renamed from: d */
    public final OcrTextLine m34237d(Text.Line line) {
        int collectionSizeOrDefault;
        List<OcrTextElement> mutableList;
        OcrTextLine ocrTextLine = new OcrTextLine();
        String text = line.getText();
        Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
        ocrTextLine.setText(text);
        ocrTextLine.setAngle(line.getAngle());
        ocrTextLine.setConfidence(line.getConfidence());
        ocrTextLine.setCornerPoints(m34239f(line.getCornerPoints()));
        ocrTextLine.setBoundingBox(m34234a(line.getBoundingBox()));
        List<Text.Element> elements = line.getElements();
        Intrinsics.checkNotNullExpressionValue(elements, "getElements(...)");
        List<Text.Element> list = elements;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Text.Element element : list) {
            GoogleOcrUtils googleOcrUtils = INSTANCE;
            Intrinsics.checkNotNull(element);
            arrayList.add(googleOcrUtils.m34236c(element));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        ocrTextLine.setElements(mutableList);
        return ocrTextLine;
    }

    /* renamed from: e */
    public final OcrTextSymbol m34238e(Text.Symbol symbol) {
        OcrTextSymbol ocrTextSymbol = new OcrTextSymbol();
        String text = symbol.getText();
        Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
        ocrTextSymbol.setText(text);
        ocrTextSymbol.setAngle(symbol.getAngle());
        ocrTextSymbol.setConfidence(symbol.getConfidence());
        ocrTextSymbol.setCornerPoints(m34239f(symbol.getCornerPoints()));
        ocrTextSymbol.setBoundingBox(m34234a(symbol.getBoundingBox()));
        return ocrTextSymbol;
    }

    /* renamed from: f */
    public final List<PointF> m34239f(Point[] pointArr) {
        List list;
        int collectionSizeOrDefault;
        List<PointF> mutableList;
        if (pointArr == null) {
            pointArr = new Point[0];
        }
        list = ArraysKt___ArraysKt.toList(pointArr);
        List list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(new PointF((Point) it2.next()));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }
}
