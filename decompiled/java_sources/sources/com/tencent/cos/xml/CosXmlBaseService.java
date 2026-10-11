package com.tencent.cos.xml;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.cos.xml.common.ClientErrorCode;
import com.tencent.cos.xml.common.VersionInfo;
import com.tencent.cos.xml.crypto.Headers;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.exception.CosXmlServiceException;
import com.tencent.cos.xml.listener.CosXmlResultListener;
import com.tencent.cos.xml.model.CosXmlRequest;
import com.tencent.cos.xml.model.CosXmlResult;
import com.tencent.cos.xml.model.object.BasePutObjectRequest;
import com.tencent.cos.xml.model.object.BasePutObjectResult;
import com.tencent.cos.xml.model.object.GetObjectBytesRequest;
import com.tencent.cos.xml.model.object.GetObjectBytesResult;
import com.tencent.cos.xml.model.object.GetObjectRequest;
import com.tencent.cos.xml.model.object.GetObjectResult;
import com.tencent.cos.xml.model.object.SaveLocalRequest;
import com.tencent.cos.xml.model.object.UploadPartRequest;
import com.tencent.cos.xml.model.object.UploadPartResult;
import com.tencent.cos.xml.model.object.UploadRequest;
import com.tencent.cos.xml.transfer.ResponseBytesConverter;
import com.tencent.cos.xml.transfer.ResponseFileBodySerializer;
import com.tencent.cos.xml.transfer.ResponseXmlS3BodySerializer;
import com.tencent.cos.xml.utils.StringUtils;
import com.tencent.cos.xml.utils.URLEncodeUtils;
import com.tencent.qcloud.core.auth.QCloudCredentialProvider;
import com.tencent.qcloud.core.auth.QCloudCredentials;
import com.tencent.qcloud.core.auth.QCloudSelfSigner;
import com.tencent.qcloud.core.auth.QCloudSigner;
import com.tencent.qcloud.core.auth.ScopeLimitCredentialProvider;
import com.tencent.qcloud.core.auth.SignerFactory;
import com.tencent.qcloud.core.auth.StaticCredentialProvider;
import com.tencent.qcloud.core.common.QCloudClientException;
import com.tencent.qcloud.core.common.QCloudResultListener;
import com.tencent.qcloud.core.common.QCloudServiceException;
import com.tencent.qcloud.core.http.HttpResult;
import com.tencent.qcloud.core.http.HttpTask;
import com.tencent.qcloud.core.http.HttpTaskMetrics;
import com.tencent.qcloud.core.http.NetworkClient;
import com.tencent.qcloud.core.http.OkHttpClientImpl;
import com.tencent.qcloud.core.http.QCloudHttpClient;
import com.tencent.qcloud.core.http.QCloudHttpRequest;
import com.tencent.qcloud.core.http.QCloudHttpRetryHandler;
import com.tencent.qcloud.core.http.ResponseBodyConverter;
import com.tencent.qcloud.core.logger.AndroidLogcatAdapter;
import com.tencent.qcloud.core.logger.FileLogAdapter;
import com.tencent.qcloud.core.logger.QCloudLogger;
import com.tencent.qcloud.core.task.QCloudTask;
import com.tencent.qcloud.core.task.RetryStrategy;
import com.tencent.qcloud.core.task.TaskExecutors;
import com.tencent.qcloud.core.util.ContextHolder;
import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Executor;
import org.scribe.model.ParameterList;

/* loaded from: classes10.dex */
public class CosXmlBaseService implements BaseCosXml {
    public static String BRIDGE = null;
    public static boolean IS_CLOSE_REPORT = false;
    private static final String TAG = "CosXmlBaseService";
    public static String appCachePath;
    protected volatile QCloudHttpClient client;
    protected CosXmlServiceConfig config;
    protected QCloudCredentialProvider credentialProvider;
    protected String requestDomain;
    protected QCloudSelfSigner selfSigner;
    protected String signerType;
    protected String tag;

    public CosXmlBaseService(Context context, CosXmlServiceConfig cosXmlServiceConfig, QCloudCredentialProvider qCloudCredentialProvider) {
        this(context, cosXmlServiceConfig);
        this.credentialProvider = qCloudCredentialProvider;
    }

