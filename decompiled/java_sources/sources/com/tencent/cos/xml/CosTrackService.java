package com.tencent.cos.xml;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.Easing;
import com.tencent.cos.xml.common.ClientErrorCode;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.exception.CosXmlServiceException;
import com.tencent.cos.xml.model.CosXmlRequest;
import com.tencent.cos.xml.model.object.BasePutObjectRequest;
import com.tencent.cos.xml.model.object.GetObjectBytesRequest;
import com.tencent.cos.xml.model.object.GetObjectRequest;
import com.tencent.cos.xml.model.object.ObjectRequest;
import com.tencent.cos.xml.transfer.TransferTaskMetrics;
import com.tencent.cos.xml.utils.ThrowableUtils;
import com.tencent.qcloud.core.common.QCloudAuthenticationException;
import com.tencent.qcloud.core.common.QCloudClientException;
import com.tencent.qcloud.core.common.QCloudServiceException;
import com.tencent.qcloud.core.http.HttpRequest;
import com.tencent.qcloud.core.http.HttpTask;
import com.tencent.qcloud.core.http.HttpTaskMetrics;
import com.tencent.qcloud.track.Constants;
import com.tencent.qcloud.track.QCloudTrackService;
import com.tencent.qcloud.track.cls.ClsLifecycleCredentialProvider;
import com.tencent.qcloud.track.service.BeaconTrackService;
import com.tencent.qcloud.track.service.ClsTrackService;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.http2.Http2ExchangeCodec;

/* loaded from: classes10.dex */
public class CosTrackService {
    private static final String EVENT_CODE_NEW_TRANSFER = "qcloud_track_cos_sdk_transfer";
    private static final String EVENT_CODE_QCLOUD_TRACK_COS_SDK = "qcloud_track_cos_sdk";
    private static final String EVENT_PARAMS_CLIENT = "Client";
    private static final String EVENT_PARAMS_FAILURE = "Failure";
    private static final String EVENT_PARAMS_SERVER = "Server";
    private static final String EVENT_PARAMS_SUCCESS = "Success";
    private static final boolean IS_DEBUG = false;
    private static final String SDK_NAME = "cos";
    private static final String TAG = "CosTrackService";
    private static CosTrackService instance;
    private String bridge;

    /* loaded from: classes10.dex */
    public static class ReturnClientException {
        private final CosXmlClientException exception;
        private final Map<String, String> params;

        public ReturnClientException(CosXmlClientException cosXmlClientException, Map<String, String> map) {
            this.exception = cosXmlClientException;
            this.params = map;
        }
    }

    /* loaded from: classes10.dex */
    public static class ReturnServiceException {
        private final CosXmlServiceException exception;
        private final Map<String, String> params;

        public ReturnServiceException(CosXmlServiceException cosXmlServiceException, Map<String, String> map) {
            this.exception = cosXmlServiceException;
            this.params = map;
        }
    }

    private CosTrackService() {
    }

    private CosXmlClientException convertClientException(QCloudClientException qCloudClientException) {
        if (qCloudClientException instanceof CosXmlClientException) {
            return (CosXmlClientException) qCloudClientException;
        }
        Throwable rootCause = ThrowableUtils.getRootCause(qCloudClientException);
        return rootCause instanceof IllegalArgumentException ? new CosXmlClientException(ClientErrorCode.INVALID_ARGUMENT.getCode(), qCloudClientException) : rootCause instanceof QCloudAuthenticationException ? new CosXmlClientException(ClientErrorCode.INVALID_CREDENTIALS.getCode(), qCloudClientException) : rootCause instanceof IOException ? new CosXmlClientException(ClientErrorCode.IO_ERROR.getCode(), qCloudClientException) : new CosXmlClientException(ClientErrorCode.INTERNAL_ERROR.getCode(), qCloudClientException);
    }

    private CosXmlServiceException convertServerException(QCloudServiceException qCloudServiceException) {
        return qCloudServiceException instanceof CosXmlServiceException ? (CosXmlServiceException) qCloudServiceException : new CosXmlServiceException(qCloudServiceException);
    }

