package com.onyx.android.sdk.replicator.note.action;

import com.onyx.android.sdk.replicator.note.NoteReplicatorManager;
import com.onyx.android.sdk.replicator.replicator.ReplicatorBundle;
import com.onyx.android.sdk.replicator.replicator.action.BaseSyncAction;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "T", "", "Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;", "()V", "getCurNoteRepManagerObservable", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public abstract class BaseNoteSyncAction<T> extends BaseSyncAction<T> {
    @NotNull
    public Observable<NoteReplicatorManager> getCurNoteRepManagerObservable() {
        return ReplicatorBundle.INSTANCE.getCurNoteRepManagerObservable();
    }
}
