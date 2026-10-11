package com.onyx.android.sdk.data.common.download;

import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.core.cause.ResumeFailedCause;
import com.liulishuo.okdownload.core.listener.DownloadListener3;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0014J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0014J(\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0016J\u0018\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0014J \u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0016J\u0018\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0014J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0014¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/download/FileDownloadListener;", "Lcom/liulishuo/okdownload/core/listener/DownloadListener3;", "()V", "canceled", "", "task", "Lcom/liulishuo/okdownload/DownloadTask;", OneDriverConstants.OPERATION_STATUS_COMPLETED, "connected", "blockCount", "", "currentOffset", "", "totalLength", "error", "e", "Ljava/lang/Exception;", "progress", "retry", "cause", "Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;", "started", "warn", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class FileDownloadListener extends DownloadListener3 {
    @Override // com.liulishuo.okdownload.core.listener.DownloadListener3
    public void canceled(@NotNull DownloadTask task) {
        Intrinsics.checkNotNullParameter(task, "task");
    }

    @Override // com.liulishuo.okdownload.core.listener.DownloadListener3
    public void completed(@NotNull DownloadTask task) {
        Intrinsics.checkNotNullParameter(task, "task");
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.Listener1Assist.Listener1Callback
    public void connected(@NotNull DownloadTask task, int blockCount, long currentOffset, long totalLength) {
        Intrinsics.checkNotNullParameter(task, "task");
    }

    @Override // com.liulishuo.okdownload.core.listener.DownloadListener3
    public void error(@NotNull DownloadTask task, @NotNull Exception e) {
        Intrinsics.checkNotNullParameter(task, "task");
        Intrinsics.checkNotNullParameter(e, "e");
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.Listener1Assist.Listener1Callback
    public void progress(@NotNull DownloadTask task, long currentOffset, long totalLength) {
        Intrinsics.checkNotNullParameter(task, "task");
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.Listener1Assist.Listener1Callback
    public void retry(@NotNull DownloadTask task, @NotNull ResumeFailedCause cause) {
        Intrinsics.checkNotNullParameter(task, "task");
        Intrinsics.checkNotNullParameter(cause, "cause");
    }

    @Override // com.liulishuo.okdownload.core.listener.DownloadListener3
    public void started(@NotNull DownloadTask task) {
        Intrinsics.checkNotNullParameter(task, "task");
    }

    @Override // com.liulishuo.okdownload.core.listener.DownloadListener3
    public void warn(@NotNull DownloadTask task) {
        Intrinsics.checkNotNullParameter(task, "task");
    }
}
