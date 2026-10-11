package com.onyx.android.sdk.universal.editor.request.excerpt;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.excerpt.UpdateTextExcerptShapeArgs;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageSave;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.shape.object.TextExcerptShape;
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
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\f¢\u0006\u0004\b'\u0010(J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\n\u001a\u00020\tH\u0002J\b\u0010\u000b\u001a\u00020\u0004H\u0002R\u0014\u0010\u000e\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\rR\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0011R\"\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001d\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00130\u000f8\u0006¢\u0006\f\n\u0004\b\n\u0010\u0011\u001a\u0004\b\u001a\u0010\u001bR\"\u0010#\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\"\u0010&\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\u001e\u001a\u0004\b$\u0010 \"\u0004\b%\u0010\"¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/excerpt/UpdateTextExcerptShapeRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "i", "j", C6998g.f39679a, "Lcom/onyx/android/sdk/base/data/TouchPointList;", C6999h.f39688c, C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;", "Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;", "args", "", "Landroid/graphics/RectF;", "Ljava/util/List;", "pageRectFList", "", "imgPath", Constants.STRING_SIG, "getImgPath", "()Ljava/lang/String;", "setImgPath", "(Ljava/lang/String;)V", "getShapeIds", "()Ljava/util/List;", "shapeIds", "", "F", "getBitmapScaleRatio", "()F", "setBitmapScaleRatio", "(F)V", "bitmapScaleRatio", "getSliceScale", "setSliceScale", "sliceScale", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUpdateTextExcerptShapeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateTextExcerptShapeRequest.kt\ncom/onyx/android/sdk/universal/editor/request/excerpt/UpdateTextExcerptShapeRequest\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,119:1\n1313#2,2:120\n1855#3,2:122\n1549#3:124\n1620#3,3:125\n*S KotlinDebug\n*F\n+ 1 UpdateTextExcerptShapeRequest.kt\ncom/onyx/android/sdk/universal/editor/request/excerpt/UpdateTextExcerptShapeRequest\n*L\n98#1:120,2\n103#1:122,2\n117#1:124\n117#1:125,3\n*E\n"})
/* loaded from: classes8.dex */
public final class UpdateTextExcerptShapeRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final UpdateTextExcerptShapeArgs args;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<RectF> pageRectFList;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> shapeIds;

    /* renamed from: i, reason: from kotlin metadata */
    public float bitmapScaleRatio;
    public String imgPath;

    /* renamed from: j, reason: from kotlin metadata */
    public float sliceScale;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateTextExcerptShapeRequest(@NotNull WorkBundle workBundle, @NotNull UpdateTextExcerptShapeArgs args) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        this.pageRectFList = new ArrayList();
        this.shapeIds = new ArrayList();
        this.bitmapScaleRatio = 1.0f;
        this.sliceScale = 1.0f;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        m41473g();
        m41475i();
        m41476j();
        m41472f();
    }

    /* renamed from: f */
    public final void m41472f() {
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
    public final void m41473g() {
        Sequence asSequence;
        Matrix noteNormalizeMatrix = BoxInfoUtils.INSTANCE.noteNormalizeMatrix(this.args.getVirtualPageBoxInfo());
        this.pageRectFList.addAll(RectFKt.copyRectFList(this.args.getDisplayRectFList()));
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.pageRectFList);
        Iterator it2 = asSequence.iterator();
        while (it2.hasNext()) {
            noteNormalizeMatrix.mapRect((RectF) it2.next());
        }
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
    public final TouchPointList m41474h() {
        TouchPointList touchPointList = new TouchPointList();
        for (RectF rectF : this.pageRectFList) {
            touchPointList.add(new TouchPoint(rectF.left, rectF.top));
            touchPointList.add(new TouchPoint(rectF.right, rectF.bottom));
        }
        return touchPointList;
    }

    /* renamed from: i */
    public final void m41475i() {
        ExcerptInfoBean excerptInfoBean;
        TextExcerptShape textExcerptShape = (TextExcerptShape) this.args.getShape();
        if (textExcerptShape == null || (excerptInfoBean = ShapePersistOptionsKt.getExcerptInfoBean(textExcerptShape)) == null) {
            return;
        }
        TouchPointList applyMatrix = m41474h().applyMatrix(MatrixKt.invertMatrix(textExcerptShape.getShapeMatrix()));
        textExcerptShape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().clear();
        textExcerptShape.addPoints(applyMatrix);
        textExcerptShape.updateShapeRect();
        textExcerptShape.setRevisionId("");
        NoteDocument noteDoc = getWorkBundle().getNoteBundle().getNoteDoc();
        ResourceModel loadAndSaveResource = ResourceModelKt.loadAndSaveResource(noteDoc, getImgPath(), noteDoc.getDocumentUniqueId());
        if (!excerptInfoBean.getCommentUpdateByUser()) {
            excerptInfoBean.setNote(this.args.getQuote());
            excerptInfoBean.setCommentUpdateByUser(false);
        }
        excerptInfoBean.setQuote(this.args.getQuote());
        excerptInfoBean.setImgId(loadAndSaveResource.ensureUniqueId());
        excerptInfoBean.getRectList().clear();
        excerptInfoBean.getRectList().addAll(this.pageRectFList);
        excerptInfoBean.setStartPosition(this.args.getStartPosition());
        excerptInfoBean.setEndPosition(this.args.getEndPosition());
        excerptInfoBean.setWritingMode(this.args.getCom.sunia.HTREnginev2.gon.T java.lang.String());
        float actualScale = this.args.getVirtualPageBoxInfo().getActualScale() * this.sliceScale;
        this.bitmapScaleRatio = actualScale / excerptInfoBean.getDocScaleOnCreate();
        excerptInfoBean.setDocScaleOnUpdate(actualScale);
        ShapeOptions shapeOptions = ShapeOptions.INSTANCE;
        shapeOptions.resetTransformMatrix(textExcerptShape);
        ShapePersistOptionsKt.setExcerptInfoBean(textExcerptShape, excerptInfoBean);
        shapeOptions.setResource(textExcerptShape, ResourceModels.INSTANCE.toShapeResource(loadAndSaveResource));
    }

    /* renamed from: j */
    public final void m41476j() {
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
