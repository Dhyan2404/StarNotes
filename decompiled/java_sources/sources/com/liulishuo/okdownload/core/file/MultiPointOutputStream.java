package com.liulishuo.okdownload.core.file;

import android.net.Uri;
import android.os.StatFs;
import android.os.SystemClock;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.OkDownload;
import com.liulishuo.okdownload.core.Util;
import com.liulishuo.okdownload.core.breakpoint.BlockInfo;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.breakpoint.DownloadStore;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.exception.PreAllocateException;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.LockSupport;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public class MultiPointOutputStream {

    /* renamed from: y */
    public static final String f39470y = "MultiPointOutputStream";

    /* renamed from: z */
    public static final ExecutorService f39471z = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkDownload file io", false));

    /* renamed from: a */
    public final SparseArray<DownloadOutputStream> f39472a;

    /* renamed from: b */
    public final SparseArray<AtomicLong> f39473b;

    /* renamed from: c */
    public final AtomicLong f39474c;

    /* renamed from: d */
    public final AtomicLong f39475d;

    /* renamed from: e */
    public boolean f39476e;

    /* renamed from: f */
    public final int f39477f;

    /* renamed from: g */
    public final int f39478g;

    /* renamed from: h */
    public final int f39479h;

    /* renamed from: i */
    public final BreakpointInfo f39480i;

    /* renamed from: j */
    public final DownloadTask f39481j;

    /* renamed from: k */
    public final DownloadStore f39482k;

    /* renamed from: l */
    public final boolean f39483l;

    /* renamed from: m */
    public final boolean f39484m;

    /* renamed from: n */
    public volatile Future f39485n;

    /* renamed from: o */
    public volatile Thread f39486o;

    /* renamed from: p */
    public final SparseArray<Thread> f39487p;

    /* renamed from: q */
    @NonNull
    public final Runnable f39488q;

    /* renamed from: r */
    public String f39489r;

    /* renamed from: s */
    public IOException f39490s;

    /* renamed from: t */
    @NonNull
    public ArrayList<Integer> f39491t;

    /* renamed from: u */
    @SuppressFBWarnings({"IS2_INCONSISTENT_SYNC"})
    public List<Integer> f39492u;

    /* renamed from: v */
    public final C6974c f39493v;

    /* renamed from: w */
    public C6974c f39494w;

    /* renamed from: x */
    public volatile boolean f39495x;

    /* renamed from: com.liulishuo.okdownload.core.file.MultiPointOutputStream$a */
    /* loaded from: classes4.dex */
    public class RunnableC6972a implements Runnable {
        public RunnableC6972a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MultiPointOutputStream.this.m31088q();
        }
    }

    /* renamed from: com.liulishuo.okdownload.core.file.MultiPointOutputStream$b */
    /* loaded from: classes4.dex */
    public class RunnableC6973b implements Runnable {
        public RunnableC6973b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MultiPointOutputStream.this.cancel();
        }
    }

    /* renamed from: com.liulishuo.okdownload.core.file.MultiPointOutputStream$c */
    /* loaded from: classes4.dex */
    public static class C6974c {

        /* renamed from: a */
        public boolean f39498a;

        /* renamed from: b */
        public List<Integer> f39499b = new ArrayList();

        /* renamed from: c */
        public List<Integer> f39500c = new ArrayList();

        /* renamed from: a */
        public boolean m31090a() {
            return this.f39498a || this.f39500c.size() > 0;
        }
    }

    public MultiPointOutputStream(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo, @NonNull DownloadStore downloadStore, @Nullable Runnable runnable) {
        this.f39472a = new SparseArray<>();
        this.f39473b = new SparseArray<>();
        this.f39474c = new AtomicLong();
        this.f39475d = new AtomicLong();
        this.f39476e = false;
        this.f39487p = new SparseArray<>();
        this.f39493v = new C6974c();
        this.f39494w = new C6974c();
        this.f39495x = true;
        this.f39481j = downloadTask;
        this.f39477f = downloadTask.getFlushBufferSize();
        this.f39478g = downloadTask.getSyncBufferSize();
        this.f39479h = downloadTask.getSyncBufferIntervalMills();
        this.f39480i = breakpointInfo;
        this.f39482k = downloadStore;
        this.f39483l = OkDownload.with().outputStreamFactory().supportSeek();
        this.f39484m = OkDownload.with().processFileStrategy().isPreAllocateLength(downloadTask);
        this.f39491t = new ArrayList<>();
        if (runnable == null) {
            this.f39488q = new RunnableC6972a();
        } else {
            this.f39488q = runnable;
        }
        File file = downloadTask.getFile();
        if (file != null) {
            this.f39489r = file.getAbsolutePath();
        }
    }

    /* renamed from: a */
    public synchronized void m31072a(int i) throws IOException {
        DownloadOutputStream downloadOutputStream = this.f39472a.get(i);
        if (downloadOutputStream != null) {
            downloadOutputStream.close();
            this.f39472a.remove(i);
            Util.m30983d(f39470y, "OutputStream close task[" + this.f39481j.getId() + "] block[" + i + IteratorUtils.f104924b);
        }
    }

    /* renamed from: b */
    public void m31073b(boolean z, int i) {
        if (this.f39485n == null || this.f39485n.isDone()) {
            return;
        }
        if (!z) {
            this.f39487p.put(i, Thread.currentThread());
        }
        if (this.f39486o != null) {
            m31089r(this.f39486o);
        } else {
            while (!m31082k()) {
                m31086o(25L);
            }
            m31089r(this.f39486o);
        }
        if (!z) {
            m31085n();
            return;
        }
        m31089r(this.f39486o);
        try {
            this.f39485n.get();
        } catch (InterruptedException | ExecutionException unused) {
        }
    }

    /* renamed from: c */
    public Future m31074c() {
        return f39471z.submit(this.f39488q);
    }

    public synchronized void cancel() {
        List<Integer> list = this.f39492u;
        if (list == null) {
            return;
        }
        if (this.f39476e) {
            return;
        }
        this.f39476e = true;
        this.f39491t.addAll(list);
        try {
            if (this.f39474c.get() <= 0) {
                return;
            }
            if (this.f39485n != null && !this.f39485n.isDone()) {
                m31080i();
                OkDownload.with().processFileStrategy().getFileLock().increaseLock(this.f39489r);
                try {
                    m31073b(true, -1);
                    OkDownload.with().processFileStrategy().getFileLock().decreaseLock(this.f39489r);
                } catch (Throwable th) {
                    OkDownload.with().processFileStrategy().getFileLock().decreaseLock(this.f39489r);
                    throw th;
                }
            }
            for (Integer num : this.f39492u) {
                try {
                    m31072a(num.intValue());
                } catch (IOException e) {
                    Util.m30983d(f39470y, "OutputStream close failed task[" + this.f39481j.getId() + "] block[" + num + IteratorUtils.f104924b + e);
                }
            }
            this.f39482k.onTaskEnd(this.f39481j.getId(), EndCause.CANCELED, null);
            return;
        } finally {
            for (Integer num2 : this.f39492u) {
                try {
                    m31072a(num2.intValue());
                } catch (IOException e2) {
                    Util.m30983d(f39470y, "OutputStream close failed task[" + this.f39481j.getId() + "] block[" + num2 + IteratorUtils.f104924b + e2);
                }
            }
            this.f39482k.onTaskEnd(this.f39481j.getId(), EndCause.CANCELED, null);
        }
    }

    public void cancelAsync() {
        f39471z.execute(new RunnableC6973b());
    }

    public void catchBlockConnectException(int i) {
        this.f39491t.add(Integer.valueOf(i));
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m31075d() throws java.io.IOException {
        /*
            r11 = this;
            android.util.SparseArray<java.util.concurrent.atomic.AtomicLong> r0 = r11.f39473b
            monitor-enter(r0)
            android.util.SparseArray<java.util.concurrent.atomic.AtomicLong> r1 = r11.f39473b     // Catch: java.lang.Throwable -> Lda
            int r1 = r1.size()     // Catch: java.lang.Throwable -> Lda
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lda
            android.util.SparseArray r0 = new android.util.SparseArray
            r0.<init>(r1)
            r2 = 0
            r3 = r2
        L11:
            r4 = 0
            if (r3 >= r1) goto L59
            android.util.SparseArray<com.liulishuo.okdownload.core.file.DownloadOutputStream> r6 = r11.f39472a     // Catch: java.io.IOException -> L40
            int r6 = r6.keyAt(r3)     // Catch: java.io.IOException -> L40
            android.util.SparseArray<java.util.concurrent.atomic.AtomicLong> r7 = r11.f39473b     // Catch: java.io.IOException -> L40
            java.lang.Object r7 = r7.get(r6)     // Catch: java.io.IOException -> L40
            java.util.concurrent.atomic.AtomicLong r7 = (java.util.concurrent.atomic.AtomicLong) r7     // Catch: java.io.IOException -> L40
            long r7 = r7.get()     // Catch: java.io.IOException -> L40
            int r9 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r9 <= 0) goto L3d
            java.lang.Long r7 = java.lang.Long.valueOf(r7)     // Catch: java.io.IOException -> L40
            r0.put(r6, r7)     // Catch: java.io.IOException -> L40
            android.util.SparseArray<com.liulishuo.okdownload.core.file.DownloadOutputStream> r7 = r11.f39472a     // Catch: java.io.IOException -> L40
            java.lang.Object r6 = r7.get(r6)     // Catch: java.io.IOException -> L40
            com.liulishuo.okdownload.core.file.DownloadOutputStream r6 = (com.liulishuo.okdownload.core.file.DownloadOutputStream) r6     // Catch: java.io.IOException -> L40
            r6.flushAndSync()     // Catch: java.io.IOException -> L40
        L3d:
            int r3 = r3 + 1
            goto L11
        L40:
            r1 = move-exception
            java.lang.String r3 = "MultiPointOutputStream"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "OutputStream flush and sync data to filesystem failed "
            r6.append(r7)
            r6.append(r1)
            java.lang.String r1 = r6.toString()
            com.liulishuo.okdownload.core.Util.m30986w(r3, r1)
            r1 = r2
            goto L5a
        L59:
            r1 = 1
        L5a:
            if (r1 == 0) goto Ld9
            int r1 = r0.size()
        L60:
            if (r2 >= r1) goto Lca
            int r3 = r0.keyAt(r2)
            java.lang.Object r6 = r0.valueAt(r2)
            java.lang.Long r6 = (java.lang.Long) r6
            long r6 = r6.longValue()
            com.liulishuo.okdownload.core.breakpoint.DownloadStore r8 = r11.f39482k
            com.liulishuo.okdownload.core.breakpoint.BreakpointInfo r9 = r11.f39480i
            r8.onSyncToFilesystemSuccess(r9, r3, r6)
            long r4 = r4 + r6
            android.util.SparseArray<java.util.concurrent.atomic.AtomicLong> r8 = r11.f39473b
            java.lang.Object r8 = r8.get(r3)
            java.util.concurrent.atomic.AtomicLong r8 = (java.util.concurrent.atomic.AtomicLong) r8
            long r9 = -r6
            r8.addAndGet(r9)
            java.lang.String r8 = "MultiPointOutputStream"
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r10 = "OutputStream sync success ("
            r9.append(r10)
            com.liulishuo.okdownload.DownloadTask r10 = r11.f39481j
            int r10 = r10.getId()
            r9.append(r10)
            java.lang.String r10 = ") block("
            r9.append(r10)
            r9.append(r3)
            java.lang.String r10 = ")  syncLength("
            r9.append(r10)
            r9.append(r6)
            java.lang.String r6 = ") currentOffset("
            r9.append(r6)
            com.liulishuo.okdownload.core.breakpoint.BreakpointInfo r6 = r11.f39480i
            com.liulishuo.okdownload.core.breakpoint.BlockInfo r3 = r6.getBlock(r3)
            long r6 = r3.getCurrentOffset()
            r9.append(r6)
            java.lang.String r3 = ")"
            r9.append(r3)
            java.lang.String r3 = r9.toString()
            com.liulishuo.okdownload.core.Util.m30983d(r8, r3)
            int r2 = r2 + 1
            goto L60
        Lca:
            java.util.concurrent.atomic.AtomicLong r0 = r11.f39474c
            long r1 = -r4
            r0.addAndGet(r1)
            java.util.concurrent.atomic.AtomicLong r11 = r11.f39475d
            long r0 = android.os.SystemClock.uptimeMillis()
            r11.set(r0)
        Ld9:
            return
        Lda:
            r11 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lda
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.okdownload.core.file.MultiPointOutputStream.m31075d():void");
    }

    public void done(int i) throws IOException {
        this.f39491t.add(Integer.valueOf(i));
        try {
            IOException iOException = this.f39490s;
            if (iOException != null) {
                throw iOException;
            }
            if (this.f39485n != null && !this.f39485n.isDone()) {
                AtomicLong atomicLong = this.f39473b.get(i);
                if (atomicLong != null && atomicLong.get() > 0) {
                    m31079h(this.f39493v);
                    m31073b(this.f39493v.f39498a, i);
                }
            } else if (this.f39485n == null) {
                Util.m30983d(f39470y, "OutputStream done but no need to ensure sync, because the sync job not run yet. task[" + this.f39481j.getId() + "] block[" + i + IteratorUtils.f104924b);
            } else {
                Util.m30983d(f39470y, "OutputStream done but no need to ensure sync, because the syncFuture.isDone[" + this.f39485n.isDone() + "] task[" + this.f39481j.getId() + "] block[" + i + IteratorUtils.f104924b);
            }
        } finally {
            m31072a(i);
        }
    }

    /* renamed from: e */
    public long m31076e() {
        return this.f39479h - (m31083l() - this.f39475d.get());
    }

    /* renamed from: f */
    public void m31077f() throws IOException {
        IOException iOException = this.f39490s;
        if (iOException != null) {
            throw iOException;
        }
        if (this.f39485n == null) {
            synchronized (this.f39488q) {
                if (this.f39485n == null) {
                    this.f39485n = m31074c();
                }
            }
        }
    }

    /* renamed from: g */
    public void m31078g(StatFs statFs, long j) throws PreAllocateException {
        long freeSpaceBytes = Util.getFreeSpaceBytes(statFs);
        if (freeSpaceBytes < j) {
            throw new PreAllocateException(j, freeSpaceBytes);
        }
    }

    /* renamed from: h */
    public void m31079h(C6974c c6974c) {
        c6974c.f39500c.clear();
        int size = new HashSet((List) this.f39491t.clone()).size();
        if (size != this.f39492u.size()) {
            Util.m30983d(f39470y, "task[" + this.f39481j.getId() + "] current need fetching block count " + this.f39492u.size() + " is not equal to no more stream block count " + size);
            c6974c.f39498a = false;
        } else {
            Util.m30983d(f39470y, "task[" + this.f39481j.getId() + "] current need fetching block count " + this.f39492u.size() + " is equal to no more stream block count " + size);
            c6974c.f39498a = true;
        }
        SparseArray<DownloadOutputStream> clone = this.f39472a.clone();
        int size2 = clone.size();
        for (int i = 0; i < size2; i++) {
            int keyAt = clone.keyAt(i);
            if (this.f39491t.contains(Integer.valueOf(keyAt)) && !c6974c.f39499b.contains(Integer.valueOf(keyAt))) {
                c6974c.f39499b.add(Integer.valueOf(keyAt));
                c6974c.f39500c.add(Integer.valueOf(keyAt));
            }
        }
    }

    /* renamed from: i */
    public final void m31080i() {
        if (this.f39489r != null || this.f39481j.getFile() == null) {
            return;
        }
        this.f39489r = this.f39481j.getFile().getAbsolutePath();
    }

    public void inspectComplete(int i) throws IOException {
        BlockInfo block = this.f39480i.getBlock(i);
        if (Util.isCorrectFull(block.getCurrentOffset(), block.getContentLength())) {
            return;
        }
        throw new IOException("The current offset on block-info isn't update correct, " + block.getCurrentOffset() + CloudStorageConstants.OPERATION_NOT_EQUAL + block.getContentLength() + " on " + i);
    }

    /* renamed from: j */
    public boolean m31081j() {
        return this.f39474c.get() < ((long) this.f39478g);
    }

    /* renamed from: k */
    public boolean m31082k() {
        return this.f39486o != null;
    }

    /* renamed from: l */
    public long m31083l() {
        return SystemClock.uptimeMillis();
    }

    /* renamed from: m */
    public synchronized DownloadOutputStream m31084m(int i) throws IOException {
        DownloadOutputStream downloadOutputStream;
        Uri uri;
        downloadOutputStream = this.f39472a.get(i);
        if (downloadOutputStream == null) {
            boolean isUriFileScheme = Util.isUriFileScheme(this.f39481j.getUri());
            if (isUriFileScheme) {
                File file = this.f39481j.getFile();
                if (file == null) {
                    throw new FileNotFoundException("Filename is not ready!");
                }
                File parentFile = this.f39481j.getParentFile();
                if (!parentFile.exists() && !parentFile.mkdirs()) {
                    throw new IOException("Create parent folder failed!");
                }
                if (file.createNewFile()) {
                    Util.m30983d(f39470y, "Create new file: " + file.getName());
                }
                uri = Uri.fromFile(file);
            } else {
                uri = this.f39481j.getUri();
            }
            DownloadOutputStream create = OkDownload.with().outputStreamFactory().create(OkDownload.with().context(), uri, this.f39477f);
            if (this.f39483l) {
                long rangeLeft = this.f39480i.getBlock(i).getRangeLeft();
                if (rangeLeft > 0) {
                    create.seek(rangeLeft);
                    Util.m30983d(f39470y, "Create output stream write from (" + this.f39481j.getId() + ") block(" + i + ") " + rangeLeft);
                }
            }
            if (this.f39495x) {
                this.f39482k.markFileDirty(this.f39481j.getId());
            }
            if (!this.f39480i.isChunked() && this.f39495x && this.f39484m) {
                long totalLength = this.f39480i.getTotalLength();
                if (isUriFileScheme) {
                    File file2 = this.f39481j.getFile();
                    long length = totalLength - file2.length();
                    if (length > 0) {
                        m31078g(new StatFs(file2.getAbsolutePath()), length);
                        create.setLength(totalLength);
                    }
                } else {
                    create.setLength(totalLength);
                }
            }
            synchronized (this.f39473b) {
                this.f39472a.put(i, create);
                this.f39473b.put(i, new AtomicLong());
            }
            this.f39495x = false;
            downloadOutputStream = create;
        }
        return downloadOutputStream;
    }

    /* renamed from: n */
    public void m31085n() {
        LockSupport.park();
    }

    /* renamed from: o */
    public void m31086o(long j) {
        LockSupport.parkNanos(TimeUnit.MILLISECONDS.toNanos(j));
    }

    /* renamed from: p */
    public void m31087p() throws IOException {
        int i;
        Util.m30983d(f39470y, "OutputStream start flush looper task[" + this.f39481j.getId() + "] with syncBufferIntervalMills[" + this.f39479h + "] syncBufferSize[" + this.f39478g + IteratorUtils.f104924b);
        this.f39486o = Thread.currentThread();
        long j = (long) this.f39479h;
        m31075d();
        while (true) {
            m31086o(j);
            m31079h(this.f39494w);
            if (this.f39494w.m31090a()) {
                Util.m30983d(f39470y, "runSync state change isNoMoreStream[" + this.f39494w.f39498a + "] newNoMoreStreamBlockList[" + this.f39494w.f39500c + IteratorUtils.f104924b);
                if (this.f39474c.get() > 0) {
                    m31075d();
                }
                for (Integer num : this.f39494w.f39500c) {
                    Thread thread = this.f39487p.get(num.intValue());
                    this.f39487p.remove(num.intValue());
                    if (thread != null) {
                        m31089r(thread);
                    }
                }
                if (this.f39494w.f39498a) {
                    break;
                }
            } else {
                if (m31081j()) {
                    i = this.f39479h;
                } else {
                    j = m31076e();
                    if (j <= 0) {
                        m31075d();
                        i = this.f39479h;
                    }
                }
                j = i;
            }
        }
        int size = this.f39487p.size();
        for (int i2 = 0; i2 < size; i2++) {
            Thread valueAt = this.f39487p.valueAt(i2);
            if (valueAt != null) {
                m31089r(valueAt);
            }
        }
        this.f39487p.clear();
        Util.m30983d(f39470y, "OutputStream stop flush looper task[" + this.f39481j.getId() + IteratorUtils.f104924b);
    }

    /* renamed from: q */
    public void m31088q() {
        try {
            m31087p();
        } catch (IOException e) {
            this.f39490s = e;
            Util.m30986w(f39470y, "Sync to breakpoint-store for task[" + this.f39481j.getId() + "] failed with cause: " + e);
        }
    }

    /* renamed from: r */
    public void m31089r(Thread thread) {
        LockSupport.unpark(thread);
    }

    public void setRequireStreamBlocks(List<Integer> list) {
        this.f39492u = list;
    }

    public synchronized void write(int i, byte[] bArr, int i2) throws IOException {
        if (this.f39476e) {
            return;
        }
        m31084m(i).write(bArr, 0, i2);
        long j = i2;
        this.f39474c.addAndGet(j);
        this.f39473b.get(i).addAndGet(j);
        m31077f();
    }

    public MultiPointOutputStream(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo, @NonNull DownloadStore downloadStore) {
        this(downloadTask, breakpointInfo, downloadStore, null);
    }
}
