package com.onyx.android.sdk.universal.editor.request.excerpt;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.extension.NoteBundleKt;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.note.request.excerpt.LoadShapeRequest;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR$\u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00070\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/excerpt/GetExcerptShapeByIdRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", C6997f.f39671c, "", C6998g.f39679a, Constants.STRING_SIG, "shapeId", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "shape", "", "i", "Ljava/util/List;", "getQuoteIds", "()Ljava/util/List;", "quoteIds", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nGetExcerptShapeByIdRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetExcerptShapeByIdRequest.kt\ncom/onyx/android/sdk/universal/editor/request/excerpt/GetExcerptShapeByIdRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,37:1\n1549#2:38\n1620#2,3:39\n*S KotlinDebug\n*F\n+ 1 GetExcerptShapeByIdRequest.kt\ncom/onyx/android/sdk/universal/editor/request/excerpt/GetExcerptShapeByIdRequest\n*L\n35#1:38\n35#1:39,3\n*E\n"})
/* loaded from: classes8.dex */
public final class GetExcerptShapeByIdRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String shapeId;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public Shape shape;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<String> quoteIds;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetExcerptShapeByIdRequest(@NotNull NoteBundle noteBundle, @NotNull String shapeId) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(shapeId, "shapeId");
        this.shapeId = shapeId;
        this.quoteIds = new ArrayList();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        LoadShapeRequest loadShapeRequest = new LoadShapeRequest(noteBundle, this.shapeId);
        loadShapeRequest.execute2();
        this.shape = loadShapeRequest.getShape();
        m41459f();
    }

    /* renamed from: f */
    public final void m41459f() {
        int collectionSizeOrDefault;
        List<ExcerptCollectionModel> loadExcerptCollectionListBySourceShapeId = NoteBundleKt.getExcerptCollectionProvider(getNoteBundle()).loadExcerptCollectionListBySourceShapeId(getNoteBundle().getNoteDoc().getDocumentUniqueId(), this.shapeId);
        if (loadExcerptCollectionListBySourceShapeId.isEmpty()) {
            return;
        }
        List<String> list = this.quoteIds;
        List<ExcerptCollectionModel> list2 = loadExcerptCollectionListBySourceShapeId;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((ExcerptCollectionModel) it2.next()).getQuoteShapeId());
        }
        list.addAll(arrayList);
    }

    @NotNull
    public final List<String> getQuoteIds() {
        return this.quoteIds;
    }

    @Nullable
    public final Shape getShape() {
        return this.shape;
    }

    public final void setShape(@Nullable Shape shape) {
        this.shape = shape;
    }
}
