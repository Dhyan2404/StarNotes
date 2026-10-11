package com.liulishuo.okdownload;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.core.Util;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.listener.DownloadListener2;
import com.liulishuo.okdownload.core.listener.DownloadListenerBunch;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class DownloadSerialQueue extends DownloadListener2 implements Runnable {

    /* renamed from: k */
    public static final Executor f39166k = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 30, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkDownload DynamicSerial", false));

    /* renamed from: l */
    public static final int f39167l = 0;

    /* renamed from: m */
    public static final String f39168m = "DownloadSerialQueue";

    /* renamed from: e */
    public volatile boolean f39169e;

    /* renamed from: f */
    public volatile boolean f39170f;

    /* renamed from: g */
    public volatile boolean f39171g;

    /* renamed from: h */
    public volatile DownloadTask f39172h;

    /* renamed from: i */
    public final ArrayList<DownloadTask> f39173i;

    /* renamed from: j */
    @NonNull
    public DownloadListenerBunch f39174j;

    public DownloadSerialQueue() {
        this(null);
    }

    /* renamed from: a */
    public void m30971a() {
        f39166k.execute(this);
    }

    public synchronized void enqueue(DownloadTask downloadTask) {
        this.f39173i.add(downloadTask);
        Collections.sort(this.f39173i);
        if (!this.f39171g && !this.f39170f) {
            this.f39170f = true;
            m30971a();
        }
    }

    public int getWaitingTaskCount() {
        return this.f39173i.size();
    }

    public int getWorkingTaskId() {
        if (this.f39172h != null) {
            return this.f39172h.getId();
        }
        return 0;
    }

    public synchronized void pause() {
        if (this.f39171g) {
            Util.m30986w(f39168m, "require pause this queue(remain " + this.f39173i.size() + "), butit has already been paused");
            return;
        }
        this.f39171g = true;
        if (this.f39172h != null) {
            this.f39172h.cancel();
            this.f39173i.add(0, this.f39172h);
            this.f39172h = null;
        }
    }

    public synchronized void resume() {
        if (this.f39171g) {
            this.f39171g = false;
            if (!this.f39173i.isEmpty() && !this.f39170f) {
                this.f39170f = true;
                m30971a();
            }
            return;
        }
        Util.m30986w(f39168m, "require resume this queue(remain " + this.f39173i.size() + "), but it is still running");
    }

    @Override // java.lang.Runnable
    public void run() {
        DownloadTask remove;
        while (!this.f39169e) {
            synchronized (this) {
                if (!this.f39173i.isEmpty() && !this.f39171g) {
                    remove = this.f39173i.remove(0);
                }
                this.f39172h = null;
                this.f39170f = false;
                return;
            }
            remove.execute(this.f39174j);
        }
    }

    public void setListener(DownloadListener downloadListener) {
        this.f39174j = new DownloadListenerBunch.Builder().append(this).append(downloadListener).build();
    }

    public synchronized DownloadTask[] shutdown() {
        DownloadTask[] downloadTaskArr;
        this.f39169e = true;
        if (this.f39172h != null) {
            this.f39172h.cancel();
        }
        downloadTaskArr = new DownloadTask[this.f39173i.size()];
        this.f39173i.toArray(downloadTaskArr);
        this.f39173i.clear();
        return downloadTaskArr;
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public synchronized void taskEnd(@NonNull DownloadTask downloadTask, @NonNull EndCause endCause, @Nullable Exception exc) {
        if (endCause != EndCause.CANCELED && downloadTask == this.f39172h) {
            this.f39172h = null;
        }
    }

    @Override // com.liulishuo.okdownload.DownloadListener
    public void taskStart(@NonNull DownloadTask downloadTask) {
        this.f39172h = downloadTask;
    }

    public DownloadSerialQueue(DownloadListener downloadListener, ArrayList<DownloadTask> arrayList) {
        this.f39169e = false;
        this.f39170f = false;
        this.f39171g = false;
        this.f39174j = new DownloadListenerBunch.Builder().append(this).append(downloadListener).build();
        this.f39173i = arrayList;
    }

    public DownloadSerialQueue(DownloadListener downloadListener) {
        this(downloadListener, new ArrayList());
    }
}
