package com.onyx.android.sdk.note.request.page;

import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageSave;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/page/SaveNotePageByIdsRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "", "", C6998g.f39679a, "Ljava/util/Collection;", "getPageIdList", "()Ljava/util/Collection;", "pageIdList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/Collection;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSaveNotePageByIdsRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveNotePageByIdsRequest.kt\ncom/onyx/android/sdk/note/request/page/SaveNotePageByIdsRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1855#2,2:36\n*S KotlinDebug\n*F\n+ 1 SaveNotePageByIdsRequest.kt\ncom/onyx/android/sdk/note/request/page/SaveNotePageByIdsRequest\n*L\n23#1:36,2\n*E\n"})
/* loaded from: classes8.dex */
public final class SaveNotePageByIdsRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Collection<String> pageIdList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveNotePageByIdsRequest(@NotNull NoteBundle noteBundle, @NotNull Collection<String> pageIdList) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        this.pageIdList = pageIdList;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Iterator<T> it2 = this.pageIdList.iterator();
        while (it2.hasNext()) {
            NotePage orNullNotePage = NoteDocNotePage.INSTANCE.getOrNullNotePage(noteBundle.getNoteDoc(), (String) it2.next());
            if (orNullNotePage != null) {
                if ((!orNullNotePage.getNewAddedShapeMap().isEmpty()) || (!orNullNotePage.getRemovedShapeMap().isEmpty())) {
                    Debug.INSTANCE.m32035d(SaveNotePageByIdsRequest.class, "save notePage(" + orNullNotePage.getPageUniqueId() + ").newAddedShape:" + CollectionKt.getSize(orNullNotePage.getNewAddedShapeMap()) + ",removedShape:" + CollectionKt.getSize(orNullNotePage.getRemovedShapeMap()), new Object[0]);
                }
                NotePageSave.INSTANCE.savePage(orNullNotePage);
            }
        }
    }

    @NotNull
    public final Collection<String> getPageIdList() {
        return this.pageIdList;
    }
}