    private Map<String, String> createTransferExtra(String str, CosXmlRequest cosXmlRequest) {
        HashMap hashMap = new HashMap();
        hashMap.put("request_name", str);
        hashMap.put("error_node", cosXmlRequest != null ? cosXmlRequest.getClass().getSimpleName() : "null");
        return hashMap;
    }

    private ReturnClientException getClientExceptionParams(QCloudClientException qCloudClientException) {
        HashMap hashMap = new HashMap();
        CosXmlClientException convertClientException = convertClientException(qCloudClientException);
        Throwable rootCause = ThrowableUtils.getRootCause(convertClientException);
        hashMap.put("error_code", String.valueOf(convertClientException.errorCode));
        hashMap.put("error_name", rootCause.getClass().getSimpleName());
        hashMap.put("error_message", rootCause.getMessage());
        hashMap.put("error_type", EVENT_PARAMS_CLIENT);
        return new ReturnClientException(convertClientException, hashMap);
    }

    private Map<String, String> getCommonParams() {
        HashMap hashMap = new HashMap();
        hashMap.put("sdk_version_name", com.tencent.cos.xml.base.BuildConfig.VERSION_NAME);
        hashMap.put("sdk_version_code", String.valueOf(com.tencent.cos.xml.base.BuildConfig.VERSION_CODE));
        if (!TextUtils.isEmpty(this.bridge)) {
            hashMap.put("sdk_bridge", this.bridge);
        }
        return hashMap;
    }

    public static CosTrackService getInstance() {
        return instance;
    }

    private ReturnServiceException getServiceExceptionParams(QCloudServiceException qCloudServiceException) {
        HashMap hashMap = new HashMap();
        CosXmlServiceException convertServerException = convertServerException(qCloudServiceException);
        hashMap.put("error_code", (TextUtils.isEmpty(convertServerException.getErrorCode()) || convertServerException.getErrorCode().equals("null")) ? String.valueOf(convertServerException.getStatusCode()) : convertServerException.getErrorCode());
        hashMap.put("error_message", (TextUtils.isEmpty(convertServerException.getErrorMessage()) || convertServerException.getErrorMessage().equals("null")) ? String.valueOf(convertServerException.getHttpMessage()) : convertServerException.getErrorMessage());
        hashMap.put("error_http_code", String.valueOf(convertServerException.getStatusCode()));
        hashMap.put("error_http_message", convertServerException.getHttpMessage());
        hashMap.put("error_service_name", convertServerException.getServiceName());
        hashMap.put("error_request_id", convertServerException.getRequestId());
        hashMap.put("error_type", "Server");
        return new ReturnServiceException(convertServerException, hashMap);
    }

    public static void init(Context context, boolean z, String str) {
        synchronized (CosTrackService.class) {
            if (instance == null) {
                CosTrackService cosTrackService = new CosTrackService();
                instance = cosTrackService;
                cosTrackService.bridge = str;
                if (BeaconTrackService.isInclude()) {
                    BeaconTrackService beaconTrackService = new BeaconTrackService();
                    beaconTrackService.setContext(context);
                    beaconTrackService.init("0AND05O9HW5YY29Z");
                    QCloudTrackService.getInstance().addTrackService(EVENT_CODE_QCLOUD_TRACK_COS_SDK, beaconTrackService);
                    BeaconTrackService beaconTrackService2 = new BeaconTrackService();
                    beaconTrackService2.setContext(context);
                    beaconTrackService2.init("0AND05O9HW5YY29Z");
                    QCloudTrackService.getInstance().addTrackService(EVENT_CODE_NEW_TRANSFER, beaconTrackService2);
                }
                QCloudTrackService.getInstance().init(context);
                QCloudTrackService.getInstance().setDebug(false);
                QCloudTrackService.getInstance().setIsCloseReport(z);
                getInstance().reportSdkStart();
            }
        }
    }

    public static void initCLs(Context context, String str, String str2) {
        if (ClsTrackService.isInclude()) {
            ClsTrackService clsTrackService = new ClsTrackService();
            clsTrackService.init(context, str, str2);
            clsTrackService.setSecurityCredential("secretId", "secretKey");
            QCloudTrackService.getInstance().addTrackService(EVENT_CODE_QCLOUD_TRACK_COS_SDK, clsTrackService);
            return;
        }
        throw new IllegalStateException("Please quote the cls library first: com.tencentcloudapi.cls:tencentcloud-cls-sdk-android:x.x.x");
    }

