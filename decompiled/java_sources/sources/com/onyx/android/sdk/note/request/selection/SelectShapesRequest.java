package com.onyx.android.sdk.note.request.selection;

import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.PathKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.AreaHitTestsHelper;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.note.common.utils.ShapeRegionUtils;
import com.onyx.android.sdk.note.common.utils.ShapeRenderUtils;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0016\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u00109\u001a\u000205\u0012\b\u0010,\u001a\u0004\u0018\u00010+\u0012\u0006\u0010A\u001a\u00020=¢\u0006\u0004\bQ\u0010RJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bJ\u0014\u0010\u000e\u001a\u00020\u00002\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fJ\u0014\u0010\u0013\u001a\u00020\u00002\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u001bJ\u0010\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\fH\u0002J$\u0010#\u001a\u00020\u00192\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!0\u001f2\u0006\u0010\u001d\u001a\u00020\fH\u0002J,\u0010&\u001a\u00020\b2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!0$2\u0006\u0010\u001d\u001a\u00020\f2\u0006\u0010%\u001a\u00020\u0014H\u0002J\u0018\u0010'\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\f2\u0006\u0010%\u001a\u00020\u0014H\u0002J(\u0010*\u001a\u00020\b2\u0006\u0010(\u001a\u00020 2\u0006\u0010)\u001a\u00020!2\u0006\u0010\u001d\u001a\u00020\f2\u0006\u0010%\u001a\u00020\u0014H\u0002J\u0010\u0010-\u001a\u00020\u00192\u0006\u0010,\u001a\u00020+H\u0002J\b\u0010.\u001a\u00020\u0019H\u0002J\u0010\u0010/\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\fH\u0002J0\u00104\u001a\u00020\u00192\u0006\u0010,\u001a\u00020+2\u000e\u00101\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u0001002\u0006\u00102\u001a\u00020\f2\u0006\u00103\u001a\u00020\bH\u0002R\u0017\u00109\u001a\u0002058\u0006¢\u0006\f\n\u0004\b.\u00106\u001a\u0004\b7\u00108R\u0019\u0010,\u001a\u0004\u0018\u00010+8\u0006¢\u0006\f\n\u0004\b&\u0010:\u001a\u0004\b;\u0010<R\u0017\u0010A\u001a\u00020=8\u0006¢\u0006\f\n\u0004\b/\u0010>\u001a\u0004\b?\u0010@R\u0014\u0010C\u001a\u00020\u000f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b*\u0010BR\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b'\u0010DR\u001e\u0010F\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010ER\u0016\u0010G\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010BR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u0010HR\u0016\u0010K\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u001e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u001e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010MR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010P¨\u0006S"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "", "selectionPenWidth", "setSelectionPenWidth", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "setVirtualBoxInfo", "", "selectAll", "setSelectAllShapes", "Lio/reactivex/rxjava3/functions/Predicate;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapePredicate", "setShapePredicate", "", "type", "setSelectionType", "selectedPredicate", "setSelectedPredicate", "Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;", "hitTestsHelper", "setHitTestsHelper", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "", "getSelectedShapes", "shape", "l", "", "Landroid/graphics/Region;", "Landroid/graphics/RectF;", "areaEraseRegionMap", C6997f.f39671c, "", "areaHitTestsHelper", C6999h.f39688c, C4921e.f26537n, "region", "rectF", "j", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "m", C6998g.f39679a, "i", "", "shapeList", "selectedShape", "reverse", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "getRenderContext", "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "getNotePage", "()Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "getPointList", "()Lcom/onyx/android/sdk/base/data/TouchPointList;", "pointList", "I", "SELECT_RECT_MAX", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Ljava/util/List;", "selectedShapes", "selectionType", "F", C4921e.f26528e, Constants.HASIDCALL_INDEX_SIG, "selectAllShapes", "p", "Lio/reactivex/rxjava3/functions/Predicate;", "q", "r", "Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPointList;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectShapesRequest.kt\ncom/onyx/android/sdk/note/request/selection/SelectShapesRequest\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,220:1\n215#2,2:221\n*S KotlinDebug\n*F\n+ 1 SelectShapesRequest.kt\ncom/onyx/android/sdk/note/request/selection/SelectShapesRequest\n*L\n159#1:221,2\n*E\n"})
/* loaded from: classes8.dex */
public final class SelectShapesRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public final NotePage notePage;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final TouchPointList pointList;

    /* renamed from: j, reason: from kotlin metadata */
    public final int SELECT_RECT_MAX;

    /* renamed from: k, reason: from kotlin metadata */
    public BoxInfo virtualBoxInfo;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public List<Shape> selectedShapes;

    /* renamed from: m, reason: from kotlin metadata */
    public int selectionType;

    /* renamed from: n, reason: from kotlin metadata */
    public float selectionPenWidth;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean selectAllShapes;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public Predicate<Shape> shapePredicate;

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public Predicate<Shape> selectedPredicate;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public AreaHitTestsHelper hitTestsHelper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectShapesRequest(@NotNull NoteBundle noteBundle, @NotNull RenderContext renderContext, @Nullable NotePage notePage, @NotNull TouchPointList pointList) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(pointList, "pointList");
        this.renderContext = renderContext;
        this.notePage = notePage;
        this.pointList = pointList;
        this.SELECT_RECT_MAX = 10000;
        this.selectionPenWidth = 2.0f;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Sequence asSequence;
        Sequence filter;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        NotePage notePage = this.notePage;
        if (notePage == null) {
            return;
        }
        List<Shape> shapeList = notePage.getShapeList();
        if (shapeList.isEmpty()) {
            return;
        }
        if (this.selectAllShapes) {
            m34187m(this.notePage);
            return;
        }
        if (this.shapePredicate != null) {
            asSequence = CollectionsKt___CollectionsKt.asSequence(shapeList);
            filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.note.request.selection.SelectShapesRequest$execute$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull Shape it2) {
                    Predicate predicate;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    predicate = SelectShapesRequest.this.shapePredicate;
                    return Boolean.valueOf(predicate != null ? predicate.test(it2) : true);
                }
            });
            shapeList = SequencesKt___SequencesKt.toMutableList(filter);
        }
        if (this.pointList.isEmpty()) {
            return;
        }
        AreaHitTestsHelper areaHitTestsHelper = this.hitTestsHelper;
        if (areaHitTestsHelper == null) {
            areaHitTestsHelper = new AreaHitTestsHelper(this.renderContext, this.pointList, this.selectionPenWidth, this.selectionType);
        }
        HashMap hashMap = new HashMap();
        this.selectedShapes = new ArrayList();
        int size = shapeList.size();
        for (int i = size - 1; -1 < i; i--) {
            Shape shape = shapeList.get(i);
            if (m34186l(shape) || (m34185k(shape, areaHitTestsHelper) && !m34182h(hashMap, shape, areaHitTestsHelper))) {
                if (shape.getType() == 20) {
                    m34180f(hashMap, shape);
                } else {
                    m34188n(this.notePage, this.selectedShapes, shape, true);
                }
            }
        }
        m34181g();
        if (CollectionKt.getSize(this.selectedShapes) == size) {
            this.selectAllShapes = true;
        }
    }

    /* renamed from: f */
    public final void m34180f(Map<Region, RectF> areaEraseRegionMap, Shape shape) {
        Path renderShape;
        if (shape.getType() == 20 && (renderShape = ShapeRenderUtils.INSTANCE.renderShape(shape.getRenderMatrix(this.renderContext), shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String())) != null) {
            RectF computeBounds$default = PathKt.computeBounds$default(renderShape, false, 1, null);
            RectKt.expand(computeBounds$default, this.selectionPenWidth / 2);
            areaEraseRegionMap.put(ShapeRegionUtils.createRegionByPath$default(ShapeRegionUtils.INSTANCE, renderShape, computeBounds$default, false, 4, null), computeBounds$default);
        }
    }

    /* renamed from: g */
    public final void m34181g() {
        boolean z;
        List<Shape> list;
        Iterator it2 = CollectionKt.ensureList(this.selectedShapes).iterator();
        while (true) {
            if (!it2.hasNext()) {
                z = true;
                break;
            } else if (((Shape) it2.next()).getType() != 20) {
                z = false;
                break;
            }
        }
        if (!z || (list = this.selectedShapes) == null) {
            return;
        }
        list.clear();
    }

    @Nullable
    public final NotePage getNotePage() {
        return this.notePage;
    }

    @NotNull
    public final TouchPointList getPointList() {
        return this.pointList;
    }

    @NotNull
    public final RenderContext getRenderContext() {
        return this.renderContext;
    }

    @Nullable
    public final List<Shape> getSelectedShapes() {
        return this.selectedShapes;
    }

    /* renamed from: h */
    public final boolean m34182h(Map<Region, ? extends RectF> areaEraseRegionMap, Shape shape, AreaHitTestsHelper areaHitTestsHelper) {
        for (Map.Entry<Region, ? extends RectF> entry : areaEraseRegionMap.entrySet()) {
            if (m34184j(entry.getKey(), entry.getValue(), shape, areaHitTestsHelper)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public final boolean m34183i(Shape shape) {
        RectF boundingRect = ShapeRectUtils.INSTANCE.getBoundingRect(this.renderContext, shape);
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        }
        return RectF.intersects(boxInfo.getOriginRectFWithMargin(), boundingRect);
    }

    /* renamed from: j */
    public final boolean m34184j(Region region, RectF rectF, Shape shape, AreaHitTestsHelper areaHitTestsHelper) {
        return m34183i(shape) && areaHitTestsHelper.inRegion(shape, region, rectF);
    }

    /* renamed from: k */
    public final boolean m34185k(Shape shape, AreaHitTestsHelper areaHitTestsHelper) {
        return m34183i(shape) && areaHitTestsHelper.inRegion(shape);
    }

    /* renamed from: l */
    public final boolean m34186l(Shape shape) {
        Predicate<Shape> predicate = this.selectedPredicate;
        if (predicate == null) {
            return false;
        }
        return RxjavaKt.testSafety(predicate, shape);
    }

    /* renamed from: m */
    public final void m34187m(NotePage notePage) {
        this.selectedShapes = new ArrayList();
        Iterator<Shape> it2 = notePage.getShapeList().iterator();
        while (it2.hasNext()) {
            m34188n(notePage, this.selectedShapes, it2.next(), false);
        }
    }

    /* renamed from: n */
    public final void m34188n(NotePage notePage, List<Shape> shapeList, Shape selectedShape, boolean reverse) {
        if (ShapeUtils.INSTANCE.isShapeOnCurrentLayer(notePage, selectedShape)) {
            if (reverse) {
                if (shapeList != null) {
                    shapeList.add(0, selectedShape);
                }
            } else if (shapeList != null) {
                shapeList.add(selectedShape);
            }
        }
    }

    @NotNull
    public final SelectShapesRequest setHitTestsHelper(@NotNull AreaHitTestsHelper hitTestsHelper) {
        Intrinsics.checkNotNullParameter(hitTestsHelper, "hitTestsHelper");
        this.hitTestsHelper = hitTestsHelper;
        return this;
    }

    @NotNull
    public final SelectShapesRequest setSelectAllShapes(boolean selectAll) {
        this.selectAllShapes = selectAll;
        return this;
    }

    @NotNull
    public final SelectShapesRequest setSelectedPredicate(@NotNull Predicate<Shape> selectedPredicate) {
        Intrinsics.checkNotNullParameter(selectedPredicate, "selectedPredicate");
        this.selectedPredicate = selectedPredicate;
        return this;
    }

    @NotNull
    public final SelectShapesRequest setSelectionPenWidth(float selectionPenWidth) {
        this.selectionPenWidth = selectionPenWidth;
        return this;
    }

    @NotNull
    public final SelectShapesRequest setSelectionType(int type) {
        this.selectionType = type;
        return this;
    }

    @NotNull
    public final SelectShapesRequest setShapePredicate(@NotNull Predicate<Shape> shapePredicate) {
        Intrinsics.checkNotNullParameter(shapePredicate, "shapePredicate");
        this.shapePredicate = shapePredicate;
        return this;
    }

    @NotNull
    public final SelectShapesRequest setVirtualBoxInfo(@NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        this.virtualBoxInfo = virtualBoxInfo;
        return this;
    }
}
