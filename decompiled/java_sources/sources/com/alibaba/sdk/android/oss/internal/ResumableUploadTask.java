package com.alibaba.sdk.android.oss.internal;

import android.text.TextUtils;
import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.utils.OSSSharedPreferences;
import com.alibaba.sdk.android.oss.model.AbortMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.CompleteMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.PartETag;
import com.alibaba.sdk.android.oss.model.ResumableUploadRequest;
import com.alibaba.sdk.android.oss.model.ResumableUploadResult;
import com.alibaba.sdk.android.oss.network.ExecutionContext;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes3.dex */
public class ResumableUploadTask extends BaseMultipartUploadTask<ResumableUploadRequest, ResumableUploadResult> implements Callable<ResumableUploadResult> {

    /* renamed from: e */
    public File f13061e;

    /* renamed from: f */
    public List<Integer> f13062f;

    /* renamed from: g */
    public OSSSharedPreferences f13063g;

    /* renamed from: h */
    public File f13064h;

    /* renamed from: com.alibaba.sdk.android.oss.internal.ResumableUploadTask$a */
    /* loaded from: classes3.dex */
    public class RunnableC1777a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ int f13065e;

        /* renamed from: f */
        public final /* synthetic */ int f13066f;

        /* renamed from: g */
        public final /* synthetic */ int f13067g;

        public RunnableC1777a(int i, int i2, int i3) {
            this.f13065e = i;
            this.f13066f = i2;
            this.f13067g = i3;
        }

