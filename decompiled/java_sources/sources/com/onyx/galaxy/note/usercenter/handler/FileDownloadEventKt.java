package com.onyx.galaxy.note.usercenter.handler;

import com.liulishuo.okdownload.DownloadTask;
import com.onyx.android.sdk.data.common.download.data.OnyxFileTransferStatus;
import com.onyx.galaxy.note.usercenter.data.FileDownloadArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, m61528d2 = {"createDownloadStatusEvent", "Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;", "downloadArgs", "Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;", "status", "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;", "Lcom/liulishuo/okdownload/DownloadTask;", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class FileDownloadEventKt {
    @NotNull
    public static final FileDownloadEvent createDownloadStatusEvent(@NotNull FileDownloadArgs downloadArgs, @NotNull OnyxFileTransferStatus<DownloadTask> status) {
        Intrinsics.checkNotNullParameter(downloadArgs, "downloadArgs");
        Intrinsics.checkNotNullParameter(status, "status");
        FileDownloadEvent fileDownloadEvent = new FileDownloadEvent();
        fileDownloadEvent.setStatus(status.getStatus());
        fileDownloadEvent.setProgress((int) status.getProgress());
        fileDownloadEvent.setDownloadArgs(downloadArgs);
        return fileDownloadEvent;
    }
}
