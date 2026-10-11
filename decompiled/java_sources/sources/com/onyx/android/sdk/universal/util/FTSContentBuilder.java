package com.onyx.android.sdk.universal.util;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.onyx.android.sdk.hwr.data.bundle.HWRFactory;
import com.onyx.android.sdk.neohwr.layout.TextBlockBox;
import com.onyx.android.sdk.neohwr.layout.TextCharBox;
import com.onyx.android.sdk.neohwr.layout.TextLayout;
import com.onyx.android.sdk.neohwr.layout.TextLineBox;
import com.onyx.android.sdk.neohwr.layout.TextRunBox;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShape;
import com.onyx.android.sdk.replicator.fts.model.FTSContentModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b.\u0010/J0\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0005J(\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0005J*\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\u0006\u0010\u0004\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\u00052\u0006\u0010\u000e\u001a\u00020\rJ$\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\rJ\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00052\u0006\u0010\u0014\u001a\u00020\u0013J\u001c\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00052\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0015J\"\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\u0006\u0010\u0004\u001a\u00020\u00022\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0005J\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\n0\u00052\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00190\u0005J4\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00052\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00190\u00052\u0018\u0010!\u001a\u0014\u0012\u0004\u0012\u00020\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u00020 0\u00050\u001eJ \u0010#\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u00050\u00052\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00190\u0005J\u0016\u0010'\u001a\u00020&2\u0006\u0010$\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\u0019R\u0014\u0010+\u001a\u00020(8\u0002X\u0082T¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010-\u001a\u00020(8\u0002X\u0082T¢\u0006\u0006\n\u0004\b,\u0010*¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;", "", "", "engine", CouchFieldKey.KEY_TOC_PAGE_ID, "", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "hwrBlockOutputs", "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;", "extractFTSContent", "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;", "convertOutputToBlockBox", "blocks", "Lcom/onyx/android/sdk/data/common/data/TextContentType;", CouchFieldKey.KEY_CONTENT_TYPE, "convertBlockToFTSContent", "Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;", "line", "convertLineToFTSContent", "Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;", "run", "Landroid/graphics/RectF;", "extractCharRect", "text", "region", "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;", "textShapes", "shapes", "convertTextShapeToBlockBox", "groupShapes", "", "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "charPointMap", "convertGroupShapeToCharBox", "groupTextShape", "pre", Constants.NEXT, "", "atSameBlock", "", "a", "F", "maxDeltaDegree", "b", "horizontalSpacingFactor", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFTSContentBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FTSContentBuilder.kt\ncom/onyx/android/sdk/universal/util/FTSContentBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,228:1\n1855#2:229\n1855#2,2:230\n1856#2:232\n1855#2,2:233\n1549#2:235\n1620#2,3:236\n1549#2:239\n1620#2,2:240\n1549#2:242\n1620#2,3:243\n1622#2:246\n1855#2,2:247\n1002#2,2:249\n*S KotlinDebug\n*F\n+ 1 FTSContentBuilder.kt\ncom/onyx/android/sdk/universal/util/FTSContentBuilder\n*L\n62#1:229\n63#1:230,2\n62#1:232\n94#1:233,2\n113#1:235\n113#1:236,3\n147#1:239\n147#1:240,2\n148#1:242\n148#1:243,3\n147#1:246\n165#1:247,2\n185#1:249,2\n*E\n"})
/* loaded from: classes8.dex */
public final class FTSContentBuilder {

    @NotNull
    public static final FTSContentBuilder INSTANCE = new FTSContentBuilder();

    /* renamed from: a, reason: from kotlin metadata */
    public static final float maxDeltaDegree = 15.0f;

    /* renamed from: b, reason: from kotlin metadata */
    public static final float horizontalSpacingFactor = 1.0f;

    public final boolean atSameBlock(@NotNull HWRTextShape pre, @NotNull HWRTextShape next) {
        Intrinsics.checkNotNullParameter(pre, "pre");
        Intrinsics.checkNotNullParameter(next, "next");
        if (!(pre.getTextSize() == next.getTextSize())) {
            return false;
        }
        MathUtils mathUtils = MathUtils.INSTANCE;
        if (!(mathUtils.roundByStep(Float.valueOf(MatrixKt.getMatrixRotateAngel(pre.getShapeMatrix())), Float.valueOf(15.0f)) == mathUtils.roundByStep(Float.valueOf(MatrixKt.getMatrixRotateAngel(next.getShapeMatrix())), Float.valueOf(15.0f)))) {
            return false;
        }
        RectF boundingRect = pre.getBoundingRect();
        RectF boundingRect2 = next.getBoundingRect();
        if (boundingRect2.top > boundingRect.bottom || boundingRect2.bottom < boundingRect.top) {
            return false;
        }
        return Math.abs(boundingRect2.left - boundingRect.right) < (((pre.getTextSize() * MatrixKt.getScaleY(pre.getShapeMatrix())) + (next.getTextSize() * MatrixKt.getScaleY(next.getShapeMatrix()))) / ((float) 2)) * 1.0f;
    }

