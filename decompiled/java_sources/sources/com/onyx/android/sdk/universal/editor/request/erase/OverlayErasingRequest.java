package com.onyx.android.sdk.universal.editor.request.erase;

import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.note.common.data.erase.EraseArgs;
import com.onyx.android.sdk.note.common.data.erase.EraseBean;
import com.onyx.android.sdk.note.common.data.erase.EraseContext;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.SplitShapeResult;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.note.common.utils.ShapeRegionUtils;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001c\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R$\u0010\u001a\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0012R\u001c\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u0012¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/erase/OverlayErasingRequest;", "Lcom/onyx/android/sdk/universal/editor/request/erase/BaseEraseRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", C6997f.f39671c, C6998g.f39679a, "Landroid/graphics/RectF;", "rect", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;", "i", "Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;", "eraseArgs", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "j", "Ljava/util/List;", "renderShapes", C4921e.f26537n, "Landroid/graphics/RectF;", "getEraseRect", "()Landroid/graphics/RectF;", "setEraseRect", "(Landroid/graphics/RectF;)V", "eraseRect", "l", "splitShapes", "m", "childrenShapes", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;", "eraseContext", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nOverlayErasingRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OverlayErasingRequest.kt\ncom/onyx/android/sdk/universal/editor/request/erase/OverlayErasingRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,160:1\n1#2:161\n1855#3,2:162\n*S KotlinDebug\n*F\n+ 1 OverlayErasingRequest.kt\ncom/onyx/android/sdk/universal/editor/request/erase/OverlayErasingRequest\n*L\n124#1:162,2\n*E\n"})
/* loaded from: classes8.dex */
public final class OverlayErasingRequest extends BaseEraseRequest {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final EraseArgs eraseArgs;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public List<Shape> renderShapes;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public RectF eraseRect;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public List<Shape> splitShapes;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public List<Shape> childrenShapes;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OverlayErasingRequest(@NotNull WorkBundle workBundle, @NotNull RenderContext renderContext, @NotNull EraseArgs eraseArgs, @NotNull EraseContext eraseContext) {
        super(workBundle, renderContext, eraseContext);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(eraseArgs, "eraseArgs");
        Intrinsics.checkNotNullParameter(eraseContext, "eraseContext");
        this.eraseArgs = eraseArgs;
        this.renderShapes = new ArrayList();
        this.splitShapes = new ArrayList();
        this.childrenShapes = new ArrayList();
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        if (EraseContext.INSTANCE.isEraseAbort(getEraseContext())) {
            return;
        }
        m41450f();
        m41451g();
    }

