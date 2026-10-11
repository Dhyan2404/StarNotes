package com.onyx.android.sdk.note.common.document.doc;

import android.util.Size;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.replicator.note.data.background.BKGroundConfig;
import com.onyx.android.sdk.replicator.note.data.background.BkGroundRes;
import com.onyx.android.sdk.replicator.note.data.background.NoteBackground;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u000f\u001a\u00020\u0010*\u00020\u0006J\u0012\u0010\u0011\u001a\u00020\f*\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0013J\u0014\u0010\u0011\u001a\u00020\f*\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0016\u0010\u0016\u001a\u0004\u0018\u00010\f*\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0014\u0010\u0017\u001a\u00020\u0010*\u00020\u00062\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0014\u0010\u001a\u001a\u00020\u0010*\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0012\u0010\u001b\u001a\u00020\u0010*\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0015J\u0014\u0010\u001c\u001a\u00020\u0010*\u00020\u00062\b\u0010\u0018\u001a\u0004\u0018\u00010\fJ\u0012\u0010\u001d\u001a\u00020\u0010*\u00020\u00062\u0006\u0010\u0018\u001a\u00020\fJ\u001a\u0010\u001e\u001a\u00020\u0010*\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\fJ\u001e\u0010\u001f\u001a\u00020\u0010*\u00020\u00062\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\f0!J\u001a\u0010\"\u001a\u00020\u0010*\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\fJ\u0012\u0010#\u001a\u00020\u0010*\u00020\u00062\u0006\u0010$\u001a\u00020%R,\u0010\u0005\u001a\u0004\u0018\u00010\u0004*\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0015\u0010\u000b\u001a\u00020\f*\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBKGround;", "", "()V", AbstractLogger.CONFIG, "Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;", "bKGroundConfig", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "getBKGroundConfig", "(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;", "setBKGroundConfig", "(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;)V", "curBkGroundRes", "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;", "getCurBkGroundRes", "(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;", "clearPageBkGround", "", "getBackground", "pageIndex", "", CouchFieldKey.KEY_TOC_PAGE_ID, "", "getPageBkGround", "mergeBackground", NotificationCompat.WearableExtender.f5054t, "Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;", "migrateBKGroundConfig", "removePageBKGround", "setCurrentPageBKGround", "setDocBKGround", "setPageBKGround", "setPageBKGroundMap", "pageBKGroundMap", "", "setPageBkGround", "updateBackgroundSize", "size", "Landroid/util/Size;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteDocBKGround {

    @NotNull
    public static final NoteDocBKGround INSTANCE = new NoteDocBKGround();

    public final void clearPageBkGround(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        noteDocument.getNoteBackground().getPageBKGroundMap().clear();
    }

    @Nullable
    public final BKGroundConfig getBKGroundConfig(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        return noteDocument.getNoteBackground().getBkGroundConfig();
    }

    @NotNull
    public final BkGroundRes getBackground(@NotNull NoteDocument noteDocument, int i) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        String pageUniqueId = NoteDocNotePage.INSTANCE.getPageUniqueId(noteDocument, i);
        BkGroundRes pageBkGround = StringKt.isNotBlank(pageUniqueId) ? getPageBkGround(noteDocument, pageUniqueId) : null;
        return pageBkGround == null ? noteDocument.getNoteBackground().getDocBKGround() : pageBkGround;
    }

    @NotNull
    public final BkGroundRes getCurBkGroundRes(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        return getBackground(noteDocument, noteDocument.getCurrentPageIndex());
    }

    @Nullable
    public final BkGroundRes getPageBkGround(@NotNull NoteDocument noteDocument, @Nullable String str) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        if (noteDocument.getNoteBackground().getPageBKGroundMap().containsKey(str)) {
            return noteDocument.getNoteBackground().getPageBKGroundMap().get(str);
        }
        return null;
    }

    public final void mergeBackground(@NotNull NoteDocument noteDocument, @Nullable NoteBackground noteBackground) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        if (noteBackground == null) {
            return;
        }
        noteDocument.getNoteBackground().getPageBKGroundMap().putAll(noteBackground.getPageBKGroundMap());
        if (noteBackground.getUseDocBKGround()) {
            setDocBKGround(noteDocument, noteBackground.getDocBKGround());
        }
        noteDocument.getNoteBackground().setUseDocBKGround(noteBackground.getUseDocBKGround());
    }

    public final void migrateBKGroundConfig(@NotNull NoteDocument noteDocument, @Nullable BKGroundConfig bKGroundConfig) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        if (getBKGroundConfig(noteDocument) == null) {
            setBKGroundConfig(noteDocument, bKGroundConfig);
        }
    }

    public final void removePageBKGround(@NotNull NoteDocument noteDocument, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        noteDocument.getNoteBackground().getPageBKGroundMap().remove(pageId);
    }

    public final void setBKGroundConfig(@NotNull NoteDocument noteDocument, @Nullable BKGroundConfig bKGroundConfig) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        noteDocument.getNoteBackground().setBkGroundConfig(bKGroundConfig);
    }

    public final void setCurrentPageBKGround(@NotNull NoteDocument noteDocument, @Nullable BkGroundRes bkGroundRes) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        if (bkGroundRes == null) {
            return;
        }
        NotePage pageByIndex = NoteDocNotePage.INSTANCE.getPageByIndex(noteDocument, noteDocument.getCurrentPageIndex());
        if (pageByIndex == null) {
            return;
        }
        setPageBkGround(noteDocument, pageByIndex.getPageUniqueId(), bkGroundRes);
        noteDocument.getNoteBackground().setUseDocBKGround(false);
    }

    public final void setDocBKGround(@NotNull NoteDocument noteDocument, @NotNull BkGroundRes background) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(background, "background");
        noteDocument.getNoteBackground().setDocBKGround(background);
        clearPageBkGround(noteDocument);
        noteDocument.getNoteBackground().setUseDocBKGround(true);
    }

    public final void setPageBKGround(@NotNull NoteDocument noteDocument, int i, @NotNull BkGroundRes background) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(background, "background");
        NotePage pageByIndex = NoteDocNotePage.INSTANCE.getPageByIndex(noteDocument, i);
        if (pageByIndex == null) {
            return;
        }
        setPageBkGround(noteDocument, pageByIndex.getPageUniqueId(), background);
        noteDocument.getNoteBackground().setUseDocBKGround(false);
    }

    public final void setPageBKGroundMap(@NotNull NoteDocument noteDocument, @NotNull Map<String, BkGroundRes> pageBKGroundMap) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(pageBKGroundMap, "pageBKGroundMap");
        noteDocument.getNoteBackground().setPageBKGroundMap(pageBKGroundMap);
    }

    public final void setPageBkGround(@NotNull NoteDocument noteDocument, @NotNull String pageId, @NotNull BkGroundRes background) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(background, "background");
        noteDocument.getNoteBackground().getPageBKGroundMap().put(pageId, background);
    }

    public final void updateBackgroundSize(@NotNull NoteDocument noteDocument, @NotNull Size size) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(size, "size");
        noteDocument.getNoteBackground().getDocBKGround().setSize(size);
        Iterator<Map.Entry<String, BkGroundRes>> it2 = noteDocument.getNoteBackground().getPageBKGroundMap().entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().setSize(size);
        }
    }

    @NotNull
    public final BkGroundRes getBackground(@NotNull NoteDocument noteDocument, @Nullable String str) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        BkGroundRes pageBkGround = getPageBkGround(noteDocument, str);
        return pageBkGround == null ? noteDocument.getNoteBackground().getDocBKGround() : pageBkGround;
    }
}
