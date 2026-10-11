package com.liulishuo.okdownload.core.listener;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadListener;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.cause.ResumeFailedCause;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class DownloadListenerBunch implements DownloadListener {

    /* renamed from: e */
    @NonNull
    public final DownloadListener[] f39513e;

    /* loaded from: classes4.dex */
    public static class Builder {

        /* renamed from: a */
        public List<DownloadListener> f39514a = new ArrayList();

        public Builder append(@Nullable DownloadListener downloadListener) {
            if (downloadListener != null && !this.f39514a.contains(downloadListener)) {
                this.f39514a.add(downloadListener);
            }
            return this;
        }

        public DownloadListenerBunch build() {
            List<DownloadListener> list = this.f39514a;
            return new DownloadListenerBunch((DownloadListener[]) list.toArray(new DownloadListener[list.size()]));
        }

        public boolean remove(DownloadListener downloadListener) {
            return this.f39514a.remove(downloadListener);
        }
    }

    public DownloadListenerBunch(@NonNull DownloadListener[] downloadListenerArr) {
        this.f39513e = downloadListenerArr;
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public void connectEnd(@NonNull DownloadTask downloadTask, int i, int i2, @NonNull Map<String, List<String>> map) {
        for (DownloadListener downloadListener : this.f39513e) {
            downloadListener.connectEnd(downloadTask, i, i2, map);
        }
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public void connectStart(@NonNull DownloadTask downloadTask, int i, @NonNull Map<String, List<String>> map) {
        for (DownloadListener downloadListener : this.f39513e) {
            downloadListener.connectStart(downloadTask, i, map);
        }
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public void connectTrialEnd(@NonNull DownloadTask downloadTask, int i, @NonNull Map<String, List<String>> map) {
        for (DownloadListener downloadListener : this.f39513e) {
            downloadListener.connectTrialEnd(downloadTask, i, map);
        }
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public void connectTrialStart(@NonNull DownloadTask downloadTask, @NonNull Map<String, List<String>> map) {
        for (DownloadListener downloadListener : this.f39513e) {
            downloadListener.connectTrialStart(downloadTask, map);
        }
    }

    public boolean contain(DownloadListener downloadListener) {
        for (DownloadListener downloadListener2 : this.f39513e) {
            if (downloadListener2 == downloadListener) {
                return true;
            }
        }
        return false;
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public void downloadFromBeginning(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo, @NonNull ResumeFailedCause resumeFailedCause) {
        for (DownloadListener downloadListener : this.f39513e) {
            downloadListener.downloadFromBeginning(downloadTask, breakpointInfo, resumeFailedCause);
        }
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public void downloadFromBreakpoint(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo) {
        for (DownloadListener downloadListener : this.f39513e) {
            downloadListener.downloadFromBreakpoint(downloadTask, breakpointInfo);
        }
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public void fetchEnd(@NonNull DownloadTask downloadTask, int i, long j) {
        for (DownloadListener downloadListener : this.f39513e) {
            downloadListener.fetchEnd(downloadTask, i, j);
        }
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public void fetchProgress(@NonNull DownloadTask downloadTask, int i, long j) {
        for (DownloadListener downloadListener : this.f39513e) {
            downloadListener.fetchProgress(downloadTask, i, j);
        }
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public void fetchStart(@NonNull DownloadTask downloadTask, int i, long j) {
        for (DownloadListener downloadListener : this.f39513e) {
            downloadListener.fetchStart(downloadTask, i, j);
        }
    }

    public int indexOf(DownloadListener downloadListener) {
        int i = 0;
        while (true) {
            DownloadListener[] downloadListenerArr = this.f39513e;
            if (i >= downloadListenerArr.length) {
                return -1;
            }
            if (downloadListenerArr[i] == downloadListener) {
                return i;
            }
            i++;
        }
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public void taskEnd(@NonNull DownloadTask downloadTask, @NonNull EndCause endCause, @Nullable Exception exc) {
        for (DownloadListener downloadListener : this.f39513e) {
            downloadListener.taskEnd(downloadTask, endCause, exc);
        }
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public void taskStart(@NonNull DownloadTask downloadTask) {
        for (DownloadListener downloadListener : this.f39513e) {
            downloadListener.taskStart(downloadTask);
        }
    }
}
