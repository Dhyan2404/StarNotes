package com.liulishuo.okdownload;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.core.Util;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.listener.DownloadListener2;
import com.liulishuo.okdownload.core.listener.DownloadListenerBunch;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import io.opencensus.contrib.http.util.HttpMeasureConstants;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
public class DownloadContext {

    /* renamed from: f */
    public static final String f39137f = "DownloadContext";

    /* renamed from: g */
    public static final Executor f39138g = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 30, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkDownload Serial", false));

    /* renamed from: a */
    public final DownloadTask[] f39139a;

    /* renamed from: b */
    public volatile boolean f39140b;

    /* renamed from: c */
    @Nullable
    public final DownloadContextListener f39141c;

    /* renamed from: d */
    public final QueueSet f39142d;

    /* renamed from: e */
    public Handler f39143e;

    /* loaded from: classes4.dex */
    public static class AlterContext {

        /* renamed from: a */
        public final DownloadContext f39144a;

        public AlterContext(DownloadContext downloadContext) {
            this.f39144a = downloadContext;
        }

        public AlterContext replaceTask(DownloadTask downloadTask, DownloadTask downloadTask2) {
            DownloadTask[] downloadTaskArr = this.f39144a.f39139a;
            for (int i = 0; i < downloadTaskArr.length; i++) {
                if (downloadTaskArr[i] == downloadTask) {
                    downloadTaskArr[i] = downloadTask2;
                }
            }
            return this;
        }
    }

    /* loaded from: classes4.dex */
    public static class Builder {

        /* renamed from: a */
        public final ArrayList<DownloadTask> f39145a;

        /* renamed from: b */
        public final QueueSet f39146b;

        /* renamed from: c */
        public DownloadContextListener f39147c;

        public Builder() {
            this(new QueueSet());
        }

        public DownloadTask bind(@NonNull String str) {
            if (this.f39146b.f39149b != null) {
                return bind(new DownloadTask.Builder(str, this.f39146b.f39149b).setFilenameFromResponse(Boolean.TRUE));
            }
            throw new IllegalArgumentException("If you want to bind only with url, you have to provide parentPath on QueueSet!");
        }

        public Builder bindSetTask(@NonNull DownloadTask downloadTask) {
            int indexOf = this.f39145a.indexOf(downloadTask);
            if (indexOf >= 0) {
                this.f39145a.set(indexOf, downloadTask);
            } else {
                this.f39145a.add(downloadTask);
            }
            return this;
        }

        public DownloadContext build() {
            return new DownloadContext((DownloadTask[]) this.f39145a.toArray(new DownloadTask[this.f39145a.size()]), this.f39147c, this.f39146b);
        }

        public Builder setListener(DownloadContextListener downloadContextListener) {
            this.f39147c = downloadContextListener;
            return this;
        }

        public void unbind(@NonNull DownloadTask downloadTask) {
            this.f39145a.remove(downloadTask);
        }

        public Builder(QueueSet queueSet) {
            this(queueSet, new ArrayList());
        }

        public void unbind(int i) {
            for (DownloadTask downloadTask : (List) this.f39145a.clone()) {
                if (downloadTask.getId() == i) {
                    this.f39145a.remove(downloadTask);
                }
            }
        }

        public Builder(QueueSet queueSet, ArrayList<DownloadTask> arrayList) {
            this.f39146b = queueSet;
            this.f39145a = arrayList;
        }

        public DownloadTask bind(@NonNull DownloadTask.Builder builder) {
            if (this.f39146b.f39148a != null) {
                builder.setHeaderMapFields(this.f39146b.f39148a);
            }
            if (this.f39146b.f39150c != null) {
                builder.setReadBufferSize(this.f39146b.f39150c.intValue());
            }
            if (this.f39146b.f39151d != null) {
                builder.setFlushBufferSize(this.f39146b.f39151d.intValue());
            }
            if (this.f39146b.f39152e != null) {
                builder.setSyncBufferSize(this.f39146b.f39152e.intValue());
            }
            if (this.f39146b.f39157j != null) {
                builder.setWifiRequired(this.f39146b.f39157j.booleanValue());
            }
            if (this.f39146b.f39153f != null) {
                builder.setSyncBufferIntervalMillis(this.f39146b.f39153f.intValue());
            }
            if (this.f39146b.f39154g != null) {
                builder.setAutoCallbackToUIThread(this.f39146b.f39154g.booleanValue());
            }
            if (this.f39146b.f39155h != null) {
                builder.setMinIntervalMillisCallbackProcess(this.f39146b.f39155h.intValue());
            }
            if (this.f39146b.f39156i != null) {
                builder.setPassIfAlreadyCompleted(this.f39146b.f39156i.booleanValue());
            }
            DownloadTask build = builder.build();
            if (this.f39146b.f39158k != null) {
                build.setTag(this.f39146b.f39158k);
            }
            this.f39145a.add(build);
            return build;
        }
    }

