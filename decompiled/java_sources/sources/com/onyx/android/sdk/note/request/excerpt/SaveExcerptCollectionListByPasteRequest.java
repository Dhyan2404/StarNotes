package com.onyx.android.sdk.note.request.excerpt;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.extension.NoteBundleKt;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\n\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\t¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R(\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/excerpt/SaveExcerptCollectionListByPasteRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", C6997f.f39671c, "", C6998g.f39679a, "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "setShapeList", "(Ljava/util/List;)V", "shapeList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSaveExcerptCollectionListByPasteRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveExcerptCollectionListByPasteRequest.kt\ncom/onyx/android/sdk/note/request/excerpt/SaveExcerptCollectionListByPasteRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n1855#2,2:47\n*S KotlinDebug\n*F\n+ 1 SaveExcerptCollectionListByPasteRequest.kt\ncom/onyx/android/sdk/note/request/excerpt/SaveExcerptCollectionListByPasteRequest\n*L\n26#1:47,2\n*E\n"})
/* loaded from: classes8.dex */
public final class SaveExcerptCollectionListByPasteRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> shapeList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveExcerptCollectionListByPasteRequest(@NotNull NoteBundle noteBundle, @NotNull List<? extends Shape> shapeList) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        this.shapeList = shapeList;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Iterator<T> it2 = this.shapeList.iterator();
        while (it2.hasNext()) {
            m34164f((Shape) it2.next());
        }
    }

    /* renamed from: f */
    public final void m34164f(Shape shape) {
        Object firstOrNull;
        List<ExcerptCollectionModel> listOf;
        ShapeOptions shapeOptions = ShapeOptions.INSTANCE;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) shapeOptions.getExcerptCollectionList(shape));
        ExcerptCollectionModel excerptCollectionModel = (ExcerptCollectionModel) firstOrNull;
        if (excerptCollectionModel == null) {
            return;
        }
        ExcerptCollectionModel excerptCollectionModel2 = new ExcerptCollectionModel();
        excerptCollectionModel2.setUniqueId(UUIDUtils.INSTANCE.rawUUID());
        excerptCollectionModel2.setSourceDocId(excerptCollectionModel.getSourceDocId());
        excerptCollectionModel2.setSourceShapeId(excerptCollectionModel.getSourceShapeId());
        excerptCollectionModel2.setQuoteDocId(getNoteBundle().getNoteDoc().getDocumentUniqueId());
        excerptCollectionModel2.setQuoteShapeId(shape.getShapeUniqueId());
        listOf = CollectionsKt__CollectionsJVMKt.listOf(excerptCollectionModel2);
        shapeOptions.setExcerptCollectionList(shape, listOf);
        NoteBundleKt.getExcerptCollectionProvider(getNoteBundle()).saveExcerptCollection(excerptCollectionModel2);
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    public final void setShapeList(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shapeList = list;
    }
}
