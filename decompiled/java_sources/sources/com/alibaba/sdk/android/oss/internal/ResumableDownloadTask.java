package com.alibaba.sdk.android.oss.internal;

import android.util.Log;
import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.TaskCancelException;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.common.utils.BinaryUtil;
import com.alibaba.sdk.android.oss.common.utils.CRC64;
import com.alibaba.sdk.android.oss.common.utils.OSSUtils;
import com.alibaba.sdk.android.oss.exception.InconsistentException;
import com.alibaba.sdk.android.oss.model.HeadObjectRequest;
import com.alibaba.sdk.android.oss.model.HeadObjectResult;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import com.alibaba.sdk.android.oss.model.OSSResult;
import com.alibaba.sdk.android.oss.model.ObjectMetadata;
import com.alibaba.sdk.android.oss.model.Range;
import com.alibaba.sdk.android.oss.model.ResumableDownloadRequest;
import com.alibaba.sdk.android.oss.model.ResumableDownloadResult;
import com.alibaba.sdk.android.oss.network.ExecutionContext;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class ResumableDownloadTask<Requst extends ResumableDownloadRequest, Result extends ResumableDownloadResult> implements Callable<Result> {
    protected final int CPU_SIZE;
    protected final int KEEP_ALIVE_TIME;
    protected final int MAX_CORE_POOL_SIZE;
    protected final int MAX_IMUM_POOL_SIZE;
    protected final int MAX_QUEUE_SIZE;
    protected String checkpointPath;
    protected long completedPartSize;
    protected long downloadPartSize;

    /* renamed from: e */
    public ResumableDownloadRequest f13043e;

    /* renamed from: f */
    public InternalRequestOperation f13044f;

    /* renamed from: g */
    public OSSCompletedCallback f13045g;

    /* renamed from: h */
    public ExecutionContext f13046h;

    /* renamed from: i */
    public OSSProgressCallback f13047i;

    /* renamed from: j */
    public CheckPoint f13048j;
    protected Exception mDownloadException;
    protected Object mLock;
    protected long mPartExceptionCount;
    protected ThreadPoolExecutor mPoolExecutor;

    /* loaded from: classes3.dex */
    public static class CheckPoint implements Serializable {
        private static final long serialVersionUID = -8470273912385636504L;
        public String bucketName;
        public String downloadFile;
        public long downloadLength;
        public FileStat fileStat;
        public int md5;
        public String objectKey;
        public ArrayList<DownloadPart> parts;

        private void assign(CheckPoint checkPoint) {
            this.md5 = checkPoint.md5;
            this.downloadFile = checkPoint.downloadFile;
            this.bucketName = checkPoint.bucketName;
            this.objectKey = checkPoint.objectKey;
            this.fileStat = checkPoint.fileStat;
            this.parts = checkPoint.parts;
            this.downloadLength = checkPoint.downloadLength;
        }

        public synchronized void dump(String str) throws IOException {
            FileOutputStream fileOutputStream;
            Throwable th;
            ObjectOutputStream objectOutputStream;
            this.md5 = hashCode();
            try {
                fileOutputStream = new FileOutputStream(str);
                try {
                    objectOutputStream = new ObjectOutputStream(fileOutputStream);
                    try {
                        objectOutputStream.writeObject(this);
                        objectOutputStream.close();
                        fileOutputStream.close();
                    } catch (Throwable th2) {
                        th = th2;
                        if (objectOutputStream != null) {
                            objectOutputStream.close();
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    objectOutputStream = null;
                }
            } catch (Throwable th4) {
                fileOutputStream = null;
                th = th4;
                objectOutputStream = null;
            }
        }

        public int hashCode() {
            String str = this.bucketName;
            int hashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
            String str2 = this.downloadFile;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.objectKey;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            FileStat fileStat = this.fileStat;
            int hashCode4 = (hashCode3 + (fileStat == null ? 0 : fileStat.hashCode())) * 31;
            ArrayList<DownloadPart> arrayList = this.parts;
            int hashCode5 = (hashCode4 + (arrayList != null ? arrayList.hashCode() : 0)) * 31;
            long j = this.downloadLength;
            return hashCode5 + ((int) (j ^ (j >>> 32)));
        }

        public synchronized boolean isValid(InternalRequestOperation internalRequestOperation) throws ClientException, ServiceException {
            if (this.md5 != hashCode()) {
                return false;
            }
            FileStat fileStat = FileStat.getFileStat(internalRequestOperation, this.bucketName, this.objectKey);
            FileStat fileStat2 = this.fileStat;
            Date date = fileStat2.lastModified;
            if (date == null) {
                if (fileStat2.fileLength != fileStat.fileLength || !fileStat2.etag.equals(fileStat.etag)) {
                    return false;
                }
            } else if (fileStat2.fileLength != fileStat.fileLength || !date.equals(fileStat.lastModified) || !this.fileStat.etag.equals(fileStat.etag)) {
                return false;
            }
            return true;
        }

        public synchronized void load(String str) throws IOException, ClassNotFoundException {
            FileInputStream fileInputStream;
            Throwable th;
            ObjectInputStream objectInputStream;
            try {
                try {
                    fileInputStream = new FileInputStream(str);
                    try {
                        objectInputStream = new ObjectInputStream(fileInputStream);
                        try {
                            assign((CheckPoint) objectInputStream.readObject());
                            objectInputStream.close();
                            fileInputStream.close();
                        } catch (Throwable th2) {
                            th = th2;
                            if (objectInputStream != null) {
                                objectInputStream.close();
                            }
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        objectInputStream = null;
                    }
                } catch (Throwable th4) {
                    fileInputStream = null;
                    th = th4;
                    objectInputStream = null;
                }
            } catch (Throwable th5) {
                throw th5;
            }
        }

        public synchronized void update(int i, boolean z) throws IOException {
            this.parts.get(i).isCompleted = z;
            this.downloadLength += this.parts.get(i).length;
        }
    }

    /* loaded from: classes3.dex */
    public static class DownloadPart implements Serializable {
        private static final long serialVersionUID = -3506020776131733942L;
        public long crc;
        public long end;
        public long fileStart;
        public boolean isCompleted;
        public long length;
        public int partNumber;
        public long start;

        public int hashCode() {
            int i = (((this.partNumber + 31) * 31) + (this.isCompleted ? 1231 : 1237)) * 31;
            long j = this.end;
            int i2 = (i + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.start;
            long j3 = this.crc;
            return ((i2 + ((int) (j2 ^ (j2 >>> 32)))) * 31) + ((int) (j3 ^ (j3 >>> 32)));
        }
    }

    /* loaded from: classes3.dex */
    public static class FileStat implements Serializable {
        private static final long serialVersionUID = 3896323364904643963L;
        public String etag;
        public long fileLength;
        public Date lastModified;
        public String md5;
        public String requestId;
        public Long serverCRC;

        public static FileStat getFileStat(InternalRequestOperation internalRequestOperation, String str, String str2) throws ClientException, ServiceException {
            HeadObjectResult result = internalRequestOperation.headObject(new HeadObjectRequest(str, str2), null).getResult();
            FileStat fileStat = new FileStat();
            fileStat.fileLength = result.getMetadata().getContentLength();
            fileStat.etag = result.getMetadata().getETag();
            fileStat.lastModified = result.getMetadata().getLastModified();
            fileStat.serverCRC = result.getServerCRC();
            fileStat.requestId = result.getRequestId();
            return fileStat;
        }

        public int hashCode() {
            String str = this.etag;
            int hashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
            Date date = this.lastModified;
            int hashCode2 = (hashCode + (date != null ? date.hashCode() : 0)) * 31;
            long j = this.fileLength;
            return hashCode2 + ((int) (j ^ (j >>> 32)));
        }
    }

    /* renamed from: com.alibaba.sdk.android.oss.internal.ResumableDownloadTask$a */
    /* loaded from: classes3.dex */
    public class ThreadFactoryC1772a implements ThreadFactory {
        public ThreadFactoryC1772a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "oss-android-multipart-thread");
        }
    }

    /* renamed from: com.alibaba.sdk.android.oss.internal.ResumableDownloadTask$b */
    /* loaded from: classes3.dex */
    public class RunnableC1773b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ C1775d f13050e;

        /* renamed from: f */
        public final /* synthetic */ DownloadPart f13051f;

        public RunnableC1773b(C1775d c1775d, DownloadPart downloadPart) {
            this.f13050e = c1775d;
            this.f13051f = downloadPart;
        }

        @Override // java.lang.Runnable
        public void run() {
            ResumableDownloadTask.this.m7730f(this.f13050e, this.f13051f);
            Log.i("partResults", "start: " + this.f13051f.start + ", end: " + this.f13051f.end);
        }
    }

    /* renamed from: com.alibaba.sdk.android.oss.internal.ResumableDownloadTask$c */
    /* loaded from: classes3.dex */
    public class C1774c implements Comparator<C1776e> {
        public C1774c() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(C1776e c1776e, C1776e c1776e2) {
            return c1776e.f13057a - c1776e2.f13057a;
        }
    }

    /* renamed from: com.alibaba.sdk.android.oss.internal.ResumableDownloadTask$d */
    /* loaded from: classes3.dex */
    public class C1775d extends OSSResult {

        /* renamed from: f */
        public ArrayList<C1776e> f13054f;

        /* renamed from: g */
        public ObjectMetadata f13055g;

        public C1775d() {
        }
    }

    /* renamed from: com.alibaba.sdk.android.oss.internal.ResumableDownloadTask$e */
    /* loaded from: classes3.dex */
    public static class C1776e {

        /* renamed from: a */
        public int f13057a;

        /* renamed from: b */
        public String f13058b;

        /* renamed from: c */
        public Long f13059c;

        /* renamed from: d */
        public long f13060d;
    }

    public ResumableDownloadTask(InternalRequestOperation internalRequestOperation, ResumableDownloadRequest resumableDownloadRequest, OSSCompletedCallback oSSCompletedCallback, ExecutionContext executionContext) {
        int availableProcessors = Runtime.getRuntime().availableProcessors() * 2;
        this.CPU_SIZE = availableProcessors;
        int i = availableProcessors < 5 ? availableProcessors : 5;
        this.MAX_CORE_POOL_SIZE = i;
        this.MAX_IMUM_POOL_SIZE = availableProcessors;
        this.KEEP_ALIVE_TIME = 3000;
        this.MAX_QUEUE_SIZE = 5000;
        this.mPoolExecutor = new ThreadPoolExecutor(i, availableProcessors, 3000L, TimeUnit.MILLISECONDS, new ArrayBlockingQueue(5000), new ThreadFactoryC1772a());
        this.mLock = new Object();
        this.f13043e = resumableDownloadRequest;
        this.f13044f = internalRequestOperation;
        this.f13045g = oSSCompletedCallback;
        this.f13046h = executionContext;
        this.f13047i = resumableDownloadRequest.getProgressListener();
    }

    /* renamed from: b */
    public static Long m7726b(List<C1776e> list) {
        long j = 0;
        for (C1776e c1776e : list) {
            Long l = c1776e.f13059c;
            if (l == null || c1776e.f13060d <= 0) {
                return null;
            }
            j = CRC64.combine(j, l.longValue(), c1776e.f13060d);
        }
        return new Long(j);
    }

    /* renamed from: c */
    public final void m7727c(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
    }

    public void checkCancel() throws ClientException {
        if (this.f13046h.getCancellationHandler().isCancelled()) {
            TaskCancelException taskCancelException = new TaskCancelException("Resumable download cancel");
            throw new ClientException(taskCancelException.getMessage(), taskCancelException, Boolean.TRUE);
        }
    }

    public void checkException() throws IOException, ServiceException, ClientException {
        if (this.mDownloadException != null) {
            releasePool();
            Exception exc = this.mDownloadException;
            if (exc instanceof IOException) {
                throw ((IOException) exc);
            }
            if (exc instanceof ServiceException) {
                throw ((ServiceException) exc);
            }
            if (!(exc instanceof ClientException)) {
                throw new ClientException(this.mDownloadException.getMessage(), this.mDownloadException);
            }
            throw ((ClientException) exc);
        }
    }

    public void checkInitData() throws ClientException, ServiceException, IOException {
        if (this.f13043e.getRange() != null && !this.f13043e.getRange().checkIsValid()) {
            throw new ClientException("Range is invalid");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f13043e.getBucketName());
        sb.append(this.f13043e.getObjectKey());
        sb.append(String.valueOf(this.f13043e.getPartSize()));
        sb.append(this.f13043e.getCRC64() == OSSRequest.CRC64Config.YES ? "-crc64" : "");
        this.checkpointPath = this.f13043e.getCheckPointFilePath() + File.separator + BinaryUtil.calculateMd5Str(sb.toString().getBytes());
        this.f13048j = new CheckPoint();
        if (!this.f13043e.getEnableCheckPoint().booleanValue()) {
            m7731g();
            return;
        }
        try {
            this.f13048j.load(this.checkpointPath);
        } catch (Exception unused) {
            removeFile(this.checkpointPath);
            removeFile(this.f13043e.getTempFilePath());
        }
        if (this.f13048j.isValid(this.f13044f)) {
            return;
        }
        removeFile(this.checkpointPath);
        removeFile(this.f13043e.getTempFilePath());
        m7731g();
    }

    public boolean checkWaitCondition(int i) {
        return this.completedPartSize != ((long) i);
    }

    /* renamed from: d */
    public final Range m7728d(Range range, long j) {
        if (range != null) {
            r0 = range.getBegin() != -1 ? range.getBegin() : 0L;
            j = range.getEnd() == -1 ? j - r0 : range.getEnd() - range.getBegin();
        }
        return new Range(r0, j + r0);
    }

    public ResumableDownloadResult doMultipartDownload() throws ClientException, ServiceException, IOException, InterruptedException {
        checkCancel();
        ResumableDownloadResult resumableDownloadResult = new ResumableDownloadResult();
        C1775d c1775d = new C1775d();
        c1775d.f13054f = new ArrayList<>();
        Iterator<DownloadPart> it2 = this.f13048j.parts.iterator();
        while (it2.hasNext()) {
            DownloadPart next = it2.next();
            checkException();
            ThreadPoolExecutor threadPoolExecutor = this.mPoolExecutor;
            if (threadPoolExecutor == null || next.isCompleted) {
                C1776e c1776e = new C1776e();
                c1776e.f13057a = next.partNumber;
                c1776e.f13058b = this.f13048j.fileStat.requestId;
                c1776e.f13060d = next.length;
                if (this.f13043e.getCRC64() == OSSRequest.CRC64Config.YES) {
                    c1776e.f13059c = Long.valueOf(next.crc);
                }
                c1775d.f13054f.add(c1776e);
                this.downloadPartSize++;
                this.completedPartSize++;
            } else {
                threadPoolExecutor.execute(new RunnableC1773b(c1775d, next));
            }
        }
        if (checkWaitCondition(this.f13048j.parts.size())) {
            synchronized (this.mLock) {
                this.mLock.wait();
            }
        }
        checkException();
        Collections.sort(c1775d.f13054f, new C1774c());
        if (this.f13043e.getCRC64() == OSSRequest.CRC64Config.YES && this.f13043e.getRange() == null) {
            Long m7726b = m7726b(c1775d.f13054f);
            resumableDownloadResult.setClientCRC(m7726b);
            try {
                OSSUtils.checkChecksum(m7726b, this.f13048j.fileStat.serverCRC, c1775d.f13054f.get(0).f13058b);
            } catch (InconsistentException e) {
                removeFile(this.checkpointPath);
                removeFile(this.f13043e.getTempFilePath());
                throw e;
            }
        }
        removeFile(this.checkpointPath);
        m7732h(new File(this.f13043e.getTempFilePath()), new File(this.f13043e.getDownloadToFilePath()));
        resumableDownloadResult.setServerCRC(this.f13048j.fileStat.serverCRC);
        resumableDownloadResult.setMetadata(c1775d.f13055g);
        resumableDownloadResult.setRequestId(c1775d.f13054f.get(0).f13058b);
        resumableDownloadResult.setStatusCode(200);
        return resumableDownloadResult;
    }

    /* renamed from: e */
    public final void m7729e(String str, long j) throws IOException {
        File file = new File(str);
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rw");
            try {
                randomAccessFile2.setLength(j);
                randomAccessFile2.close();
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0187 A[Catch: IOException -> 0x0183, TRY_LEAVE, TryCatch #2 {IOException -> 0x0183, blocks: (B:69:0x017f, B:62:0x0187), top: B:68:0x017f }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x017f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7730f(com.alibaba.sdk.android.oss.internal.ResumableDownloadTask<Requst, Result>.C1775d r13, com.alibaba.sdk.android.oss.internal.ResumableDownloadTask.DownloadPart r14) {
        /*
            Method dump skipped, instructions count: 399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.sdk.android.oss.internal.ResumableDownloadTask.m7730f(com.alibaba.sdk.android.oss.internal.ResumableDownloadTask$d, com.alibaba.sdk.android.oss.internal.ResumableDownloadTask$DownloadPart):void");
    }

    /* renamed from: g */
    public final void m7731g() throws ClientException, ServiceException, IOException {
        FileStat fileStat = FileStat.getFileStat(this.f13044f, this.f13043e.getBucketName(), this.f13043e.getObjectKey());
        Range m7728d = m7728d(this.f13043e.getRange(), fileStat.fileLength);
        m7729e(this.f13043e.getTempFilePath(), m7728d.getEnd() - m7728d.getBegin());
        this.f13048j.bucketName = this.f13043e.getBucketName();
        this.f13048j.objectKey = this.f13043e.getObjectKey();
        CheckPoint checkPoint = this.f13048j;
        checkPoint.fileStat = fileStat;
        checkPoint.parts = m7733i(m7728d, fileStat.fileLength, this.f13043e.getPartSize());
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005e  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7732h(java.io.File r4, java.io.File r5) throws java.io.IOException {
        /*
            r3 = this;
            boolean r0 = r4.renameTo(r5)
            if (r0 != 0) goto L62
            java.lang.String r0 = "moveFile"
            java.lang.String r1 = "rename"
            android.util.Log.i(r0, r1)
            r0 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L50 java.io.FileNotFoundException -> L53
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L50 java.io.FileNotFoundException -> L53
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L48 java.io.FileNotFoundException -> L4c
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L48 java.io.FileNotFoundException -> L4c
            r3.m7727c(r1, r2)     // Catch: java.lang.Throwable -> L44 java.io.FileNotFoundException -> L46
            boolean r3 = r4.delete()     // Catch: java.lang.Throwable -> L44 java.io.FileNotFoundException -> L46
            if (r3 == 0) goto L28
            r1.close()
            r2.close()
            goto L62
        L28:
            java.io.IOException r3 = new java.io.IOException     // Catch: java.lang.Throwable -> L44 java.io.FileNotFoundException -> L46
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L44 java.io.FileNotFoundException -> L46
            r5.<init>()     // Catch: java.lang.Throwable -> L44 java.io.FileNotFoundException -> L46
            java.lang.String r0 = "Failed to delete original file '"
            r5.append(r0)     // Catch: java.lang.Throwable -> L44 java.io.FileNotFoundException -> L46
            r5.append(r4)     // Catch: java.lang.Throwable -> L44 java.io.FileNotFoundException -> L46
            java.lang.String r4 = "'"
            r5.append(r4)     // Catch: java.lang.Throwable -> L44 java.io.FileNotFoundException -> L46
            java.lang.String r4 = r5.toString()     // Catch: java.lang.Throwable -> L44 java.io.FileNotFoundException -> L46
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L44 java.io.FileNotFoundException -> L46
            throw r3     // Catch: java.lang.Throwable -> L44 java.io.FileNotFoundException -> L46
        L44:
            r3 = move-exception
            goto L4a
        L46:
            r3 = move-exception
            goto L4e
        L48:
            r3 = move-exception
            r2 = r0
        L4a:
            r0 = r1
            goto L57
        L4c:
            r3 = move-exception
            r2 = r0
        L4e:
            r0 = r1
            goto L55
        L50:
            r3 = move-exception
            r2 = r0
            goto L57
        L53:
            r3 = move-exception
            r2 = r0
        L55:
            throw r3     // Catch: java.lang.Throwable -> L56
        L56:
            r3 = move-exception
        L57:
            if (r0 == 0) goto L5c
            r0.close()
        L5c:
            if (r2 == 0) goto L61
            r2.close()
        L61:
            throw r3
        L62:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.sdk.android.oss.internal.ResumableDownloadTask.m7732h(java.io.File, java.io.File):void");
    }

    /* renamed from: i */
    public final ArrayList<DownloadPart> m7733i(Range range, long j, long j2) {
        long j3;
        int i = 0;
        if (j <= 0) {
            DownloadPart downloadPart = new DownloadPart();
            downloadPart.start = 0L;
            downloadPart.end = -1L;
            downloadPart.length = 0L;
            downloadPart.partNumber = 0;
            ArrayList<DownloadPart> arrayList = new ArrayList<>();
            arrayList.add(downloadPart);
            return arrayList;
        }
        long begin = range.getBegin();
        long end = range.getEnd() - range.getBegin();
        long j4 = end / j2;
        if (end % j2 > 0) {
            j4++;
        }
        ArrayList<DownloadPart> arrayList2 = new ArrayList<>();
        while (true) {
            long j5 = i;
            if (j5 >= j4) {
                return arrayList2;
            }
            DownloadPart downloadPart2 = new DownloadPart();
            long j6 = j5 * j2;
            long j7 = begin + j6;
            downloadPart2.start = j7;
            int i2 = i + 1;
            long j8 = ((i2 * j2) + begin) - 1;
            downloadPart2.end = j8;
            long j9 = j4;
            downloadPart2.length = (j8 - j7) + 1;
            long j10 = begin + end;
            if (j8 >= j10) {
                j3 = -1;
                downloadPart2.end = -1L;
                downloadPart2.length = j10 - j7;
            } else {
                j3 = -1;
            }
            downloadPart2.partNumber = i;
            downloadPart2.fileStart = j6;
            arrayList2.add(downloadPart2);
            j4 = j9;
            i = i2;
        }
    }

    public void notifyMultipartThread() {
        this.mLock.notify();
        this.mPartExceptionCount = 0L;
    }

    public void processException(Exception exc) {
        synchronized (this.mLock) {
            this.mPartExceptionCount++;
            if (this.mDownloadException == null) {
                this.mDownloadException = exc;
                this.mLock.notify();
            }
        }
    }

    public void releasePool() {
        ThreadPoolExecutor threadPoolExecutor = this.mPoolExecutor;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.getQueue().clear();
            this.mPoolExecutor.shutdown();
        }
    }

    public boolean removeFile(String str) {
        File file = new File(str);
        if (file.isFile() && file.exists()) {
            return file.delete();
        }
        return false;
    }

    @Override // java.util.concurrent.Callable
    public Result call() throws Exception {
        ClientException clientException;
        try {
            checkInitData();
            Result result = (Result) doMultipartDownload();
            OSSCompletedCallback oSSCompletedCallback = this.f13045g;
            if (oSSCompletedCallback != null) {
                oSSCompletedCallback.onSuccess(this.f13043e, result);
            }
            return result;
        } catch (ServiceException e) {
            OSSCompletedCallback oSSCompletedCallback2 = this.f13045g;
            if (oSSCompletedCallback2 != null) {
                oSSCompletedCallback2.onFailure(this.f13043e, null, e);
            }
            throw e;
        } catch (Exception e2) {
            if (e2 instanceof ClientException) {
                clientException = (ClientException) e2;
            } else {
                clientException = new ClientException(e2.toString(), e2);
            }
            OSSCompletedCallback oSSCompletedCallback3 = this.f13045g;
            if (oSSCompletedCallback3 != null) {
                oSSCompletedCallback3.onFailure(this.f13043e, clientException, null);
            }
            throw clientException;
        }
    }
}
