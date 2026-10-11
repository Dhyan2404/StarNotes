package com.onyx.android.sdk.note.common.document.doc;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageSave;
import com.onyx.android.sdk.replicator.note.data.page.PageNameList;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0002J\n\u0010\u0005\u001a\u00020\u0003*\u00020\u0002J\n\u0010\u0006\u001a\u00020\u0003*\u00020\u0002J\n\u0010\u0007\u001a\u00020\u0003*\u00020\u0002J\u0012\u0010\n\u001a\u00020\u0003*\u00020\u00022\u0006\u0010\t\u001a\u00020\bJ\u0012\u0010\u000b\u001a\u00020\u0003*\u00020\u00022\u0006\u0010\t\u001a\u00020\bJ\n\u0010\f\u001a\u00020\u0003*\u00020\u0002J\n\u0010\r\u001a\u00020\u0003*\u00020\u0002J\u0014\u0010\f\u001a\u00020\u0003*\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eJ\n\u0010\u0010\u001a\u00020\u0003*\u00020\u0002J\f\u0010\u0011\u001a\u00020\u0003*\u00020\u0002H\u0002J\f\u0010\u0013\u001a\u00020\u0012*\u00020\u0002H\u0002R\u0018\u0010\u0016\u001a\u00020\u0012*\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/doc/NoteDocSave;", "", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "", "save", "saveAndClearDirtyPage", "saveNoteModel", "savePage", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "mergeNote", "mergePageData", "saveAndUnloadPage", "saveAndUnloadRichPage", "", CouchFieldKey.KEY_PAGE_ID, "clearNotePageDirty", "a", "", "b", "c", "(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)Z", "isNotePageDirty", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NoteDocSave {

    @NotNull
    public static final NoteDocSave INSTANCE = new NoteDocSave();

    /* renamed from: a */
    public final void m33746a(NoteDocument noteDocument) {
        if (m33747b(noteDocument)) {
            noteDocument.setDirty(true);
            noteDocument.getNoteModel().beforeSave();
        }
        NoteModelProviderKt.saveNote(noteDocument.getNoteProvider(), noteDocument.getNoteModel());
    }

    /* renamed from: b */
    public final boolean m33747b(NoteDocument noteDocument) {
        SyncNoteModel loadNote = NoteModelProviderKt.loadNote(noteDocument.getNoteProvider(), noteDocument.getNoteModel().getUniqueId());
        if (loadNote == null || m33748c(noteDocument)) {
            return true;
        }
        return noteDocument.getNoteModel().isDirty(loadNote);
    }

    /* renamed from: c */
    public final boolean m33748c(NoteDocument noteDocument) {
        Iterator<Map.Entry<String, NotePage>> it2 = noteDocument.getPageDataMap().entrySet().iterator();
        while (it2.hasNext()) {
            if (it2.next().getValue().getIsDirty()) {
                return true;
            }
        }
        Iterator<Map.Entry<String, NotePage>> it3 = noteDocument.getRichTextPageDataMap().entrySet().iterator();
        while (it3.hasNext()) {
            if (it3.next().getValue().getIsDirty()) {
                return true;
            }
        }
        return false;
    }

    public final void clearNotePageDirty(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Iterator<Map.Entry<String, NotePage>> it2 = noteDocument.getPageDataMap().entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().clearDirty();
        }
    }

    public final void mergeNote(@NotNull NoteDocument noteDocument, @NotNull SyncNoteModel noteModel) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        mergePageData(noteDocument, noteModel);
        noteDocument.getNotePageInfo().mergePageInfo(noteModel.getNotePageInfo());
        NoteDocBKGround.INSTANCE.mergeBackground(noteDocument, noteModel.getNoteBackground());
    }

    public final void mergePageData(@NotNull NoteDocument noteDocument, @NotNull SyncNoteModel noteModel) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        PageNameList pageNameList = noteModel.getPageNameList();
        if (pageNameList == null) {
            return;
        }
        saveAndUnloadPage(noteDocument);
        PageNameList.Companion companion = PageNameList.INSTANCE;
        NoteDocNotePage noteDocNotePage = NoteDocNotePage.INSTANCE;
        PageNameList mergeWithRemove = companion.mergeWithRemove(noteDocNotePage.getPageNameList(noteDocument), pageNameList, noteDocument.getRemovePageList(), noteModel.getRemovePageList());
        noteDocument.getPageDataMap().clear();
        noteDocNotePage.setupNotePageDataMap(noteDocument, mergeWithRemove);
    }

    public final void save(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        saveNoteModel(noteDocument);
        saveAndClearDirtyPage(noteDocument);
    }

    public final void saveAndClearDirtyPage(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        savePage(noteDocument);
        clearNotePageDirty(noteDocument);
    }

    public final void saveAndUnloadPage(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        for (Map.Entry<String, NotePage> entry : noteDocument.getPageDataMap().entrySet()) {
            NoteDocNotePage noteDocNotePage = NoteDocNotePage.INSTANCE;
            NotePage value = entry.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
            noteDocNotePage.toggleValidShapePageSet(noteDocument, value);
            NotePageSave notePageSave = NotePageSave.INSTANCE;
            NotePage value2 = entry.getValue();
            Intrinsics.checkNotNullExpressionValue(value2, "<get-value>(...)");
            notePageSave.saveAndUnloadPage(value2);
        }
    }

    public final void saveAndUnloadRichPage(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        for (Map.Entry<String, NotePage> entry : noteDocument.getRichTextPageDataMap().entrySet()) {
            NoteDocNotePage noteDocNotePage = NoteDocNotePage.INSTANCE;
            NotePage value = entry.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
            noteDocNotePage.toggleValidShapePageSet(noteDocument, value);
            NotePageSave notePageSave = NotePageSave.INSTANCE;
            NotePage value2 = entry.getValue();
            Intrinsics.checkNotNullExpressionValue(value2, "<get-value>(...)");
            notePageSave.saveAndUnloadPage(value2);
        }
    }

    public final void saveNoteModel(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        noteDocument.updateNoteModel();
        m33746a(noteDocument);
    }

    public final void savePage(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        for (Map.Entry<String, NotePage> entry : noteDocument.getPageDataMap().entrySet()) {
            NotePageSave notePageSave = NotePageSave.INSTANCE;
            NotePage value = entry.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
            notePageSave.savePage(value);
        }
        for (Map.Entry<String, NotePage> entry2 : noteDocument.getRichTextPageDataMap().entrySet()) {
            NotePageSave notePageSave2 = NotePageSave.INSTANCE;
            NotePage value2 = entry2.getValue();
            Intrinsics.checkNotNullExpressionValue(value2, "<get-value>(...)");
            notePageSave2.savePage(value2);
        }
        NotePage globalPage = noteDocument.getGlobalPage();
        if (globalPage != null) {
            NotePageSave.INSTANCE.savePage(globalPage);
        }
    }

    public final void saveAndUnloadPage(@NotNull NoteDocument noteDocument, @Nullable String str) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        NotePage notePage = noteDocument.getPageDataMap().get(str);
        if (notePage != null && notePage.getIsLoaded()) {
            NoteDocNotePage.INSTANCE.toggleValidShapePageSet(noteDocument, notePage);
            NotePageSave.INSTANCE.saveAndUnloadPage(notePage);
        }
    }
}
