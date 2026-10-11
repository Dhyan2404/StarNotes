package com.onyx.galaxy.note.category.event;

import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.TextSearchType;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u000e¢\u0006\u0004\b\u0016\u0010\u0017R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\r\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "a", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "getModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "model", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "b", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "getSearchBean", "()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "searchBean", "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;", "c", "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;", "getSearchType", "()Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;", "setSearchType", "(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V", "searchType", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class OpenSearchResultEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public final SyncNoteModel model;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public final NoteSearchBean searchBean;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public TextSearchType searchType;

    public OpenSearchResultEvent() {
        this(null, null, null, 7, null);
    }

    @Nullable
    public final SyncNoteModel getModel() {
        return this.model;
    }

    @Nullable
    public final NoteSearchBean getSearchBean() {
        return this.searchBean;
    }

    @NotNull
    public final TextSearchType getSearchType() {
        return this.searchType;
    }

    public final void setSearchType(@NotNull TextSearchType textSearchType) {
        Intrinsics.checkNotNullParameter(textSearchType, "<set-?>");
        this.searchType = textSearchType;
    }

    public OpenSearchResultEvent(@Nullable SyncNoteModel syncNoteModel, @Nullable NoteSearchBean noteSearchBean, @NotNull TextSearchType searchType) {
        Intrinsics.checkNotNullParameter(searchType, "searchType");
        this.model = syncNoteModel;
        this.searchBean = noteSearchBean;
        this.searchType = searchType;
    }

    public /* synthetic */ OpenSearchResultEvent(SyncNoteModel syncNoteModel, NoteSearchBean noteSearchBean, TextSearchType textSearchType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : syncNoteModel, (i & 2) != 0 ? null : noteSearchBean, (i & 4) != 0 ? TextSearchType.ALL : textSearchType);
    }
}
