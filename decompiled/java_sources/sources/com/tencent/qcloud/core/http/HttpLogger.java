package com.tencent.qcloud.core.http;

import com.tencent.qcloud.core.http.HttpLoggingInterceptor;
import com.tencent.qcloud.core.logger.FileLogAdapter;
import com.tencent.qcloud.core.logger.QCloudLogger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.Response;

/* loaded from: classes10.dex */
public class HttpLogger implements HttpLoggingInterceptor.Logger {
    private boolean debuggable;
    private FileLogAdapter fileLogAdapter;
    private List<String> mRequestBufferLogs;
    private String tag;

    public HttpLogger(boolean z, String str) {
        this.debuggable = z;
        this.tag = str;
        this.mRequestBufferLogs = new ArrayList(10);
    }

    private synchronized void flushRequestBufferLogs() {
        synchronized (this.mRequestBufferLogs) {
            if (this.fileLogAdapter != null && this.mRequestBufferLogs.size() > 0) {
                Iterator<String> it2 = this.mRequestBufferLogs.iterator();
                while (it2.hasNext()) {
                    this.fileLogAdapter.log(4, this.tag, it2.next(), null);
                }
                this.mRequestBufferLogs.clear();
            }
        }
    }

    @Override // com.tencent.qcloud.core.http.HttpLoggingInterceptor.Logger
    public void logException(Exception exc, String str) {
        QCloudLogger.m59786i(this.tag, str, new Object[0]);
        if (this.fileLogAdapter != null && exc != null) {
            flushRequestBufferLogs();
            this.fileLogAdapter.log(4, this.tag, str, exc);
        } else {
            synchronized (this.mRequestBufferLogs) {
                this.mRequestBufferLogs.clear();
            }
        }
    }

    @Override // com.tencent.qcloud.core.http.HttpLoggingInterceptor.Logger
    public void logRequest(String str) {
        if (this.debuggable) {
            QCloudLogger.m59786i(this.tag, str, new Object[0]);
        }
        FileLogAdapter fileLogAdapter = (FileLogAdapter) QCloudLogger.getAdapter(FileLogAdapter.class);
        this.fileLogAdapter = fileLogAdapter;
        if (fileLogAdapter != null) {
            synchronized (this.mRequestBufferLogs) {
                this.mRequestBufferLogs.add(str);
            }
        }
    }

    @Override // com.tencent.qcloud.core.http.HttpLoggingInterceptor.Logger
    public void logResponse(Response response, String str) {
        if (this.debuggable) {
            QCloudLogger.m59786i(this.tag, str, new Object[0]);
        }
        if (this.fileLogAdapter != null && response != null && !response.isSuccessful()) {
            flushRequestBufferLogs();
            this.fileLogAdapter.log(4, this.tag, str, null);
        } else {
            synchronized (this.mRequestBufferLogs) {
                this.mRequestBufferLogs.clear();
            }
        }
    }

    public void setDebug(boolean z) {
        this.debuggable = z;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public HttpLogger(boolean z) {
        this(z, QCloudHttpClient.HTTP_LOG_TAG);
    }
}
