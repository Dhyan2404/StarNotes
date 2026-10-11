package com.onyx.android.sdk.replicator.note.data.constant;

import com.tencent.cos.xml.model.tag.DomainConfiguration;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/constant/NoteSyncStatus;", "", "()V", DomainConfiguration.STATUS_DISABLED, "", DomainConfiguration.STATUS_ENABLED, "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteSyncStatus {
    public static final int DISABLED = 0;
    public static final int ENABLED = 1;

    @NotNull
    public static final NoteSyncStatus INSTANCE = new NoteSyncStatus();

    private NoteSyncStatus() {
    }
}
