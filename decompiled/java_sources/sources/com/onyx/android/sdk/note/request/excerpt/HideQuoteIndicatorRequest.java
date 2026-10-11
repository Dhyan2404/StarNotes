package com.onyx.android.sdk.note.request.excerpt;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0016\u0010\f\u001a\u00020\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\u0006H\u0002R\u001d\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/excerpt/HideQuoteIndicatorRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "modelList", "", C6997f.f39671c, "quoteShapeIdList", C6998g.f39679a, "Ljava/util/List;", "getRemovedExcerptCollectionList", "()Ljava/util/List;", "removedExcerptCollectionList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHideQuoteIndicatorRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HideQuoteIndicatorRequest.kt\ncom/onyx/android/sdk/note/request/excerpt/HideQuoteIndicatorRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1855#2,2:55\n*S KotlinDebug\n*F\n+ 1 HideQuoteIndicatorRequest.kt\ncom/onyx/android/sdk/note/request/excerpt/HideQuoteIndicatorRequest\n*L\n49#1:55,2\n*E\n"})
/* loaded from: classes8.dex */
public final class HideQuoteIndicatorRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<ExcerptCollectionModel> removedExcerptCollectionList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HideQuoteIndicatorRequest(@NotNull NoteBundle noteBundle, @NotNull List<ExcerptCollectionModel> removedExcerptCollectionList) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(removedExcerptCollectionList, "removedExcerptCollectionList");
        this.removedExcerptCollectionList = removedExcerptCollectionList;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        List<String> m34159f = m34159f(this.removedExcerptCollectionList);
        List<String> list = m34159f;
        if (list == null || list.isEmpty()) {
            Debug.INSTANCE.m32035d(HideQuoteIndicatorRequest.class, "no quote", new Object[0]);
        } else {
            m34160g(m34159f);
        }
    }

    /* renamed from: f */
    public final List<String> m34159f(List<ExcerptCollectionModel> modelList) {
        Sequence asSequence;
        Sequence filter;
        Sequence map;
        List<String> mutableList;
        asSequence = CollectionsKt___CollectionsKt.asSequence(modelList);
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<ExcerptCollectionModel, Boolean>() { // from class: com.onyx.android.sdk.note.request.excerpt.HideQuoteIndicatorRequest$filterByCurrentDocId$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ExcerptCollectionModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getQuoteDocId(), HideQuoteIndicatorRequest.this.getNoteBundle().getNoteDoc().getDocumentUniqueId()));
            }
        });
        map = SequencesKt___SequencesKt.map(filter, new Function1<ExcerptCollectionModel, String>() { // from class: com.onyx.android.sdk.note.request.excerpt.HideQuoteIndicatorRequest$filterByCurrentDocId$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull ExcerptCollectionModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getQuoteShapeId();
            }
        });
        mutableList = SequencesKt___SequencesKt.toMutableList(map);
        return mutableList;
    }

    /* renamed from: g */
    public final void m34160g(List<String> quoteShapeIdList) {
        Set<String> set;
        List<ExcerptCollectionModel> emptyList;
        set = CollectionsKt___CollectionsKt.toSet(quoteShapeIdList);
        List<Shape> loadShapeListById = NoteDocShape.INSTANCE.loadShapeListById(getNoteBundle().getNoteDoc(), set);
        List<Shape> list = loadShapeListById;
        if (list == null || list.isEmpty()) {
            Debug.INSTANCE.m32035d(HideQuoteIndicatorRequest.class, "no shape", new Object[0]);
            return;
        }
        for (Shape shape : loadShapeListById) {
            ShapeOptions shapeOptions = ShapeOptions.INSTANCE;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            shapeOptions.setExcerptCollectionList(shape, emptyList);
        }
    }

    @NotNull
    public final List<ExcerptCollectionModel> getRemovedExcerptCollectionList() {
        return this.removedExcerptCollectionList;
    }
}