    @NotNull
    public final List<FTSContentModel> convertBlockToFTSContent(@NotNull String pageId, @NotNull List<TextBlockBox> blocks, @NotNull TextContentType contentType) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(blocks, "blocks");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = blocks.iterator();
        while (it2.hasNext()) {
            Iterator<T> it3 = ((TextBlockBox) it2.next()).getLines().iterator();
            while (it3.hasNext()) {
                arrayList.addAll(INSTANCE.convertLineToFTSContent(pageId, (TextLineBox) it3.next(), contentType));
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<TextCharBox> convertGroupShapeToCharBox(@NotNull List<HWRTextShape> groupShapes, @NotNull Map<TextCharBox, List<TouchPoint>> charPointMap) {
        Intrinsics.checkNotNullParameter(groupShapes, "groupShapes");
        Intrinsics.checkNotNullParameter(charPointMap, "charPointMap");
        ArrayList arrayList = new ArrayList();
        for (HWRTextShape hWRTextShape : groupShapes) {
            String text = hWRTextShape.getText();
            if (text == null) {
                text = "";
            }
            List<RectF> extractCharRect = INSTANCE.extractCharRect(text, hWRTextShape.getOriginRect());
            int length = text.length();
            char c = 0;
            int i = 0;
            while (i < length) {
                String valueOf = String.valueOf(StringKt.charAt$default(text, i, c, 2, null));
                RectF rectF = extractCharRect.get(i);
                TextCharBox textCharBox = new TextCharBox(valueOf, rectF, null, null, 0, null, 60, null);
                arrayList.add(textCharBox);
                GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
                charPointMap.put(textCharBox, geometryUtils.transform(geometryUtils.vertexPoints(rectF), hWRTextShape.getShapeMatrix()));
                i++;
                c = 0;
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<FTSContentModel> convertLineToFTSContent(@NotNull String pageId, @NotNull TextLineBox line, @NotNull TextContentType contentType) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(line, "line");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        if (line.getRuns().isEmpty()) {
            TextRunBox textRunBox = new TextRunBox(null, null, null, null, 0.0f, 31, null);
            textRunBox.setText(line.getText());
            textRunBox.setRegion(line.getRegion());
            FTSContentModel fTSContentModel = new FTSContentModel();
            fTSContentModel.setType(contentType.name());
            fTSContentModel.setPageUniqueId(pageId);
            fTSContentModel.setContent(line.getText());
            fTSContentModel.setRect(line.getRegion());
            fTSContentModel.setCharRectList(extractCharRect(textRunBox));
            if (!(line.getLineDegrees() == 0.0f)) {
                Matrix matrix = new Matrix();
                matrix.postRotate(line.getLineDegrees(), line.getRegion().centerX(), line.getRegion().centerY());
                fTSContentModel.setMatrixValues(MatrixKt.toMatrixValues(matrix));
            }
            return CollectionKt.asList(fTSContentModel);
        }
        ArrayList arrayList = new ArrayList();
        for (TextRunBox textRunBox2 : line.getRuns()) {
            FTSContentModel fTSContentModel2 = new FTSContentModel();
            fTSContentModel2.setType(contentType.name());
            fTSContentModel2.setPageUniqueId(pageId);
            fTSContentModel2.setContent(textRunBox2.getText());
            fTSContentModel2.setRect(textRunBox2.getRegion());
            fTSContentModel2.setCharRectList(INSTANCE.extractCharRect(textRunBox2));
            if (!(line.getLineDegrees() == 0.0f)) {
                Matrix matrix2 = new Matrix();
                matrix2.postRotate(line.getLineDegrees(), line.getRegion().centerX(), line.getRegion().centerY());
                fTSContentModel2.setMatrixValues(MatrixKt.toMatrixValues(matrix2));
            }
            arrayList.add(fTSContentModel2);
        }
        return arrayList;
    }

    @NotNull
    public final List<TextBlockBox> convertOutputToBlockBox(@NotNull String engine, @NotNull List<? extends List<HWROutput>> hwrBlockOutputs) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(hwrBlockOutputs, "hwrBlockOutputs");
        return HWRFactory.INSTANCE.getResultConverterFactory().invoke(engine).convert(hwrBlockOutputs, 4);
    }

    @NotNull
    public final List<TextBlockBox> convertTextShapeToBlockBox(@NotNull List<HWRTextShape> shapes) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        double averageOfFloat;
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        List<List<HWRTextShape>> groupTextShape = groupTextShape(shapes);
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        List<List<HWRTextShape>> list = groupTextShape;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (List<HWRTextShape> list2 : list) {
            List<HWRTextShape> list3 = list2;
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            Iterator it2 = list3.iterator();
            while (it2.hasNext()) {
                arrayList2.add(Float.valueOf(MatrixKt.getMatrixRotateAngel(((HWRTextShape) it2.next()).getShapeMatrix())));
            }
            averageOfFloat = CollectionsKt___CollectionsKt.averageOfFloat(arrayList2);
            List<TextCharBox> convertGroupShapeToCharBox = INSTANCE.convertGroupShapeToCharBox(list2, linkedHashMap);
            TextRunBox textRunBox = new TextRunBox(null, null, null, null, 0.0f, 31, null);
            textRunBox.setChars(convertGroupShapeToCharBox);
            TextLineBox textLineBox = new TextLineBox(null, 0.0f, null, null, 15, null);
            textLineBox.setRuns(CollectionKt.asList(textRunBox));
            textLineBox.setLineDegrees(MathUtils.INSTANCE.roundByStep(Float.valueOf(-((float) averageOfFloat)), Float.valueOf(15.0f)));
            arrayList.add(textLineBox);
        }
        return TextLayout.INSTANCE.groupBlockLines(arrayList, new Function1<TextCharBox, List<? extends TouchPoint>>() { // from class: com.onyx.android.sdk.universal.util.FTSContentBuilder$convertTextShapeToBlockBox$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<TouchPoint> invoke(@NotNull TextCharBox it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                List<TouchPoint> list4 = linkedHashMap.get(it3);
                return list4 == null ? GeometryUtils.INSTANCE.vertexPoints(it3.getRegion()) : list4;
            }
        });
    }

    @NotNull
    public final List<RectF> extractCharRect(@NotNull TextRunBox run) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(run, "run");
        if (run.getText().length() == run.getChars().size()) {
            List<TextCharBox> chars = run.getChars();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(chars, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = chars.iterator();
            while (it2.hasNext()) {
                arrayList.add(RectFKt.copy(((TextCharBox) it2.next()).getRegion()));
            }
            return arrayList;
        }
        return extractCharRect(run.getText(), run.getRegion());
    }

    @NotNull
    public final List<FTSContentModel> extractFTSContent(@NotNull String engine, @NotNull String pageId, @NotNull List<? extends List<HWROutput>> hwrBlockOutputs) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(hwrBlockOutputs, "hwrBlockOutputs");
        return convertBlockToFTSContent(pageId, convertOutputToBlockBox(engine, hwrBlockOutputs), TextContentType.HANDWRITING);
    }

