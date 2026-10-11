package com.tencent.qcloud.core.http;

import android.content.ContentResolver;
import android.net.Uri;
import android.text.TextUtils;
import com.tencent.qcloud.core.common.QCloudClientException;
import com.tencent.qcloud.core.common.QCloudProgressListener;
import com.tencent.qcloud.core.common.QCloudServiceException;
import com.tencent.qcloud.core.util.OkhttpInternalUtils;
import com.tencent.qcloud.core.util.QCloudHttpUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import okio.Buffer;

/* loaded from: classes10.dex */
public class ResponseFileConverter<T> extends ResponseBodyConverter<T> implements ProgressBody {
    private ContentResolver contentResolver;
    private Uri contentUri;
    private CountingSink countingSink;
    private String filePath;
    private InputStream inputStream;
    protected boolean isQuic = false;
    private long offset;
    protected QCloudProgressListener progressListener;

    public ResponseFileConverter(String str, long j) {
        this.filePath = str;
        this.offset = j;
    }

    private T downloadToAbsolutePath(HttpResponse<T> httpResponse, long j) throws QCloudClientException, QCloudServiceException {
        File file = new File(this.filePath);
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new QCloudClientException(new IOException("local file directory can not create."));
        }
        if (httpResponse.response.body() == null) {
            throw new QCloudServiceException("response body is empty !");
        }
        try {
            writeRandomAccessFile(file, httpResponse.byteStream(), j);
            return null;
        } catch (IOException e) {
            e.printStackTrace();
            throw new QCloudClientException("write local file error for " + e.toString(), e);
        }
    }

    private T pipeToContentUri(HttpResponse<T> httpResponse, long j) throws QCloudClientException, QCloudServiceException {
        OutputStream outputStream = getOutputStream();
        InputStream byteStream = httpResponse.byteStream();
        byte[] bArr = new byte[8192];
        this.countingSink = new CountingSink(new Buffer(), j, this.progressListener);
        while (true) {
            try {
                try {
                    int read = byteStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    outputStream.write(bArr, 0, read);
                    this.countingSink.writeBytesInternal(read);
                } catch (IOException e) {
                    e.printStackTrace();
                    throw new QCloudClientException("write local uri error for " + e.toString(), e);
                }
            } finally {
                if (outputStream != null) {
                    OkhttpInternalUtils.closeQuietly(outputStream);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void writeRandomAccessFile(java.io.File r12, java.io.InputStream r13, long r14) throws java.io.IOException, com.tencent.qcloud.core.common.QCloudClientException {
        /*
            r11 = this;
            if (r13 == 0) goto L82
            r0 = 0
            long r5 = r11.getBytesTransferred()     // Catch: java.lang.Throwable -> L6f
            long r1 = r11.offset     // Catch: java.lang.Throwable -> L6f
            long r1 = r1 + r5
            r3 = 0
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 <= 0) goto L2c
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L6f
            java.lang.String r2 = "rws"
            r1.<init>(r12, r2)     // Catch: java.lang.Throwable -> L6f
            long r2 = r11.offset     // Catch: java.lang.Throwable -> L28
            long r2 = r2 + r5
            r1.seek(r2)     // Catch: java.lang.Throwable -> L28
            java.io.FileOutputStream r12 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L28
            java.io.FileDescriptor r2 = r1.getFD()     // Catch: java.lang.Throwable -> L28
            r12.<init>(r2)     // Catch: java.lang.Throwable -> L28
            r8 = r1
            goto L33
        L28:
            r11 = move-exception
            r12 = r0
            r8 = r1
            goto L72
        L2c:
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L6f
            r1.<init>(r12)     // Catch: java.lang.Throwable -> L6f
            r8 = r0
            r12 = r1
        L33:
            java.io.BufferedOutputStream r9 = new java.io.BufferedOutputStream     // Catch: java.lang.Throwable -> L6d
            r9.<init>(r12)     // Catch: java.lang.Throwable -> L6d
            r0 = 1048576(0x100000, float:1.469368E-39)
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L6a
            com.tencent.qcloud.core.http.CountingSink r10 = new com.tencent.qcloud.core.http.CountingSink     // Catch: java.lang.Throwable -> L6a
            okio.Buffer r2 = new okio.Buffer     // Catch: java.lang.Throwable -> L6a
            r2.<init>()     // Catch: java.lang.Throwable -> L6a
            com.tencent.qcloud.core.common.QCloudProgressListener r7 = r11.progressListener     // Catch: java.lang.Throwable -> L6a
            r1 = r10
            r3 = r14
            r1.<init>(r2, r3, r5, r7)     // Catch: java.lang.Throwable -> L6a
            r11.countingSink = r10     // Catch: java.lang.Throwable -> L6a
        L4c:
            int r14 = r13.read(r0)     // Catch: java.lang.Throwable -> L6a
            r15 = -1
            if (r14 == r15) goto L5e
            r15 = 0
            r9.write(r0, r15, r14)     // Catch: java.lang.Throwable -> L6a
            com.tencent.qcloud.core.http.CountingSink r15 = r11.countingSink     // Catch: java.lang.Throwable -> L6a
            long r1 = (long) r14     // Catch: java.lang.Throwable -> L6a
            r15.writeBytesInternal(r1)     // Catch: java.lang.Throwable -> L6a
            goto L4c
        L5e:
            com.tencent.qcloud.core.util.OkhttpInternalUtils.closeQuietly(r9)
            com.tencent.qcloud.core.util.OkhttpInternalUtils.closeQuietly(r12)
            if (r8 == 0) goto L69
            com.tencent.qcloud.core.util.OkhttpInternalUtils.closeQuietly(r8)
        L69:
            return
        L6a:
            r11 = move-exception
            r0 = r9
            goto L72
        L6d:
            r11 = move-exception
            goto L72
        L6f:
            r11 = move-exception
            r12 = r0
            r8 = r12
        L72:
            if (r0 == 0) goto L77
            com.tencent.qcloud.core.util.OkhttpInternalUtils.closeQuietly(r0)
        L77:
            if (r12 == 0) goto L7c
            com.tencent.qcloud.core.util.OkhttpInternalUtils.closeQuietly(r12)
        L7c:
            if (r8 == 0) goto L81
            com.tencent.qcloud.core.util.OkhttpInternalUtils.closeQuietly(r8)
        L81:
            throw r11
        L82:
            com.tencent.qcloud.core.common.QCloudClientException r11 = new com.tencent.qcloud.core.common.QCloudClientException
            java.io.IOException r12 = new java.io.IOException
            java.lang.String r13 = "response body stream is null"
            r12.<init>(r13)
            r11.<init>(r12)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qcloud.core.http.ResponseFileConverter.writeRandomAccessFile(java.io.File, java.io.InputStream, long):void");
    }

    @Override // com.tencent.qcloud.core.http.ResponseBodyConverter
    public T convert(HttpResponse<T> httpResponse) throws QCloudClientException, QCloudServiceException {
        if (this.isQuic) {
            return null;
        }
        HttpResponse.checkResponseSuccessful(httpResponse);
        long[] parseContentRange = QCloudHttpUtils.parseContentRange(httpResponse.header("Content-Range"));
        long contentLength = parseContentRange != null ? (parseContentRange[1] - parseContentRange[0]) + 1 : httpResponse.contentLength();
        if (!TextUtils.isEmpty(this.filePath)) {
            return downloadToAbsolutePath(httpResponse, contentLength);
        }
        if (this.contentUri != null) {
            return pipeToContentUri(httpResponse, contentLength);
        }
        throw new QCloudClientException(new IllegalArgumentException("filePath or ContentUri are both null"));
    }

    public void enableQuic(boolean z) {
        this.isQuic = z;
    }

    @Override // com.tencent.qcloud.core.http.ProgressBody
    public long getBytesTransferred() {
        CountingSink countingSink = this.countingSink;
        if (countingSink != null) {
            return countingSink.getTotalTransferred();
        }
        return 0L;
    }

    public OutputStream getOutputStream() throws QCloudClientException {
        if (TextUtils.isEmpty(this.filePath)) {
            Uri uri = this.contentUri;
            if (uri == null) {
                throw new QCloudClientException(new IllegalArgumentException("filePath or ContentUri are both null"));
            }
            try {
                return this.contentResolver.openOutputStream(uri);
            } catch (FileNotFoundException e) {
                throw new QCloudClientException(e);
            }
        }
        File file = new File(this.filePath);
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new QCloudClientException(new IOException("local file directory can not create."));
        }
        try {
            return new FileOutputStream(file);
        } catch (FileNotFoundException e2) {
            throw new QCloudClientException(e2);
        }
    }

    public QCloudProgressListener getProgressListener() {
        return this.progressListener;
    }

    public boolean isFilePathConverter() {
        return !TextUtils.isEmpty(this.filePath);
    }

    @Override // com.tencent.qcloud.core.http.ProgressBody
    public void setProgressListener(QCloudProgressListener qCloudProgressListener) {
        this.progressListener = qCloudProgressListener;
    }

    public ResponseFileConverter(Uri uri, ContentResolver contentResolver, long j) {
        this.contentUri = uri;
        this.contentResolver = contentResolver;
        this.offset = j;
    }

    public ResponseFileConverter() {
    }
}
