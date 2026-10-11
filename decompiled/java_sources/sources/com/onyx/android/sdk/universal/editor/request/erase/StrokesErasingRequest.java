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
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.note.common.data.erase.EraseArgs;
import com.onyx.android.sdk.note.common.data.erase.EraseContext;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.note.common.utils.ShapeRegionUtils;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010\u0016\u001a\u00020\u0014¢\u0006\u0004\b'\u0010(J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000bH\u0002R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0015R\"\u0010\u001c\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR$\u0010\"\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;", "Lcom/onyx/android/sdk/universal/editor/request/erase/BaseEraseRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", C6998g.f39679a, "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "removeShapeBean", "Landroid/graphics/RectF;", C6997f.f39671c, "j", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "intersectShape", "i", "rect", C4921e.f26537n, "Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;", "Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;", "eraseArgs", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "getChangedShapeBean", "()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "setChangedShapeBean", "(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V", "changedShapeBean", "Landroid/graphics/RectF;", "getEraseRect", "()Landroid/graphics/RectF;", "setEraseRect", "(Landroid/graphics/RectF;)V", "eraseRect", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;", "eraseContext", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StrokesErasingRequest extends BaseEraseRequest {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final EraseArgs eraseArgs;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public ChangedShapeBean changedShapeBean;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public RectF eraseRect;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StrokesErasingRequest(@NotNull WorkBundle workBundle, @NotNull RenderContext renderContext, @NotNull EraseContext eraseContext, @NotNull EraseArgs eraseArgs) {
        super(workBundle, renderContext, eraseContext);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(eraseContext, "eraseContext");
        Intrinsics.checkNotNullParameter(eraseArgs, "eraseArgs");
        this.eraseArgs = eraseArgs;
        this.changedShapeBean = new ChangedShapeBean();
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        NotePage notePage;
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        if (EraseContext.INSTANCE.isEraseAbort(getEraseContext()) || (notePage = getNotePage()) == null) {
            return;
        }
        m41454g(notePage);
        m41455h(notePage);
    }

    /* renamed from: f */
    public final RectF m41453f(ChangedShapeBean removeShapeBean) {
        ArrayList arrayList = new ArrayList(removeShapeBean.getRemoveShapeList());
        CollectionKt.safeAddAll(arrayList, removeShapeBean.updateTagShapeList());
        return ShapeRectUtils.INSTANCE.roundBoundingRectWithWidth(getRenderContext(), arrayList);
    }

    /* renamed from: g */
    public final void m41454g(NotePage notePage) {
        ChangedShapeBean m41457j = m41457j(notePage);
        this.changedShapeBean = m41457j;
        if (m41457j.getRemoveShapeList().isEmpty()) {
            return;
        }
        getEraseContext().addChangedShapeBean(this.changedShapeBean);
        m41458k(m41453f(this.changedShapeBean));
    }

    @NotNull
    public final ChangedShapeBean getChangedShapeBean() {
        return this.changedShapeBean;
    }

    @Nullable
    public final RectF getEraseRect() {
        return this.eraseRect;
    }

    /* renamed from: h */
    public final void m41455h(NotePage notePage) {
        Sequence asSequence;
        Sequence filter;
        List<Shape> list;
        List<? extends Path> listOf;
        TouchPointList partEraseTrackPoints = this.eraseArgs.getPartEraseTrackPoints();
        Intrinsics.checkNotNull(partEraseTrackPoints);
        final RectF boundingRect = partEraseTrackPoints.getBoundingRect();
        asSequence = CollectionsKt___CollectionsKt.asSequence(notePage.getShapeList());
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.request.erase.StrokesErasingRequest$removeShapeFillArea$intersectShapes$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(RectF.intersects(boundingRect, it2.getBoundingRect()));
            }
        });
        list = SequencesKt___SequencesKt.toList(filter);
        if (list.isEmpty()) {
            return;
        }
        for (Shape shape : list) {
            if (shape.getLayerId() == notePage.getLayerIndex()) {
                getEraseContext().getHitTestShapeTypes().add(Integer.valueOf(shape.getType()));
            }
            if (shape.isClosedShape() && !ShapeUtils.INSTANCE.isIgnoreFill(shape.getFillColor())) {
                ShapeRegionUtils shapeRegionUtils = ShapeRegionUtils.INSTANCE;
                listOf = CollectionsKt__CollectionsJVMKt.listOf(shape.getPath());
                List<Region> createRegionsByPaths = shapeRegionUtils.createRegionsByPaths(listOf);
                if (createRegionsByPaths.isEmpty()) {
                    continue;
                } else {
                    TouchPointList partEraseTrackPoints2 = this.eraseArgs.getPartEraseTrackPoints();
                    Intrinsics.checkNotNull(partEraseTrackPoints2);
                    for (TouchPoint touchPoint : partEraseTrackPoints2.getPoints()) {
                        Iterator<Region> it2 = createRegionsByPaths.iterator();
                        while (it2.hasNext()) {
                            if (it2.next().contains((int) touchPoint.getX(), (int) touchPoint.getY())) {
                                m41456i(shape);
                                return;
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: i */
    public final void m41456i(Shape intersectShape) {
        List<? extends Shape> listOf;
        intersectShape.setFillColor(0);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(intersectShape);
        m41458k(ShapeRectUtils.INSTANCE.roundBoundingRectWithWidth(getRenderContext(), listOf));
    }

    /* renamed from: j */
    public final ChangedShapeBean m41457j(NotePage notePage) {
        return notePage.removeShapesByTouchPointList(this.eraseArgs.getPartEraseTrackPoints(), getEraseContext(), this.eraseArgs, getRenderContext());
    }

    /* renamed from: k */
    public final void m41458k(RectF rect) {
        RectF rectF = this.eraseRect;
        if (rectF == null) {
            this.eraseRect = new RectF(rect);
        } else if (rectF != null) {
            rectF.union(rect);
        }
    }

    public final void setChangedShapeBean(@NotNull ChangedShapeBean changedShapeBean) {
        Intrinsics.checkNotNullParameter(changedShapeBean, "<set-?>");
        this.changedShapeBean = changedShapeBean;
    }

    public final void setEraseRect(@Nullable RectF rectF) {
        this.eraseRect = rectF;
    }
}
