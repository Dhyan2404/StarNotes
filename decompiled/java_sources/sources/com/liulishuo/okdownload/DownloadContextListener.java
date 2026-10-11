package com.liulishuo.okdownload;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.core.cause.EndCause;

/* loaded from: classes4.dex */
public interface DownloadContextListener {
    void queueEnd(@NonNull DownloadContext downloadContext);

    void taskEnd(@NonNull DownloadContext downloadContext, @NonNull DownloadTask downloadTask, @NonNull EndCause endCause, @Nullable Exception exc, int i);
}
