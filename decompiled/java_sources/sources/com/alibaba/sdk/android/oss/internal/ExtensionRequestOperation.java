package com.alibaba.sdk.android.oss.internal;

import android.os.Environment;
import android.os.ParcelFileDescriptor;
import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.utils.BinaryUtil;
import com.alibaba.sdk.android.oss.common.utils.OSSUtils;
import com.alibaba.sdk.android.oss.model.AbortMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.CompleteMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.HeadObjectRequest;
import com.alibaba.sdk.android.oss.model.MultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import com.alibaba.sdk.android.oss.model.ResumableDownloadRequest;
import com.alibaba.sdk.android.oss.model.ResumableDownloadResult;
import com.alibaba.sdk.android.oss.model.ResumableUploadRequest;
import com.alibaba.sdk.android.oss.model.ResumableUploadResult;
import com.alibaba.sdk.android.oss.network.ExecutionContext;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes3.dex */
public class ExtensionRequestOperation {

    /* renamed from: b */
    public static ExecutorService f12988b = Executors.newFixedThreadPool(5, new ThreadFactoryC1762a());

    /* renamed from: a */
    public InternalRequestOperation f12989a;

    /* renamed from: com.alibaba.sdk.android.oss.internal.ExtensionRequestOperation$a */
    /* loaded from: classes3.dex */
    public static class ThreadFactoryC1762a implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "oss-android-extensionapi-thread");
        }
    }

    public ExtensionRequestOperation(InternalRequestOperation internalRequestOperation) {
        this.f12989a = internalRequestOperation;
    }

    /* renamed from: a */
    public final void m7675a(OSSRequest oSSRequest) {
        oSSRequest.setCRC64(oSSRequest.getCRC64() != OSSRequest.CRC64Config.NULL ? oSSRequest.getCRC64() : this.f12989a.getConf().isCheckCRC64() ? OSSRequest.CRC64Config.YES : OSSRequest.CRC64Config.NO);
    }

    public void abortResumableUpload(ResumableUploadRequest resumableUploadRequest) throws IOException {
        String str;
        m7675a(resumableUploadRequest);
        if (OSSUtils.isEmptyString(resumableUploadRequest.getRecordDirectory())) {
            return;
        }
        String uploadFilePath = resumableUploadRequest.getUploadFilePath();
        if (uploadFilePath != null) {
            str = BinaryUtil.calculateMd5Str(uploadFilePath);
        } else {
            ParcelFileDescriptor openFileDescriptor = this.f12989a.getApplicationContext().getContentResolver().openFileDescriptor(resumableUploadRequest.getUploadUri(), "r");
            try {
                String calculateMd5Str = BinaryUtil.calculateMd5Str(openFileDescriptor.getFileDescriptor());
                openFileDescriptor.close();
                str = calculateMd5Str;
            } catch (Throwable th) {
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                throw th;
            }
        }
        String calculateMd5Str2 = BinaryUtil.calculateMd5Str((str + resumableUploadRequest.getBucketName() + resumableUploadRequest.getObjectKey() + String.valueOf(resumableUploadRequest.getPartSize())).getBytes());
        StringBuilder sb = new StringBuilder();
        sb.append(resumableUploadRequest.getRecordDirectory());
        sb.append("/");
        sb.append(calculateMd5Str2);
        File file = new File(sb.toString());
        if (file.exists()) {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            String readLine = bufferedReader.readLine();
            bufferedReader.close();
            OSSLog.logDebug("[initUploadId] - Found record file, uploadid: " + readLine);
            if (resumableUploadRequest.getCRC64() == OSSRequest.CRC64Config.YES) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(Environment.getExternalStorageDirectory().getPath());
                String str2 = File.separator;
                sb2.append(str2);
                sb2.append("oss");
                sb2.append(str2);
                sb2.append(readLine);
                File file2 = new File(sb2.toString());
                if (file2.exists()) {
                    file2.delete();
                }
            }
            this.f12989a.abortMultipartUpload(new AbortMultipartUploadRequest(resumableUploadRequest.getBucketName(), resumableUploadRequest.getObjectKey(), readLine), null);
        }
        file.delete();
    }

    public boolean doesObjectExist(String str, String str2) throws ClientException, ServiceException {
        try {
            this.f12989a.headObject(new HeadObjectRequest(str, str2), null).getResult();
            return true;
        } catch (ServiceException e) {
            if (e.getStatusCode() == 404) {
                return false;
            }
            throw e;
        }
    }

    public OSSAsyncTask<CompleteMultipartUploadResult> multipartUpload(MultipartUploadRequest multipartUploadRequest, OSSCompletedCallback<MultipartUploadRequest, CompleteMultipartUploadResult> oSSCompletedCallback) {
        m7675a(multipartUploadRequest);
        ExecutionContext executionContext = new ExecutionContext(this.f12989a.getInnerClient(), multipartUploadRequest, this.f12989a.getApplicationContext());
        return OSSAsyncTask.wrapRequestTask(f12988b.submit(new MultipartUploadTask(this.f12989a, multipartUploadRequest, oSSCompletedCallback, executionContext)), executionContext);
    }

    public OSSAsyncTask<ResumableDownloadResult> resumableDownload(ResumableDownloadRequest resumableDownloadRequest, OSSCompletedCallback<ResumableDownloadRequest, ResumableDownloadResult> oSSCompletedCallback) {
        ExecutionContext executionContext = new ExecutionContext(this.f12989a.getInnerClient(), resumableDownloadRequest, this.f12989a.getApplicationContext());
        return OSSAsyncTask.wrapRequestTask(f12988b.submit(new ResumableDownloadTask(this.f12989a, resumableDownloadRequest, oSSCompletedCallback, executionContext)), executionContext);
    }

    public OSSAsyncTask<ResumableUploadResult> resumableUpload(ResumableUploadRequest resumableUploadRequest, OSSCompletedCallback<ResumableUploadRequest, ResumableUploadResult> oSSCompletedCallback) {
        m7675a(resumableUploadRequest);
        ExecutionContext executionContext = new ExecutionContext(this.f12989a.getInnerClient(), resumableUploadRequest, this.f12989a.getApplicationContext());
        return OSSAsyncTask.wrapRequestTask(f12988b.submit(new ResumableUploadTask(resumableUploadRequest, oSSCompletedCallback, executionContext, this.f12989a)), executionContext);
    }

    public OSSAsyncTask<ResumableUploadResult> sequenceUpload(ResumableUploadRequest resumableUploadRequest, OSSCompletedCallback<ResumableUploadRequest, ResumableUploadResult> oSSCompletedCallback) {
        m7675a(resumableUploadRequest);
        ExecutionContext executionContext = new ExecutionContext(this.f12989a.getInnerClient(), resumableUploadRequest, this.f12989a.getApplicationContext());
        return OSSAsyncTask.wrapRequestTask(f12988b.submit(new SequenceUploadTask(resumableUploadRequest, oSSCompletedCallback, executionContext, this.f12989a)), executionContext);
    }
}
