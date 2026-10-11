package com.onyx.android.sdk.note.request.excerpt;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.extension.NoteBundleKt;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b8\u0006¢\u0006\f\n\u0004\b\t\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/excerpt/DeleteQuoteRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", C6997f.f39671c, C6998g.f39679a, C6999h.f39688c, "", "Ljava/util/Collection;", "getShapeList", "()Ljava/util/Collection;", "shapeList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/Collection;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDeleteQuoteRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteQuoteRequest.kt\ncom/onyx/android/sdk/note/request/excerpt/DeleteQuoteRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n1855#2,2:57\n*S KotlinDebug\n*F\n+ 1 DeleteQuoteRequest.kt\ncom/onyx/android/sdk/note/request/excerpt/DeleteQuoteRequest\n*L\n25#1:57,2\n*E\n"})
/* loaded from: classes8.dex */
public final class DeleteQuoteRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Collection<Shape> shapeList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DeleteQuoteRequest(@NotNull NoteBundle noteBundle, @NotNull Collection<? extends Shape> shapeList) {
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
            m34156f(noteBundle, (Shape) it2.next());
        }
    }

    /* renamed from: f */
    public final void m34156f(NoteBundle noteBundle, Shape shape) {
        if (shape.getType() != 42) {
            return;
        }
        m34158h(noteBundle, shape);
        m34157g(noteBundle, shape);
    }

    /* renamed from: g */
    public final void m34157g(NoteBundle noteBundle, Shape shape) {
        noteBundle.postRemoveShapeEvent(NotePage.removeShape$default(NoteDocNotePage.INSTANCE.ensureNotePage(noteBundle.getNoteDoc(), shape.getPageUniqueId()), shape, false, 2, null).getRemoveShapeList());
    }

    @NotNull
    public final Collection<Shape> getShapeList() {
        return this.shapeList;
    }

    /* renamed from: h */
    public final void m34158h(NoteBundle noteBundle, Shape shape) {
        String shapeUniqueId = shape.getShapeUniqueId();
        ExcerptCollectionModel loadExcerptCollectionByQuoteId = NoteBundleKt.getExcerptCollectionProvider(noteBundle).loadExcerptCollectionByQuoteId(noteBundle.getNoteDoc().getDocumentUniqueId(), shapeUniqueId);
        if (loadExcerptCollectionByQuoteId != null) {
            NoteBundleKt.getExcerptCollectionProvider(noteBundle).updateExcerptCollectionRemoved(loadExcerptCollectionByQuoteId);
            return;
        }
        Debug.INSTANCE.m32059w(DeleteQuoteRequest.class, "find excerptCollection fail, quoteId = " + shapeUniqueId, new Object[0]);
    }
}
