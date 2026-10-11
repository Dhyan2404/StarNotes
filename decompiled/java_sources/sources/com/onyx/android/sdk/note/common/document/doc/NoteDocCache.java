package com.onyx.android.sdk.note.common.document.doc;

import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageSave;
import com.onyx.android.sdk.note.common.event.PageUnloadedEvent;
import com.onyx.android.sdk.replicator.note.data.constant.NoteConstant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u001e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\n\u0010\b\u001a\u00020\t*\u00020\u0005J\u001e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u000b*\u00020\u00052\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\r¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/doc/NoteDocCache;", "", "()V", "cachePage", "", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "cachePageId", "", "calculatePointByteSize", "", "saveAndUnloadPage", "", "pageIdList", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNoteDocCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteDocCache.kt\ncom/onyx/android/sdk/note/common/document/doc/NoteDocCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1#2:59\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteDocCache {

    @NotNull
    public static final NoteDocCache INSTANCE = new NoteDocCache();

    public final void cachePage(@NotNull NoteDocument noteDocument, @Nullable String str) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        noteDocument.getCachedPageMap().put(str, 0L);
        if (calculatePointByteSize(noteDocument) >= NoteConstant.INSTANCE.getMAX_CACHED_PAGE_MEMORY_COUNT() && !noteDocument.getMemoryManagement().checkTraceMemoryAvailable()) {
            NoteDocMemoryManagement memoryManagement = noteDocument.getMemoryManagement();
            if (str == null) {
                str = "";
            }
            memoryManagement.requireReleaseMemory(noteDocument, str);
        }
    }

    public final long calculatePointByteSize(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        long j = 0;
        for (Map.Entry<String, Long> entry : noteDocument.getCachedPageMap().entrySet()) {
            NotePage notePage = noteDocument.getPageDataMap().get(entry.getKey());
            if (notePage != null) {
                long shapePointByteSize = notePage.getShapePointByteSize();
                entry.setValue(Long.valueOf(shapePointByteSize));
                j += shapePointByteSize;
            }
        }
        return j;
    }

    @NotNull
    public final List<String> saveAndUnloadPage(@NotNull NoteDocument noteDocument, @NotNull Collection<String> pageIdList) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        ArrayList arrayList = new ArrayList();
        for (String str : pageIdList) {
            if (noteDocument.getPageDataMap().containsKey(str)) {
                NotePage notePage = noteDocument.getPageDataMap().get(str);
                if (notePage != null && notePage.getIsLoaded()) {
                    NoteDocNotePage.INSTANCE.toggleValidShapePageSet(noteDocument, notePage);
                    NotePageSave.INSTANCE.saveAndUnloadPage(notePage);
                }
                arrayList.add(str);
                noteDocument.getCachedPageMap().remove(str);
            }
            if (noteDocument.getMemoryManagement().checkTraceMemoryAvailable()) {
                break;
            }
        }
        if ((arrayList.isEmpty() ^ true ? arrayList : null) != null) {
            Debug.INSTANCE.m32035d(noteDocument.getClass(), AnyKt.toSimpleNameString(noteDocument) + " unload page count:" + arrayList.size(), new Object[0]);
            EventBus eventBus = noteDocument.getEventBus();
            if (eventBus != null) {
                EventBusHolderKt.safelyPostEvent(eventBus, new PageUnloadedEvent(arrayList));
            }
        }
        return arrayList;
    }
}
