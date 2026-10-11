package com.liulishuo.okdownload;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.cause.ResumeFailedCause;
import com.liulishuo.okdownload.core.listener.assist.ListenerAssist;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class UnifiedListenerManager {

    /* renamed from: b */
    public final List<Integer> f39250b = new ArrayList();

    /* renamed from: c */
    public final DownloadListener f39251c = new C6957a();

    /* renamed from: a */
    public final SparseArray<ArrayList<DownloadListener>> f39249a = new SparseArray<>();

    /* renamed from: com.liulishuo.okdownload.UnifiedListenerManager$a */
    /* loaded from: classes4.dex */
    public class C6957a implements DownloadListener {
        public C6957a() {
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void connectEnd(@NonNull DownloadTask downloadTask, int i, int i2, @NonNull Map<String, List<String>> map) {
            DownloadListener[] m30981b = UnifiedListenerManager.m30981b(downloadTask, UnifiedListenerManager.this.f39249a);
            if (m30981b == null) {
                return;
            }
            for (DownloadListener downloadListener : m30981b) {
                if (downloadListener != null) {
                    downloadListener.connectEnd(downloadTask, i, i2, map);
                }
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void connectStart(@NonNull DownloadTask downloadTask, int i, @NonNull Map<String, List<String>> map) {
            DownloadListener[] m30981b = UnifiedListenerManager.m30981b(downloadTask, UnifiedListenerManager.this.f39249a);
            if (m30981b == null) {
                return;
            }
            for (DownloadListener downloadListener : m30981b) {
                if (downloadListener != null) {
                    downloadListener.connectStart(downloadTask, i, map);
                }
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void connectTrialEnd(@NonNull DownloadTask downloadTask, int i, @NonNull Map<String, List<String>> map) {
            DownloadListener[] m30981b = UnifiedListenerManager.m30981b(downloadTask, UnifiedListenerManager.this.f39249a);
            if (m30981b == null) {
                return;
            }
            for (DownloadListener downloadListener : m30981b) {
                if (downloadListener != null) {
                    downloadListener.connectTrialEnd(downloadTask, i, map);
                }
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void connectTrialStart(@NonNull DownloadTask downloadTask, @NonNull Map<String, List<String>> map) {
            DownloadListener[] m30981b = UnifiedListenerManager.m30981b(downloadTask, UnifiedListenerManager.this.f39249a);
            if (m30981b == null) {
                return;
            }
            for (DownloadListener downloadListener : m30981b) {
                if (downloadListener != null) {
                    downloadListener.connectTrialStart(downloadTask, map);
                }
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void downloadFromBeginning(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo, @NonNull ResumeFailedCause resumeFailedCause) {
            DownloadListener[] m30981b = UnifiedListenerManager.m30981b(downloadTask, UnifiedListenerManager.this.f39249a);
            if (m30981b == null) {
                return;
            }
            for (DownloadListener downloadListener : m30981b) {
                if (downloadListener != null) {
                    downloadListener.downloadFromBeginning(downloadTask, breakpointInfo, resumeFailedCause);
                }
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void downloadFromBreakpoint(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo) {
            DownloadListener[] m30981b = UnifiedListenerManager.m30981b(downloadTask, UnifiedListenerManager.this.f39249a);
            if (m30981b == null) {
                return;
            }
            for (DownloadListener downloadListener : m30981b) {
                if (downloadListener != null) {
                    downloadListener.downloadFromBreakpoint(downloadTask, breakpointInfo);
                }
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void fetchEnd(@NonNull DownloadTask downloadTask, int i, long j) {
            DownloadListener[] m30981b = UnifiedListenerManager.m30981b(downloadTask, UnifiedListenerManager.this.f39249a);
            if (m30981b == null) {
                return;
            }
            for (DownloadListener downloadListener : m30981b) {
                if (downloadListener != null) {
                    downloadListener.fetchEnd(downloadTask, i, j);
                }
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void fetchProgress(@NonNull DownloadTask downloadTask, int i, long j) {
            DownloadListener[] m30981b = UnifiedListenerManager.m30981b(downloadTask, UnifiedListenerManager.this.f39249a);
            if (m30981b == null) {
                return;
            }
            for (DownloadListener downloadListener : m30981b) {
                if (downloadListener != null) {
                    downloadListener.fetchProgress(downloadTask, i, j);
                }
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void fetchStart(@NonNull DownloadTask downloadTask, int i, long j) {
            DownloadListener[] m30981b = UnifiedListenerManager.m30981b(downloadTask, UnifiedListenerManager.this.f39249a);
            if (m30981b == null) {
                return;
            }
            for (DownloadListener downloadListener : m30981b) {
                if (downloadListener != null) {
                    downloadListener.fetchStart(downloadTask, i, j);
                }
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskEnd(@NonNull DownloadTask downloadTask, @NonNull EndCause endCause, @Nullable Exception exc) {
            DownloadListener[] m30981b = UnifiedListenerManager.m30981b(downloadTask, UnifiedListenerManager.this.f39249a);
            if (m30981b == null) {
                return;
            }
            for (DownloadListener downloadListener : m30981b) {
                if (downloadListener != null) {
                    downloadListener.taskEnd(downloadTask, endCause, exc);
                }
            }
            if (UnifiedListenerManager.this.f39250b.contains(Integer.valueOf(downloadTask.getId()))) {
                UnifiedListenerManager.this.detachListener(downloadTask.getId());
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskStart(@NonNull DownloadTask downloadTask) {
            DownloadListener[] m30981b = UnifiedListenerManager.m30981b(downloadTask, UnifiedListenerManager.this.f39249a);
            if (m30981b == null) {
                return;
            }
            for (DownloadListener downloadListener : m30981b) {
                if (downloadListener != null) {
                    downloadListener.taskStart(downloadTask);
                }
            }
        }
    }

    /* renamed from: b */
    public static DownloadListener[] m30981b(DownloadTask downloadTask, SparseArray<ArrayList<DownloadListener>> sparseArray) {
        ArrayList<DownloadListener> arrayList = sparseArray.get(downloadTask.getId());
        if (arrayList == null || arrayList.size() <= 0) {
            return null;
        }
        DownloadListener[] downloadListenerArr = new DownloadListener[arrayList.size()];
        arrayList.toArray(downloadListenerArr);
        return downloadListenerArr;
    }

    public synchronized void addAutoRemoveListenersWhenTaskEnd(int i) {
        if (this.f39250b.contains(Integer.valueOf(i))) {
            return;
        }
        this.f39250b.add(Integer.valueOf(i));
    }

    public synchronized void attachAndEnqueueIfNotRun(@NonNull DownloadTask downloadTask, @NonNull DownloadListener downloadListener) {
        attachListener(downloadTask, downloadListener);
        if (!m30982c(downloadTask)) {
            downloadTask.enqueue(this.f39251c);
        }
    }

    public synchronized void attachListener(@NonNull DownloadTask downloadTask, @NonNull DownloadListener downloadListener) {
        int id = downloadTask.getId();
        ArrayList<DownloadListener> arrayList = this.f39249a.get(id);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f39249a.put(id, arrayList);
        }
        if (!arrayList.contains(downloadListener)) {
            arrayList.add(downloadListener);
            if (downloadListener instanceof ListenerAssist) {
                ((ListenerAssist) downloadListener).setAlwaysRecoverAssistModelIfNotSet(true);
            }
        }
    }

    /* renamed from: c */
    public boolean m30982c(@NonNull DownloadTask downloadTask) {
        return StatusUtil.isSameTaskPendingOrRunning(downloadTask);
    }

    public synchronized void detachListener(int i) {
        this.f39249a.remove(i);
    }

    public synchronized void enqueueTaskWithUnifiedListener(@NonNull DownloadTask downloadTask, @NonNull DownloadListener downloadListener) {
        attachListener(downloadTask, downloadListener);
        downloadTask.enqueue(this.f39251c);
    }

    public synchronized void executeTaskWithUnifiedListener(@NonNull DownloadTask downloadTask, @NonNull DownloadListener downloadListener) {
        attachListener(downloadTask, downloadListener);
        downloadTask.execute(this.f39251c);
    }

    @NonNull
    public DownloadListener getHostListener() {
        return this.f39251c;
    }

    public synchronized void removeAutoRemoveListenersWhenTaskEnd(int i) {
        this.f39250b.remove(Integer.valueOf(i));
    }

    public synchronized void detachListener(DownloadListener downloadListener) {
        int size = this.f39249a.size();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            ArrayList<DownloadListener> valueAt = this.f39249a.valueAt(i);
            if (valueAt != null) {
                valueAt.remove(downloadListener);
                if (valueAt.isEmpty()) {
                    arrayList.add(Integer.valueOf(this.f39249a.keyAt(i)));
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            this.f39249a.remove(((Integer) it2.next()).intValue());
        }
    }

    public synchronized boolean detachListener(@NonNull DownloadTask downloadTask, DownloadListener downloadListener) {
        int id = downloadTask.getId();
        ArrayList<DownloadListener> arrayList = this.f39249a.get(id);
        if (arrayList == null) {
            return false;
        }
        boolean remove = arrayList.remove(downloadListener);
        if (arrayList.isEmpty()) {
            this.f39249a.remove(id);
        }
        return remove;
    }
}