    /* loaded from: classes4.dex */
    public static class QueueSet {

        /* renamed from: a */
        public Map<String, List<String>> f39148a;

        /* renamed from: b */
        public Uri f39149b;

        /* renamed from: c */
        public Integer f39150c;

        /* renamed from: d */
        public Integer f39151d;

        /* renamed from: e */
        public Integer f39152e;

        /* renamed from: f */
        public Integer f39153f;

        /* renamed from: g */
        public Boolean f39154g;

        /* renamed from: h */
        public Integer f39155h;

        /* renamed from: i */
        public Boolean f39156i;

        /* renamed from: j */
        public Boolean f39157j;

        /* renamed from: k */
        public Object f39158k;

        public Builder commit() {
            return new Builder(this);
        }

        public Uri getDirUri() {
            return this.f39149b;
        }

        public int getFlushBufferSize() {
            Integer num = this.f39151d;
            if (num == null) {
                return 16384;
            }
            return num.intValue();
        }

        public Map<String, List<String>> getHeaderMapFields() {
            return this.f39148a;
        }

        public int getMinIntervalMillisCallbackProcess() {
            Integer num = this.f39155h;
            if (num == null) {
                return 3000;
            }
            return num.intValue();
        }

        public int getReadBufferSize() {
            Integer num = this.f39150c;
            if (num == null) {
                return 4096;
            }
            return num.intValue();
        }

        public int getSyncBufferIntervalMillis() {
            Integer num = this.f39153f;
            if (num == null) {
                return 2000;
            }
            return num.intValue();
        }

        public int getSyncBufferSize() {
            Integer num = this.f39152e;
            if (num == null) {
                return 65536;
            }
            return num.intValue();
        }

        public Object getTag() {
            return this.f39158k;
        }

        public boolean isAutoCallbackToUIThread() {
            Boolean bool = this.f39154g;
            if (bool == null) {
                return true;
            }
            return bool.booleanValue();
        }

        public boolean isPassIfAlreadyCompleted() {
            Boolean bool = this.f39156i;
            if (bool == null) {
                return true;
            }
            return bool.booleanValue();
        }

        public boolean isWifiRequired() {
            Boolean bool = this.f39157j;
            if (bool == null) {
                return false;
            }
            return bool.booleanValue();
        }

        public QueueSet setAutoCallbackToUIThread(Boolean bool) {
            this.f39154g = bool;
            return this;
        }

        public QueueSet setFlushBufferSize(int i) {
            this.f39151d = Integer.valueOf(i);
            return this;
        }

        public void setHeaderMapFields(Map<String, List<String>> map) {
            this.f39148a = map;
        }

        public QueueSet setMinIntervalMillisCallbackProcess(Integer num) {
            this.f39155h = num;
            return this;
        }

        public QueueSet setParentPath(@NonNull String str) {
            return setParentPathFile(new File(str));
        }

        public QueueSet setParentPathFile(@NonNull File file) {
            if (file.isFile()) {
                throw new IllegalArgumentException("parent path only accept directory path");
            }
            this.f39149b = Uri.fromFile(file);
            return this;
        }

        public QueueSet setParentPathUri(@NonNull Uri uri) {
            this.f39149b = uri;
            return this;
        }

        public QueueSet setPassIfAlreadyCompleted(boolean z) {
            this.f39156i = Boolean.valueOf(z);
            return this;
        }

        public QueueSet setReadBufferSize(int i) {
            this.f39150c = Integer.valueOf(i);
            return this;
        }

        public QueueSet setSyncBufferIntervalMillis(int i) {
            this.f39153f = Integer.valueOf(i);
            return this;
        }

        public QueueSet setSyncBufferSize(int i) {
            this.f39152e = Integer.valueOf(i);
            return this;
        }

        public QueueSet setTag(Object obj) {
            this.f39158k = obj;
            return this;
        }

        public QueueSet setWifiRequired(Boolean bool) {
            this.f39157j = bool;
            return this;
        }
    }

    /* renamed from: com.liulishuo.okdownload.DownloadContext$a */
    /* loaded from: classes4.dex */
    public class RunnableC6953a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ List f39159e;

        /* renamed from: f */
        public final /* synthetic */ DownloadListener f39160f;

