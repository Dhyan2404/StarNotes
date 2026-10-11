package com.onyx.android.sdk.note.common.shape.pen;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.data.render.BallpointPenShapeRender;
import com.onyx.android.sdk.note.common.data.render.NeoPenRender;
import com.onyx.android.sdk.note.common.data.render.PenShapeRender;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.pen.NeoPenConfig;
import com.onyx.android.sdk.pen.PenPointInk;
import com.onyx.android.sdk.pen.PenPointResult;
import com.onyx.android.sdk.pen.PenResult;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0016\u0018\u0000 '2\u00020\u0001:\u0001'B\u0007¢\u0006\u0004\b%\u0010&J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016R\"\u0010\u001c\u001a\u00020\u00158\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0014@\u0014X\u0094\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;", "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;", "", "clearRender", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "prepareRender", "render", "lowLatencyRender", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "onLowLatencyTouchData", "clearLowLatencyData", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "cloneRenderData", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "", "J", "I", "getType", "()I", "setType", "(I)V", "type", "Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;", "K", "Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;", "getShapeRender", "()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;", "setShapeRender", "(Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;)V", "shapeRender", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class BallpointShape extends PenShape {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 2;

    /* renamed from: K, reason: from kotlin metadata */
    @NotNull
    public PenShapeRender shapeRender = new BallpointPenShapeRender(this);

    @Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape$Companion;", "", "Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;", "shapeRender", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "", "b", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nBallpointShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BallpointShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/BallpointShape$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1603#2,9:104\n1855#2:113\n1856#2:115\n1612#2:116\n1549#2:117\n1620#2,3:118\n1#3:114\n*S KotlinDebug\n*F\n+ 1 BallpointShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/BallpointShape$Companion\n*L\n79#1:104,9\n79#1:113\n79#1:115\n79#1:116\n80#1:117\n80#1:118,3\n79#1:114\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final List<TouchPoint> m33889a(EmbedShapeBean embedShapeBean) {
            return TouchPoint.INSTANCE.renderPointArray(MatrixKt.getMatrixByValues(embedShapeBean.getMatrixValues()), embedShapeBean.getPointList().getPoints());
        }

        /* renamed from: b */
        public final float[] m33890b(PenShapeRender shapeRender, EmbedShapeBean embedShapeBean) {
            int collectionSizeOrDefault;
            List flatten;
            NeoPenConfig createPenConfig = shapeRender.createPenConfig(MatrixKt.getMatrixByValues(embedShapeBean.getMatrixValues()));
            createPenConfig.m72321setWidth(embedShapeBean.getRenderStrokeWidth());
            createPenConfig.m72312setColor(embedShapeBean.getStrokeColor());
            createPenConfig.setFastMode(true);
            NeoPenRender createPenRender = shapeRender.createPenRender(createPenConfig, true);
            if (createPenRender == null) {
                return new float[0];
            }
            createPenRender.onTouchPointList(m33889a(embedShapeBean));
            ArrayList<Pair<PenResult, PenResult>> penResults = createPenRender.getPenResults();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it2 = penResults.iterator();
            while (it2.hasNext()) {
                Object first = ((Pair) it2.next()).getFirst();
                PenPointResult penPointResult = first instanceof PenPointResult ? (PenPointResult) first : null;
                if (penPointResult != null) {
                    arrayList.add(penPointResult);
                }
            }
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                arrayList2.add(((PenPointResult) it3.next()).getPoints());
            }
            flatten = CollectionsKt__IterablesKt.flatten(arrayList2);
            if (flatten.size() <= 1) {
                createPenRender.destroyPen();
                return new float[0];
            }
            float[] fArr = new float[flatten.size() * 2];
            int size = flatten.size();
            for (int i = 0; i < size; i++) {
                int i2 = i * 2;
                fArr[i2] = ((PenPointInk) flatten.get(i)).getX();
                fArr[i2 + 1] = ((PenPointInk) flatten.get(i)).getY();
            }
            createPenRender.destroyPen();
            return fArr;
        }

        @NotNull
        public final PdfShapeInfo toPdfShape(@NotNull PenShapeRender shapeRender, @NotNull EmbedShapeBean embedShapeBean) {
            Intrinsics.checkNotNullParameter(shapeRender, "shapeRender");
            Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
            float[] m33890b = m33890b(shapeRender, embedShapeBean);
            if (!(!(m33890b.length == 0))) {
                return BrushScribbleShape.INSTANCE.toPdfShape(shapeRender, embedShapeBean);
            }
            PdfShapeInfo initPdfShape = PdfShapeConvertUtils.INSTANCE.initPdfShape(PdfShapeInfo.INSTANCE.createPencilStrokeShape(), embedShapeBean);
            initPdfShape.setVertices(m33890b);
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
        Intrinsics.checkNotNullParameter(shape, "shape");
        getShapeRender().cloneRenderData(shape);
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