    private void init(QCloudHttpClient.Builder builder, CosXmlServiceConfig cosXmlServiceConfig) {
        builder.setConnectionTimeout(cosXmlServiceConfig.getConnectionTimeout()).setSocketTimeout(cosXmlServiceConfig.getSocketTimeout());
        RetryStrategy retryStrategy = cosXmlServiceConfig.getRetryStrategy();
        if (retryStrategy != null) {
            builder.setRetryStrategy(retryStrategy);
        }
        QCloudHttpRetryHandler qCloudHttpRetryHandler = cosXmlServiceConfig.getQCloudHttpRetryHandler();
        if (qCloudHttpRetryHandler != null) {
            builder.setQCloudHttpRetryHandler(qCloudHttpRetryHandler);
        }
        builder.enableDebugLog(cosXmlServiceConfig.isDebuggable());
        if (cosXmlServiceConfig.isEnableQuic()) {
            try {
                builder.setNetworkClient((NetworkClient) Class.forName("com.tencent.qcloud.quic.QuicClientImpl").newInstance());
            } catch (Exception e) {
                IllegalStateException illegalStateException = new IllegalStateException(e.getMessage(), e);
                CosTrackService.getInstance().reportError(TAG, illegalStateException);
                throw illegalStateException;
            }
        } else {
            builder.setNetworkClient(new OkHttpClientImpl());
        }
        builder.dnsCache(cosXmlServiceConfig.isDnsCache());
        builder.addPrefetchHost(cosXmlServiceConfig.getEndpointSuffix());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logRequestMetrics(CosXmlRequest cosXmlRequest) {
        if (!this.config.isDebuggable() || cosXmlRequest.getMetrics() == null) {
            return;
        }
        QCloudLogger.m59786i(QCloudHttpClient.HTTP_LOG_TAG, cosXmlRequest.getMetrics().toString(), new Object[0]);
    }

    public void addCustomerDNS(String str, String[] strArr) throws CosXmlClientException {
        try {
            this.client.addDnsRecord(str, strArr);
        } catch (UnknownHostException e) {
            throw new CosXmlClientException(ClientErrorCode.POOR_NETWORK.getCode(), e);
        }
    }

    public void addCustomerDNSFetch(@NonNull QCloudHttpClient.QCloudDnsFetch qCloudDnsFetch) {
        this.client.addDnsFetch(qCloudDnsFetch);
    }

    @Deprecated
    public void addVerifiedHost(String str) {
        this.client.addVerifiedHost(str);
    }

    @Override // com.tencent.cos.xml.BaseCosXml
    public BasePutObjectResult basePutObject(BasePutObjectRequest basePutObjectRequest) throws CosXmlClientException, CosXmlServiceException {
        BasePutObjectResult basePutObjectResult = new BasePutObjectResult();
        basePutObjectResult.accessUrl = getAccessUrl(basePutObjectRequest);
        return (BasePutObjectResult) execute(basePutObjectRequest, basePutObjectResult);
    }

    @Override // com.tencent.cos.xml.BaseCosXml
    public void basePutObjectAsync(BasePutObjectRequest basePutObjectRequest, CosXmlResultListener cosXmlResultListener) {
        BasePutObjectResult basePutObjectResult = new BasePutObjectResult();
        basePutObjectResult.accessUrl = getAccessUrl(basePutObjectRequest);
        schedule(basePutObjectRequest, basePutObjectResult, cosXmlResultListener);
    }

    public <T1 extends CosXmlRequest, T2 extends CosXmlResult> QCloudHttpRequest buildHttpRequest(T1 t1, T2 t2) throws CosXmlClientException {
        QCloudHttpRequest.Builder<T2> tag = new QCloudHttpRequest.Builder().method(t1.getMethod()).userAgent(getUserAgent()).tag((Object) this.tag);
        tag.addNoSignHeaderKeys(this.config.getNoSignHeaders());
        tag.addNoSignHeaderKeys(t1.getNoSignHeaders());
        tag.addNoSignParamKeys(t1.getNoSignParams());
        String requestURL = t1.getRequestURL();
        String requestHost = getRequestHost(t1);
        if (requestURL != null) {
            try {
                tag.url(new URL(requestURL));
            } catch (MalformedURLException e) {
                throw new CosXmlClientException(ClientErrorCode.BAD_REQUEST.getCode(), e);
            }
        } else {
            t1.checkParameters();
            tag.scheme(this.config.getProtocol()).host(requestHost).path(t1.getPath(this.config));
            if (this.config.getPort() != -1) {
                tag.port(this.config.getPort());
            }
            tag.query(t1.getQueryString());
            if (t1.getQueryEncodedString() != null) {
                tag.encodedQuery(t1.getQueryEncodedString());
            }
        }
        setCopySource(t1);
        HashSet<String> hashSet = new HashSet();
        hashSet.addAll(this.config.getCommonHeaders().keySet());
        hashSet.addAll(t1.getRequestHeaders().keySet());
        HashMap hashMap = new HashMap();
        for (String str : hashSet) {
            List<String> list = t1.getRequestHeaders().get(str);
            if (list == null) {
                list = this.config.getCommonHeaders().get(str);
            }
            if (list != null) {
                hashMap.put(str, list);
            }
        }
        if (!hashMap.containsKey("Host")) {
            LinkedList linkedList = new LinkedList();
            linkedList.add(requestHost);
            hashMap.put("Host", linkedList);
        }
        if (t1.headersHasUnsafeNonAscii()) {
            tag.addHeadersUnsafeNonAscii(hashMap);
        } else {
            tag.addHeaders(hashMap);
        }
        if (t1.isNeedMD5()) {
            tag.contentMD5();
        }
        tag.setKeyTime(t1.getKeyTime());
        if (this.credentialProvider != null) {
            tag.signer(signerTypeCompat(this.signerType, t1), t1.getSignSourceProvider());
        } else if (t1.getCredentialProvider() != null) {
            tag.signer(signerTypeCompat(this.signerType, t1), t1.getSignSourceProvider());
        } else {
            tag.signer(null, null);
        }
        QCloudSelfSigner qCloudSelfSigner = this.selfSigner;
        if (qCloudSelfSigner != null) {
            tag.selfSigner(qCloudSelfSigner);
        }
        tag.credentialScope(t1.getSTSCredentialScope(this.config));
        if (t1.getRequestBody() != null) {
            tag.body(t1.getRequestBody());
        }
        if (t1 instanceof SaveLocalRequest) {
            SaveLocalRequest saveLocalRequest = (SaveLocalRequest) t1;
            if (!TextUtils.isEmpty(saveLocalRequest.getSaveLocalPath())) {
                tag.converter((ResponseBodyConverter<T2>) new ResponseFileBodySerializer((GetObjectResult) t2, saveLocalRequest.getSaveLocalPath(), saveLocalRequest.getSaveLocalOffset()));
            } else if (saveLocalRequest.getSaveLocalUri() != null) {
                tag.converter((ResponseBodyConverter<T2>) new ResponseFileBodySerializer((GetObjectResult) t2, saveLocalRequest.getSaveLocalUri(), ContextHolder.getAppContext().getContentResolver(), saveLocalRequest.getSaveLocalOffset()));
            }
        } else if (t1 instanceof GetObjectBytesRequest) {
            tag.converter((ResponseBodyConverter<T2>) new ResponseBytesConverter((GetObjectBytesResult) t2));
        } else if (!buildHttpRequestBodyConverter(t1, t2, tag)) {
            tag.converter((ResponseBodyConverter<T2>) new ResponseXmlS3BodySerializer(t2));
        }
        tag.signInUrl(t1.isSignInUrl() || this.config.isSignInUrl());
        return tag.build();
    }

    public <T1 extends CosXmlRequest, T2 extends CosXmlResult> boolean buildHttpRequestBodyConverter(T1 t1, T2 t2, QCloudHttpRequest.Builder<T2> builder) {
        return false;
    }

    @Override // com.tencent.cos.xml.BaseCosXml
    public void cancel(CosXmlRequest cosXmlRequest) {
        if (cosXmlRequest == null || cosXmlRequest.getHttpTask() == null) {
            return;
        }
        cosXmlRequest.getHttpTask().cancel();
    }

    @Override // com.tencent.cos.xml.BaseCosXml
    public void cancelAll() {
        Iterator<HttpTask> it2 = this.client.getTasksByTag(this.tag).iterator();
        while (it2.hasNext()) {
            it2.next().cancel();
        }
    }

    public <T1 extends CosXmlRequest, T2 extends CosXmlResult> T2 execute(T1 t1, T2 t2) throws CosXmlClientException, CosXmlServiceException {
        return (T2) execute(t1, t2, false);
    }

    public String getAccessUrl(CosXmlRequest cosXmlRequest) {
        String str;
        String str2;
        String requestURL = cosXmlRequest.getRequestURL();
        if (requestURL != null) {
            int indexOf = requestURL.indexOf("?");
            return indexOf > 0 ? requestURL.substring(0, indexOf) : requestURL;
        }
        try {
            str = getRequestHost(cosXmlRequest);
        } catch (CosXmlClientException e) {
            CosTrackService.getInstance().reportError(TAG, e);
            e.printStackTrace();
            str = null;
        }
        try {
            str2 = URLEncodeUtils.cosPathEncode(cosXmlRequest.getPath(this.config));
        } catch (CosXmlClientException e2) {
            CosTrackService.getInstance().reportError(TAG, e2);
            e2.printStackTrace();
            str2 = "/";
        }
        return this.config.getProtocol() + "://" + str + str2;
    }

    @Deprecated
    public String getAppid() {
        return this.config.getAppid();
    }

    public CosXmlServiceConfig getConfig() {
        return this.config;
    }

    public QCloudCredentialProvider getCredentialProvider() {
        return this.credentialProvider;
    }

    public File[] getLogFiles(int i) {
        FileLogAdapter fileLogAdapter = (FileLogAdapter) QCloudLogger.getAdapter(FileLogAdapter.class);
        if (fileLogAdapter != null) {
            return fileLogAdapter.getLogFilesDesc(i);
        }
        return null;
    }

    @Override // com.tencent.cos.xml.BaseCosXml
    public GetObjectResult getObject(GetObjectRequest getObjectRequest) throws CosXmlClientException, CosXmlServiceException {
        return (GetObjectResult) execute(getObjectRequest, new GetObjectResult());
    }

    @Override // com.tencent.cos.xml.BaseCosXml
    public void getObjectAsync(GetObjectRequest getObjectRequest, CosXmlResultListener cosXmlResultListener) {
        schedule(getObjectRequest, new GetObjectResult(), cosXmlResultListener);
    }

    @Override // com.tencent.cos.xml.BaseCosXml
    public String getObjectUrl(String str, String str2, String str3) {
        BasePutObjectRequest basePutObjectRequest = new BasePutObjectRequest(str, str3, "");
        basePutObjectRequest.setRegion(str2);
        return getAccessUrl(basePutObjectRequest);
    }

    public String getPresignedURL(CosXmlRequest cosXmlRequest) throws CosXmlClientException {
        QCloudCredentials credentials;
        try {
            if (cosXmlRequest.getCredentialProvider() != null) {
                credentials = cosXmlRequest.getCredentialProvider().getCredentials();
            } else {
                QCloudCredentialProvider qCloudCredentialProvider = this.credentialProvider;
                credentials = qCloudCredentialProvider instanceof ScopeLimitCredentialProvider ? ((ScopeLimitCredentialProvider) qCloudCredentialProvider).getCredentials(cosXmlRequest.getSTSCredentialScope(this.config)) : qCloudCredentialProvider.getCredentials();
            }
            QCloudSigner signer = SignerFactory.getSigner(signerTypeCompat(this.signerType, cosXmlRequest));
            QCloudHttpRequest buildHttpRequest = buildHttpRequest(cosXmlRequest, null);
            signer.sign(buildHttpRequest, credentials);
            String header = buildHttpRequest.header("Authorization");
            String header2 = buildHttpRequest.header(Headers.SECURITY_TOKEN);
            if (!TextUtils.isEmpty(header2)) {
                header = header + "&x-cos-security-token=" + header2;
            }
            String accessUrl = getAccessUrl(cosXmlRequest);
            String flat = StringUtils.flat(cosXmlRequest.getQueryString());
            if (TextUtils.isEmpty(flat)) {
                return accessUrl + "?" + header;
            }
            return accessUrl + "?" + flat + ParameterList.f115951c + header;
        } catch (QCloudClientException e) {
            throw new CosXmlClientException(ClientErrorCode.INVALID_CREDENTIALS.getCode(), e);
        }
    }

    @Deprecated
    public String getRegion() {
        return this.config.getRegion();
    }

    public String getRequestHost(CosXmlRequest cosXmlRequest) throws CosXmlClientException {
        return !TextUtils.isEmpty(this.requestDomain) ? this.requestDomain : cosXmlRequest.getRequestHost(this.config);
    }

    public String getUserAgent() {
        CosXmlServiceConfig cosXmlServiceConfig = this.config;
        if (cosXmlServiceConfig == null) {
            return VersionInfo.getUserAgent();
        }
        String quicUserAgent = cosXmlServiceConfig.isEnableQuic() ? VersionInfo.getQuicUserAgent() : VersionInfo.getUserAgent();
        if (TextUtils.isEmpty(this.config.getUserAgentExtended())) {
            return quicUserAgent;
        }
        return quicUserAgent + "-" + this.config.getUserAgentExtended();
    }

    public void internalGetObjectAsync(GetObjectRequest getObjectRequest, CosXmlResultListener cosXmlResultListener) {
        schedule(getObjectRequest, new GetObjectResult(), cosXmlResultListener, true);
    }

    @Override // com.tencent.cos.xml.BaseCosXml
    public void release() {
        cancelAll();
    }

    public <T1 extends CosXmlRequest, T2 extends CosXmlResult> void schedule(T1 t1, T2 t2, CosXmlResultListener cosXmlResultListener) {
        schedule(t1, t2, cosXmlResultListener, false);
    }

    public <T1 extends CosXmlRequest> void setCopySource(T1 t1) throws CosXmlClientException {
    }

    public void setDomain(String str) {
        this.requestDomain = str;
    }

    public void setNetworkClient(CosXmlServiceConfig cosXmlServiceConfig) {
        QCloudHttpClient.Builder builder = new QCloudHttpClient.Builder();
        init(builder, cosXmlServiceConfig);
        this.client = builder.build();
        this.client.setNetworkClientType(builder);
        this.config = cosXmlServiceConfig;
        this.client.addVerifiedHost("*." + cosXmlServiceConfig.getEndpointSuffix());
        this.client.addVerifiedHost("*." + cosXmlServiceConfig.getEndpointSuffix(cosXmlServiceConfig.getRegion(), true));
        this.client.setDebuggable(cosXmlServiceConfig.isDebuggable());
    }

    public <T1 extends CosXmlRequest, T2 extends CosXmlResult> void setProgressListener(final T1 t1, HttpTask<T2> httpTask, boolean z) {
        if (t1 instanceof BasePutObjectRequest) {
            httpTask.addProgressListener(((BasePutObjectRequest) t1).getProgressListener());
            return;
        }
        if (!(t1 instanceof UploadPartRequest)) {
            if (t1 instanceof GetObjectRequest) {
                httpTask.addProgressListener(((GetObjectRequest) t1).getProgressListener());
            }
        } else {
            httpTask.addProgressListener(((UploadPartRequest) t1).getProgressListener());
            if (z) {
                httpTask.setOnRequestWeightListener(new QCloudTask.OnRequestWeightListener() { // from class: com.tencent.cos.xml.CosXmlBaseService.2
                    @Override // com.tencent.qcloud.core.task.QCloudTask.OnRequestWeightListener
                    public int onWeight() {
                        return t1.getWeight();
                    }
                });
            }
        }
    }

    public String signerTypeCompat(String str, CosXmlRequest cosXmlRequest) {
        return str;
    }

    @Override // com.tencent.cos.xml.BaseCosXml
    public UploadPartResult uploadPart(UploadPartRequest uploadPartRequest) throws CosXmlClientException, CosXmlServiceException {
        return (UploadPartResult) execute(uploadPartRequest, new UploadPartResult());
    }

    @Override // com.tencent.cos.xml.BaseCosXml
    public void uploadPartAsync(UploadPartRequest uploadPartRequest, CosXmlResultListener cosXmlResultListener) {
        schedule(uploadPartRequest, new UploadPartResult(), cosXmlResultListener);
    }

    public <T1 extends CosXmlRequest, T2 extends CosXmlResult> T2 execute(T1 t1, T2 t2, boolean z) throws CosXmlClientException, CosXmlServiceException {
        HttpTask resolveRequest;
        CosXmlServiceConfig cosXmlServiceConfig;
        try {
            if (TextUtils.isEmpty(t1.getRegion()) && (cosXmlServiceConfig = this.config) != null) {
                t1.setRegion(cosXmlServiceConfig.getRegion());
            }
            if (t1.getMetrics() == null) {
                t1.attachMetrics(new HttpTaskMetrics());
            }
            QCloudHttpRequest buildHttpRequest = buildHttpRequest(t1, t2);
            if (t1.getCredentialProvider() != null) {
                resolveRequest = this.client.resolveRequest(buildHttpRequest, t1.getCredentialProvider());
            } else {
                resolveRequest = this.client.resolveRequest(buildHttpRequest, this.credentialProvider);
            }
            resolveRequest.setTransferThreadControl(this.config.isTransferThreadControl());
            resolveRequest.setUploadMaxThreadCount(this.config.getUploadMaxThreadCount());
            resolveRequest.setDownloadMaxThreadCount(this.config.getDownloadMaxThreadCount());
            resolveRequest.setDomainSwitch(this.config.isDomainSwitch());
            t1.setTask(resolveRequest);
            setProgressListener(t1, resolveRequest, false);
            HttpResult executeNow = resolveRequest.executeNow();
            CosTrackService.getInstance().reportRequestSuccess(t1, z);
            logRequestMetrics(t1);
            if (executeNow != null) {
                return (T2) executeNow.content();
            }
            return null;
        } catch (QCloudClientException e) {
            throw CosTrackService.getInstance().reportRequestClientException(t1, e, z);
        } catch (QCloudServiceException e2) {
            throw CosTrackService.getInstance().reportRequestServiceException(t1, e2, z);
        }
    }

    @Override // com.tencent.cos.xml.BaseCosXml
    public byte[] getObject(String str, String str2) throws CosXmlClientException, CosXmlServiceException {
        GetObjectBytesResult getObjectBytesResult = (GetObjectBytesResult) execute(new GetObjectBytesRequest(str, str2), new GetObjectBytesResult());
        return getObjectBytesResult != null ? getObjectBytesResult.data : new byte[0];
    }

    @Deprecated
    public String getRegion(CosXmlRequest cosXmlRequest) {
        return cosXmlRequest.getRegion() == null ? this.config.getRegion() : cosXmlRequest.getRegion();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T1 extends CosXmlRequest, T2 extends CosXmlResult> void schedule(final T1 t1, T2 t2, final CosXmlResultListener cosXmlResultListener, final boolean z) {
        HttpTask resolveRequest;
        CosXmlServiceConfig cosXmlServiceConfig;
        Object obj = new QCloudResultListener<HttpResult<T2>>() { // from class: com.tencent.cos.xml.CosXmlBaseService.1
            @Override // com.tencent.qcloud.core.common.QCloudResultListener
            public void onFailure(QCloudClientException qCloudClientException, QCloudServiceException qCloudServiceException) {
                CosXmlBaseService.this.logRequestMetrics(t1);
                if (qCloudClientException != null) {
                    cosXmlResultListener.onFail(t1, CosTrackService.getInstance().reportRequestClientException(t1, qCloudClientException, z), null);
                } else if (qCloudServiceException != null) {
                    cosXmlResultListener.onFail(t1, null, CosTrackService.getInstance().reportRequestServiceException(t1, qCloudServiceException, z));
                }
            }

            @Override // com.tencent.qcloud.core.common.QCloudResultListener
            public void onSuccess(HttpResult<T2> httpResult) {
                CosTrackService.getInstance().reportRequestSuccess(t1, z);
                CosXmlBaseService.this.logRequestMetrics(t1);
                cosXmlResultListener.onSuccess(t1, (CosXmlResult) httpResult.content());
            }
        };
        try {
            if (TextUtils.isEmpty(t1.getRegion()) && (cosXmlServiceConfig = this.config) != null) {
                t1.setRegion(cosXmlServiceConfig.getRegion());
            }
            if (t1.getMetrics() == null) {
                t1.attachMetrics(new HttpTaskMetrics());
            }
            QCloudHttpRequest buildHttpRequest = buildHttpRequest(t1, t2);
            if (t1.getCredentialProvider() != null) {
                resolveRequest = this.client.resolveRequest(buildHttpRequest, t1.getCredentialProvider());
            } else {
                resolveRequest = this.client.resolveRequest(buildHttpRequest, this.credentialProvider);
            }
            resolveRequest.setTransferThreadControl(this.config.isTransferThreadControl());
            resolveRequest.setUploadMaxThreadCount(this.config.getUploadMaxThreadCount());
            resolveRequest.setDownloadMaxThreadCount(this.config.getDownloadMaxThreadCount());
            resolveRequest.setDomainSwitch(this.config.isDomainSwitch());
            t1.setTask(resolveRequest);
            setProgressListener(t1, resolveRequest, true);
            Executor executor = this.config.getExecutor();
            Executor observeExecutor = this.config.getObserveExecutor();
            if (observeExecutor != null) {
                resolveRequest.observeOn(observeExecutor);
            }
            resolveRequest.addResultListener(obj);
            if (executor != null) {
                resolveRequest.scheduleOn(executor);
            } else if (t1 instanceof UploadRequest) {
                resolveRequest.scheduleOn(TaskExecutors.UPLOAD_EXECUTOR, t1.getPriority());
            } else {
                resolveRequest.schedule();
            }
        } catch (QCloudClientException e) {
            cosXmlResultListener.onFail(t1, CosTrackService.getInstance().reportRequestClientException(t1, e, z), null);
        }
    }

    public CosXmlBaseService(Context context, CosXmlServiceConfig cosXmlServiceConfig) {
        this.tag = "CosXml";
        this.signerType = "CosXmlSigner";
        if (cosXmlServiceConfig.isDebuggable()) {
            QCloudLogger.addAdapter(FileLogAdapter.getInstance(context, "QLog"));
        }
        if (cosXmlServiceConfig.isDebuggable()) {
            QCloudLogger.addAdapter(new AndroidLogcatAdapter());
        }
        CosTrackService.init(context.getApplicationContext(), IS_CLOSE_REPORT, BRIDGE);
        appCachePath = context.getApplicationContext().getFilesDir().getPath();
        TaskExecutors.initExecutor(cosXmlServiceConfig.getUploadMaxThreadCount(), cosXmlServiceConfig.getDownloadMaxThreadCount());
        setNetworkClient(cosXmlServiceConfig);
        ContextHolder.setContext(context);
    }

    @Override // com.tencent.cos.xml.BaseCosXml
    public void cancel(CosXmlRequest cosXmlRequest, boolean z) {
        if (cosXmlRequest == null || cosXmlRequest.getHttpTask() == null) {
            return;
        }
        cosXmlRequest.getHttpTask().cancel(z);
    }

    @Override // com.tencent.cos.xml.BaseCosXml
    public byte[] getObject(GetObjectBytesRequest getObjectBytesRequest) throws CosXmlClientException, CosXmlServiceException {
        GetObjectBytesResult getObjectBytesResult = (GetObjectBytesResult) execute(getObjectBytesRequest, new GetObjectBytesResult());
        return getObjectBytesResult != null ? getObjectBytesResult.data : new byte[0];
    }

    public CosXmlBaseService(Context context, CosXmlServiceConfig cosXmlServiceConfig, QCloudSigner qCloudSigner) {
        this(context, cosXmlServiceConfig);
        this.credentialProvider = new StaticCredentialProvider(null);
        this.signerType = "UserCosXmlSigner";
        SignerFactory.registerSigner("UserCosXmlSigner", qCloudSigner);
    }

    public CosXmlBaseService(Context context, CosXmlServiceConfig cosXmlServiceConfig, QCloudSelfSigner qCloudSelfSigner) {
        this(context, cosXmlServiceConfig);
        this.selfSigner = qCloudSelfSigner;
    }
}
