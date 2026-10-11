package com.alibaba.sdk.android.oss.internal;

import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.tencent.qcloud.core.common.QCloudServiceException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;

/* loaded from: classes3.dex */
public class OSSRetryHandler {

    /* renamed from: a */
    public int f13018a = 2;

    /* renamed from: com.alibaba.sdk.android.oss.internal.OSSRetryHandler$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C1771a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13019a;

        static {
            int[] iArr = new int[OSSRetryType.values().length];
            f13019a = iArr;
            try {
                iArr[OSSRetryType.OSSRetryTypeShouldRetry.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public OSSRetryHandler(int i) {
        setMaxRetryCount(i);
    }

    public void setMaxRetryCount(int i) {
        this.f13018a = i;
    }

    public OSSRetryType shouldRetry(Exception exc, int i) {
        if (i >= this.f13018a) {
            return OSSRetryType.OSSRetryTypeShouldNotRetry;
        }
        if (!(exc instanceof ClientException)) {
            if (!(exc instanceof ServiceException)) {
                return OSSRetryType.OSSRetryTypeShouldNotRetry;
            }
            ServiceException serviceException = (ServiceException) exc;
            return (serviceException.getErrorCode() == null || !serviceException.getErrorCode().equalsIgnoreCase(QCloudServiceException.ERR0R_REQUEST_TIME_TOO_SKEWED)) ? serviceException.getStatusCode() >= 500 ? OSSRetryType.OSSRetryTypeShouldRetry : OSSRetryType.OSSRetryTypeShouldNotRetry : OSSRetryType.OSSRetryTypeShouldFixedTimeSkewedAndRetry;
        }
        if (((ClientException) exc).isCanceledException().booleanValue()) {
            return OSSRetryType.OSSRetryTypeShouldNotRetry;
        }
        Exception exc2 = (Exception) exc.getCause();
        if ((exc2 instanceof InterruptedIOException) && !(exc2 instanceof SocketTimeoutException)) {
            OSSLog.logError("[shouldRetry] - is interrupted!");
            return OSSRetryType.OSSRetryTypeShouldNotRetry;
        }
        if (exc2 instanceof IllegalArgumentException) {
            return OSSRetryType.OSSRetryTypeShouldNotRetry;
        }
        OSSLog.logDebug("shouldRetry - " + exc.toString());
        exc.getCause().printStackTrace();
        return OSSRetryType.OSSRetryTypeShouldRetry;
    }

    public long timeInterval(int i, OSSRetryType oSSRetryType) {
        if (C1771a.f13019a[oSSRetryType.ordinal()] != 1) {
            return 0L;
        }
        return ((long) Math.pow(2.0d, i)) * 200;
    }
}