        @Override // java.lang.Runnable
        public void run() {
            ResumableUploadTask.this.uploadPart(this.f13065e, this.f13066f, this.f13067g);
        }
    }

    public ResumableUploadTask(ResumableUploadRequest resumableUploadRequest, OSSCompletedCallback<ResumableUploadRequest, ResumableUploadResult> oSSCompletedCallback, ExecutionContext executionContext, InternalRequestOperation internalRequestOperation) {
        super(internalRequestOperation, resumableUploadRequest, oSSCompletedCallback, executionContext);
        this.f13062f = new ArrayList();
        this.f13063g = OSSSharedPreferences.instance(this.mContext.getApplicationContext());
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    public void abortThisUpload() {
        if (this.mUploadId != null) {
            this.mApiOperation.abortMultipartUpload(new AbortMultipartUploadRequest(((ResumableUploadRequest) this.mRequest).getBucketName(), ((ResumableUploadRequest) this.mRequest).getObjectKey(), this.mUploadId), null).waitUntilFinished();
        }
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    public void checkException() throws IOException, ServiceException, ClientException {
        ObjectOutputStream objectOutputStream;
        if (this.mContext.getCancellationHandler().isCancelled()) {
            if (((ResumableUploadRequest) this.mRequest).deleteUploadOnCancelling().booleanValue()) {
                abortThisUpload();
                File file = this.f13061e;
                if (file != null) {
                    file.delete();
                }
            } else {
                List<PartETag> list = this.mPartETags;
                if (list != null && list.size() > 0 && this.mCheckCRC64 && ((ResumableUploadRequest) this.mRequest).getRecordDirectory() != null) {
                    HashMap hashMap = new HashMap();
                    for (PartETag partETag : this.mPartETags) {
                        hashMap.put(Integer.valueOf(partETag.getPartNumber()), Long.valueOf(partETag.getCRC64()));
                    }
                    ObjectOutputStream objectOutputStream2 = null;
                    try {
                        try {
                            File file2 = new File(((ResumableUploadRequest) this.mRequest).getRecordDirectory() + File.separator + this.mUploadId);
                            this.f13064h = file2;
                            if (!file2.exists()) {
                                this.f13064h.createNewFile();
                            }
                            objectOutputStream = new ObjectOutputStream(new FileOutputStream(this.f13064h));
                        } catch (Throwable th) {
                            th = th;
                        }
                    } catch (IOException e) {
                        e = e;
                    }
                    try {
                        objectOutputStream.writeObject(hashMap);
                        objectOutputStream.close();
                    } catch (IOException e2) {
                        e = e2;
                        objectOutputStream2 = objectOutputStream;
                        OSSLog.logThrowable2Local(e);
                        if (objectOutputStream2 != null) {
                            objectOutputStream2.close();
                        }
                        super.checkException();
                    } catch (Throwable th2) {
                        th = th2;
                        objectOutputStream2 = objectOutputStream;
                        if (objectOutputStream2 != null) {
                            objectOutputStream2.close();
                        }
                        throw th;
                    }
                }
            }
        }
        super.checkException();
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01cd A[Catch: ServiceException -> 0x0312, ClientException -> 0x0318, TRY_LEAVE, TryCatch #0 {ClientException -> 0x0318, blocks: (B:34:0x01ad, B:37:0x01bb, B:38:0x01c7, B:40:0x01cd, B:42:0x01e9, B:44:0x01ef, B:46:0x01fd, B:47:0x0212, B:79:0x0261, B:82:0x0269, B:54:0x02a6, B:73:0x02b2, B:74:0x02d8, B:58:0x02df, B:86:0x0270, B:87:0x0296), top: B:33:0x01ad }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0331 A[LOOP:0: B:29:0x0187->B:67:0x0331, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x033a A[EDGE_INSN: B:68:0x033a->B:116:0x033a BREAK  A[LOOP:0: B:29:0x0187->B:67:0x0331], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0339 A[SYNTHETIC] */
    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void initMultipartUploadId() throws java.io.IOException, com.alibaba.sdk.android.oss.ClientException, com.alibaba.sdk.android.oss.ServiceException {
        /*
            Method dump skipped, instructions count: 967
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.sdk.android.oss.internal.ResumableUploadTask.initMultipartUploadId():void");
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    public void processException(Exception exc) {
        synchronized (this.mLock) {
            this.mPartExceptionCount++;
            this.mUploadException = exc;
            OSSLog.logThrowable2Local(exc);
            if (this.mContext.getCancellationHandler().isCancelled() && !this.mIsCancel) {
                this.mIsCancel = true;
                this.mLock.notify();
            }
            if (this.mPartETags.size() == this.mRunPartTaskCount - this.mPartExceptionCount) {
                notifyMultipartThread();
            }
        }
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    public void uploadPartFinish(PartETag partETag) throws Exception {
        if (!this.mContext.getCancellationHandler().isCancelled() || this.f13063g.contains(this.mUploadId)) {
            return;
        }
        this.f13063g.setStringValue(this.mUploadId, String.valueOf(this.mUploadedLength));
        onProgressCallback(this.mRequest, this.mUploadedLength, this.mFileLength);
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    public ResumableUploadResult doMultipartUpload() throws IOException, ClientException, ServiceException, InterruptedException {
        ThreadPoolExecutor threadPoolExecutor;
        long j = this.mUploadedLength;
        checkCancel();
        int[] iArr = this.mPartAttr;
        int i = iArr[0];
        int i2 = iArr[1];
        if (this.mPartETags.size() > 0 && this.f13062f.size() > 0) {
            long j2 = this.mUploadedLength;
            if (j2 <= this.mFileLength) {
                if (!TextUtils.isEmpty(this.f13063g.getStringValue(this.mUploadId))) {
                    j2 = Long.valueOf(this.f13063g.getStringValue(this.mUploadId)).longValue();
                }
                long j3 = j2;
                OSSProgressCallback<Request> oSSProgressCallback = this.mProgressCallback;
                if (oSSProgressCallback != 0) {
                    oSSProgressCallback.onProgress(this.mRequest, j3, this.mFileLength);
                }
                this.f13063g.removeKey(this.mUploadId);
            } else {
                throw new ClientException("The uploading file is inconsistent with before");
            }
        }
        this.mRunPartTaskCount = this.mPartETags.size();
        for (int i3 = 0; i3 < i2; i3++) {
            if ((this.f13062f.size() == 0 || !this.f13062f.contains(Integer.valueOf(i3 + 1))) && (threadPoolExecutor = this.mPoolExecutor) != null) {
                if (i3 == i2 - 1) {
                    i = (int) (this.mFileLength - j);
                }
                j += i;
                threadPoolExecutor.execute(new RunnableC1777a(i3, i, i2));
            }
        }
        if (checkWaitCondition(i2)) {
            synchronized (this.mLock) {
                this.mLock.wait();
            }
        }
        checkException();
        CompleteMultipartUploadResult completeMultipartUploadResult = completeMultipartUploadResult();
        ResumableUploadResult resumableUploadResult = completeMultipartUploadResult != null ? new ResumableUploadResult(completeMultipartUploadResult) : null;
        File file = this.f13061e;
        if (file != null) {
            file.delete();
        }
        File file2 = this.f13064h;
        if (file2 != null) {
            file2.delete();
        }
        releasePool();
        return resumableUploadResult;
    }
}
