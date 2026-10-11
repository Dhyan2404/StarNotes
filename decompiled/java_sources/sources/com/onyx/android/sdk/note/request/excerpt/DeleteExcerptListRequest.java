package com.onyx.android.sdk.note.request.excerpt;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.excerpt.DeleteExcerptResult;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageSave;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.extension.NoteBundleKt;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\t¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\t8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR3\u0010\u0017\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00110\u0010j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0011`\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/excerpt/DeleteExcerptListRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", C6997f.f39671c, "", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", C6998g.f39679a, "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "shapeList", "Ljava/util/LinkedHashMap;", "Lcom/onyx/android/sdk/note/common/data/excerpt/DeleteExcerptResult;", "Lkotlin/collections/LinkedHashMap;", C6999h.f39688c, "Ljava/util/LinkedHashMap;", "getResultMap", "()Ljava/util/LinkedHashMap;", "resultMap", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDeleteExcerptListRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteExcerptListRequest.kt\ncom/onyx/android/sdk/note/request/excerpt/DeleteExcerptListRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n766#2:67\n857#2,2:68\n1855#2,2:70\n*S KotlinDebug\n*F\n+ 1 DeleteExcerptListRequest.kt\ncom/onyx/android/sdk/note/request/excerpt/DeleteExcerptListRequest\n*L\n32#1:67\n32#1:68,2\n33#1:70,2\n*E\n"})
/* loaded from: classes8.dex */
public final class DeleteExcerptListRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapeList;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final LinkedHashMap<Shape, DeleteExcerptResult> resultMap;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DeleteExcerptListRequest(@NotNull NoteBundle noteBundle, @NotNull List<? extends Shape> shapeList) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        this.shapeList = shapeList;
        this.resultMap = new LinkedHashMap<>();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        List<Shape> list = this.shapeList;
        ArrayList<Shape> arrayList = new ArrayList();
        for (Object obj : list) {
            if (ShapeTypes.INSTANCE.isExcerptShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        for (Shape shape : arrayList) {
            List<ExcerptCollectionModel> m34155g = m34155g(shape);
            m34154f(shape);
            this.resultMap.put(shape, new DeleteExcerptResult(ShapePersistOptionsKt.getExcerptInfoBean(shape), m34155g));
        }
        noteBundle.postShapeRemoveChangedEvent(arrayList);
    }

    /* renamed from: f */
    public final void m34154f(Shape shape) {
        NotePage ensureNotePage = NoteDocNotePage.INSTANCE.ensureNotePage(getNoteBundle().getNoteDoc(), shape.getPageUniqueId());
        NotePage.removeShape$default(ensureNotePage, shape, false, 2, null);
        NotePageSave.INSTANCE.savePage(ensureNotePage);
        getNoteBundle().postRemoveShapeEvent(CollectionKt.asList(shape));
    }

    /* renamed from: g */
    public final List<ExcerptCollectionModel> m34155g(Shape shape) {
        ArrayList arrayList = new ArrayList();
        String shapeUniqueId = shape.getShapeUniqueId();
        if (shapeUniqueId.length() == 0) {
            Debug.INSTANCE.m32059w(DeleteExcerptListRequest.class, "find excerptCollection fail, sourceId empty", new Object[0]);
            return arrayList;
        }
        List<ExcerptCollectionModel> loadExcerptCollectionListBySourceShapeId = NoteBundleKt.getExcerptCollectionProvider(getNoteBundle()).loadExcerptCollectionListBySourceShapeId(getNoteBundle().getNoteDoc().getDocumentUniqueId(), shapeUniqueId);
        if (!loadExcerptCollectionListBySourceShapeId.isEmpty()) {
            arrayList.addAll(loadExcerptCollectionListBySourceShapeId);
            NoteBundleKt.getExcerptCollectionProvider(getNoteBundle()).removeExcerptCollectionModels(loadExcerptCollectionListBySourceShapeId);
            return loadExcerptCollectionListBySourceShapeId;
        }
        Debug.INSTANCE.m32059w(DeleteExcerptListRequest.class, "find excerptCollection fail, sourceId = " + shapeUniqueId, new Object[0]);
        return arrayList;
    }

    @NotNull
    public final LinkedHashMap<Shape, DeleteExcerptResult> getResultMap() {
        return this.resultMap;
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }
}
