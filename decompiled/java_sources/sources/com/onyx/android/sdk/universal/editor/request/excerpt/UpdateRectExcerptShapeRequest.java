package com.onyx.android.sdk.universal.editor.request.excerpt;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.excerpt.UpdateRectExcerptShapeArgs;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageSave;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.shape.object.ExcerptShape;
import com.onyx.android.sdk.note.extension.NoteBundleKt;
import com.onyx.android.sdk.note.extension.ResourceModelKt;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import com.onyx.android.sdk.replicator.utils.ResourceModels;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b#\u0010$J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002R\u0014\u0010\u000b\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\nR\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001d\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\f0\u00138\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u001e\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010\"\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u0019\u001a\u0004\b \u0010\u001b\"\u0004\b!\u0010\u001d¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/excerpt/UpdateRectExcerptShapeRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", C6998g.f39679a, C6999h.f39688c, C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;", "Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;", "args", "", "imgPath", Constants.STRING_SIG, "getImgPath", "()Ljava/lang/String;", "setImgPath", "(Ljava/lang/String;)V", "", "Ljava/util/List;", "getShapeIds", "()Ljava/util/List;", "shapeIds", "", "F", "getBitmapScaleRatio", "()F", "setBitmapScaleRatio", "(F)V", "bitmapScaleRatio", "i", "getSliceScale", "setSliceScale", "sliceScale", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUpdateRectExcerptShapeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateRectExcerptShapeRequest.kt\ncom/onyx/android/sdk/universal/editor/request/excerpt/UpdateRectExcerptShapeRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,102:1\n1549#2:103\n1620#2,3:104\n*S KotlinDebug\n*F\n+ 1 UpdateRectExcerptShapeRequest.kt\ncom/onyx/android/sdk/universal/editor/request/excerpt/UpdateRectExcerptShapeRequest\n*L\n100#1:103\n100#1:104,3\n*E\n"})
/* loaded from: classes8.dex */
public final class UpdateRectExcerptShapeRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final UpdateRectExcerptShapeArgs args;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<String> shapeIds;

    /* renamed from: h, reason: from kotlin metadata */
    public float bitmapScaleRatio;

    /* renamed from: i, reason: from kotlin metadata */
    public float sliceScale;
    public String imgPath;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateRectExcerptShapeRequest(@NotNull WorkBundle workBundle, @NotNull UpdateRectExcerptShapeArgs args) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        this.shapeIds = new ArrayList();
        this.bitmapScaleRatio = 1.0f;
        this.sliceScale = 1.0f;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        m41470g();
        m41471h();
        m41469f();
    }

    /* renamed from: f */
    public final void m41469f() {
        int collectionSizeOrDefault;
        NoteBundle noteBundle = getWorkBundle().getNoteBundle();
        List<ExcerptCollectionModel> loadExcerptCollectionListBySourceShapeId = NoteBundleKt.getExcerptCollectionProvider(noteBundle).loadExcerptCollectionListBySourceShapeId(noteBundle.getNoteDoc().getDocumentUniqueId(), this.args.getShape().getShapeUniqueId());
        if (loadExcerptCollectionListBySourceShapeId.isEmpty()) {
            return;
        }
        List<String> list = this.shapeIds;
        List<ExcerptCollectionModel> list2 = loadExcerptCollectionListBySourceShapeId;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((ExcerptCollectionModel) it2.next()).getQuoteShapeId());
        }
        list.addAll(arrayList);
    }

    /* renamed from: g */
    public final void m41470g() {
        ExcerptInfoBean excerptInfoBean;
        ExcerptShape excerptShape = (ExcerptShape) this.args.getShape();
        if (excerptShape == null || (excerptInfoBean = ShapePersistOptionsKt.getExcerptInfoBean(excerptShape)) == null) {
            return;
        }
        Matrix noteNormalizeMatrix = BoxInfoUtils.INSTANCE.noteNormalizeMatrix(this.args.getVirtualPageBoxInfo());
        RectF copy = RectFKt.copy(this.args.getRegionInViewport());
        noteNormalizeMatrix.mapRect(copy);
        Matrix invertMatrix = MatrixKt.invertMatrix(excerptShape.getShapeMatrix());
        TouchPoint touchPoint = new TouchPoint(copy.left, copy.top);
        touchPoint.mapMatrix(invertMatrix);
        TouchPoint touchPoint2 = new TouchPoint(copy.right, copy.bottom);
        touchPoint2.mapMatrix(invertMatrix);
        excerptShape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().clear();
        excerptShape.onDown(touchPoint, touchPoint);
        excerptShape.onUp(touchPoint2, touchPoint2);
        excerptShape.ensureShapeUniqueId();
        excerptShape.updateShapeRect();
        excerptShape.setRevisionId("");
        NoteDocument noteDoc = getWorkBundle().getNoteBundle().getNoteDoc();
        ResourceModel loadAndSaveResource = ResourceModelKt.loadAndSaveResource(noteDoc, getImgPath(), noteDoc.getDocumentUniqueId());
        excerptInfoBean.setImgId(loadAndSaveResource.ensureUniqueId());
        excerptInfoBean.getRectList().clear();
        excerptInfoBean.getRectList().add(copy);
        float actualScale = this.args.getVirtualPageBoxInfo().getActualScale() * this.sliceScale;
        this.bitmapScaleRatio = actualScale / excerptInfoBean.getDocScaleOnCreate();
        excerptInfoBean.setDocScaleOnUpdate(actualScale);
        ShapeOptions shapeOptions = ShapeOptions.INSTANCE;
        shapeOptions.resetTransformMatrix(excerptShape);
        ShapePersistOptionsKt.setExcerptInfoBean(excerptShape, excerptInfoBean);
        shapeOptions.setResource(excerptShape, ResourceModels.INSTANCE.toShapeResource(loadAndSaveResource));
    }

    public final float getBitmapScaleRatio() {
        return this.bitmapScaleRatio;
    }

    @NotNull
    public final String getImgPath() {
        String str = this.imgPath;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("imgPath");
        return null;
    }

    @NotNull
    public final List<String> getShapeIds() {
        return this.shapeIds;
    }

    public final float getSliceScale() {
        return this.sliceScale;
    }

    /* renamed from: h */
    public final void m41471h() {
        List<? extends Shape> listOf;
        NotePage ensureNotePage = NoteDocNotePage.INSTANCE.ensureNotePage(getWorkBundle().getNoteBundle().getNoteDoc(), this.args.getShape().getPageUniqueId());
        NotePageShape.INSTANCE.saveShape(ensureNotePage, this.args.getShape());
        NotePageSave.INSTANCE.savePage(ensureNotePage);
        NoteBundle noteBundle = getWorkBundle().getNoteBundle();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this.args.getShape());
        noteBundle.postShapeAddChangedEvent(listOf);
    }

    public final void setBitmapScaleRatio(float f) {
        this.bitmapScaleRatio = f;
    }

    public final void setImgPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.imgPath = str;
    }

    public final void setSliceScale(float f) {
        this.sliceScale = f;
    }
}
