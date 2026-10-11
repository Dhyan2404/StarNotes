package com.onyx.android.sdk.note.common.shape.pen;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.data.render.BrushPenShapeRender;
import com.onyx.android.sdk.note.common.data.render.NeoPenRender;
import com.onyx.android.sdk.note.common.data.render.NotePenShapeResults;
import com.onyx.android.sdk.note.common.data.render.PenShapeRender;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.pen.NeoPenConfig;
import com.onyx.android.sdk.pen.PenPathResult;
import com.onyx.android.sdk.pen.PenPrecision;
import com.onyx.android.sdk.pen.PenResult;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0016\u0018\u0000 '2\u00020\u0001:\u0001'B\u0007¢\u0006\u0004\b%\u0010&J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016R\"\u0010\u001c\u001a\u00020\u00158\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0014@\u0014X\u0094\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/pen/BrushScribbleShape;", "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;", "", "clearRender", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "prepareRender", "render", "lowLatencyRender", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "onLowLatencyTouchData", "clearLowLatencyData", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "cloneRenderData", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "", "J", "I", "getType", "()I", "setType", "(I)V", "type", "Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;", "K", "Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;", "getShapeRender", "()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;", "setShapeRender", "(Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;)V", "shapeRender", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class BrushScribbleShape extends PenShape {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 5;

    /* renamed from: K, reason: from kotlin metadata */
    @NotNull
    public PenShapeRender shapeRender = new BrushPenShapeRender(this);

    @Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0014\n\u0002\u0010\u0015\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J2\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/pen/BrushScribbleShape$Companion;", "", "Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;", "shapeRender", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "realPoints", "Lkotlin/Pair;", "", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nBrushScribbleShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrushScribbleShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/BrushScribbleShape$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,114:1\n1603#2,9:115\n1855#2:124\n1856#2:126\n1612#2:127\n1549#2:128\n1620#2,3:129\n1603#2,9:132\n1855#2:141\n1856#2:143\n1612#2:144\n1549#2:145\n1620#2,3:146\n1#3:125\n1#3:142\n*S KotlinDebug\n*F\n+ 1 BrushScribbleShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/BrushScribbleShape$Companion\n*L\n103#1:115,9\n103#1:124\n103#1:126\n103#1:127\n104#1:128\n104#1:129,3\n107#1:132,9\n107#1:141\n107#1:143\n107#1:144\n108#1:145\n108#1:146,3\n103#1:125\n107#1:142\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final Pair<float[], int[]> m33891a(PenShapeRender shapeRender, EmbedShapeBean embedShapeBean, List<TouchPoint> realPoints) {
            int collectionSizeOrDefault;
            List flatten;
            int collectionSizeOrDefault2;
            List flatten2;
            float[] floatArray;
            int[] intArray;
            List list;
            List list2;
            NeoPenConfig createPenConfig = shapeRender.createPenConfig(MatrixKt.getMatrixByValues(embedShapeBean.getMatrixValues()));
            createPenConfig.m72321setWidth(embedShapeBean.getRenderStrokeWidth());
            createPenConfig.m72312setColor(embedShapeBean.getCom.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver.ARGS_STROKE_COLOR java.lang.String());
            createPenConfig.setScalePrecision(8.0f);
            NeoPenRender createPenRender = shapeRender.createPenRender(createPenConfig, true);
            if (createPenRender == null) {
                return new Pair<>(new float[0], new int[0]);
            }
            createPenRender.onTouchPointList(realPoints);
            ArrayList<Pair<PenResult, PenResult>> penResults = createPenRender.getPenResults();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it2 = penResults.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object first = ((Pair) it2.next()).getFirst();
                PenPathResult penPathResult = first instanceof PenPathResult ? (PenPathResult) first : null;
                if (penPathResult != null) {
                    arrayList.add(penPathResult);
                }
            }
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                list2 = ArraysKt___ArraysKt.toList(((PenPathResult) it3.next()).getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String());
                arrayList2.add(list2);
            }
            flatten = CollectionsKt__IterablesKt.flatten(arrayList2);
            ArrayList<Pair<PenResult, PenResult>> penResults2 = createPenRender.getPenResults();
            ArrayList arrayList3 = new ArrayList();
            Iterator<T> it4 = penResults2.iterator();
            while (it4.hasNext()) {
                Object first2 = ((Pair) it4.next()).getFirst();
                PenPathResult penPathResult2 = first2 instanceof PenPathResult ? (PenPathResult) first2 : null;
                if (penPathResult2 != null) {
                    arrayList3.add(penPathResult2);
                }
            }
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10);
            ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault2);
            Iterator it5 = arrayList3.iterator();
            while (it5.hasNext()) {
                list = ArraysKt___ArraysKt.toList(((PenPathResult) it5.next()).getPointSizeArray());
                arrayList4.add(list);
            }
            flatten2 = CollectionsKt__IterablesKt.flatten(arrayList4);
            createPenRender.destroyPen();
            floatArray = CollectionsKt___CollectionsKt.toFloatArray(flatten);
            intArray = CollectionsKt___CollectionsKt.toIntArray(flatten2);
            return new Pair<>(floatArray, intArray);
        }

        @NotNull
        public final PdfShapeInfo toPdfShape(@NotNull PenShapeRender shapeRender, @NotNull EmbedShapeBean embedShapeBean) {
            Intrinsics.checkNotNullParameter(shapeRender, "shapeRender");
            Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
            PdfShapeInfo initPdfShape = PdfShapeConvertUtils.INSTANCE.initPdfShape(PdfShapeInfo.INSTANCE.createBrushStrokeShape(), embedShapeBean);
            initPdfShape.setType(21);
            initPdfShape.setFillColor(embedShapeBean.getCom.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver.ARGS_STROKE_COLOR java.lang.String());
            TouchPoint.Companion companion = TouchPoint.INSTANCE;
            List<TouchPoint> renderPointArray = companion.renderPointArray(MatrixKt.getMatrixByValues(embedShapeBean.getMatrixValues()), embedShapeBean.getPointList().getPoints());
            Pair<float[], int[]> m33891a = m33891a(shapeRender, embedShapeBean, renderPointArray);
            initPdfShape.setRealPoints(companion.realPointArray(renderPointArray));
            initPdfShape.setRenderPoints(m33891a.getFirst());
            initPdfShape.setRenderPointSizeArray(m33891a.getSecond());
            return initPdfShape;
        }

        public Companion() {
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void clearLowLatencyData() {
        getShapeRender().destroyPenRender();
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void clearRender() {
        getShapeRender().clearRender();
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void cloneRenderData(@NotNull Shape shape) {
        NotePenShapeResults penResults;
        List mutableList;
        Intrinsics.checkNotNullParameter(shape, "shape");
        BrushScribbleShape brushScribbleShape = shape instanceof BrushScribbleShape ? (BrushScribbleShape) shape : null;
        PenShapeRender shapeRender = brushScribbleShape != null ? brushScribbleShape.getShapeRender() : null;
        BrushPenShapeRender brushPenShapeRender = shapeRender instanceof BrushPenShapeRender ? (BrushPenShapeRender) shapeRender : null;
        if (brushPenShapeRender == null || (penResults = brushPenShapeRender.getPenResults()) == null || CollectionKt.isNullOrEmpty(penResults.getResults())) {
            return;
        }
        PenShapeRender shapeRender2 = getShapeRender();
        BrushPenShapeRender brushPenShapeRender2 = shapeRender2 instanceof BrushPenShapeRender ? (BrushPenShapeRender) shapeRender2 : null;
        if (brushPenShapeRender2 == null) {
            return;
        }
        PenPrecision precision = penResults.getPrecision();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) penResults.getResults());
        brushPenShapeRender2.setPenResults(new NotePenShapeResults(precision, mutableList));
    }

    @NotNull
    public PenShapeRender getShapeRender() {
        return this.shapeRender;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean lowLatencyRender(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return getShapeRender().lowLatencyRender(renderContext);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void onLowLatencyTouchData(@NotNull RenderContext renderContext, @NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        getShapeRender().onLowLatencyTouchData(renderContext, touchData);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public synchronized boolean prepareRender(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return getShapeRender().prepareRender(renderContext);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return getShapeRender().render(renderContext);
    }

    public void setShapeRender(@NotNull PenShapeRender penShapeRender) {
        Intrinsics.checkNotNullParameter(penShapeRender, "<set-?>");
        this.shapeRender = penShapeRender;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeConvert
    @NotNull
    public PdfShapeInfo toPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        return INSTANCE.toPdfShape(getShapeRender(), embedShapeBean);
    }
}
