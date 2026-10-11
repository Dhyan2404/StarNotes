package com.onyx.android.sdk.note.request.selection;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.selection.SelectionRect;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.data.line.DashLineStyle;
import com.onyx.android.sdk.replicator.note.data.line.ShapeLineStyle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u001a\u001a\u00020\u0016\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u001b\u0012\u0006\u0010$\u001a\u00020 ¢\u0006\u0004\b-\u0010.J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\t\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\b\u0010\n\u001a\u00020\u0007H\u0002J\b\u0010\f\u001a\u00020\u000bH\u0002J\u0012\u0010\u000f\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002R\u0017\u0010\u0011\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u001a\u001a\u00020\u00168\u0006¢\u0006\f\n\u0004\b\f\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0019\u0010\u001f\u001a\u0004\u0018\u00010\u001b8\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010$\u001a\u00020 8\u0006¢\u0006\f\n\u0004\b\t\u0010!\u001a\u0004\b\"\u0010#R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+¨\u0006/"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "transformShapes", "j", C6997f.f39671c, "Lcom/onyx/android/sdk/base/data/TouchPointList;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;", "selectionRect", C6998g.f39679a, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "i", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "getRenderContext", "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "getNotePage", "()Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "getStartTransformBean", "()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "startTransformBean", "", C4921e.f26537n, Constants.HASIDCALL_INDEX_SIG, "getNeedUpdateSelectionBitmap", Constants.BOOLEAN_VALUE_SIG, "setNeedUpdateSelectionBitmap", "(Z)V", "needUpdateSelectionBitmap", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nStartTransformRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartTransformRequest.kt\ncom/onyx/android/sdk/note/request/selection/StartTransformRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,126:1\n766#2:127\n857#2,2:128\n215#3,2:130\n*S KotlinDebug\n*F\n+ 1 StartTransformRequest.kt\ncom/onyx/android/sdk/note/request/selection/StartTransformRequest\n*L\n115#1:127\n115#1:128,2\n117#1:130,2\n*E\n"})
/* loaded from: classes8.dex */
public final class StartTransformRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public final NotePage notePage;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final ShapeTransformBean startTransformBean;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean needUpdateSelectionBitmap;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartTransformRequest(@NotNull NoteBundle noteBundle, @NotNull RenderContext renderContext, @NotNull BoxInfo virtualBoxInfo, @Nullable NotePage notePage, @NotNull ShapeTransformBean startTransformBean) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(startTransformBean, "startTransformBean");
        this.renderContext = renderContext;
        this.virtualBoxInfo = virtualBoxInfo;
        this.notePage = notePage;
        this.startTransformBean = startTransformBean;
        this.needUpdateSelectionBitmap = true;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) throws Exception {
        Shape shape;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        if (this.notePage == null || this.startTransformBean.getTransformShapes().isEmpty()) {
            return;
        }
        if (this.startTransformBean.getSelectionType() != 1 || this.startTransformBean.getIsSelectAll() || this.startTransformBean.getSelectionTrackPoints().isEmpty()) {
            shape = null;
        } else {
            shape = m34189f();
            this.startTransformBean.getTransformShapes().add(shape);
        }
        this.renderContext.clearSelectionRect();
        this.renderContext.getSelectionArgs().setSelectionType(this.startTransformBean.getSelectionType());
        List<Shape> buildSelectionRectShapes = this.startTransformBean.buildSelectionRectShapes(this.virtualBoxInfo);
        SelectionRect buildSelectionRect$default = SelectionRect.Companion.buildSelectionRect$default(SelectionRect.INSTANCE, buildSelectionRectShapes, this.renderContext, this.startTransformBean.getLimitRect(), false, 8, null);
        m34190g(buildSelectionRect$default);
        this.renderContext.setSelectionRect(buildSelectionRect$default);
        if (shape != null && buildSelectionRect$default != null) {
            buildSelectionRect$default.setTrackPointList(shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String());
        }
        m34193j(buildSelectionRectShapes);
        if (buildSelectionRect$default != null) {
            buildSelectionRect$default.setRenderScale(this.virtualBoxInfo.getActualScale());
        }
        m34192i(this.renderContext);
    }

    /* renamed from: f */
    public final Shape m34189f() {
        Shape createFreeShape = ShapeUtils.INSTANCE.createFreeShape(getNoteBundle().getNoteDrawingArgs(), this.renderContext, 36);
        createFreeShape.setStrokeWidth(2.0f);
        ShapeLineStyle shapeLineStyle = new ShapeLineStyle();
        shapeLineStyle.setLineStyle(DashLineStyle.INSTANCE.create(new float[]{6.0f, 6.0f}));
        ShapeOptions.INSTANCE.setShapeLineStyle(createFreeShape, shapeLineStyle);
        createFreeShape.setStrokeColor(this.renderContext.getLinePaintColor());
        createFreeShape.addPoints(new TouchPointList(m34191h()));
        return createFreeShape;
    }

    /* renamed from: g */
    public final void m34190g(SelectionRect selectionRect) {
        if (!this.startTransformBean.getIsExpandRect() || selectionRect == null) {
            return;
        }
        selectionRect.expandSelectionRect(this.virtualBoxInfo.getActualScale());
    }

    public final boolean getNeedUpdateSelectionBitmap() {
        return this.needUpdateSelectionBitmap;
    }

    @Nullable
    public final NotePage getNotePage() {
        return this.notePage;
    }

    @NotNull
    public final RenderContext getRenderContext() {
        return this.renderContext;
    }

    @NotNull
    public final ShapeTransformBean getStartTransformBean() {
        return this.startTransformBean;
    }

    @NotNull
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    /* renamed from: h */
    public final TouchPointList m34191h() {
        return new TouchPointList(this.startTransformBean.getSelectionTrackPoints().getPoints());
    }

    /* renamed from: i */
    public final void m34192i(RenderContext renderContext) {
        if (this.startTransformBean.getRenderPageShapes()) {
            ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
            List<Shape> transformShapes = this.startTransformBean.getTransformShapes();
            ArrayList arrayList = new ArrayList();
            for (Object obj : transformShapes) {
                if (!ShapeTypes.INSTANCE.isEraseShape((Shape) obj)) {
                    arrayList.add(obj);
                }
            }
            for (Map.Entry<String, List<Shape>> entry : shapeTypes.toPageShapeMap(arrayList).entrySet()) {
                NotePage ensureNotePage = NoteDocNotePage.INSTANCE.ensureNotePage(getNoteBundle().getNoteDoc(), entry.getKey());
                List<Shape> shapeList = ensureNotePage.getShapeList();
                ShapeTypes shapeTypes2 = ShapeTypes.INSTANCE;
                List<Shape> filterReferenceShapes = shapeTypes2.filterReferenceShapes(entry.getValue());
                shapeTypes2.removeByShapeId(shapeList, shapeTypes2.filterNormalShapes(entry.getValue()));
                ensureNotePage.removeShapeList(filterReferenceShapes, false);
            }
        }
    }

    /* renamed from: j */
    public final void m34193j(List<? extends Shape> transformShapes) {
        if (this.needUpdateSelectionBitmap) {
            new UpdateSelectionBitmapRequest(getNoteBundle(), this.renderContext, this.virtualBoxInfo, transformShapes).execute2();
        }
    }

    public final void setNeedUpdateSelectionBitmap(boolean z) {
        this.needUpdateSelectionBitmap = z;
    }
}