    @NotNull
    public final List<List<HWRTextShape>> groupTextShape(@NotNull List<HWRTextShape> shapes) {
        List mutableList;
        Object removeFirstOrNull;
        Object removeFirstOrNull2;
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) shapes);
        if (mutableList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new Comparator() { // from class: com.onyx.android.sdk.universal.util.FTSContentBuilder$groupTextShape$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    Date date = ((HWRTextShape) t).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String();
                    Long valueOf = date != null ? Long.valueOf(date.getTime()) : null;
                    Date date2 = ((HWRTextShape) t2).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String();
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(valueOf, date2 != null ? Long.valueOf(date2.getTime()) : null);
                    return compareValues;
                }
            });
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        removeFirstOrNull = CollectionsKt__MutableCollectionsKt.removeFirstOrNull(mutableList);
        HWRTextShape hWRTextShape = (HWRTextShape) removeFirstOrNull;
        if (hWRTextShape == null) {
            return arrayList;
        }
        arrayList2.add(hWRTextShape);
        arrayList.add(arrayList2);
        while (!mutableList.isEmpty()) {
            removeFirstOrNull2 = CollectionsKt__MutableCollectionsKt.removeFirstOrNull(mutableList);
            HWRTextShape hWRTextShape2 = (HWRTextShape) removeFirstOrNull2;
            if (hWRTextShape2 == null) {
                return arrayList;
            }
            if (atSameBlock(hWRTextShape, hWRTextShape2)) {
                arrayList2.add(hWRTextShape2);
            } else {
                arrayList2 = new ArrayList();
                arrayList2.add(hWRTextShape2);
                arrayList.add(arrayList2);
            }
            hWRTextShape = hWRTextShape2;
        }
        return arrayList;
    }

    @NotNull
    public final List<FTSContentModel> extractFTSContent(@NotNull String pageId, @NotNull List<HWRTextShape> textShapes) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(textShapes, "textShapes");
        return convertBlockToFTSContent(pageId, convertTextShapeToBlockBox(textShapes), TextContentType.HWR_FONT_TEXT);
    }

    @NotNull
    public final List<RectF> extractCharRect(@NotNull String text, @NotNull RectF region) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(region, "region");
        ArrayList arrayList = new ArrayList();
        int length = text.length();
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            arrayList.add(new RectF(((i / text.length()) * region.width()) + region.left, region.top, ((i2 / text.length()) * region.width()) + region.left, region.bottom));
            i = i2;
        }
        return arrayList;
    }
}
