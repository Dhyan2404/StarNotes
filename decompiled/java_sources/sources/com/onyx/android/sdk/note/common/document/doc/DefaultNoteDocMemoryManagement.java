package com.onyx.android.sdk.note.common.document.doc;

import com.onyx.android.sdk.base.utils.MemoryUtils;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement;", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement;", "()V", "checkTraceMemoryAvailable", "", "requireReleaseMemory", "", "noteDoc", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "currentPageId", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNoteDocMemory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteDocMemory.kt\ncom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,45:1\n766#2:46\n857#2,2:47\n1054#2:49\n1549#2:50\n1620#2,3:51\n*S KotlinDebug\n*F\n+ 1 NoteDocMemory.kt\ncom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement\n*L\n33#1:46\n33#1:47,2\n34#1:49\n35#1:50\n35#1:51,3\n*E\n"})
/* loaded from: classes8.dex */
public final class DefaultNoteDocMemoryManagement implements NoteDocMemoryManagement {
    @Override // com.onyx.android.sdk.note.common.document.doc.NoteDocMemoryManagement
    public boolean checkTraceMemoryAvailable() {
        return MemoryUtils.INSTANCE.getTraceMemory() > 62914560;
    }

    @Override // com.onyx.android.sdk.note.common.document.doc.NoteDocMemoryManagement
    public void requireReleaseMemory(@NotNull NoteDocument noteDoc, @NotNull String currentPageId) {
        List sortedWith;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(noteDoc, "noteDoc");
        Intrinsics.checkNotNullParameter(currentPageId, "currentPageId");
        ArrayList arrayList = new ArrayList(noteDoc.getCachedPageMap().entrySet());
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!Intrinsics.areEqual(((Map.Entry) obj).getKey(), currentPageId)) {
                arrayList2.add(obj);
            }
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList2, new Comparator() { // from class: com.onyx.android.sdk.note.common.document.doc.DefaultNoteDocMemoryManagement$requireReleaseMemory$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues((Long) ((Map.Entry) t2).getValue(), (Long) ((Map.Entry) t).getValue());
                return compareValues;
            }
        });
        NoteDocCache noteDocCache = NoteDocCache.INSTANCE;
        List list = sortedWith;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList3.add((String) ((Map.Entry) it2.next()).getKey());
        }
        noteDocCache.saveAndUnloadPage(noteDoc, arrayList3);
    }
}
