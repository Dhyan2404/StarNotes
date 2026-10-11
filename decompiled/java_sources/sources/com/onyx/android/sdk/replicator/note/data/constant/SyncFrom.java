package com.onyx.android.sdk.replicator.note.data.constant;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/constant/SyncFrom;", "", "()V", "CLOUD_CREATE", "", "CLOUD_UPDATE", "LOCAL_CREATE", "RESTORE", "isFromCloudCreate", "", "from", "isFromRestore", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SyncFrom {
    public static final int CLOUD_CREATE = 1;
    public static final int CLOUD_UPDATE = 2;

    @NotNull
    public static final SyncFrom INSTANCE = new SyncFrom();
    public static final int LOCAL_CREATE = 0;
    public static final int RESTORE = 3;

    private SyncFrom() {
    }

    public final boolean isFromCloudCreate(int from) {
        return from == 1;
    }

    public final boolean isFromRestore(int from) {
        return from == 3;
    }
}
