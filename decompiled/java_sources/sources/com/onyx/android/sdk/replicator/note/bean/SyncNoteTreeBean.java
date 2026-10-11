package com.onyx.android.sdk.replicator.note.bean;

import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004J\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0004J\u0014\u0010\n\u001a\u00020\u00002\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0016\u0010\f\u001a\u00020\u00002\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0004R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;", "", "()V", "noteModels", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "tagModels", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "getNoteModels", "getTagModels", "setNoteModels", "models", "setTagModels", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SyncNoteTreeBean {

    @Nullable
    private List<? extends SyncNoteModel> noteModels;

    @Nullable
    private List<? extends SyncTagModel> tagModels;

    @Nullable
    public final List<SyncNoteModel> getNoteModels() {
        return this.noteModels;
    }

    @Nullable
    public final List<SyncTagModel> getTagModels() {
        return this.tagModels;
    }

    @NotNull
    public final SyncNoteTreeBean setNoteModels(@NotNull List<? extends SyncNoteModel> models) {
        Intrinsics.checkNotNullParameter(models, "models");
        this.noteModels = models;
        return this;
    }

    @NotNull
    public final SyncNoteTreeBean setTagModels(@Nullable List<? extends SyncTagModel> models) {
        this.tagModels = models;
        return this;
    }
}
