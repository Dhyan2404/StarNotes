package com.onyx.android.sdk.replicator.note.data.constant;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/constant/NoteVersion;", "", "()V", "V0", "", "V1", "isLatestVersion", "", "v", "latestVersion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteVersion {

    @NotNull
    public static final NoteVersion INSTANCE = new NoteVersion();
    public static final int V0 = 0;
    public static final int V1 = 1;

    private NoteVersion() {
    }

    public final boolean isLatestVersion(int v) {
        return v == latestVersion();
    }

    public final int latestVersion() {
        return 1;
    }
}