    private boolean isReport(CosXmlServiceException cosXmlServiceException) {
        return true;
    }

    private Map<String, String> parseClientExceptionParams(CosXmlClientException cosXmlClientException) {
        HashMap hashMap = new HashMap();
        hashMap.put("error_message", cosXmlClientException.getMessage());
        hashMap.put("error_code", String.valueOf(cosXmlClientException.errorCode));
        hashMap.put("error_type", EVENT_PARAMS_CLIENT);
        return hashMap;
    }

    private Map<String, String> parseCosXmlRequestParams(CosXmlRequest cosXmlRequest) {
        HashMap hashMap = new HashMap();
        if (cosXmlRequest == null) {
            return hashMap;
        }
        hashMap.put("bucket", cosXmlRequest.getBucket());
        hashMap.put("region", cosXmlRequest.getRegion());
        if (cosXmlRequest.getHttpTask() != null && cosXmlRequest.getHttpTask().request() != null) {
            String header = cosXmlRequest.getHttpTask().request().header("User-Agent");
            hashMap.put("network_protocol", (TextUtils.isEmpty(header) || !header.contains("android-quic-sdk")) ? cosXmlRequest.getHttpTask().request().url().getProtocol() : "quic");
            hashMap.put("http_method", cosXmlRequest.getHttpTask().request().method());
            if (cosXmlRequest.getHttpTask().request().url() != null) {
                hashMap.put("url", cosXmlRequest.getHttpTask().request().url().toString());
            }
            if (!TextUtils.isEmpty(header)) {
                hashMap.put("user_agent", header);
            }
        }
        if (cosXmlRequest instanceof ObjectRequest) {
            ObjectRequest objectRequest = (ObjectRequest) cosXmlRequest;
            if (!TextUtils.isEmpty(objectRequest.getCosPath())) {
                hashMap.put("request_path", objectRequest.getCosPath());
            }
        }
        String parseHost = parseHost(cosXmlRequest);
        if (!TextUtils.isEmpty(parseHost)) {
            hashMap.put(Http2ExchangeCodec.f103778h, parseHost);
            try {
                Matcher matcher = Pattern.compile(".*\\.cos\\.(.*)\\.myqcloud.com").matcher(parseHost);
                if (matcher.find()) {
                    String group = matcher.group(1);
                    if (!TextUtils.isEmpty(group) && !Easing.f2908j.equals(group)) {
                        hashMap.put("region", group);
                    }
                }
            } catch (Exception unused) {
            }
            try {
                hashMap.put(Easing.f2908j, String.valueOf(parseHost.endsWith("cos.accelerate.myqcloud.com")));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return hashMap;
    }

    @Nullable
    private String parseHost(CosXmlRequest cosXmlRequest) {
        HttpRequest request;
        HttpTask httpTask = cosXmlRequest.getHttpTask();
        String host = (httpTask == null || (request = httpTask.request()) == null) ? null : request.host();
        return (host != null || cosXmlRequest.getMetrics() == null) ? host : cosXmlRequest.getMetrics().getDomainName();
    }

    private Map<String, String> parseHttpTaskMetricsParams(@Nullable HttpTaskMetrics httpTaskMetrics, String str) {
        HashMap hashMap = new HashMap();
        if (httpTaskMetrics == null) {
            return hashMap;
        }
        hashMap.put("http_took_time", String.valueOf(httpTaskMetrics.httpTaskFullTime()));
        hashMap.put("http_dns", String.valueOf(httpTaskMetrics.dnsLookupTookTime()));
        hashMap.put("http_connect", String.valueOf(httpTaskMetrics.connectTookTime()));
        hashMap.put("http_secure_connect", String.valueOf(httpTaskMetrics.secureConnectTookTime()));
        hashMap.put("http_md5", String.valueOf(httpTaskMetrics.calculateMD5STookTime()));
        hashMap.put("http_sign", String.valueOf(httpTaskMetrics.signRequestTookTime()));
        hashMap.put("http_read_header", String.valueOf(httpTaskMetrics.readResponseHeaderTookTime()));
        hashMap.put("http_read_body", String.valueOf(httpTaskMetrics.readResponseBodyTookTime()));
        hashMap.put("http_write_header", String.valueOf(httpTaskMetrics.writeRequestHeaderTookTime()));
        hashMap.put("http_write_body", String.valueOf(httpTaskMetrics.writeRequestBodyTookTime()));
        hashMap.put("http_full_time", String.valueOf(httpTaskMetrics.fullTaskTookTime()));
        if ("UploadTask".equalsIgnoreCase(str) || "CopyTask".equalsIgnoreCase(str)) {
            hashMap.put("http_size", String.valueOf(httpTaskMetrics.requestBodyByteCount()));
            hashMap.put("http_speed", String.valueOf((httpTaskMetrics.requestBodyByteCount() / 1024.0d) / httpTaskMetrics.httpTaskFullTime()));
        } else if ("DownloadTask".equalsIgnoreCase(str)) {
            hashMap.put("http_size", String.valueOf(httpTaskMetrics.responseBodyByteCount()));
            hashMap.put("http_speed", String.valueOf((httpTaskMetrics.responseBodyByteCount() / 1024.0d) / httpTaskMetrics.httpTaskFullTime()));
        } else {
            hashMap.put("http_size", String.valueOf(httpTaskMetrics.requestBodyByteCount() + httpTaskMetrics.responseBodyByteCount()));
            hashMap.put("http_speed", String.valueOf(((httpTaskMetrics.requestBodyByteCount() + httpTaskMetrics.responseBodyByteCount()) / 1024.0d) / httpTaskMetrics.httpTaskFullTime()));
        }
        hashMap.put("http_retry_times", String.valueOf(httpTaskMetrics.getRetryCount()));
        hashMap.put("http_domain", httpTaskMetrics.getDomainName() != null ? httpTaskMetrics.getDomainName() : "null");
        hashMap.put("http_connect_ip", httpTaskMetrics.getConnectAddress() != null ? httpTaskMetrics.getConnectAddress().getHostAddress() : "null");
        hashMap.put("http_dns_ips", httpTaskMetrics.getRemoteAddress() != null ? httpTaskMetrics.getRemoteAddress().toString() : "null");
        return hashMap;
    }

    private Map<String, String> parseServiceExceptionParams(CosXmlServiceException cosXmlServiceException) {
        HashMap hashMap = new HashMap();
        hashMap.put("error_message", cosXmlServiceException.getErrorMessage());
        hashMap.put("error_code", cosXmlServiceException.getErrorCode());
        hashMap.put("request_id", cosXmlServiceException.getRequestId());
        hashMap.put("error_type", "Server");
        return hashMap;
    }

    private Map<String, String> parseSimplePerfParams(@Nullable TransferTaskMetrics transferTaskMetrics) {
        HashMap hashMap = new HashMap();
        if (transferTaskMetrics == null) {
            return hashMap;
        }
        hashMap.put("transfer_size", String.valueOf(transferTaskMetrics.getSize()));
        hashMap.put("ip", transferTaskMetrics.getConnectAddress() != null ? transferTaskMetrics.getConnectAddress().getHostAddress() : "");
        hashMap.put("took_time", String.valueOf(transferTaskMetrics.getTookTime()));
        hashMap.put("wait_took_time", String.valueOf(transferTaskMetrics.getWaitTookTime()));
        hashMap.put("first_progress_took_time", String.valueOf(transferTaskMetrics.getFirstProgressTookTime()));
        return hashMap;
    }

    private CosXmlClientException reportClientException(CosXmlRequest cosXmlRequest, QCloudClientException qCloudClientException, @Nullable Map<String, String> map, boolean z) {
        ReturnClientException clientExceptionParams = getClientExceptionParams(qCloudClientException);
        try {
            if (isReport(clientExceptionParams.exception)) {
                HttpTaskMetrics metrics = cosXmlRequest.getMetrics();
                Map<String, String> parseCosXmlRequestParams = parseCosXmlRequestParams(cosXmlRequest);
                parseCosXmlRequestParams.putAll(getCommonParams());
                parseCosXmlRequestParams.putAll(clientExceptionParams.params);
                if (map == null || !map.containsKey("request_name")) {
                    parseCosXmlRequestParams.put("request_name", cosXmlRequest.getClass().getSimpleName());
                }
                parseCosXmlRequestParams.put("request_result", EVENT_PARAMS_FAILURE);
                if (map != null) {
                    parseCosXmlRequestParams.putAll(map);
                }
                parseCosXmlRequestParams.putAll(parseHttpTaskMetricsParams(metrics, parseCosXmlRequestParams.get("request_name")));
                if (!z) {
                    QCloudTrackService.getInstance().report(EVENT_CODE_QCLOUD_TRACK_COS_SDK, parseCosXmlRequestParams);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return clientExceptionParams.exception;
    }

    private CosXmlServiceException reportServiceException(CosXmlRequest cosXmlRequest, QCloudServiceException qCloudServiceException, @Nullable Map<String, String> map, boolean z) {
        ReturnServiceException serviceExceptionParams = getServiceExceptionParams(qCloudServiceException);
        try {
            if (isReport(serviceExceptionParams.exception)) {
                Map<String, String> parseCosXmlRequestParams = parseCosXmlRequestParams(cosXmlRequest);
                parseCosXmlRequestParams.putAll(getCommonParams());
                parseCosXmlRequestParams.putAll(serviceExceptionParams.params);
                if (map == null || !map.containsKey("request_name")) {
                    parseCosXmlRequestParams.put("request_name", cosXmlRequest.getClass().getSimpleName());
                }
                parseCosXmlRequestParams.put("request_result", EVENT_PARAMS_FAILURE);
                if (map != null) {
                    parseCosXmlRequestParams.putAll(map);
                }
                parseCosXmlRequestParams.putAll(parseHttpTaskMetricsParams(cosXmlRequest.getMetrics(), parseCosXmlRequestParams.get("request_name")));
                if (!z) {
                    QCloudTrackService.getInstance().report(EVENT_CODE_QCLOUD_TRACK_COS_SDK, parseCosXmlRequestParams);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return serviceExceptionParams.exception;
    }

    private void reportTransferTask(CosXmlRequest cosXmlRequest, TransferTaskMetrics transferTaskMetrics, boolean z, boolean z2, @Nullable Map<String, String> map) {
        try {
            Map<String, String> parseCosXmlRequestParams = parseCosXmlRequestParams(cosXmlRequest);
            parseCosXmlRequestParams.put("request_name", cosXmlRequest.getClass().getSimpleName());
            parseCosXmlRequestParams.putAll(getCommonParams());
            parseCosXmlRequestParams.putAll(parseSimplePerfParams(transferTaskMetrics));
            parseCosXmlRequestParams.put("encrypted", String.valueOf(z));
            parseCosXmlRequestParams.put("request_result", z2 ? EVENT_PARAMS_SUCCESS : EVENT_PARAMS_FAILURE);
            if (map != null) {
                parseCosXmlRequestParams.putAll(map);
            }
            QCloudTrackService.getInstance().report(EVENT_CODE_NEW_TRANSFER, parseCosXmlRequestParams);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void reportCopyTaskClientException(CosXmlRequest cosXmlRequest, CosXmlClientException cosXmlClientException) {
        reportClientException(cosXmlRequest, cosXmlClientException, createTransferExtra("CopyTask", cosXmlRequest), false);
    }

    public void reportCopyTaskServiceException(CosXmlRequest cosXmlRequest, CosXmlServiceException cosXmlServiceException) {
        reportServiceException(cosXmlRequest, cosXmlServiceException, createTransferExtra("CopyTask", cosXmlRequest), false);
    }

    public void reportCopyTaskSuccess(CosXmlRequest cosXmlRequest) {
        reportRequestSuccess(cosXmlRequest, Collections.singletonMap("request_name", "CopyTask"), false);
    }

    public void reportDownloadTaskClientException(CosXmlRequest cosXmlRequest, QCloudClientException qCloudClientException) {
        reportClientException(cosXmlRequest, qCloudClientException, createTransferExtra("DownloadTask", cosXmlRequest), false);
    }

    public void reportDownloadTaskServiceException(CosXmlRequest cosXmlRequest, QCloudServiceException qCloudServiceException) {
        reportServiceException(cosXmlRequest, qCloudServiceException, createTransferExtra("DownloadTask", cosXmlRequest), false);
    }

    public void reportDownloadTaskSuccess(CosXmlRequest cosXmlRequest) {
        reportRequestSuccess(cosXmlRequest, Collections.singletonMap("request_name", "DownloadTask"), false);
    }

    public void reportError(String str, Exception exc) {
        if (exc == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        try {
            Throwable rootCause = ThrowableUtils.getRootCause(exc);
            hashMap.put("sdk_name", SDK_NAME);
            hashMap.put("qcloud_error_source", str);
            hashMap.put("qcloud_error_name", rootCause.getClass().getSimpleName());
            hashMap.put("qcloud_error_message", rootCause.getMessage());
            hashMap.putAll(getCommonParams());
            QCloudTrackService.getInstance().reportSimpleData(Constants.SIMPLE_DATA_EVENT_CODE_ERROR, hashMap);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public CosXmlClientException reportRequestClientException(CosXmlRequest cosXmlRequest, QCloudClientException qCloudClientException) {
        return reportRequestClientException(cosXmlRequest, qCloudClientException, false);
    }

    public CosXmlServiceException reportRequestServiceException(CosXmlRequest cosXmlRequest, QCloudServiceException qCloudServiceException) {
        return reportRequestServiceException(cosXmlRequest, qCloudServiceException, false);
    }

    public void reportRequestSuccess(CosXmlRequest cosXmlRequest) {
        reportRequestSuccess(cosXmlRequest, false);
    }

    public void reportSdkStart() {
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("sdk_name", SDK_NAME);
            hashMap.putAll(getCommonParams());
            QCloudTrackService.getInstance().reportSimpleData(Constants.SIMPLE_DATA_EVENT_CODE_START, hashMap);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void reportTransferClientException(CosXmlRequest cosXmlRequest, TransferTaskMetrics transferTaskMetrics, CosXmlClientException cosXmlClientException, boolean z) {
        if (isReport(cosXmlClientException)) {
            reportTransferTask(cosXmlRequest, transferTaskMetrics, z, false, parseClientExceptionParams(cosXmlClientException));
        }
    }

    public void reportTransferServiceException(CosXmlRequest cosXmlRequest, TransferTaskMetrics transferTaskMetrics, CosXmlServiceException cosXmlServiceException, boolean z) {
        if (isReport(cosXmlServiceException)) {
            reportTransferTask(cosXmlRequest, transferTaskMetrics, z, false, parseServiceExceptionParams(cosXmlServiceException));
        }
    }

    public void reportTransferSuccess(CosXmlRequest cosXmlRequest, TransferTaskMetrics transferTaskMetrics, boolean z) {
        reportTransferTask(cosXmlRequest, transferTaskMetrics, z, true, null);
    }

    public void reportUploadTaskClientException(CosXmlRequest cosXmlRequest, QCloudClientException qCloudClientException) {
        reportClientException(cosXmlRequest, qCloudClientException, createTransferExtra("UploadTask", cosXmlRequest), false);
    }

    public void reportUploadTaskServiceException(CosXmlRequest cosXmlRequest, QCloudServiceException qCloudServiceException) {
        reportServiceException(cosXmlRequest, qCloudServiceException, createTransferExtra("UploadTask", cosXmlRequest), false);
    }

    public void reportUploadTaskSuccess(CosXmlRequest cosXmlRequest) {
        reportRequestSuccess(cosXmlRequest, Collections.singletonMap("request_name", "UploadTask"), false);
    }

    private boolean isReport(CosXmlClientException cosXmlClientException) {
        return !(cosXmlClientException.getMessage() != null && cosXmlClientException.getMessage().toLowerCase(Locale.ROOT).contains("canceled"));
    }

    public CosXmlClientException reportRequestClientException(CosXmlRequest cosXmlRequest, QCloudClientException qCloudClientException, boolean z) {
        Map<String, String> singletonMap;
        if (cosXmlRequest instanceof BasePutObjectRequest) {
            singletonMap = Collections.singletonMap("request_name", "UploadTask");
        } else if (!(cosXmlRequest instanceof GetObjectRequest) && !(cosXmlRequest instanceof GetObjectBytesRequest)) {
            singletonMap = "CopyObjectRequest".equalsIgnoreCase(cosXmlRequest.getClass().getSimpleName()) ? Collections.singletonMap("request_name", "CopyTask") : null;
        } else {
            singletonMap = Collections.singletonMap("request_name", "DownloadTask");
        }
        return reportClientException(cosXmlRequest, qCloudClientException, singletonMap, z);
    }

    public CosXmlServiceException reportRequestServiceException(CosXmlRequest cosXmlRequest, QCloudServiceException qCloudServiceException, boolean z) {
        Map<String, String> singletonMap;
        if (cosXmlRequest instanceof BasePutObjectRequest) {
            singletonMap = Collections.singletonMap("request_name", "UploadTask");
        } else if (!(cosXmlRequest instanceof GetObjectRequest) && !(cosXmlRequest instanceof GetObjectBytesRequest)) {
            singletonMap = "CopyObjectRequest".equalsIgnoreCase(cosXmlRequest.getClass().getSimpleName()) ? Collections.singletonMap("request_name", "CopyTask") : null;
        } else {
            singletonMap = Collections.singletonMap("request_name", "DownloadTask");
        }
        return reportServiceException(cosXmlRequest, qCloudServiceException, singletonMap, z);
    }

    public void reportRequestSuccess(CosXmlRequest cosXmlRequest, boolean z) {
        Map<String, String> singletonMap;
        if (cosXmlRequest instanceof BasePutObjectRequest) {
            singletonMap = Collections.singletonMap("request_name", "UploadTask");
        } else if (!(cosXmlRequest instanceof GetObjectRequest) && !(cosXmlRequest instanceof GetObjectBytesRequest)) {
            singletonMap = "CopyObjectRequest".equalsIgnoreCase(cosXmlRequest.getClass().getSimpleName()) ? Collections.singletonMap("request_name", "CopyTask") : null;
        } else {
            singletonMap = Collections.singletonMap("request_name", "DownloadTask");
        }
        reportRequestSuccess(cosXmlRequest, singletonMap, z);
    }

    public static void initCLs(Context context, String str, String str2, String str3, String str4) {
        if (ClsTrackService.isInclude()) {
            ClsTrackService clsTrackService = new ClsTrackService();
            clsTrackService.init(context, str, str2);
            clsTrackService.setSecurityCredential(str3, str4);
            QCloudTrackService.getInstance().addTrackService(EVENT_CODE_QCLOUD_TRACK_COS_SDK, clsTrackService);
            return;
        }
        throw new IllegalStateException("Please quote the cls library first: com.tencentcloudapi.cls:tencentcloud-cls-sdk-android:x.x.x");
    }

    private void reportRequestSuccess(CosXmlRequest cosXmlRequest, @Nullable Map<String, String> map, boolean z) {
        try {
            HttpTaskMetrics metrics = cosXmlRequest.getMetrics();
            Map<String, String> parseCosXmlRequestParams = parseCosXmlRequestParams(cosXmlRequest);
            parseCosXmlRequestParams.putAll(getCommonParams());
            if (map == null || !map.containsKey("request_name")) {
                parseCosXmlRequestParams.put("request_name", cosXmlRequest.getClass().getSimpleName());
            }
            parseCosXmlRequestParams.put("request_result", EVENT_PARAMS_SUCCESS);
            if (map != null) {
                parseCosXmlRequestParams.putAll(map);
            }
            parseCosXmlRequestParams.putAll(parseHttpTaskMetricsParams(metrics, parseCosXmlRequestParams.get("request_name")));
            if (z) {
                return;
            }
            QCloudTrackService.getInstance().report(EVENT_CODE_QCLOUD_TRACK_COS_SDK, parseCosXmlRequestParams);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void initCLs(Context context, String str, String str2, ClsLifecycleCredentialProvider clsLifecycleCredentialProvider) {
        if (ClsTrackService.isInclude()) {
            ClsTrackService clsTrackService = new ClsTrackService();
            clsTrackService.init(context, str, str2);
            clsTrackService.setCredentialProvider(clsLifecycleCredentialProvider);
            QCloudTrackService.getInstance().addTrackService(EVENT_CODE_QCLOUD_TRACK_COS_SDK, clsTrackService);
            return;
        }
        throw new IllegalStateException("Please quote the cls library first: com.tencentcloudapi.cls:tencentcloud-cls-sdk-android:x.x.x");
    }
}