    /* renamed from: f */
    public final void m41450f() throws CloneNotSupportedException {
        List<TouchPoint> mutableList;
        List<? extends Path> listOf;
        NotePage notePage = getNotePage();
        if (notePage == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(notePage.getShapeList());
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        TouchPointList partEraseTrackPoints = this.eraseArgs.getPartEraseTrackPoints();
        if (partEraseTrackPoints == null) {
            return;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Shape shape = (Shape) it2.next();
            ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
            Intrinsics.checkNotNull(shape);
            if (!shapeTypes.isEraseShape(shape) && shape.getLayerId() == notePage.getLayerIndex()) {
                List<Region> emptyList = Collections.emptyList();
                if (shape.isClosedShape() && !ShapeUtils.INSTANCE.isIgnoreFill(shape.getFillColor())) {
                    ShapeRegionUtils shapeRegionUtils = ShapeRegionUtils.INSTANCE;
                    listOf = CollectionsKt__CollectionsJVMKt.listOf(shape.getPath());
                    emptyList = shapeRegionUtils.createRegionsByPaths(listOf);
                }
                HashSet hashSet = new HashSet();
                TouchPoint touchPoint = null;
                for (TouchPoint touchPoint2 : partEraseTrackPoints.getPoints()) {
                    if (!arrayList2.contains(shape) && shape.fastHitTest(touchPoint2.getX(), touchPoint2.getY(), this.eraseArgs.normalizeDrawRadius())) {
                        if (!shape.hitTest(touchPoint2.getX(), touchPoint2.getY(), this.eraseArgs.normalizeDrawRadius())) {
                            if (!((Boolean) AnyKt.getOrElse(touchPoint != null ? Boolean.valueOf(shape.hitTest(touchPoint.getX(), touchPoint.getY(), touchPoint2.getX(), touchPoint2.getY())) : null, new Function0<Boolean>() { // from class: com.onyx.android.sdk.universal.editor.request.erase.OverlayErasingRequest$eraseShape$2
                                /* JADX WARN: Can't rename method to resolve collision */
                                @Override // kotlin.jvm.functions.Function0
                                @NotNull
                                public final Boolean invoke() {
                                    return Boolean.FALSE;
                                }
                            })).booleanValue()) {
                                ShapeRegionUtils shapeRegionUtils2 = ShapeRegionUtils.INSTANCE;
                                Intrinsics.checkNotNull(emptyList);
                                if (!shapeRegionUtils2.containsPoint(emptyList, touchPoint2)) {
                                }
                            }
                        }
                        hashSet.add(touchPoint2);
                        if (touchPoint != null) {
                            hashSet.add(touchPoint);
                        }
                        touchPoint = touchPoint2;
                    }
                }
                if (!hashSet.isEmpty()) {
                    getEraseContext().getHitTestShapeTypes().add(Integer.valueOf(shape.getType()));
                    if (getEraseContext().canErase(shape) && ShapeTypes.INSTANCE.canErase(shape)) {
                        EraseBean eraseBean = new EraseBean();
                        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) hashSet);
                        SplitShapeResult split = shape.split(eraseBean.setErasePoints(mutableList).setEraseRadius(this.eraseArgs.normalizeDrawRadius()));
                        if (CollectionKt.isNonBlank(split.getSplitShapes())) {
                            arrayList2.add(shape);
                            CollectionKt.safeAddAll(arrayList3, split.getSplitShapes());
                        } else if (split.getShapeErased()) {
                            arrayList2.add(shape);
                        }
                    }
                }
            }
        }
        arrayList2.addAll(getSplitRelationalShapes(arrayList2));
        ShapeUtils.transparentShapes$default(ShapeUtils.INSTANCE, arrayList2, false, 2, null);
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            ((Shape) it3.next()).resetConnection();
        }
        CollectionKt.safeAddAll(this.renderShapes, arrayList2);
        CollectionKt.safeAddAll(this.renderShapes, arrayList3);
        this.splitShapes = arrayList2;
        this.childrenShapes = arrayList3;
        m41452h(ShapeRectUtils.INSTANCE.roundBoundingRectWithWidth(getRenderContext(), this.renderShapes));
    }

    /* renamed from: g */
    public final void m41451g() {
        if (getNotePage() == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(this.childrenShapes);
        arrayList.addAll(this.splitShapes);
        addShapes(arrayList2);
        List<Shape> createCrossPageShapes = createCrossPageShapes(arrayList2);
        addShapes(createCrossPageShapes);
        arrayList2.addAll(createCrossPageShapes);
        ChangedShapeBean removeShapes = removeShapes(arrayList);
        removeShapes.setAddShapeList(arrayList2);
        if (removeShapes.isEmpty()) {
            return;
        }
        getEraseContext().addChangedShapeBean(removeShapes);
        getWorkBundle().getNoteBundle().postShapeChangedEvent(removeShapes);
    }

    @Nullable
    public final RectF getEraseRect() {
        return this.eraseRect;
    }

    /* renamed from: h */
    public final void m41452h(RectF rect) {
        RectF rectF = this.eraseRect;
        if (rectF == null) {
            this.eraseRect = new RectF(rect);
        } else if (rectF != null) {
            rectF.union(rect);
        }
    }

    public final void setEraseRect(@Nullable RectF rectF) {
        this.eraseRect = rectF;
    }
}
