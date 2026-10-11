package com.liulishuo.okdownload.core.dispatcher;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadListener;
import com.liulishuo.okdownload.DownloadMonitor;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.OkDownload;
import com.liulishuo.okdownload.core.Util;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.cause.ResumeFailedCause;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public class CallbackDispatcher {

    /* renamed from: c */
    public static final String f39325c = "CallbackDispatcher";

    /* renamed from: a */
    public final DownloadListener f39326a;

    /* renamed from: b */
    public final Handler f39327b;

    /* renamed from: com.liulishuo.okdownload.core.dispatcher.CallbackDispatcher$a */
    /* loaded from: classes4.dex */
    public class RunnableC6964a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Collection f39328e;

        /* renamed from: f */
        public final /* synthetic */ Exception f39329f;

        public RunnableC6964a(Collection collection, Exception exc) {
            this.f39328e = collection;
            this.f39329f = exc;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (DownloadTask downloadTask : this.f39328e) {
                downloadTask.getListener().taskEnd(downloadTask, EndCause.ERROR, this.f39329f);
            }
        }
    }

    /* renamed from: com.liulishuo.okdownload.core.dispatcher.CallbackDispatcher$b */
    /* loaded from: classes4.dex */
    public class RunnableC6965b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Collection f39331e;

        /* renamed from: f */
        public final /* synthetic */ Collection f39332f;

        /* renamed from: g */
        public final /* synthetic */ Collection f39333g;

        public RunnableC6965b(Collection collection, Collection collection2, Collection collection3) {
            this.f39331e = collection;
            this.f39332f = collection2;
            this.f39333g = collection3;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (DownloadTask downloadTask : this.f39331e) {
                downloadTask.getListener().taskEnd(downloadTask, EndCause.COMPLETED, null);
            }
            for (DownloadTask downloadTask2 : this.f39332f) {
                downloadTask2.getListener().taskEnd(downloadTask2, EndCause.SAME_TASK_BUSY, null);
            }
            for (DownloadTask downloadTask3 : this.f39333g) {
                downloadTask3.getListener().taskEnd(downloadTask3, EndCause.FILE_BUSY, null);
            }
        }
    }

    /* renamed from: com.liulishuo.okdownload.core.dispatcher.CallbackDispatcher$c */
    /* loaded from: classes4.dex */
    public class RunnableC6966c implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Collection f39335e;

        public RunnableC6966c(Collection collection) {
            this.f39335e = collection;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (DownloadTask downloadTask : this.f39335e) {
                downloadTask.getListener().taskEnd(downloadTask, EndCause.CANCELED, null);
            }
        }
    }

    /* renamed from: com.liulishuo.okdownload.core.dispatcher.CallbackDispatcher$d */
    /* loaded from: classes4.dex */
    public static class C6967d implements DownloadListener {

        /* renamed from: e */
        @NonNull
        public final Handler f39337e;

        /* renamed from: com.liulishuo.okdownload.core.dispatcher.CallbackDispatcher$d$a */
        /* loaded from: classes4.dex */
        public class a implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ DownloadTask f39338e;

            /* renamed from: f */
            public final /* synthetic */ int f39339f;

            /* renamed from: g */
            public final /* synthetic */ long f39340g;

            public a(DownloadTask downloadTask, int i, long j) {
                this.f39338e = downloadTask;
                this.f39339f = i;
                this.f39340g = j;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f39338e.getListener().fetchEnd(this.f39338e, this.f39339f, this.f39340g);
            }
        }

        /* renamed from: com.liulishuo.okdownload.core.dispatcher.CallbackDispatcher$d$b */
        /* loaded from: classes4.dex */
        public class b implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ DownloadTask f39342e;

            /* renamed from: f */
            public final /* synthetic */ EndCause f39343f;

            /* renamed from: g */
            public final /* synthetic */ Exception f39344g;

            public b(DownloadTask downloadTask, EndCause endCause, Exception exc) {
                this.f39342e = downloadTask;
                this.f39343f = endCause;
                this.f39344g = exc;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f39342e.getListener().taskEnd(this.f39342e, this.f39343f, this.f39344g);
            }
        }

        /* renamed from: com.liulishuo.okdownload.core.dispatcher.CallbackDispatcher$d$c */
        /* loaded from: classes4.dex */
        public class c implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ DownloadTask f39346e;

            public c(DownloadTask downloadTask) {
                this.f39346e = downloadTask;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f39346e.getListener().taskStart(this.f39346e);
            }
        }

        /* renamed from: com.liulishuo.okdownload.core.dispatcher.CallbackDispatcher$d$d */
        /* loaded from: classes4.dex */
        public class d implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ DownloadTask f39348e;

            /* renamed from: f */
            public final /* synthetic */ Map f39349f;

            public d(DownloadTask downloadTask, Map map) {
                this.f39348e = downloadTask;
                this.f39349f = map;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f39348e.getListener().connectTrialStart(this.f39348e, this.f39349f);
            }
        }

        /* renamed from: com.liulishuo.okdownload.core.dispatcher.CallbackDispatcher$d$e */
        /* loaded from: classes4.dex */
        public class e implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ DownloadTask f39351e;

            /* renamed from: f */
            public final /* synthetic */ int f39352f;

            /* renamed from: g */
            public final /* synthetic */ Map f39353g;

            public e(DownloadTask downloadTask, int i, Map map) {
                this.f39351e = downloadTask;
                this.f39352f = i;
                this.f39353g = map;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f39351e.getListener().connectTrialEnd(this.f39351e, this.f39352f, this.f39353g);
            }
        }

        /* renamed from: com.liulishuo.okdownload.core.dispatcher.CallbackDispatcher$d$f */
        /* loaded from: classes4.dex */
        public class f implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ DownloadTask f39355e;

            /* renamed from: f */
            public final /* synthetic */ BreakpointInfo f39356f;

            /* renamed from: g */
            public final /* synthetic */ ResumeFailedCause f39357g;

            public f(DownloadTask downloadTask, BreakpointInfo breakpointInfo, ResumeFailedCause resumeFailedCause) {
                this.f39355e = downloadTask;
                this.f39356f = breakpointInfo;
                this.f39357g = resumeFailedCause;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f39355e.getListener().downloadFromBeginning(this.f39355e, this.f39356f, this.f39357g);
            }
        }

        /* renamed from: com.liulishuo.okdownload.core.dispatcher.CallbackDispatcher$d$g */
        /* loaded from: classes4.dex */
        public class g implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ DownloadTask f39359e;

            /* renamed from: f */
            public final /* synthetic */ BreakpointInfo f39360f;

            public g(DownloadTask downloadTask, BreakpointInfo breakpointInfo) {
                this.f39359e = downloadTask;
                this.f39360f = breakpointInfo;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f39359e.getListener().downloadFromBreakpoint(this.f39359e, this.f39360f);
            }
        }

        /* renamed from: com.liulishuo.okdownload.core.dispatcher.CallbackDispatcher$d$h */
        /* loaded from: classes4.dex */
        public class h implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ DownloadTask f39362e;

            /* renamed from: f */
            public final /* synthetic */ int f39363f;

            /* renamed from: g */
            public final /* synthetic */ Map f39364g;

            public h(DownloadTask downloadTask, int i, Map map) {
                this.f39362e = downloadTask;
                this.f39363f = i;
                this.f39364g = map;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f39362e.getListener().connectStart(this.f39362e, this.f39363f, this.f39364g);
            }
        }

        /* renamed from: com.liulishuo.okdownload.core.dispatcher.CallbackDispatcher$d$i */
        /* loaded from: classes4.dex */
        public class i implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ DownloadTask f39366e;

            /* renamed from: f */
            public final /* synthetic */ int f39367f;

            /* renamed from: g */
            public final /* synthetic */ int f39368g;

            /* renamed from: h */
            public final /* synthetic */ Map f39369h;

            public i(DownloadTask downloadTask, int i, int i2, Map map) {
                this.f39366e = downloadTask;
                this.f39367f = i;
                this.f39368g = i2;
                this.f39369h = map;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f39366e.getListener().connectEnd(this.f39366e, this.f39367f, this.f39368g, this.f39369h);
            }
        }

        /* renamed from: com.liulishuo.okdownload.core.dispatcher.CallbackDispatcher$d$j */
        /* loaded from: classes4.dex */
        public class j implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ DownloadTask f39371e;

            /* renamed from: f */
            public final /* synthetic */ int f39372f;

            /* renamed from: g */
            public final /* synthetic */ long f39373g;

            public j(DownloadTask downloadTask, int i, long j) {
                this.f39371e = downloadTask;
                this.f39372f = i;
                this.f39373g = j;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f39371e.getListener().fetchStart(this.f39371e, this.f39372f, this.f39373g);
            }
        }

        /* renamed from: com.liulishuo.okdownload.core.dispatcher.CallbackDispatcher$d$k */
        /* loaded from: classes4.dex */
        public class k implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ DownloadTask f39375e;

            /* renamed from: f */
            public final /* synthetic */ int f39376f;

            /* renamed from: g */
            public final /* synthetic */ long f39377g;

            public k(DownloadTask downloadTask, int i, long j) {
                this.f39375e = downloadTask;
                this.f39376f = i;
                this.f39377g = j;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f39375e.getListener().fetchProgress(this.f39375e, this.f39376f, this.f39377g);
            }
        }

        public C6967d(@NonNull Handler handler) {
            this.f39337e = handler;
        }

        /* renamed from: a */
        public void m31012a(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo, @NonNull ResumeFailedCause resumeFailedCause) {
            DownloadMonitor monitor = OkDownload.with().getMonitor();
            if (monitor != null) {
                monitor.taskDownloadFromBeginning(downloadTask, breakpointInfo, resumeFailedCause);
            }
        }

        /* renamed from: b */
        public void m31013b(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo) {
            DownloadMonitor monitor = OkDownload.with().getMonitor();
            if (monitor != null) {
                monitor.taskDownloadFromBreakpoint(downloadTask, breakpointInfo);
            }
        }

        /* renamed from: c */
        public void m31014c(DownloadTask downloadTask, EndCause endCause, @Nullable Exception exc) {
            DownloadMonitor monitor = OkDownload.with().getMonitor();
            if (monitor != null) {
                monitor.taskEnd(downloadTask, endCause, exc);
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void connectEnd(@NonNull DownloadTask downloadTask, int i2, int i3, @NonNull Map<String, List<String>> map) {
            Util.m30983d(CallbackDispatcher.f39325c, "<----- finish connection task(" + downloadTask.getId() + ") block(" + i2 + ") code[" + i3 + IteratorUtils.f104924b + map);
            if (downloadTask.isAutoCallbackToUIThread()) {
                this.f39337e.post(new i(downloadTask, i2, i3, map));
            } else {
                downloadTask.getListener().connectEnd(downloadTask, i2, i3, map);
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void connectStart(@NonNull DownloadTask downloadTask, int i2, @NonNull Map<String, List<String>> map) {
            Util.m30983d(CallbackDispatcher.f39325c, "-----> start connection task(" + downloadTask.getId() + ") block(" + i2 + ") " + map);
            if (downloadTask.isAutoCallbackToUIThread()) {
                this.f39337e.post(new h(downloadTask, i2, map));
            } else {
                downloadTask.getListener().connectStart(downloadTask, i2, map);
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void connectTrialEnd(@NonNull DownloadTask downloadTask, int i2, @NonNull Map<String, List<String>> map) {
            Util.m30983d(CallbackDispatcher.f39325c, "<----- finish trial task(" + downloadTask.getId() + ") code[" + i2 + IteratorUtils.f104924b + map);
            if (downloadTask.isAutoCallbackToUIThread()) {
                this.f39337e.post(new e(downloadTask, i2, map));
            } else {
                downloadTask.getListener().connectTrialEnd(downloadTask, i2, map);
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void connectTrialStart(@NonNull DownloadTask downloadTask, @NonNull Map<String, List<String>> map) {
            Util.m30983d(CallbackDispatcher.f39325c, "-----> start trial task(" + downloadTask.getId() + ") " + map);
            if (downloadTask.isAutoCallbackToUIThread()) {
                this.f39337e.post(new d(downloadTask, map));
            } else {
                downloadTask.getListener().connectTrialStart(downloadTask, map);
            }
        }

        /* renamed from: d */
        public void m31015d(DownloadTask downloadTask) {
            DownloadMonitor monitor = OkDownload.with().getMonitor();
            if (monitor != null) {
                monitor.taskStart(downloadTask);
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void downloadFromBeginning(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo, @NonNull ResumeFailedCause resumeFailedCause) {
            Util.m30983d(CallbackDispatcher.f39325c, "downloadFromBeginning: " + downloadTask.getId());
            m31012a(downloadTask, breakpointInfo, resumeFailedCause);
            if (downloadTask.isAutoCallbackToUIThread()) {
                this.f39337e.post(new f(downloadTask, breakpointInfo, resumeFailedCause));
            } else {
                downloadTask.getListener().downloadFromBeginning(downloadTask, breakpointInfo, resumeFailedCause);
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void downloadFromBreakpoint(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo) {
            Util.m30983d(CallbackDispatcher.f39325c, "downloadFromBreakpoint: " + downloadTask.getId());
            m31013b(downloadTask, breakpointInfo);
            if (downloadTask.isAutoCallbackToUIThread()) {
                this.f39337e.post(new g(downloadTask, breakpointInfo));
            } else {
                downloadTask.getListener().downloadFromBreakpoint(downloadTask, breakpointInfo);
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void fetchEnd(@NonNull DownloadTask downloadTask, int i2, long j2) {
            Util.m30983d(CallbackDispatcher.f39325c, "fetchEnd: " + downloadTask.getId());
            if (downloadTask.isAutoCallbackToUIThread()) {
                this.f39337e.post(new a(downloadTask, i2, j2));
            } else {
                downloadTask.getListener().fetchEnd(downloadTask, i2, j2);
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void fetchProgress(@NonNull DownloadTask downloadTask, int i2, long j2) {
            if (downloadTask.getMinIntervalMillisCallbackProcess() > 0) {
                DownloadTask.TaskHideWrapper.setLastCallbackProcessTs(downloadTask, SystemClock.uptimeMillis());
            }
            if (downloadTask.isAutoCallbackToUIThread()) {
                this.f39337e.post(new k(downloadTask, i2, j2));
            } else {
                downloadTask.getListener().fetchProgress(downloadTask, i2, j2);
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void fetchStart(@NonNull DownloadTask downloadTask, int i2, long j2) {
            Util.m30983d(CallbackDispatcher.f39325c, "fetchStart: " + downloadTask.getId());
            if (downloadTask.isAutoCallbackToUIThread()) {
                this.f39337e.post(new j(downloadTask, i2, j2));
            } else {
                downloadTask.getListener().fetchStart(downloadTask, i2, j2);
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskEnd(@NonNull DownloadTask downloadTask, @NonNull EndCause endCause, @Nullable Exception exc) {
            if (endCause == EndCause.ERROR) {
                Util.m30983d(CallbackDispatcher.f39325c, "taskEnd: " + downloadTask.getId() + " " + endCause + " " + exc);
            }
            m31014c(downloadTask, endCause, exc);
            if (downloadTask.isAutoCallbackToUIThread()) {
                this.f39337e.post(new b(downloadTask, endCause, exc));
            } else {
                downloadTask.getListener().taskEnd(downloadTask, endCause, exc);
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskStart(@NonNull DownloadTask downloadTask) {
            Util.m30983d(CallbackDispatcher.f39325c, "taskStart: " + downloadTask.getId());
            m31015d(downloadTask);
            if (downloadTask.isAutoCallbackToUIThread()) {
                this.f39337e.post(new c(downloadTask));
            } else {
                downloadTask.getListener().taskStart(downloadTask);
            }
        }
    }

    public CallbackDispatcher(@NonNull Handler handler, @NonNull DownloadListener downloadListener) {
        this.f39327b = handler;
        this.f39326a = downloadListener;
    }

    public DownloadListener dispatch() {
        return this.f39326a;
    }

    public void endTasks(@NonNull Collection<DownloadTask> collection, @NonNull Collection<DownloadTask> collection2, @NonNull Collection<DownloadTask> collection3) {
        if (collection.size() == 0 && collection2.size() == 0 && collection3.size() == 0) {
            return;
        }
        Util.m30983d(f39325c, "endTasks completed[" + collection.size() + "] sameTask[" + collection2.size() + "] fileBusy[" + collection3.size() + IteratorUtils.f104924b);
        if (collection.size() > 0) {
            Iterator<DownloadTask> it2 = collection.iterator();
            while (it2.hasNext()) {
                DownloadTask next = it2.next();
                if (!next.isAutoCallbackToUIThread()) {
                    next.getListener().taskEnd(next, EndCause.COMPLETED, null);
                    it2.remove();
                }
            }
        }
        if (collection2.size() > 0) {
            Iterator<DownloadTask> it3 = collection2.iterator();
            while (it3.hasNext()) {
                DownloadTask next2 = it3.next();
                if (!next2.isAutoCallbackToUIThread()) {
                    next2.getListener().taskEnd(next2, EndCause.SAME_TASK_BUSY, null);
                    it3.remove();
                }
            }
        }
        if (collection3.size() > 0) {
            Iterator<DownloadTask> it4 = collection3.iterator();
            while (it4.hasNext()) {
                DownloadTask next3 = it4.next();
                if (!next3.isAutoCallbackToUIThread()) {
                    next3.getListener().taskEnd(next3, EndCause.FILE_BUSY, null);
                    it4.remove();
                }
            }
        }
        if (collection.size() == 0 && collection2.size() == 0 && collection3.size() == 0) {
            return;
        }
        this.f39327b.post(new RunnableC6965b(collection, collection2, collection3));
    }

    public void endTasksWithCanceled(@NonNull Collection<DownloadTask> collection) {
        if (collection.size() <= 0) {
            return;
        }
        Util.m30983d(f39325c, "endTasksWithCanceled canceled[" + collection.size() + IteratorUtils.f104924b);
        Iterator<DownloadTask> it2 = collection.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (!next.isAutoCallbackToUIThread()) {
                next.getListener().taskEnd(next, EndCause.CANCELED, null);
                it2.remove();
            }
        }
        this.f39327b.post(new RunnableC6966c(collection));
    }

    public void endTasksWithError(@NonNull Collection<DownloadTask> collection, @NonNull Exception exc) {
        if (collection.size() <= 0) {
            return;
        }
        Util.m30983d(f39325c, "endTasksWithError error[" + collection.size() + "] realCause: " + exc);
        Iterator<DownloadTask> it2 = collection.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (!next.isAutoCallbackToUIThread()) {
                next.getListener().taskEnd(next, EndCause.ERROR, exc);
                it2.remove();
            }
        }
        this.f39327b.post(new RunnableC6964a(collection, exc));
    }

    public boolean isFetchProcessMoment(DownloadTask downloadTask) {
        long minIntervalMillisCallbackProcess = downloadTask.getMinIntervalMillisCallbackProcess();
        return minIntervalMillisCallbackProcess <= 0 || SystemClock.uptimeMillis() - DownloadTask.TaskHideWrapper.getLastCallbackProcessTs(downloadTask) >= minIntervalMillisCallbackProcess;
    }

    public CallbackDispatcher() {
        Handler handler = new Handler(Looper.getMainLooper());
        this.f39327b = handler;
        this.f39326a = new C6967d(handler);
    }
}