        public RunnableC6953a(List list, DownloadListener downloadListener) {
            this.f39159e = list;
            this.f39160f = downloadListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (DownloadTask downloadTask : this.f39159e) {
                if (!DownloadContext.this.isStarted()) {
                    DownloadContext.this.m30958c(downloadTask.isAutoCallbackToUIThread());
                    return;
                }
                downloadTask.execute(this.f39160f);
            }
        }
    }

    /* renamed from: com.liulishuo.okdownload.DownloadContext$b */
    /* loaded from: classes4.dex */
    public class RunnableC6954b implements Runnable {
        public RunnableC6954b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadContext downloadContext = DownloadContext.this;
            downloadContext.f39141c.queueEnd(downloadContext);
        }
    }

    /* renamed from: com.liulishuo.okdownload.DownloadContext$c */
    /* loaded from: classes4.dex */
    public static class C6955c extends DownloadListener2 {

        /* renamed from: e */
        public final AtomicInteger f39163e;

        /* renamed from: f */
        @NonNull
        public final DownloadContextListener f39164f;

        /* renamed from: g */
        @NonNull
        public final DownloadContext f39165g;

        public C6955c(@NonNull DownloadContext downloadContext, @NonNull DownloadContextListener downloadContextListener, int i) {
            this.f39163e = new AtomicInteger(i);
            this.f39164f = downloadContextListener;
            this.f39165g = downloadContext;
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskEnd(@NonNull DownloadTask downloadTask, @NonNull EndCause endCause, @Nullable Exception exc) {
            int decrementAndGet = this.f39163e.decrementAndGet();
            this.f39164f.taskEnd(this.f39165g, downloadTask, endCause, exc, decrementAndGet);
            if (decrementAndGet <= 0) {
                this.f39164f.queueEnd(this.f39165g);
                Util.m30983d(DownloadContext.f39137f, "taskEnd and remainCount " + decrementAndGet);
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskStart(@NonNull DownloadTask downloadTask) {
        }
    }

    public DownloadContext(@NonNull DownloadTask[] downloadTaskArr, @Nullable DownloadContextListener downloadContextListener, @NonNull QueueSet queueSet, @NonNull Handler handler) {
        this(downloadTaskArr, downloadContextListener, queueSet);
        this.f39143e = handler;
    }

    public AlterContext alter() {
        return new AlterContext(this);
    }

    /* renamed from: c */
    public final void m30958c(boolean z) {
        DownloadContextListener downloadContextListener = this.f39141c;
        if (downloadContextListener == null) {
            return;
        }
        if (!z) {
            downloadContextListener.queueEnd(this);
            return;
        }
        if (this.f39143e == null) {
            this.f39143e = new Handler(Looper.getMainLooper());
        }
        this.f39143e.post(new RunnableC6954b());
    }

    /* renamed from: d */
    public void m30959d(Runnable runnable) {
        f39138g.execute(runnable);
    }

    @SuppressFBWarnings(justification = "user must know change this array will effect internal job", value = {"EI"})
    public DownloadTask[] getTasks() {
        return this.f39139a;
    }

    public boolean isStarted() {
        return this.f39140b;
    }

    public void start(@Nullable DownloadListener downloadListener, boolean z) {
        long uptimeMillis = SystemClock.uptimeMillis();
        Util.m30983d(f39137f, "start " + z);
        this.f39140b = true;
        if (this.f39141c != null) {
            downloadListener = new DownloadListenerBunch.Builder().append(downloadListener).append(new C6955c(this, this.f39141c, this.f39139a.length)).build();
        }
        if (z) {
            ArrayList arrayList = new ArrayList();
            Collections.addAll(arrayList, this.f39139a);
            Collections.sort(arrayList);
            m30959d(new RunnableC6953a(arrayList, downloadListener));
        } else {
            DownloadTask.enqueue(this.f39139a, downloadListener);
        }
        Util.m30983d(f39137f, "start finish " + z + " " + (SystemClock.uptimeMillis() - uptimeMillis) + HttpMeasureConstants.f94668b);
    }

    public void startOnParallel(DownloadListener downloadListener) {
        start(downloadListener, false);
    }

    public void startOnSerial(DownloadListener downloadListener) {
        start(downloadListener, true);
    }

    public void stop() {
        if (this.f39140b) {
            OkDownload.with().downloadDispatcher().cancel(this.f39139a);
        }
        this.f39140b = false;
    }

    public Builder toBuilder() {
        return new Builder(this.f39142d, new ArrayList(Arrays.asList(this.f39139a))).setListener(this.f39141c);
    }

    public DownloadContext(@NonNull DownloadTask[] downloadTaskArr, @Nullable DownloadContextListener downloadContextListener, @NonNull QueueSet queueSet) {
        this.f39140b = false;
        this.f39139a = downloadTaskArr;
        this.f39141c = downloadContextListener;
        this.f39142d = queueSet;
    }
}
