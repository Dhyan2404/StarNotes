package com.onyx.android.sdk.note.common.document.doc;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageLoad;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.replicator.note.data.page.PageNameList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\b\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\n\u0010\r\u001a\u00020\u000e*\u00020\u0005J\u0014\u0010\u000f\u001a\u00020\u0010*\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012R\u0015\u0010\u0003\u001a\u00020\u0004*\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/doc/NoteDocRichPage;", "", "()V", "richTextPage", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "getRichTextPage", "(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "createRichTextPage", FirebaseAnalytics.Param.INDEX, "", CouchFieldKey.KEY_PAGE_ID, "", "hasRichText", "", "setupRichPageDataMap", "", CouchFieldKey.KEY_PAGE_NAME_LIST, "Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteDocRichPage {

    @NotNull
    public static final NoteDocRichPage INSTANCE = new NoteDocRichPage();

    @NotNull
    public final NotePage createRichTextPage(@NotNull NoteDocument noteDocument, int i, @NotNull String pageUniqueId) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(pageUniqueId, "pageUniqueId");
        NotePage createNotePage = NoteDocNotePage.INSTANCE.createNotePage(noteDocument, pageUniqueId);
        noteDocument.getRichTextPageDataMap().put(i, pageUniqueId, createNotePage);
        return createNotePage;
    }

    @NotNull
    public final NotePage getRichTextPage(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        if (noteDocument.getRichTextPageDataMap().size() <= 0) {
            createRichTextPage(noteDocument, 0, UUIDUtils.INSTANCE.rawUUID());
        }
        NotePage value = noteDocument.getRichTextPageDataMap().getValue(0);
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        NotePage notePage = value;
        if (!notePage.getIsLoaded()) {
            NotePageLoad.INSTANCE.loadPage(notePage);
        }
        return notePage;
    }

    public final boolean hasRichText(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        return CollectionKt.isNonBlank(noteDocument.getRichTextPageDataMap()) && NotePageShape.INSTANCE.hasShapes(getRichTextPage(noteDocument));
    }

    public final void setupRichPageDataMap(@NotNull NoteDocument noteDocument, @Nullable PageNameList pageNameList) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        if (pageNameList == null || pageNameList.size() <= 0) {
            return;
        }
        Iterator<String> it2 = NoteDocNotePage.INSTANCE.loadPageIndex(noteDocument, pageNameList).iterator();
        int i = 0;
        while (it2.hasNext()) {
            createRichTextPage(noteDocument, i, it2.next());
            i++;
        }
    }
}
