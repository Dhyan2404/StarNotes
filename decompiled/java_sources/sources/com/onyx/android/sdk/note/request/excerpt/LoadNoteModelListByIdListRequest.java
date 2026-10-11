package com.onyx.android.sdk.note.request.excerpt;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R(\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR(\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\t\u001a\u0004\b\u0011\u0010\u000b\"\u0004\b\u0012\u0010\r¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/excerpt/LoadNoteModelListByIdListRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "", "", C6998g.f39679a, "Ljava/util/List;", "getIdList", "()Ljava/util/List;", "setIdList", "(Ljava/util/List;)V", "idList", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", C6999h.f39688c, "getModelList", "setModelList", "modelList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadNoteModelListByIdListRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public List<String> idList;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<? extends SyncNoteModel> modelList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadNoteModelListByIdListRequest(@NotNull NoteBundle noteBundle, @NotNull List<String> idList) {
        super(noteBundle);
        List<? extends SyncNoteModel> emptyList;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(idList, "idList");
        this.idList = idList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.modelList = emptyList;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        this.modelList = NoteModelProviderKt.loadNoteList(noteBundle.getNoteDoc().getNoteProvider(), this.idList);
    }

    @NotNull
    public final List<String> getIdList() {
        return this.idList;
    }

    @NotNull
    public final List<SyncNoteModel> getModelList() {
        return this.modelList;
    }

    public final void setIdList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.idList = list;
    }

    public final void setModelList(@NotNull List<? extends SyncNoteModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.modelList = list;
    }
}
