package com.onyx.galaxy.note.settings.event;

import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u000b\u0010\tR(\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/event/BackupEvent;", "", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "a", "Ljava/util/List;", "getList", "()Ljava/util/List;", "setList", "(Ljava/util/List;)V", "list", Constants.CONSTRUCTOR_NAME, "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class BackupEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public List<? extends SyncNoteModel> list;

    public BackupEvent(@NotNull List<? extends SyncNoteModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
    }

    @NotNull
    public final List<SyncNoteModel> getList() {
        return this.list;
    }

    public final void setList(@NotNull List<? extends SyncNoteModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.list = list;
    }
}
