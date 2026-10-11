package com.onyx.android.sdk.replicator.note.data.constant;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/constant/NoteAsyncStatus;", "", "()V", "ASYNC_STATUS_ASYNC_FAIL", "", "ASYNC_STATUS_ASYNC_SUCCESS", "ASYNC_STATUS_EXPORTING", "ASYNC_STATUS_EXPORTING_FAIL", "ASYNC_STATUS_NORMAL", "ASYNC_STATUS_NO_AUTH", "ASYNC_STATUS_SYNCING", "ASYNC_STATUS_TO_BE_SYNC", "ASYNC_STATUS_TO_ONYX_SYNC_SUCCESS", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteAsyncStatus {
    public static final int ASYNC_STATUS_ASYNC_FAIL = 2;
    public static final int ASYNC_STATUS_ASYNC_SUCCESS = 3;
    public static final int ASYNC_STATUS_EXPORTING = 4;
    public static final int ASYNC_STATUS_EXPORTING_FAIL = 5;
    public static final int ASYNC_STATUS_NORMAL = 0;
    public static final int ASYNC_STATUS_NO_AUTH = 6;
    public static final int ASYNC_STATUS_SYNCING = 1;
    public static final int ASYNC_STATUS_TO_BE_SYNC = 7;
    public static final int ASYNC_STATUS_TO_ONYX_SYNC_SUCCESS = 8;

    @NotNull
    public static final NoteAsyncStatus INSTANCE = new NoteAsyncStatus();

    private NoteAsyncStatus() {
    }
}
