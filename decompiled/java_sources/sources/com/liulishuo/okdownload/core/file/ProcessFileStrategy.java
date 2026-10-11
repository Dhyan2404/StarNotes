package com.liulishuo.okdownload.core.file;

import androidx.annotation.NonNull;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.OkDownload;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.breakpoint.DownloadStore;
import java.io.File;
import java.io.IOException;

/* loaded from: classes4.dex */
public class ProcessFileStrategy {

    /* renamed from: a */
    public final FileLock f39501a = new FileLock();

    public void completeProcessStream(@NonNull MultiPointOutputStream multiPointOutputStream, @NonNull DownloadTask downloadTask) {
    }

    @NonNull
    public MultiPointOutputStream createProcessStream(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo, @NonNull DownloadStore downloadStore) {
        return new MultiPointOutputStream(downloadTask, breakpointInfo, downloadStore);
    }

    public void discardProcess(@NonNull DownloadTask downloadTask) throws IOException {
        File file = downloadTask.getFile();
        if (file != null && file.exists() && !file.delete()) {
            throw new IOException("Delete file failed!");
        }
    }

    @NonNull
    public FileLock getFileLock() {
        return this.f39501a;
    }

    public boolean isPreAllocateLength(@NonNull DownloadTask downloadTask) {
        if (!OkDownload.with().outputStreamFactory().supportSeek()) {
            return false;
        }
        if (downloadTask.getSetPreAllocateLength() != null) {
            return downloadTask.getSetPreAllocateLength().booleanValue();
        }
        return true;
    }
}
