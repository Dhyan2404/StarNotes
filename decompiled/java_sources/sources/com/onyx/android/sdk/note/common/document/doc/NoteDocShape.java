package com.onyx.android.sdk.note.common.document.doc;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\"\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004*\u00020\u0006J\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u0005*\u00020\u00062\u0006\u0010\b\u001a\u00020\tJ\u001e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004*\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\f¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/doc/NoteDocShape;", "", "()V", "loadExcerptShapeList", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "loadShapeById", "shapeId", "", "loadShapeListById", "shapeIdList", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteDocShape {

    @NotNull
    public static final NoteDocShape INSTANCE = new NoteDocShape();

    @NotNull
    public final List<Shape> loadExcerptShapeList(@NotNull NoteDocument noteDocument) {
        Sequence asSequence;
        Sequence filter;
        Sequence map;
        Sequence filter2;
        Sequence flattenSequenceOfIterable;
        List<Shape> mutableList;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Set<Map.Entry<String, NotePage>> entrySet = noteDocument.getPageDataMap().entrySet();
        Intrinsics.checkNotNullExpressionValue(entrySet, "<get-entries>(...)");
        asSequence = CollectionsKt___CollectionsKt.asSequence(entrySet);
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<Map.Entry<String, NotePage>, Boolean>() { // from class: com.onyx.android.sdk.note.common.document.doc.NoteDocShape$loadExcerptShapeList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Map.Entry<String, NotePage> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.getValue().getIsLoaded());
            }
        });
        map = SequencesKt___SequencesKt.map(filter, new Function1<Map.Entry<String, NotePage>, List<? extends Shape>>() { // from class: com.onyx.android.sdk.note.common.document.doc.NoteDocShape$loadExcerptShapeList$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<Shape> invoke(@NotNull Map.Entry<String, NotePage> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                NotePageShape notePageShape = NotePageShape.INSTANCE;
                NotePage value = it2.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
                return notePageShape.getExcerptShapes(value);
            }
        });
        filter2 = SequencesKt___SequencesKt.filter(map, new Function1<List<? extends Shape>, Boolean>() { // from class: com.onyx.android.sdk.note.common.document.doc.NoteDocShape$loadExcerptShapeList$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull List<? extends Shape> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(CollectionKt.isNonBlank(it2));
            }
        });
        flattenSequenceOfIterable = SequencesKt__SequencesKt.flattenSequenceOfIterable(filter2);
        mutableList = SequencesKt___SequencesKt.toMutableList(flattenSequenceOfIterable);
        return mutableList;
    }

    @Nullable
    public final Shape loadShapeById(@NotNull NoteDocument noteDocument, @NotNull final String shapeId) {
        Sequence asSequence;
        Sequence filter;
        Sequence mapNotNull;
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(shapeId, "shapeId");
        Set<Map.Entry<String, NotePage>> entrySet = noteDocument.getPageDataMap().entrySet();
        Intrinsics.checkNotNullExpressionValue(entrySet, "<get-entries>(...)");
        asSequence = CollectionsKt___CollectionsKt.asSequence(entrySet);
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<Map.Entry<String, NotePage>, Boolean>() { // from class: com.onyx.android.sdk.note.common.document.doc.NoteDocShape$loadShapeById$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Map.Entry<String, NotePage> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.getValue().getIsLoaded());
            }
        });
        mapNotNull = SequencesKt___SequencesKt.mapNotNull(filter, new Function1<Map.Entry<String, NotePage>, Shape>() { // from class: com.onyx.android.sdk.note.common.document.doc.NoteDocShape$loadShapeById$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final Shape invoke(@NotNull Map.Entry<String, NotePage> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                NotePageShape notePageShape = NotePageShape.INSTANCE;
                NotePage value = it2.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
                return notePageShape.getShapeById(value, shapeId);
            }
        });
        firstOrNull = SequencesKt___SequencesKt.firstOrNull(mapNotNull);
        return (Shape) firstOrNull;
    }

    @NotNull
    public final List<Shape> loadShapeListById(@NotNull NoteDocument noteDocument, @NotNull final Set<String> shapeIdList) {
        Sequence asSequence;
        Sequence filter;
        Sequence map;
        Sequence filter2;
        Sequence flattenSequenceOfIterable;
        List<Shape> mutableList;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(shapeIdList, "shapeIdList");
        Set<Map.Entry<String, NotePage>> entrySet = noteDocument.getPageDataMap().entrySet();
        Intrinsics.checkNotNullExpressionValue(entrySet, "<get-entries>(...)");
        asSequence = CollectionsKt___CollectionsKt.asSequence(entrySet);
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<Map.Entry<String, NotePage>, Boolean>() { // from class: com.onyx.android.sdk.note.common.document.doc.NoteDocShape$loadShapeListById$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Map.Entry<String, NotePage> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.getValue().getIsLoaded());
            }
        });
        map = SequencesKt___SequencesKt.map(filter, new Function1<Map.Entry<String, NotePage>, List<? extends Shape>>() { // from class: com.onyx.android.sdk.note.common.document.doc.NoteDocShape$loadShapeListById$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<Shape> invoke(@NotNull Map.Entry<String, NotePage> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                NotePageShape notePageShape = NotePageShape.INSTANCE;
                NotePage value = it2.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
                return notePageShape.getShapeListById(value, shapeIdList);
            }
        });
        filter2 = SequencesKt___SequencesKt.filter(map, new Function1<List<? extends Shape>, Boolean>() { // from class: com.onyx.android.sdk.note.common.document.doc.NoteDocShape$loadShapeListById$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull List<? extends Shape> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(CollectionKt.isNonBlank(it2));
            }
        });
        flattenSequenceOfIterable = SequencesKt__SequencesKt.flattenSequenceOfIterable(filter2);
        mutableList = SequencesKt___SequencesKt.toMutableList(flattenSequenceOfIterable);
        return mutableList;
    }
}
