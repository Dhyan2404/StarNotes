package com.onyx.galaxy.note.datarepository.download;

import com.onyx.android.sdk.data.common.path.DataRepositoryPaths;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/download/ShareResourceManager;", "", "()V", "getShareResourceDirPath", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ShareResourceManager {

    @NotNull
    public static final ShareResourceManager INSTANCE = new ShareResourceManager();

    @NotNull
    public final String getShareResourceDirPath() {
        return DataRepositoryPaths.INSTANCE.appCurUserShareResourceDirPath();
    }
}
