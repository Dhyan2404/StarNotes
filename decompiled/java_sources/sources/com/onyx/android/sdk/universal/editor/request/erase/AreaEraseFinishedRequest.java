package com.onyx.android.sdk.universal.editor.request.erase;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.note.common.data.erase.EraseBean;
import com.onyx.android.sdk.note.common.data.erase.EraseContext;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.SplitShapeResult;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.AreaHitTestsHelper;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0002R\u0016\u0010\u0012\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R$\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0017j\b\u0012\u0004\u0012\u00020\u0002`\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR$\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0017j\b\u0012\u0004\u0012\u00020\u0002`\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001a¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/erase/AreaEraseFinishedRequest;", "Lcom/onyx/android/sdk/universal/editor/request/erase/BaseEraseRequest;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "setEraseShape", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "", C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "changedShapeBean", C6998g.f39679a, "i", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "eraseShape", "", "j", "F", "selectionPenWidth", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", C4921e.f26537n, "Ljava/util/ArrayList;", "splitShapes", "l", "childrenShapes", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;", "eraseContext", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAreaEraseFinishedRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AreaEraseFinishedRequest.kt\ncom/onyx/android/sdk/universal/editor/request/erase/AreaEraseFinishedRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n1855#2,2:115\n*S KotlinDebug\n*F\n+ 1 AreaEraseFinishedRequest.kt\ncom/onyx/android/sdk/universal/editor/request/erase/AreaEraseFinishedRequest\n*L\n48#1:115,2\n*E\n"})
/* loaded from: classes8.dex */
public final class AreaEraseFinishedRequest extends BaseEraseRequest {

    /* renamed from: i, reason: from kotlin metadata */
    public Shape eraseShape;

    /* renamed from: j, reason: from kotlin metadata */
    public float selectionPenWidth;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<Shape> splitShapes;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<Shape> childrenShapes;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AreaEraseFinishedRequest(@NotNull WorkBundle workBundle, @NotNull RenderContext renderContext, @NotNull EraseContext eraseContext) {
        super(workBundle, renderContext, eraseContext);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(eraseContext, "eraseContext");
        this.selectionPenWidth = 2.0f;
        this.splitShapes = new ArrayList<>();
        this.childrenShapes = new ArrayList<>();
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        NotePage notePage = getNotePage();
        if (notePage == null) {
            return;
        }
        List<Shape> m41448f = m41448f(notePage);
        ArrayList arrayList = new ArrayList(this.childrenShapes);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((Shape) it2.next()).resetConnection();
        }
        m41448f.addAll(this.splitShapes);
        ShapeUtils.INSTANCE.setShapeZOrder(arrayList, notePage);
        NotePageShape.addShapeList$default(NotePageShape.INSTANCE, notePage, arrayList, 0, 2, null);
        List<Shape> createCrossPageShapes = createCrossPageShapes(arrayList);
        addShapes(createCrossPageShapes);
        arrayList.addAll(createCrossPageShapes);
        ChangedShapeBean removeShapeList$default = NotePage.removeShapeList$default(notePage, m41448f, false, 2, null);
        removeShapeList$default.merge(removeShapes(getSplitRelationalShapes(this.splitShapes)));
        removeShapeList$default.setAddShapeList(arrayList);
        getEraseContext().addChangedShapeBean(removeShapeList$default);
        m41449g(removeShapeList$default);
        workBundle.getNoteBundle().postShapeChangedEvent(removeShapeList$default);
    }

    /* renamed from: f */
    public final List<Shape> m41448f(NotePage notePage) {
        RenderContext renderContext = getRenderContext();
        Shape shape = this.eraseShape;
        if (shape == null) {
            Intrinsics.throwUninitializedPropertyAccessException("eraseShape");
            shape = null;
        }
        AreaHitTestsHelper areaHitTestsHelper = new AreaHitTestsHelper(renderContext, shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String(), this.selectionPenWidth, 0, 8, null);
        ArrayList arrayList = new ArrayList();
        for (Shape shape2 : notePage.getShapeList()) {
            if (shape2.getLayerId() == notePage.getLayerIndex()) {
                ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
                if (!shapeTypes.isEraseShape(shape2) && !this.splitShapes.contains(shape2) && areaHitTestsHelper.inRegion(shape2)) {
                    getEraseContext().getHitTestShapeTypes().add(Integer.valueOf(shape2.getType()));
                    if (getEraseContext().canErase(shape2) && shapeTypes.canErase(shape2)) {
                        if (getEraseContext().getEraseAllContains()) {
                            this.splitShapes.add(shape2);
                        } else {
                            EraseBean eraseBean = new EraseBean();
                            Shape shape3 = this.eraseShape;
                            if (shape3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("eraseShape");
                                shape3 = null;
                            }
                            SplitShapeResult split = shape2.split(eraseBean.setEraseShape(shape3));
                            if (CollectionKt.isNonBlank(split.getSplitShapes())) {
                                this.splitShapes.add(shape2);
                                CollectionKt.safeAddAll(this.childrenShapes, split.getSplitShapes());
                            } else if (split.getShapeErased()) {
                                this.splitShapes.add(shape2);
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    public final void m41449g(ChangedShapeBean changedShapeBean) {
        EraseContext eraseContext = getEraseContext();
        Shape shape = this.eraseShape;
        if (shape == null) {
            Intrinsics.throwUninitializedPropertyAccessException("eraseShape");
            shape = null;
        }
        eraseContext.unionEraseRect(shape.getBoundingRect());
        if (changedShapeBean.isEmpty()) {
            return;
        }
        getEraseContext().unionEraseRect(ShapeRectUtils.INSTANCE.roundBoundingRectWithWidth(getRenderContext(), getEraseContext().getChangedShapeList()));
    }

    @NotNull
    public final AreaEraseFinishedRequest setEraseShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.eraseShape = shape;
        return this;
    }
}
