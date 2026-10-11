package com.liulishuo.okdownload.core.download;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.OkDownload;
import com.liulishuo.okdownload.core.NamedRunnable;
import com.liulishuo.okdownload.core.Util;
import com.liulishuo.okdownload.core.breakpoint.BlockInfo;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.breakpoint.DownloadStore;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.cause.ResumeFailedCause;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import io.opencensus.contrib.http.util.HttpMeasureConstants;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class DownloadCall extends NamedRunnable implements Comparable<DownloadCall> {

    /* renamed from: k */
    public static final ExecutorService f39421k = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkDownload Block", false));

    /* renamed from: l */
    public static final String f39422l = "DownloadCall";

    /* renamed from: m */
    public static final int f39423m = 1;
    public final boolean asyncExecuted;

    /* renamed from: e */
    @NonNull
    public final ArrayList<DownloadChain> f39424e;

    /* renamed from: f */
    @Nullable
    public volatile DownloadCache f39425f;

    /* renamed from: g */
    public volatile boolean f39426g;

    /* renamed from: h */
    public volatile boolean f39427h;

    /* renamed from: i */
    public volatile Thread f39428i;

    /* renamed from: j */
    @NonNull
    public final DownloadStore f39429j;
    public final DownloadTask task;

    public DownloadCall(DownloadTask downloadTask, boolean z, @NonNull DownloadStore downloadStore) {
        this(downloadTask, z, new ArrayList(), downloadStore);
    }

    public static DownloadCall create(DownloadTask downloadTask, boolean z, @NonNull DownloadStore downloadStore) {
        return new DownloadCall(downloadTask, z, downloadStore);
    }

    /* renamed from: a */
    public void m31053a(@NonNull BreakpointInfo breakpointInfo, @NonNull BreakpointRemoteCheck breakpointRemoteCheck, @NonNull ResumeFailedCause resumeFailedCause) {
        Util.assembleBlock(this.task, breakpointInfo, breakpointRemoteCheck.getInstanceLength(), breakpointRemoteCheck.isAcceptRange());
        OkDownload.with().callbackDispatcher().dispatch().downloadFromBeginning(this.task, breakpointInfo, resumeFailedCause);
    }

    /* renamed from: b */
    public DownloadCache m31054b(@NonNull BreakpointInfo breakpointInfo) {
        return new DownloadCache(OkDownload.with().processFileStrategy().createProcessStream(this.task, breakpointInfo, this.f39429j));
    }

    @NonNull
    /* renamed from: c */
    public BreakpointLocalCheck m31055c(@NonNull BreakpointInfo breakpointInfo, long j) {
        return new BreakpointLocalCheck(this.task, breakpointInfo, j);
    }

    public boolean cancel() {
        synchronized (this) {
            if (this.f39426g) {
                return false;
            }
            if (this.f39427h) {
                return false;
            }
            this.f39426g = true;
            long uptimeMillis = SystemClock.uptimeMillis();
            OkDownload.with().downloadDispatcher().flyingCanceled(this);
            DownloadCache downloadCache = this.f39425f;
            if (downloadCache != null) {
                downloadCache.m31052j();
            }
            Object[] array = this.f39424e.toArray();
            if (array != null && array.length != 0) {
                for (Object obj : array) {
                    if (obj instanceof DownloadChain) {
                        ((DownloadChain) obj).cancel();
                    }
                }
            } else if (this.f39428i != null) {
                Util.m30983d(f39422l, "interrupt thread with cancel operation because of chains are not running " + this.task.getId());
                this.f39428i.interrupt();
            }
            if (downloadCache != null) {
                downloadCache.m31043a().cancelAsync();
            }
            Util.m30983d(f39422l, "cancel task " + this.task.getId() + " consume: " + (SystemClock.uptimeMillis() - uptimeMillis) + HttpMeasureConstants.f94668b);
            return true;
        }
    }

    @NonNull
    /* renamed from: d */
    public BreakpointRemoteCheck m31056d(@NonNull BreakpointInfo breakpointInfo) {
        return new BreakpointRemoteCheck(this.task, breakpointInfo);
    }

    /* renamed from: e */
    public int m31057e() {
        return this.task.getPriority();
    }

    public boolean equalsTask(@NonNull DownloadTask downloadTask) {
        return this.task.equals(downloadTask);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x015b A[EDGE_INSN: B:33:0x015b->B:34:0x015b BREAK  A[LOOP:0: B:2:0x0013->B:56:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[LOOP:0: B:2:0x0013->B:56:?, LOOP_END, SYNTHETIC] */
    @Override // com.liulishuo.okdownload.core.NamedRunnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void execute() throws java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.okdownload.core.download.DownloadCall.execute():void");
    }

    /* renamed from: f */
    public final void m31058f(DownloadCache downloadCache, @NonNull EndCause endCause, @Nullable Exception exc) {
        if (endCause == EndCause.CANCELED) {
            throw new IllegalAccessError("can't recognize cancelled on here");
        }
        synchronized (this) {
            if (this.f39426g) {
                return;
            }
            this.f39427h = true;
            this.f39429j.onTaskEnd(this.task.getId(), endCause, exc);
            if (endCause == EndCause.COMPLETED) {
                this.f39429j.markFileClear(this.task.getId());
                OkDownload.with().processFileStrategy().completeProcessStream(downloadCache.m31043a(), this.task);
            }
            OkDownload.with().callbackDispatcher().dispatch().taskEnd(this.task, endCause, exc);
        }
    }

    @Override // com.liulishuo.okdownload.core.NamedRunnable
    public void finished() {
        OkDownload.with().downloadDispatcher().finish(this);
        Util.m30983d(f39422l, "call is finished " + this.task.getId());
    }

    /* renamed from: g */
    public final void m31059g() {
        this.f39429j.onTaskStart(this.task.getId());
        OkDownload.with().callbackDispatcher().dispatch().taskStart(this.task);
    }

    @Nullable
    public File getFile() {
        return this.task.getFile();
    }

    /* renamed from: h */
    public void m31060h(@NonNull BreakpointInfo breakpointInfo) {
        DownloadTask.TaskHideWrapper.setBreakpointInfo(this.task, breakpointInfo);
    }

    /* renamed from: i */
    public void m31061i(DownloadCache downloadCache, BreakpointInfo breakpointInfo) throws InterruptedException {
        int blockCount = breakpointInfo.getBlockCount();
        ArrayList arrayList = new ArrayList(breakpointInfo.getBlockCount());
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < blockCount; i++) {
            BlockInfo block = breakpointInfo.getBlock(i);
            if (!Util.isCorrectFull(block.getCurrentOffset(), block.getContentLength())) {
                Util.resetBlockIfDirty(block);
                DownloadChain m31064a = DownloadChain.m31064a(i, this.task, breakpointInfo, downloadCache, this.f39429j);
                arrayList.add(m31064a);
                arrayList2.add(Integer.valueOf(m31064a.getBlockIndex()));
            }
        }
        if (this.f39426g) {
            return;
        }
        downloadCache.m31043a().setRequireStreamBlocks(arrayList2);
        m31062j(arrayList);
    }

    @Override // com.liulishuo.okdownload.core.NamedRunnable
    public void interrupted(InterruptedException interruptedException) {
    }

    public boolean isCanceled() {
        return this.f39426g;
    }

    public boolean isFinishing() {
        return this.f39427h;
    }

    /* renamed from: j */
    public void m31062j(List<DownloadChain> list) throws InterruptedException {
        ArrayList arrayList = new ArrayList(list.size());
        try {
            Iterator<DownloadChain> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(m31063k(it2.next()));
            }
            this.f39424e.addAll(list);
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                Future future = (Future) it3.next();
                if (!future.isDone()) {
                    try {
                        future.get();
                    } catch (CancellationException | ExecutionException unused) {
                    }
                }
            }
        } finally {
        }
    }

    /* renamed from: k */
    public Future<?> m31063k(DownloadChain downloadChain) {
        return f39421k.submit(downloadChain);
    }

    public DownloadCall(DownloadTask downloadTask, boolean z, @NonNull ArrayList<DownloadChain> arrayList, @NonNull DownloadStore downloadStore) {
        super("download call: " + downloadTask.getId());
        this.task = downloadTask;
        this.asyncExecuted = z;
        this.f39424e = arrayList;
        this.f39429j = downloadStore;
    }

    @Override // java.lang.Comparable
    @SuppressFBWarnings(justification = "This special case is just for task priority", value = {"Eq"})
    public int compareTo(@NonNull DownloadCall downloadCall) {
        return downloadCall.m31057e() - m31057e();
    }
}
