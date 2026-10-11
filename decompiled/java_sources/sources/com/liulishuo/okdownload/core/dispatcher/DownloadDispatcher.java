package com.liulishuo.okdownload.core.dispatcher;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.OkDownload;
import com.liulishuo.okdownload.StatusUtil;
import com.liulishuo.okdownload.core.IdentifiedTask;
import com.liulishuo.okdownload.core.Util;
import com.liulishuo.okdownload.core.breakpoint.DownloadStore;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.download.DownloadCall;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import io.opencensus.contrib.http.util.HttpMeasureConstants;
import java.io.File;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
public class DownloadDispatcher {

    /* renamed from: j */
    public static final String f39379j = "DownloadDispatcher";

    /* renamed from: a */
    @SuppressFBWarnings(justification = "Not so urgency", value = {"IS"})
    public int f39380a;

    /* renamed from: b */
    public final List<DownloadCall> f39381b;

    /* renamed from: c */
    public final List<DownloadCall> f39382c;

    /* renamed from: d */
    public final List<DownloadCall> f39383d;

    /* renamed from: e */
    public final List<DownloadCall> f39384e;

    /* renamed from: f */
    public final AtomicInteger f39385f;

    /* renamed from: g */
    @Nullable
    public volatile ExecutorService f39386g;

    /* renamed from: h */
    public final AtomicInteger f39387h;

    /* renamed from: i */
    @SuppressFBWarnings(justification = "Not so urgency", value = {"IS"})
    public DownloadStore f39388i;

    public DownloadDispatcher() {
        this(new ArrayList(), new ArrayList(), new ArrayList(), new ArrayList());
    }

    public static void setMaxParallelRunningCount(int i) {
        DownloadDispatcher downloadDispatcher = OkDownload.with().downloadDispatcher();
        if (downloadDispatcher.getClass() == DownloadDispatcher.class) {
            downloadDispatcher.f39380a = Math.max(1, i);
            return;
        }
        throw new IllegalStateException("The current dispatcher is " + downloadDispatcher + " not DownloadDispatcher exactly!");
    }

