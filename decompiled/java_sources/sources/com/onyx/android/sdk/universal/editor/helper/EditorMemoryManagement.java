package com.onyx.android.sdk.universal.editor.helper;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.document.doc.DefaultNoteDocMemoryManagement;
import com.onyx.android.sdk.note.common.document.doc.NoteDocCache;
import com.onyx.android.sdk.note.common.document.doc.NoteDocMemoryManagement;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.events.note.ReleaseOtherNoteMemoryEvent;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/helper/EditorMemoryManagement;", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement;", "", "checkTraceMemoryAvailable", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "noteDoc", "", "currentPageId", "", "requireReleaseMemory", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "a", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "Lcom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement;", "b", "Lcom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement;", "noteDocMemoryManagement", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEditorMemoryManagement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorMemoryManagement.kt\ncom/onyx/android/sdk/universal/editor/helper/EditorMemoryManagement\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1549#2:43\n1620#2,3:44\n766#2:47\n857#2,2:48\n1549#2:50\n1620#2,3:51\n*S KotlinDebug\n*F\n+ 1 EditorMemoryManagement.kt\ncom/onyx/android/sdk/universal/editor/helper/EditorMemoryManagement\n*L\n30#1:43\n30#1:44,3\n31#1:47\n31#1:48,2\n35#1:50\n35#1:51,3\n*E\n"})
/* loaded from: classes8.dex */
public final class EditorMemoryManagement implements NoteDocMemoryManagement {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final WorkBundle workBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public DefaultNoteDocMemoryManagement noteDocMemoryManagement;

    public EditorMemoryManagement(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        this.workBundle = workBundle;
        this.noteDocMemoryManagement = new DefaultNoteDocMemoryManagement();
    }

    @Override // com.onyx.android.sdk.note.common.document.doc.NoteDocMemoryManagement
    public boolean checkTraceMemoryAvailable() {
        return this.noteDocMemoryManagement.checkTraceMemoryAvailable();
    }

    @Override // com.onyx.android.sdk.note.common.document.doc.NoteDocMemoryManagement
    public void requireReleaseMemory(@NotNull NoteDocument noteDoc, @NotNull String currentPageId) {
        int collectionSizeOrDefault;
        Set set;
        int collectionSizeOrDefault2;
        Set set2;
        Intrinsics.checkNotNullParameter(noteDoc, "noteDoc");
        Intrinsics.checkNotNullParameter(currentPageId, "currentPageId");
        List<NotePage> loadedNotePages = noteDoc.getLoadedNotePages();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadedNotePages, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadedNotePages.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NotePage) it2.next()).getPageUniqueId());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!Intrinsics.areEqual((String) obj, currentPageId)) {
                arrayList2.add(obj);
            }
        }
        set = CollectionsKt___CollectionsKt.toSet(arrayList2);
        List<BoxInfo> visibleBoxList = WorkBundleKt.visibleBoxList(this.workBundle);
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(visibleBoxList, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = visibleBoxList.iterator();
        while (it3.hasNext()) {
            arrayList3.add(((BoxInfo) it3.next()).getId());
        }
        set2 = CollectionsKt___CollectionsKt.toSet(arrayList3);
        NoteDocCache.INSTANCE.saveAndUnloadPage(noteDoc, CollectionKt.diff(set, set2));
        if (checkTraceMemoryAvailable()) {
            return;
        }
        WorkBundleKt.postEvent(this.workBundle, new ReleaseOtherNoteMemoryEvent());
    }
}
