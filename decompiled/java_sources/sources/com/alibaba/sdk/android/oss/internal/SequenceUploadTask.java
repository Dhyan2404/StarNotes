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

/* loaded from: classes3.dex */
public class SequenceUploadTask extends BaseMultipartUploadTask<ResumableUploadRequest, ResumableUploadResult> implements Callable<ResumableUploadResult> {

    /* renamed from: e */
    public File f13069e;

    /* renamed from: f */
    public List<Integer> f13070f;

    /* renamed from: g */
    public long f13071g;

    /* renamed from: h */
    public OSSSharedPreferences f13072h;

    /* renamed from: i */
    public File f13073i;

    public SequenceUploadTask(ResumableUploadRequest resumableUploadRequest, OSSCompletedCallback<ResumableUploadRequest, ResumableUploadResult> oSSCompletedCallback, ExecutionContext executionContext, InternalRequestOperation internalRequestOperation) {
        super(internalRequestOperation, resumableUploadRequest, oSSCompletedCallback, executionContext);
        this.f13070f = new ArrayList();
        this.f13072h = OSSSharedPreferences.instance(this.mContext.getApplicationContext());
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
                File file = this.f13069e;
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
                            this.f13073i = file2;
                            if (!file2.exists()) {
                                this.f13073i.createNewFile();
                            }
                            objectOutputStream = new ObjectOutputStream(new FileOutputStream(this.f13073i));
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

    /* JADX WARN: Removed duplicated region for block: B:31:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x017c A[Catch: ClientException -> 0x01e7, ServiceException -> 0x01e9, TryCatch #6 {ClientException -> 0x01e7, ServiceException -> 0x01e9, blocks: (B:34:0x0163, B:35:0x0176, B:37:0x017c, B:39:0x0198, B:41:0x019e, B:43:0x01ac, B:44:0x01c1, B:46:0x01de), top: B:33:0x0163 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0237  */
    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void initMultipartUploadId() throws java.io.IOException, com.alibaba.sdk.android.oss.ClientException, com.alibaba.sdk.android.oss.ServiceException {
        /*
            Method dump skipped, instructions count: 651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.sdk.android.oss.internal.SequenceUploadTask.initMultipartUploadId():void");
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    public void processException(Exception exc) {
        if (this.mUploadException == null || !exc.getMessage().equals(this.mUploadException.getMessage())) {
            this.mUploadException = exc;
        }
        OSSLog.logThrowable2Local(exc);
        if (!this.mContext.getCancellationHandler().isCancelled() || this.mIsCancel) {
            return;
        }
        this.mIsCancel = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0150 A[Catch: all -> 0x01a7, TryCatch #7 {all -> 0x01a7, blocks: (B:17:0x0070, B:20:0x0089, B:22:0x00b9, B:23:0x00c4, B:25:0x00dd, B:34:0x00f8, B:35:0x010a, B:39:0x0148, B:41:0x0150, B:50:0x0154, B:52:0x016e, B:53:0x018c), top: B:16:0x0070 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0199 A[Catch: IOException -> 0x0131, TRY_ENTER, TryCatch #8 {IOException -> 0x0131, blocks: (B:27:0x00e9, B:29:0x00ee, B:31:0x00f3, B:61:0x012d, B:63:0x0135, B:65:0x013a, B:43:0x0199, B:45:0x019e, B:47:0x01a3), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x019e A[Catch: IOException -> 0x0131, TryCatch #8 {IOException -> 0x0131, blocks: (B:27:0x00e9, B:29:0x00ee, B:31:0x00f3, B:61:0x012d, B:63:0x0135, B:65:0x013a, B:43:0x0199, B:45:0x019e, B:47:0x01a3), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01a3 A[Catch: IOException -> 0x0131, TRY_LEAVE, TryCatch #8 {IOException -> 0x0131, blocks: (B:27:0x00e9, B:29:0x00ee, B:31:0x00f3, B:61:0x012d, B:63:0x0135, B:65:0x013a, B:43:0x0199, B:45:0x019e, B:47:0x01a3), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0154 A[Catch: all -> 0x01a7, TryCatch #7 {all -> 0x01a7, blocks: (B:17:0x0070, B:20:0x0089, B:22:0x00b9, B:23:0x00c4, B:25:0x00dd, B:34:0x00f8, B:35:0x010a, B:39:0x0148, B:41:0x0150, B:50:0x0154, B:52:0x016e, B:53:0x018c), top: B:16:0x0070 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x012d A[Catch: IOException -> 0x0131, TRY_ENTER, TryCatch #8 {IOException -> 0x0131, blocks: (B:27:0x00e9, B:29:0x00ee, B:31:0x00f3, B:61:0x012d, B:63:0x0135, B:65:0x013a, B:43:0x0199, B:45:0x019e, B:47:0x01a3), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0135 A[Catch: IOException -> 0x0131, TryCatch #8 {IOException -> 0x0131, blocks: (B:27:0x00e9, B:29:0x00ee, B:31:0x00f3, B:61:0x012d, B:63:0x0135, B:65:0x013a, B:43:0x0199, B:45:0x019e, B:47:0x01a3), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x013a A[Catch: IOException -> 0x0131, TRY_LEAVE, TryCatch #8 {IOException -> 0x0131, blocks: (B:27:0x00e9, B:29:0x00ee, B:31:0x00f3, B:61:0x012d, B:63:0x0135, B:65:0x013a, B:43:0x0199, B:45:0x019e, B:47:0x01a3), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01b3 A[Catch: IOException -> 0x01af, TryCatch #10 {IOException -> 0x01af, blocks: (B:81:0x01ab, B:72:0x01b3, B:74:0x01b8), top: B:80:0x01ab }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01b8 A[Catch: IOException -> 0x01af, TRY_LEAVE, TryCatch #10 {IOException -> 0x01af, blocks: (B:81:0x01ab, B:72:0x01b3, B:74:0x01b8), top: B:80:0x01ab }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01ab A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.alibaba.sdk.android.oss.model.UploadPartRequest] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask, com.alibaba.sdk.android.oss.internal.SequenceUploadTask] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void uploadPart(int r13, int r14, int r15) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.sdk.android.oss.internal.SequenceUploadTask.uploadPart(int, int, int):void");
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    public void uploadPartFinish(PartETag partETag) throws Exception {
        if (!this.mContext.getCancellationHandler().isCancelled() || this.f13072h.contains(this.mUploadId)) {
            return;
        }
        this.f13072h.setStringValue(this.mUploadId, String.valueOf(this.mUploadedLength));
        onProgressCallback(this.mRequest, this.mUploadedLength, this.mFileLength);
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    public ResumableUploadResult doMultipartUpload() throws IOException, ClientException, ServiceException, InterruptedException {
        long j = this.mUploadedLength;
        checkCancel();
        int[] iArr = this.mPartAttr;
        int i = iArr[0];
        int i2 = iArr[1];
        if (this.mPartETags.size() > 0 && this.f13070f.size() > 0) {
            long j2 = this.mUploadedLength;
            if (j2 > this.mFileLength) {
                throw new ClientException("The uploading file is inconsistent with before");
            }
            if (this.f13071g == i) {
                if (!TextUtils.isEmpty(this.f13072h.getStringValue(this.mUploadId))) {
                    j2 = Long.valueOf(this.f13072h.getStringValue(this.mUploadId)).longValue();
                }
                long j3 = j2;
                OSSProgressCallback<Request> oSSProgressCallback = this.mProgressCallback;
                if (oSSProgressCallback != 0) {
                    oSSProgressCallback.onProgress(this.mRequest, j3, this.mFileLength);
                }
                this.f13072h.removeKey(this.mUploadId);
            } else {
                throw new ClientException("The part size setting is inconsistent with before");
            }
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (this.f13070f.size() == 0 || !this.f13070f.contains(Integer.valueOf(i3 + 1))) {
                if (i3 == i2 - 1) {
                    i = (int) (this.mFileLength - j);
                }
                OSSLog.logDebug("upload part readByte : " + i);
                j += (long) i;
                uploadPart(i3, i, i2);
                if (this.mUploadException != null) {
                    break;
                }
            }
        }
        checkException();
        CompleteMultipartUploadResult completeMultipartUploadResult = completeMultipartUploadResult();
        ResumableUploadResult resumableUploadResult = completeMultipartUploadResult != null ? new ResumableUploadResult(completeMultipartUploadResult) : null;
        File file = this.f13069e;
        if (file != null) {
            file.delete();
        }
        File file2 = this.f13073i;
        if (file2 != null) {
            file2.delete();
        }
        return resumableUploadResult;
    }
}