    /* renamed from: a */
    public final synchronized void m31016a(IdentifiedTask[] identifiedTaskArr) {
        long uptimeMillis = SystemClock.uptimeMillis();
        Util.m30983d(f39379j, "start cancel bunch task manually: " + identifiedTaskArr.length);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            for (IdentifiedTask identifiedTask : identifiedTaskArr) {
                m31021f(identifiedTask, arrayList, arrayList2);
            }
        } finally {
            m31023h(arrayList, arrayList2);
            Util.m30983d(f39379j, "finish cancel bunch task manually: " + identifiedTaskArr.length + " consume " + (SystemClock.uptimeMillis() - uptimeMillis) + HttpMeasureConstants.f94668b);
        }
    }

    /* renamed from: b */
    public synchronized boolean m31017b(IdentifiedTask identifiedTask) {
        ArrayList arrayList;
        ArrayList arrayList2;
        Util.m30983d(f39379j, "cancel manually: " + identifiedTask.getId());
        arrayList = new ArrayList();
        arrayList2 = new ArrayList();
        try {
            m31021f(identifiedTask, arrayList, arrayList2);
            m31023h(arrayList, arrayList2);
        } catch (Throwable th) {
            m31023h(arrayList, arrayList2);
            throw th;
        }
        return arrayList.size() > 0 || arrayList2.size() > 0;
    }

    /* renamed from: c */
    public final synchronized void m31018c(DownloadTask downloadTask) {
        DownloadCall create = DownloadCall.create(downloadTask, true, this.f39388i);
        if (m31030o() < this.f39380a) {
            this.f39382c.add(create);
            m31022g().execute(create);
        } else {
            this.f39381b.add(create);
        }
    }

    public void cancel(IdentifiedTask[] identifiedTaskArr) {
        this.f39387h.incrementAndGet();
        m31016a(identifiedTaskArr);
        this.f39387h.decrementAndGet();
        m31029n();
    }

    public void cancelAll() {
        this.f39387h.incrementAndGet();
        ArrayList arrayList = new ArrayList();
        Iterator<DownloadCall> it2 = this.f39381b.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().task);
        }
        Iterator<DownloadCall> it3 = this.f39382c.iterator();
        while (it3.hasNext()) {
            arrayList.add(it3.next().task);
        }
        Iterator<DownloadCall> it4 = this.f39383d.iterator();
        while (it4.hasNext()) {
            arrayList.add(it4.next().task);
        }
        if (!arrayList.isEmpty()) {
            m31016a((IdentifiedTask[]) arrayList.toArray(new DownloadTask[arrayList.size()]));
        }
        this.f39387h.decrementAndGet();
    }

    /* renamed from: d */
    public final synchronized void m31019d(DownloadTask downloadTask) {
        Util.m30983d(f39379j, "enqueueLocked for single task: " + downloadTask);
        if (m31024i(downloadTask)) {
            return;
        }
        if (m31026k(downloadTask)) {
            return;
        }
        int size = this.f39381b.size();
        m31018c(downloadTask);
        if (size != this.f39381b.size()) {
            Collections.sort(this.f39381b);
        }
    }

    /* renamed from: e */
    public final synchronized void m31020e(DownloadTask[] downloadTaskArr) {
        long uptimeMillis = SystemClock.uptimeMillis();
        Util.m30983d(f39379j, "start enqueueLocked for bunch task: " + downloadTaskArr.length);
        ArrayList<DownloadTask> arrayList = new ArrayList();
        Collections.addAll(arrayList, downloadTaskArr);
        if (arrayList.size() > 1) {
            Collections.sort(arrayList);
        }
        int size = this.f39381b.size();
        try {
            OkDownload.with().downloadStrategy().inspectNetworkAvailable();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            for (DownloadTask downloadTask : arrayList) {
                if (!m31025j(downloadTask, arrayList2) && !m31027l(downloadTask, arrayList3, arrayList4)) {
                    m31018c(downloadTask);
                }
            }
            OkDownload.with().callbackDispatcher().endTasks(arrayList2, arrayList3, arrayList4);
        } catch (UnknownHostException e) {
            OkDownload.with().callbackDispatcher().endTasksWithError(new ArrayList(arrayList), e);
        }
        if (size != this.f39381b.size()) {
            Collections.sort(this.f39381b);
        }
        Util.m30983d(f39379j, "end enqueueLocked for bunch task: " + downloadTaskArr.length + " consume " + (SystemClock.uptimeMillis() - uptimeMillis) + HttpMeasureConstants.f94668b);
    }

    public void enqueue(DownloadTask[] downloadTaskArr) {
        this.f39387h.incrementAndGet();
        m31020e(downloadTaskArr);
        this.f39387h.decrementAndGet();
    }

    public void execute(DownloadTask downloadTask) {
        Util.m30983d(f39379j, "execute: " + downloadTask);
        synchronized (this) {
            if (m31024i(downloadTask)) {
                return;
            }
            if (m31026k(downloadTask)) {
                return;
            }
            DownloadCall create = DownloadCall.create(downloadTask, false, this.f39388i);
            this.f39383d.add(create);
            m31031p(create);
        }
    }

    /* renamed from: f */
    public final synchronized void m31021f(@NonNull IdentifiedTask identifiedTask, @NonNull List<DownloadCall> list, @NonNull List<DownloadCall> list2) {
        Iterator<DownloadCall> it2 = this.f39381b.iterator();
        while (it2.hasNext()) {
            DownloadCall next = it2.next();
            DownloadTask downloadTask = next.task;
            if (downloadTask == identifiedTask || downloadTask.getId() == identifiedTask.getId()) {
                if (!next.isCanceled() && !next.isFinishing()) {
                    it2.remove();
                    list.add(next);
                    return;
                }
                return;
            }
        }
        for (DownloadCall downloadCall : this.f39382c) {
            DownloadTask downloadTask2 = downloadCall.task;
            if (downloadTask2 == identifiedTask || downloadTask2.getId() == identifiedTask.getId()) {
                list.add(downloadCall);
                list2.add(downloadCall);
                return;
            }
        }
        for (DownloadCall downloadCall2 : this.f39383d) {
            DownloadTask downloadTask3 = downloadCall2.task;
            if (downloadTask3 == identifiedTask || downloadTask3.getId() == identifiedTask.getId()) {
                list.add(downloadCall2);
                list2.add(downloadCall2);
                return;
            }
        }
    }

    @Nullable
    public synchronized DownloadTask findSameTask(DownloadTask downloadTask) {
        Util.m30983d(f39379j, "findSameTask: " + downloadTask.getId());
        for (DownloadCall downloadCall : this.f39381b) {
            if (!downloadCall.isCanceled() && downloadCall.equalsTask(downloadTask)) {
                return downloadCall.task;
            }
        }
        for (DownloadCall downloadCall2 : this.f39382c) {
            if (!downloadCall2.isCanceled() && downloadCall2.equalsTask(downloadTask)) {
                return downloadCall2.task;
            }
        }
        for (DownloadCall downloadCall3 : this.f39383d) {
            if (!downloadCall3.isCanceled() && downloadCall3.equalsTask(downloadTask)) {
                return downloadCall3.task;
            }
        }
        return null;
    }

    public synchronized void finish(DownloadCall downloadCall) {
        boolean z = downloadCall.asyncExecuted;
        if (!(this.f39384e.contains(downloadCall) ? this.f39384e : z ? this.f39382c : this.f39383d).remove(downloadCall)) {
            throw new AssertionError("Call wasn't in-flight!");
        }
        if (z && downloadCall.isCanceled()) {
            this.f39385f.decrementAndGet();
        }
        if (z) {
            m31029n();
        }
    }

    public synchronized void flyingCanceled(DownloadCall downloadCall) {
        Util.m30983d(f39379j, "flying canceled: " + downloadCall.task.getId());
        if (downloadCall.asyncExecuted) {
            this.f39385f.incrementAndGet();
        }
    }

    /* renamed from: g */
    public synchronized ExecutorService m31022g() {
        if (this.f39386g == null) {
            this.f39386g = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkDownload Download", false));
        }
        return this.f39386g;
    }

    /* renamed from: h */
    public final synchronized void m31023h(@NonNull List<DownloadCall> list, @NonNull List<DownloadCall> list2) {
        Util.m30983d(f39379j, "handle cancel calls, cancel calls: " + list2.size());
        if (!list2.isEmpty()) {
            for (DownloadCall downloadCall : list2) {
                if (!downloadCall.cancel()) {
                    list.remove(downloadCall);
                }
            }
        }
        Util.m30983d(f39379j, "handle cancel calls, callback cancel event: " + list.size());
        if (!list.isEmpty()) {
            if (list.size() <= 1) {
                OkDownload.with().callbackDispatcher().dispatch().taskEnd(list.get(0).task, EndCause.CANCELED, null);
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator<DownloadCall> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next().task);
                }
                OkDownload.with().callbackDispatcher().endTasksWithCanceled(arrayList);
            }
        }
    }

    /* renamed from: i */
    public boolean m31024i(@NonNull DownloadTask downloadTask) {
        return m31025j(downloadTask, null);
    }

    public synchronized boolean isFileConflictAfterRun(@NonNull DownloadTask downloadTask) {
        DownloadTask downloadTask2;
        File file;
        DownloadTask downloadTask3;
        File file2;
        Util.m30983d(f39379j, "is file conflict after run: " + downloadTask.getId());
        File file3 = downloadTask.getFile();
        if (file3 == null) {
            return false;
        }
        for (DownloadCall downloadCall : this.f39383d) {
            if (!downloadCall.isCanceled() && (downloadTask3 = downloadCall.task) != downloadTask && (file2 = downloadTask3.getFile()) != null && file3.equals(file2)) {
                return true;
            }
        }
        for (DownloadCall downloadCall2 : this.f39382c) {
            if (!downloadCall2.isCanceled() && (downloadTask2 = downloadCall2.task) != downloadTask && (file = downloadTask2.getFile()) != null && file3.equals(file)) {
                return true;
            }
        }
        return false;
    }

    public synchronized boolean isPending(DownloadTask downloadTask) {
        Util.m30983d(f39379j, "isPending: " + downloadTask.getId());
        for (DownloadCall downloadCall : this.f39381b) {
            if (!downloadCall.isCanceled() && downloadCall.equalsTask(downloadTask)) {
                return true;
            }
        }
        return false;
    }

    public synchronized boolean isRunning(DownloadTask downloadTask) {
        Util.m30983d(f39379j, "isRunning: " + downloadTask.getId());
        for (DownloadCall downloadCall : this.f39383d) {
            if (!downloadCall.isCanceled() && downloadCall.equalsTask(downloadTask)) {
                return true;
            }
        }
        for (DownloadCall downloadCall2 : this.f39382c) {
            if (!downloadCall2.isCanceled() && downloadCall2.equalsTask(downloadTask)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: j */
    public boolean m31025j(@NonNull DownloadTask downloadTask, @Nullable Collection<DownloadTask> collection) {
        if (!downloadTask.isPassIfAlreadyCompleted() || !StatusUtil.isCompleted(downloadTask)) {
            return false;
        }
        if (downloadTask.getFilename() == null && !OkDownload.with().downloadStrategy().validFilenameFromStore(downloadTask)) {
            return false;
        }
        OkDownload.with().downloadStrategy().validInfoOnCompleted(downloadTask, this.f39388i);
        if (collection != null) {
            collection.add(downloadTask);
            return true;
        }
        OkDownload.with().callbackDispatcher().dispatch().taskEnd(downloadTask, EndCause.COMPLETED, null);
        return true;
    }

    /* renamed from: k */
    public final boolean m31026k(@NonNull DownloadTask downloadTask) {
        return m31027l(downloadTask, null, null);
    }

    /* renamed from: l */
    public final boolean m31027l(@NonNull DownloadTask downloadTask, @Nullable Collection<DownloadTask> collection, @Nullable Collection<DownloadTask> collection2) {
        return m31028m(downloadTask, this.f39381b, collection, collection2) || m31028m(downloadTask, this.f39382c, collection, collection2) || m31028m(downloadTask, this.f39383d, collection, collection2);
    }

    /* renamed from: m */
    public boolean m31028m(@NonNull DownloadTask downloadTask, @NonNull Collection<DownloadCall> collection, @Nullable Collection<DownloadTask> collection2, @Nullable Collection<DownloadTask> collection3) {
        CallbackDispatcher callbackDispatcher = OkDownload.with().callbackDispatcher();
        Iterator<DownloadCall> it2 = collection.iterator();
        while (it2.hasNext()) {
            DownloadCall next = it2.next();
            if (!next.isCanceled()) {
                if (next.equalsTask(downloadTask)) {
                    if (!next.isFinishing()) {
                        if (collection2 != null) {
                            collection2.add(downloadTask);
                        } else {
                            callbackDispatcher.dispatch().taskEnd(downloadTask, EndCause.SAME_TASK_BUSY, null);
                        }
                        return true;
                    }
                    Util.m30983d(f39379j, "task: " + downloadTask.getId() + " is finishing, move it to finishing list");
                    this.f39384e.add(next);
                    it2.remove();
                    return false;
                }
                File file = next.getFile();
                File file2 = downloadTask.getFile();
                if (file != null && file2 != null && file.equals(file2)) {
                    if (collection3 != null) {
                        collection3.add(downloadTask);
                    } else {
                        callbackDispatcher.dispatch().taskEnd(downloadTask, EndCause.FILE_BUSY, null);
                    }
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: n */
    public final synchronized void m31029n() {
        if (this.f39387h.get() > 0) {
            return;
        }
        if (m31030o() >= this.f39380a) {
            return;
        }
        if (this.f39381b.isEmpty()) {
            return;
        }
        Iterator<DownloadCall> it2 = this.f39381b.iterator();
        while (it2.hasNext()) {
            DownloadCall next = it2.next();
            it2.remove();
            DownloadTask downloadTask = next.task;
            if (isFileConflictAfterRun(downloadTask)) {
                OkDownload.with().callbackDispatcher().dispatch().taskEnd(downloadTask, EndCause.FILE_BUSY, null);
            } else {
                this.f39382c.add(next);
                m31022g().execute(next);
                if (m31030o() >= this.f39380a) {
                    return;
                }
            }
        }
    }

    /* renamed from: o */
    public final int m31030o() {
        return this.f39382c.size() - this.f39385f.get();
    }

    /* renamed from: p */
    public void m31031p(DownloadCall downloadCall) {
        downloadCall.run();
    }

    public void setDownloadStore(@NonNull DownloadStore downloadStore) {
        this.f39388i = downloadStore;
    }

    public DownloadDispatcher(List<DownloadCall> list, List<DownloadCall> list2, List<DownloadCall> list3, List<DownloadCall> list4) {
        this.f39380a = 5;
        this.f39385f = new AtomicInteger();
        this.f39387h = new AtomicInteger();
        this.f39381b = list;
        this.f39382c = list2;
        this.f39383d = list3;
        this.f39384e = list4;
    }

    public void enqueue(DownloadTask downloadTask) {
        this.f39387h.incrementAndGet();
        m31019d(downloadTask);
        this.f39387h.decrementAndGet();
    }

    public boolean cancel(IdentifiedTask identifiedTask) {
        this.f39387h.incrementAndGet();
        boolean m31017b = m31017b(identifiedTask);
        this.f39387h.decrementAndGet();
        m31029n();
        return m31017b;
    }

    public boolean cancel(int i) {
        this.f39387h.incrementAndGet();
        boolean m31017b = m31017b(DownloadTask.mockTaskForCompare(i));
        this.f39387h.decrementAndGet();
        m31029n();
        return m31017b;
    }
}
