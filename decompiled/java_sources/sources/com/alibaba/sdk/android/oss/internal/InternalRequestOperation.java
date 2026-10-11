package com.alibaba.sdk.android.oss.internal;

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.ClientConfiguration;
import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.common.HttpMethod;
import com.alibaba.sdk.android.oss.common.OSSHeaders;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.alibaba.sdk.android.oss.common.auth.OSSCredentialProvider;
import com.alibaba.sdk.android.oss.common.utils.BinaryUtil;
import com.alibaba.sdk.android.oss.common.utils.CRC64;
import com.alibaba.sdk.android.oss.common.utils.DateUtil;
import com.alibaba.sdk.android.oss.common.utils.HttpUtil;
import com.alibaba.sdk.android.oss.common.utils.OSSUtils;
import com.alibaba.sdk.android.oss.common.utils.VersionInfoUtils;
import com.alibaba.sdk.android.oss.exception.InconsistentException;
import com.alibaba.sdk.android.oss.internal.ResponseParsers;
import com.alibaba.sdk.android.oss.model.AbortMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.AbortMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.AppendObjectRequest;
import com.alibaba.sdk.android.oss.model.AppendObjectResult;
import com.alibaba.sdk.android.oss.model.CompleteMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.CompleteMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.CopyObjectRequest;
import com.alibaba.sdk.android.oss.model.CopyObjectResult;
import com.alibaba.sdk.android.oss.model.CreateBucketRequest;
import com.alibaba.sdk.android.oss.model.CreateBucketResult;
import com.alibaba.sdk.android.oss.model.DeleteBucketLifecycleRequest;
import com.alibaba.sdk.android.oss.model.DeleteBucketLifecycleResult;
import com.alibaba.sdk.android.oss.model.DeleteBucketLoggingRequest;
import com.alibaba.sdk.android.oss.model.DeleteBucketLoggingResult;
import com.alibaba.sdk.android.oss.model.DeleteBucketRequest;
import com.alibaba.sdk.android.oss.model.DeleteBucketResult;
import com.alibaba.sdk.android.oss.model.DeleteMultipleObjectRequest;
import com.alibaba.sdk.android.oss.model.DeleteMultipleObjectResult;
import com.alibaba.sdk.android.oss.model.DeleteObjectRequest;
import com.alibaba.sdk.android.oss.model.DeleteObjectResult;
import com.alibaba.sdk.android.oss.model.GetBucketACLRequest;
import com.alibaba.sdk.android.oss.model.GetBucketACLResult;
import com.alibaba.sdk.android.oss.model.GetBucketInfoRequest;
import com.alibaba.sdk.android.oss.model.GetBucketInfoResult;
import com.alibaba.sdk.android.oss.model.GetBucketLifecycleRequest;
import com.alibaba.sdk.android.oss.model.GetBucketLifecycleResult;
import com.alibaba.sdk.android.oss.model.GetBucketLoggingRequest;
import com.alibaba.sdk.android.oss.model.GetBucketLoggingResult;
import com.alibaba.sdk.android.oss.model.GetBucketRefererRequest;
import com.alibaba.sdk.android.oss.model.GetBucketRefererResult;
import com.alibaba.sdk.android.oss.model.GetObjectACLRequest;
import com.alibaba.sdk.android.oss.model.GetObjectACLResult;
import com.alibaba.sdk.android.oss.model.GetObjectRequest;
import com.alibaba.sdk.android.oss.model.GetObjectResult;
import com.alibaba.sdk.android.oss.model.GetSymlinkRequest;
import com.alibaba.sdk.android.oss.model.GetSymlinkResult;
import com.alibaba.sdk.android.oss.model.HeadObjectRequest;
import com.alibaba.sdk.android.oss.model.HeadObjectResult;
import com.alibaba.sdk.android.oss.model.ImagePersistRequest;
import com.alibaba.sdk.android.oss.model.ImagePersistResult;
import com.alibaba.sdk.android.oss.model.InitiateMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.InitiateMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.ListBucketsRequest;
import com.alibaba.sdk.android.oss.model.ListBucketsResult;
import com.alibaba.sdk.android.oss.model.ListMultipartUploadsRequest;
import com.alibaba.sdk.android.oss.model.ListMultipartUploadsResult;
import com.alibaba.sdk.android.oss.model.ListObjectsRequest;
import com.alibaba.sdk.android.oss.model.ListObjectsResult;
import com.alibaba.sdk.android.oss.model.ListPartsRequest;
import com.alibaba.sdk.android.oss.model.ListPartsResult;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import com.alibaba.sdk.android.oss.model.OSSResult;
import com.alibaba.sdk.android.oss.model.PartETag;
import com.alibaba.sdk.android.oss.model.PutBucketLifecycleRequest;
import com.alibaba.sdk.android.oss.model.PutBucketLifecycleResult;
import com.alibaba.sdk.android.oss.model.PutBucketLoggingRequest;
import com.alibaba.sdk.android.oss.model.PutBucketLoggingResult;
import com.alibaba.sdk.android.oss.model.PutBucketRefererRequest;
import com.alibaba.sdk.android.oss.model.PutBucketRefererResult;
import com.alibaba.sdk.android.oss.model.PutObjectRequest;
import com.alibaba.sdk.android.oss.model.PutObjectResult;
import com.alibaba.sdk.android.oss.model.PutSymlinkRequest;
import com.alibaba.sdk.android.oss.model.PutSymlinkResult;
import com.alibaba.sdk.android.oss.model.RestoreObjectRequest;
import com.alibaba.sdk.android.oss.model.RestoreObjectResult;
import com.alibaba.sdk.android.oss.model.TriggerCallbackRequest;
import com.alibaba.sdk.android.oss.model.TriggerCallbackResult;
import com.alibaba.sdk.android.oss.model.UploadPartRequest;
import com.alibaba.sdk.android.oss.model.UploadPartResult;
import com.alibaba.sdk.android.oss.network.ExecutionContext;
import com.alibaba.sdk.android.oss.network.OSSRequestTask;
import java.io.UnsupportedEncodingException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URI;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import okhttp3.Dispatcher;
import okhttp3.OkHttpClient;

/* loaded from: classes3.dex */
public class InternalRequestOperation {

    /* renamed from: h */
    public static final int f12990h = 1000;

    /* renamed from: i */
    public static final int f12991i = 10000;

    /* renamed from: j */
    public static ExecutorService f12992j = Executors.newFixedThreadPool(5, new ThreadFactoryC1763a());

    /* renamed from: a */
    public volatile URI f12993a;

    /* renamed from: b */
    public URI f12994b;

    /* renamed from: c */
    public OkHttpClient f12995c;

    /* renamed from: d */
    public Context f12996d;

    /* renamed from: e */
    public OSSCredentialProvider f12997e;

    /* renamed from: f */
    public int f12998f;

    /* renamed from: g */
    public ClientConfiguration f12999g;

    /* renamed from: com.alibaba.sdk.android.oss.internal.InternalRequestOperation$a */
    /* loaded from: classes3.dex */
    public static class ThreadFactoryC1763a implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "oss-android-api-thread");
        }
    }

    /* renamed from: com.alibaba.sdk.android.oss.internal.InternalRequestOperation$b */
    /* loaded from: classes3.dex */
    public class C1764b implements HostnameVerifier {

        /* renamed from: a */
        public final /* synthetic */ URI f13000a;

        public C1764b(URI uri) {
            this.f13000a = uri;
        }

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return HttpsURLConnection.getDefaultHostnameVerifier().verify(this.f13000a.getHost(), sSLSession);
        }
    }

    /* renamed from: com.alibaba.sdk.android.oss.internal.InternalRequestOperation$c */
    /* loaded from: classes3.dex */
    public class C1765c implements HostnameVerifier {
        public C1765c() {
        }

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return HttpsURLConnection.getDefaultHostnameVerifier().verify(InternalRequestOperation.this.f12994b.getHost(), sSLSession);
        }
    }

    /* renamed from: com.alibaba.sdk.android.oss.internal.InternalRequestOperation$d */
    /* loaded from: classes3.dex */
    public class C1766d implements OSSCompletedCallback<PutObjectRequest, PutObjectResult> {

        /* renamed from: a */
        public final /* synthetic */ OSSCompletedCallback f13003a;

        public C1766d(OSSCompletedCallback oSSCompletedCallback) {
            this.f13003a = oSSCompletedCallback;
        }

        @Override // com.alibaba.sdk.android.oss.callback.OSSCompletedCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onFailure(PutObjectRequest putObjectRequest, ClientException clientException, ServiceException serviceException) {
            this.f13003a.onFailure(putObjectRequest, clientException, serviceException);
        }

        @Override // com.alibaba.sdk.android.oss.callback.OSSCompletedCallback
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onSuccess(PutObjectRequest putObjectRequest, PutObjectResult putObjectResult) {
            InternalRequestOperation.this.m7682g(putObjectRequest, putObjectResult, this.f13003a);
        }
    }

    /* renamed from: com.alibaba.sdk.android.oss.internal.InternalRequestOperation$e */
    /* loaded from: classes3.dex */
    public class C1767e implements OSSCompletedCallback<AppendObjectRequest, AppendObjectResult> {

        /* renamed from: a */
        public final /* synthetic */ OSSCompletedCallback f13005a;

        public C1767e(OSSCompletedCallback oSSCompletedCallback) {
            this.f13005a = oSSCompletedCallback;
        }

        @Override // com.alibaba.sdk.android.oss.callback.OSSCompletedCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onFailure(AppendObjectRequest appendObjectRequest, ClientException clientException, ServiceException serviceException) {
            this.f13005a.onFailure(appendObjectRequest, clientException, serviceException);
        }

        @Override // com.alibaba.sdk.android.oss.callback.OSSCompletedCallback
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onSuccess(AppendObjectRequest appendObjectRequest, AppendObjectResult appendObjectResult) {
            boolean z = appendObjectRequest.getCRC64() == OSSRequest.CRC64Config.YES;
            if (appendObjectRequest.getInitCRC64() != null && z) {
                appendObjectResult.setClientCRC(Long.valueOf(CRC64.combine(appendObjectRequest.getInitCRC64().longValue(), appendObjectResult.getClientCRC().longValue(), appendObjectResult.getNextPosition() - appendObjectRequest.getPosition())));
            }
            InternalRequestOperation.this.m7682g(appendObjectRequest, appendObjectResult, this.f13005a);
        }
    }

    /* renamed from: com.alibaba.sdk.android.oss.internal.InternalRequestOperation$f */
    /* loaded from: classes3.dex */
    public class C1768f implements OSSCompletedCallback<UploadPartRequest, UploadPartResult> {

        /* renamed from: a */
        public final /* synthetic */ OSSCompletedCallback f13007a;

        public C1768f(OSSCompletedCallback oSSCompletedCallback) {
            this.f13007a = oSSCompletedCallback;
        }

        @Override // com.alibaba.sdk.android.oss.callback.OSSCompletedCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onFailure(UploadPartRequest uploadPartRequest, ClientException clientException, ServiceException serviceException) {
            this.f13007a.onFailure(uploadPartRequest, clientException, serviceException);
        }

        @Override // com.alibaba.sdk.android.oss.callback.OSSCompletedCallback
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onSuccess(UploadPartRequest uploadPartRequest, UploadPartResult uploadPartResult) {
            InternalRequestOperation.this.m7682g(uploadPartRequest, uploadPartResult, this.f13007a);
        }
    }

    /* renamed from: com.alibaba.sdk.android.oss.internal.InternalRequestOperation$g */
    /* loaded from: classes3.dex */
    public class C1769g implements OSSCompletedCallback<CompleteMultipartUploadRequest, CompleteMultipartUploadResult> {

        /* renamed from: a */
        public final /* synthetic */ OSSCompletedCallback f13009a;

        public C1769g(OSSCompletedCallback oSSCompletedCallback) {
            this.f13009a = oSSCompletedCallback;
        }

        @Override // com.alibaba.sdk.android.oss.callback.OSSCompletedCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onFailure(CompleteMultipartUploadRequest completeMultipartUploadRequest, ClientException clientException, ServiceException serviceException) {
            this.f13009a.onFailure(completeMultipartUploadRequest, clientException, serviceException);
        }

        @Override // com.alibaba.sdk.android.oss.callback.OSSCompletedCallback
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onSuccess(CompleteMultipartUploadRequest completeMultipartUploadRequest, CompleteMultipartUploadResult completeMultipartUploadResult) {
            if (completeMultipartUploadResult.getServerCRC() != null) {
                completeMultipartUploadResult.setClientCRC(Long.valueOf(InternalRequestOperation.this.m7679d(completeMultipartUploadRequest.getPartETags())));
            }
            InternalRequestOperation.this.m7682g(completeMultipartUploadRequest, completeMultipartUploadResult, this.f13009a);
        }
    }

    public InternalRequestOperation(Context context, URI uri, OSSCredentialProvider oSSCredentialProvider, ClientConfiguration clientConfiguration) {
        this.f12998f = 2;
        this.f12996d = context;
        this.f12993a = uri;
        this.f12997e = oSSCredentialProvider;
        this.f12999g = clientConfiguration;
        OkHttpClient.Builder hostnameVerifier = new OkHttpClient.Builder().followRedirects(false).followSslRedirects(false).retryOnConnectionFailure(false).cache(null).hostnameVerifier(new C1764b(uri));
        if (clientConfiguration != null) {
            Dispatcher dispatcher = new Dispatcher();
            dispatcher.setMaxRequests(clientConfiguration.getMaxConcurrentRequest());
            long connectionTimeout = clientConfiguration.getConnectionTimeout();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            hostnameVerifier.connectTimeout(connectionTimeout, timeUnit).readTimeout(clientConfiguration.getSocketTimeout(), timeUnit).writeTimeout(clientConfiguration.getSocketTimeout(), timeUnit).dispatcher(dispatcher);
            if (clientConfiguration.getProxyHost() != null && clientConfiguration.getProxyPort() != 0) {
                hostnameVerifier.proxy(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(clientConfiguration.getProxyHost(), clientConfiguration.getProxyPort())));
            }
            this.f12998f = clientConfiguration.getMaxErrorRetry();
        }
        this.f12995c = hostnameVerifier.build();
    }

    public OSSAsyncTask<AbortMultipartUploadResult> abortMultipartUpload(AbortMultipartUploadRequest abortMultipartUploadRequest, OSSCompletedCallback<AbortMultipartUploadRequest, AbortMultipartUploadResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(abortMultipartUploadRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.DELETE);
        requestMessage.setBucketName(abortMultipartUploadRequest.getBucketName());
        requestMessage.setObjectKey(abortMultipartUploadRequest.getObjectKey());
        requestMessage.getParameters().put(RequestParameters.UPLOAD_ID, abortMultipartUploadRequest.getUploadId());
        m7680e(requestMessage, abortMultipartUploadRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), abortMultipartUploadRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.AbortMultipartUploadResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<AppendObjectResult> appendObject(AppendObjectRequest appendObjectRequest, OSSCompletedCallback<AppendObjectRequest, AppendObjectResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(appendObjectRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.POST);
        requestMessage.setBucketName(appendObjectRequest.getBucketName());
        requestMessage.setObjectKey(appendObjectRequest.getObjectKey());
        if (appendObjectRequest.getUploadData() != null) {
            requestMessage.setUploadData(appendObjectRequest.getUploadData());
        }
        if (appendObjectRequest.getUploadFilePath() != null) {
            requestMessage.setUploadFilePath(appendObjectRequest.getUploadFilePath());
        }
        if (appendObjectRequest.getUploadUri() != null) {
            requestMessage.setUploadUri(appendObjectRequest.getUploadUri());
        }
        requestMessage.getParameters().put(RequestParameters.SUBRESOURCE_APPEND, "");
        requestMessage.getParameters().put("position", String.valueOf(appendObjectRequest.getPosition()));
        OSSUtils.populateRequestMetadata(requestMessage.getHeaders(), appendObjectRequest.getMetadata());
        m7680e(requestMessage, appendObjectRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), appendObjectRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(new C1767e(oSSCompletedCallback));
        }
        executionContext.setProgressCallback(appendObjectRequest.getProgressCallback());
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.AppendObjectResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public TriggerCallbackResult asyncTriggerCallback(TriggerCallbackRequest triggerCallbackRequest) throws ClientException, ServiceException {
        return triggerCallback(triggerCallbackRequest, null).getResult();
    }

    public OSSAsyncTask<CompleteMultipartUploadResult> completeMultipartUpload(CompleteMultipartUploadRequest completeMultipartUploadRequest, OSSCompletedCallback<CompleteMultipartUploadRequest, CompleteMultipartUploadResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(completeMultipartUploadRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.POST);
        requestMessage.setBucketName(completeMultipartUploadRequest.getBucketName());
        requestMessage.setObjectKey(completeMultipartUploadRequest.getObjectKey());
        requestMessage.setStringBody(OSSUtils.buildXMLFromPartEtagList(completeMultipartUploadRequest.getPartETags()));
        requestMessage.getParameters().put(RequestParameters.UPLOAD_ID, completeMultipartUploadRequest.getUploadId());
        if (completeMultipartUploadRequest.getCallbackParam() != null) {
            requestMessage.getHeaders().put("x-oss-callback", OSSUtils.populateMapToBase64JsonString(completeMultipartUploadRequest.getCallbackParam()));
        }
        if (completeMultipartUploadRequest.getCallbackVars() != null) {
            requestMessage.getHeaders().put("x-oss-callback-var", OSSUtils.populateMapToBase64JsonString(completeMultipartUploadRequest.getCallbackVars()));
        }
        OSSUtils.populateRequestMetadata(requestMessage.getHeaders(), completeMultipartUploadRequest.getMetadata());
        m7680e(requestMessage, completeMultipartUploadRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), completeMultipartUploadRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(new C1769g(oSSCompletedCallback));
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.CompleteMultipartUploadResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<CopyObjectResult> copyObject(CopyObjectRequest copyObjectRequest, OSSCompletedCallback<CopyObjectRequest, CopyObjectResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(copyObjectRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.PUT);
        requestMessage.setBucketName(copyObjectRequest.getDestinationBucketName());
        requestMessage.setObjectKey(copyObjectRequest.getDestinationKey());
        OSSUtils.populateCopyObjectHeaders(copyObjectRequest, requestMessage.getHeaders());
        m7680e(requestMessage, copyObjectRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), copyObjectRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.CopyObjectResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<CreateBucketResult> createBucket(CreateBucketRequest createBucketRequest, OSSCompletedCallback<CreateBucketRequest, CreateBucketResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(createBucketRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.PUT);
        requestMessage.setBucketName(createBucketRequest.getBucketName());
        if (createBucketRequest.getBucketACL() != null) {
            requestMessage.getHeaders().put(OSSHeaders.OSS_CANNED_ACL, createBucketRequest.getBucketACL().toString());
        }
        try {
            HashMap hashMap = new HashMap();
            if (createBucketRequest.getLocationConstraint() != null) {
                hashMap.put(CreateBucketRequest.TAB_LOCATIONCONSTRAINT, createBucketRequest.getLocationConstraint());
            }
            hashMap.put(CreateBucketRequest.TAB_STORAGECLASS, createBucketRequest.getBucketStorageClass().toString());
            requestMessage.createBucketRequestBodyMarshall(hashMap);
            m7680e(requestMessage, createBucketRequest);
            ExecutionContext executionContext = new ExecutionContext(getInnerClient(), createBucketRequest, this.f12996d);
            if (oSSCompletedCallback != null) {
                executionContext.setCompletedCallback(oSSCompletedCallback);
            }
            return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.CreateBucketResponseParser(), executionContext, this.f12998f)), executionContext);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: d */
    public final long m7679d(List<PartETag> list) {
        long j = 0;
        for (PartETag partETag : list) {
            if (partETag.getCRC64() == 0 || partETag.getPartSize() <= 0) {
                return 0L;
            }
            j = CRC64.combine(j, partETag.getCRC64(), partETag.getPartSize());
        }
        return j;
    }

    public OSSAsyncTask<DeleteBucketResult> deleteBucket(DeleteBucketRequest deleteBucketRequest, OSSCompletedCallback<DeleteBucketRequest, DeleteBucketResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(deleteBucketRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.DELETE);
        requestMessage.setBucketName(deleteBucketRequest.getBucketName());
        m7680e(requestMessage, deleteBucketRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), deleteBucketRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.DeleteBucketResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<DeleteBucketLifecycleResult> deleteBucketLifecycle(DeleteBucketLifecycleRequest deleteBucketLifecycleRequest, OSSCompletedCallback<DeleteBucketLifecycleRequest, DeleteBucketLifecycleResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.SUBRESOURCE_LIFECYCLE, "");
        requestMessage.setIsAuthorizationRequired(deleteBucketLifecycleRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.DELETE);
        requestMessage.setBucketName(deleteBucketLifecycleRequest.getBucketName());
        requestMessage.setParameters(linkedHashMap);
        m7680e(requestMessage, deleteBucketLifecycleRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), deleteBucketLifecycleRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.DeleteBucketLifecycleResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<DeleteBucketLoggingResult> deleteBucketLogging(DeleteBucketLoggingRequest deleteBucketLoggingRequest, OSSCompletedCallback<DeleteBucketLoggingRequest, DeleteBucketLoggingResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.SUBRESOURCE_LOGGING, "");
        requestMessage.setIsAuthorizationRequired(deleteBucketLoggingRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.DELETE);
        requestMessage.setBucketName(deleteBucketLoggingRequest.getBucketName());
        requestMessage.setParameters(linkedHashMap);
        m7680e(requestMessage, deleteBucketLoggingRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), deleteBucketLoggingRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.DeleteBucketLoggingResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<DeleteMultipleObjectResult> deleteMultipleObject(DeleteMultipleObjectRequest deleteMultipleObjectRequest, OSSCompletedCallback<DeleteMultipleObjectRequest, DeleteMultipleObjectResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("delete", "");
        requestMessage.setIsAuthorizationRequired(deleteMultipleObjectRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.POST);
        requestMessage.setBucketName(deleteMultipleObjectRequest.getBucketName());
        requestMessage.setParameters(linkedHashMap);
        try {
            byte[] deleteMultipleObjectRequestBodyMarshall = requestMessage.deleteMultipleObjectRequestBodyMarshall(deleteMultipleObjectRequest.getObjectKeys(), deleteMultipleObjectRequest.getQuiet().booleanValue());
            if (deleteMultipleObjectRequestBodyMarshall != null && deleteMultipleObjectRequestBodyMarshall.length > 0) {
                requestMessage.getHeaders().put("Content-MD5", BinaryUtil.calculateBase64Md5(deleteMultipleObjectRequestBodyMarshall));
                requestMessage.getHeaders().put("Content-Length", String.valueOf(deleteMultipleObjectRequestBodyMarshall.length));
            }
            m7680e(requestMessage, deleteMultipleObjectRequest);
            ExecutionContext executionContext = new ExecutionContext(getInnerClient(), deleteMultipleObjectRequest, this.f12996d);
            if (oSSCompletedCallback != null) {
                executionContext.setCompletedCallback(oSSCompletedCallback);
            }
            return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.DeleteMultipleObjectResponseParser(), executionContext, this.f12998f)), executionContext);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public OSSAsyncTask<DeleteObjectResult> deleteObject(DeleteObjectRequest deleteObjectRequest, OSSCompletedCallback<DeleteObjectRequest, DeleteObjectResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(deleteObjectRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.DELETE);
        requestMessage.setBucketName(deleteObjectRequest.getBucketName());
        requestMessage.setObjectKey(deleteObjectRequest.getObjectKey());
        m7680e(requestMessage, deleteObjectRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), deleteObjectRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.DeleteObjectResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    /* renamed from: e */
    public final void m7680e(RequestMessage requestMessage, OSSRequest oSSRequest) {
        Map headers = requestMessage.getHeaders();
        if (headers.get("Date") == null) {
            headers.put("Date", DateUtil.currentFixedSkewedTimeInRFC822Format());
        }
        if ((requestMessage.getMethod() == HttpMethod.POST || requestMessage.getMethod() == HttpMethod.PUT) && OSSUtils.isEmptyString((String) headers.get("Content-Type"))) {
            headers.put("Content-Type", OSSUtils.determineContentType(null, requestMessage.getUploadFilePath(), requestMessage.getObjectKey()));
        }
        requestMessage.setHttpDnsEnable(m7683h(this.f12999g.isHttpDnsEnable()));
        requestMessage.setCredentialProvider(this.f12997e);
        requestMessage.setPathStyleAccessEnable(this.f12999g.isPathStyleAccessEnable());
        requestMessage.setCustomPathPrefixEnable(this.f12999g.isCustomPathPrefixEnable());
        requestMessage.setIpWithHeader(this.f12999g.getIpWithHeader());
        requestMessage.getHeaders().put("User-Agent", VersionInfoUtils.getUserAgent(this.f12999g.getCustomUserMark()));
        boolean z = false;
        if (requestMessage.getHeaders().containsKey("Range") || requestMessage.getParameters().containsKey(RequestParameters.X_OSS_PROCESS)) {
            requestMessage.setCheckCRC64(false);
        }
        requestMessage.setIsInCustomCnameExcludeList(OSSUtils.isInCustomCnameExcludeList(this.f12993a.getHost(), this.f12999g.getCustomCnameExcludeList()));
        if (oSSRequest.getCRC64() == OSSRequest.CRC64Config.NULL) {
            z = this.f12999g.isCheckCRC64();
        } else if (oSSRequest.getCRC64() == OSSRequest.CRC64Config.YES) {
            z = true;
        }
        requestMessage.setCheckCRC64(z);
        oSSRequest.setCRC64(z ? OSSRequest.CRC64Config.YES : OSSRequest.CRC64Config.NO);
    }

    /* renamed from: f */
    public final <Request extends OSSRequest, Result extends OSSResult> void m7681f(Request request, Result result) throws ClientException {
        if (request.getCRC64() == OSSRequest.CRC64Config.YES) {
            try {
                OSSUtils.checkChecksum(result.getClientCRC(), result.getServerCRC(), result.getRequestId());
            } catch (InconsistentException e) {
                throw new ClientException(e.getMessage(), e);
            }
        }
    }

    /* renamed from: g */
    public final <Request extends OSSRequest, Result extends OSSResult> void m7682g(Request request, Result result, OSSCompletedCallback<Request, Result> oSSCompletedCallback) {
        try {
            m7681f(request, result);
            if (oSSCompletedCallback != null) {
                oSSCompletedCallback.onSuccess(request, result);
            }
        } catch (ClientException e) {
            if (oSSCompletedCallback != null) {
                oSSCompletedCallback.onFailure(request, e, null);
            }
        }
    }

    public Context getApplicationContext() {
        return this.f12996d;
    }

    public OSSAsyncTask<GetBucketACLResult> getBucketACL(GetBucketACLRequest getBucketACLRequest, OSSCompletedCallback<GetBucketACLRequest, GetBucketACLResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.SUBRESOURCE_ACL, "");
        requestMessage.setIsAuthorizationRequired(getBucketACLRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.GET);
        requestMessage.setBucketName(getBucketACLRequest.getBucketName());
        requestMessage.setParameters(linkedHashMap);
        m7680e(requestMessage, getBucketACLRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), getBucketACLRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.GetBucketACLResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<GetBucketInfoResult> getBucketInfo(GetBucketInfoRequest getBucketInfoRequest, OSSCompletedCallback<GetBucketInfoRequest, GetBucketInfoResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.SUBRESOURCE_BUCKETINFO, "");
        requestMessage.setIsAuthorizationRequired(getBucketInfoRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.GET);
        requestMessage.setBucketName(getBucketInfoRequest.getBucketName());
        requestMessage.setParameters(linkedHashMap);
        m7680e(requestMessage, getBucketInfoRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), getBucketInfoRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.GetBucketInfoResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<GetBucketLifecycleResult> getBucketLifecycle(GetBucketLifecycleRequest getBucketLifecycleRequest, OSSCompletedCallback<GetBucketLifecycleRequest, GetBucketLifecycleResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.SUBRESOURCE_LIFECYCLE, "");
        requestMessage.setIsAuthorizationRequired(getBucketLifecycleRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.GET);
        requestMessage.setBucketName(getBucketLifecycleRequest.getBucketName());
        requestMessage.setParameters(linkedHashMap);
        m7680e(requestMessage, getBucketLifecycleRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), getBucketLifecycleRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.GetBucketLifecycleResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<GetBucketLoggingResult> getBucketLogging(GetBucketLoggingRequest getBucketLoggingRequest, OSSCompletedCallback<GetBucketLoggingRequest, GetBucketLoggingResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.SUBRESOURCE_LOGGING, "");
        requestMessage.setIsAuthorizationRequired(getBucketLoggingRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.GET);
        requestMessage.setBucketName(getBucketLoggingRequest.getBucketName());
        requestMessage.setParameters(linkedHashMap);
        m7680e(requestMessage, getBucketLoggingRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), getBucketLoggingRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.GetBucketLoggingResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<GetBucketRefererResult> getBucketReferer(GetBucketRefererRequest getBucketRefererRequest, OSSCompletedCallback<GetBucketRefererRequest, GetBucketRefererResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.SUBRESOURCE_REFERER, "");
        requestMessage.setIsAuthorizationRequired(getBucketRefererRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.GET);
        requestMessage.setBucketName(getBucketRefererRequest.getBucketName());
        requestMessage.setParameters(linkedHashMap);
        m7680e(requestMessage, getBucketRefererRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), getBucketRefererRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.GetBucketRefererResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public ClientConfiguration getConf() {
        return this.f12999g;
    }

    public OkHttpClient getInnerClient() {
        return this.f12995c;
    }

    public OSSAsyncTask<GetObjectResult> getObject(GetObjectRequest getObjectRequest, OSSCompletedCallback<GetObjectRequest, GetObjectResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(getObjectRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.GET);
        requestMessage.setBucketName(getObjectRequest.getBucketName());
        requestMessage.setObjectKey(getObjectRequest.getObjectKey());
        if (getObjectRequest.getRange() != null) {
            requestMessage.getHeaders().put("Range", getObjectRequest.getRange().toString());
        }
        if (getObjectRequest.getxOssProcess() != null) {
            requestMessage.getParameters().put(RequestParameters.X_OSS_PROCESS, getObjectRequest.getxOssProcess());
        }
        m7680e(requestMessage, getObjectRequest);
        if (getObjectRequest.getRequestHeaders() != null) {
            for (Map.Entry<String, String> entry : getObjectRequest.getRequestHeaders().entrySet()) {
                requestMessage.getHeaders().put(entry.getKey(), entry.getValue());
            }
        }
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), getObjectRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        executionContext.setProgressCallback(getObjectRequest.getProgressListener());
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.GetObjectResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<GetObjectACLResult> getObjectACL(GetObjectACLRequest getObjectACLRequest, OSSCompletedCallback<GetObjectACLRequest, GetObjectACLResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.SUBRESOURCE_ACL, "");
        requestMessage.setIsAuthorizationRequired(getObjectACLRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.GET);
        requestMessage.setParameters(linkedHashMap);
        requestMessage.setBucketName(getObjectACLRequest.getBucketName());
        requestMessage.setObjectKey(getObjectACLRequest.getObjectKey());
        m7680e(requestMessage, getObjectACLRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), getObjectACLRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.GetObjectACLResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<GetSymlinkResult> getSymlink(GetSymlinkRequest getSymlinkRequest, OSSCompletedCallback<GetSymlinkRequest, GetSymlinkResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.X_OSS_SYMLINK, "");
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.GET);
        requestMessage.setBucketName(getSymlinkRequest.getBucketName());
        requestMessage.setObjectKey(getSymlinkRequest.getObjectKey());
        requestMessage.setParameters(linkedHashMap);
        m7680e(requestMessage, getSymlinkRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), getSymlinkRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.GetSymlinkResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    /* renamed from: h */
    public final boolean m7683h(boolean z) {
        if (!z || this.f12996d == null) {
            return false;
        }
        String property = System.getProperty("http.proxyHost");
        String proxyHost = this.f12999g.getProxyHost();
        if (!TextUtils.isEmpty(proxyHost)) {
            property = proxyHost;
        }
        return TextUtils.isEmpty(property);
    }

    public OSSAsyncTask<HeadObjectResult> headObject(HeadObjectRequest headObjectRequest, OSSCompletedCallback<HeadObjectRequest, HeadObjectResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(headObjectRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.HEAD);
        requestMessage.setBucketName(headObjectRequest.getBucketName());
        requestMessage.setObjectKey(headObjectRequest.getObjectKey());
        m7680e(requestMessage, headObjectRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), headObjectRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.HeadObjectResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<ImagePersistResult> imageActionPersist(ImagePersistRequest imagePersistRequest, OSSCompletedCallback<ImagePersistRequest, ImagePersistResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.X_OSS_PROCESS, "");
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.POST);
        requestMessage.setBucketName(imagePersistRequest.mFromBucket);
        requestMessage.setObjectKey(imagePersistRequest.mFromObjectkey);
        requestMessage.setParameters(linkedHashMap);
        requestMessage.setStringBody(OSSUtils.buildImagePersistentBody(imagePersistRequest.mToBucketName, imagePersistRequest.mToObjectKey, imagePersistRequest.mAction));
        m7680e(requestMessage, imagePersistRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), imagePersistRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.ImagePersistResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<InitiateMultipartUploadResult> initMultipartUpload(InitiateMultipartUploadRequest initiateMultipartUploadRequest, OSSCompletedCallback<InitiateMultipartUploadRequest, InitiateMultipartUploadResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(initiateMultipartUploadRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.POST);
        requestMessage.setBucketName(initiateMultipartUploadRequest.getBucketName());
        requestMessage.setObjectKey(initiateMultipartUploadRequest.getObjectKey());
        requestMessage.getParameters().put(RequestParameters.SUBRESOURCE_UPLOADS, "");
        if (initiateMultipartUploadRequest.isSequential) {
            requestMessage.getParameters().put(RequestParameters.SUBRESOURCE_SEQUENTIAL, "");
        }
        OSSUtils.populateRequestMetadata(requestMessage.getHeaders(), initiateMultipartUploadRequest.getMetadata());
        m7680e(requestMessage, initiateMultipartUploadRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), initiateMultipartUploadRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.InitMultipartResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<ListBucketsResult> listBuckets(ListBucketsRequest listBucketsRequest, OSSCompletedCallback<ListBucketsRequest, ListBucketsResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(listBucketsRequest.isAuthorizationRequired());
        requestMessage.setMethod(HttpMethod.GET);
        requestMessage.setService(this.f12994b);
        requestMessage.setEndpoint(this.f12993a);
        m7680e(requestMessage, listBucketsRequest);
        OSSUtils.populateListBucketRequestParameters(listBucketsRequest, requestMessage.getParameters());
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), listBucketsRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.ListBucketResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<ListMultipartUploadsResult> listMultipartUploads(ListMultipartUploadsRequest listMultipartUploadsRequest, OSSCompletedCallback<ListMultipartUploadsRequest, ListMultipartUploadsResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(listMultipartUploadsRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.GET);
        requestMessage.setBucketName(listMultipartUploadsRequest.getBucketName());
        requestMessage.getParameters().put(RequestParameters.SUBRESOURCE_UPLOADS, "");
        OSSUtils.populateListMultipartUploadsRequestParameters(listMultipartUploadsRequest, requestMessage.getParameters());
        m7680e(requestMessage, listMultipartUploadsRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), listMultipartUploadsRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.ListMultipartUploadsResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<ListObjectsResult> listObjects(ListObjectsRequest listObjectsRequest, OSSCompletedCallback<ListObjectsRequest, ListObjectsResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(listObjectsRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.GET);
        requestMessage.setBucketName(listObjectsRequest.getBucketName());
        m7680e(requestMessage, listObjectsRequest);
        OSSUtils.populateListObjectsRequestParameters(listObjectsRequest, requestMessage.getParameters());
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), listObjectsRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.ListObjectsResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<ListPartsResult> listParts(ListPartsRequest listPartsRequest, OSSCompletedCallback<ListPartsRequest, ListPartsResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(listPartsRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.GET);
        requestMessage.setBucketName(listPartsRequest.getBucketName());
        requestMessage.setObjectKey(listPartsRequest.getObjectKey());
        requestMessage.getParameters().put(RequestParameters.UPLOAD_ID, listPartsRequest.getUploadId());
        Integer maxParts = listPartsRequest.getMaxParts();
        if (maxParts != null) {
            if (!OSSUtils.checkParamRange(maxParts.intValue(), 0L, true, 1000L, true)) {
                throw new IllegalArgumentException("MaxPartsOutOfRange: 1000");
            }
            requestMessage.getParameters().put(RequestParameters.MAX_PARTS, maxParts.toString());
        }
        Integer partNumberMarker = listPartsRequest.getPartNumberMarker();
        if (partNumberMarker != null) {
            if (!OSSUtils.checkParamRange(partNumberMarker.intValue(), 0L, false, 10000L, true)) {
                throw new IllegalArgumentException("PartNumberMarkerOutOfRange: 10000");
            }
            requestMessage.getParameters().put(RequestParameters.PART_NUMBER_MARKER, partNumberMarker.toString());
        }
        m7680e(requestMessage, listPartsRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), listPartsRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.ListPartsResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<PutBucketLifecycleResult> putBucketLifecycle(PutBucketLifecycleRequest putBucketLifecycleRequest, OSSCompletedCallback<PutBucketLifecycleRequest, PutBucketLifecycleResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.SUBRESOURCE_LIFECYCLE, "");
        requestMessage.setIsAuthorizationRequired(putBucketLifecycleRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.PUT);
        requestMessage.setBucketName(putBucketLifecycleRequest.getBucketName());
        requestMessage.setParameters(linkedHashMap);
        try {
            requestMessage.putBucketLifecycleRequestBodyMarshall(putBucketLifecycleRequest.getLifecycleRules());
            m7680e(requestMessage, putBucketLifecycleRequest);
            ExecutionContext executionContext = new ExecutionContext(getInnerClient(), putBucketLifecycleRequest, this.f12996d);
            if (oSSCompletedCallback != null) {
                executionContext.setCompletedCallback(oSSCompletedCallback);
            }
            return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.PutBucketLifecycleResponseParser(), executionContext, this.f12998f)), executionContext);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public OSSAsyncTask<PutBucketLoggingResult> putBucketLogging(PutBucketLoggingRequest putBucketLoggingRequest, OSSCompletedCallback<PutBucketLoggingRequest, PutBucketLoggingResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.SUBRESOURCE_LOGGING, "");
        requestMessage.setIsAuthorizationRequired(putBucketLoggingRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.PUT);
        requestMessage.setBucketName(putBucketLoggingRequest.getBucketName());
        requestMessage.setParameters(linkedHashMap);
        try {
            requestMessage.putBucketLoggingRequestBodyMarshall(putBucketLoggingRequest.getTargetBucketName(), putBucketLoggingRequest.getTargetPrefix());
            m7680e(requestMessage, putBucketLoggingRequest);
            ExecutionContext executionContext = new ExecutionContext(getInnerClient(), putBucketLoggingRequest, this.f12996d);
            if (oSSCompletedCallback != null) {
                executionContext.setCompletedCallback(oSSCompletedCallback);
            }
            return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.PutBucketLoggingResponseParser(), executionContext, this.f12998f)), executionContext);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public OSSAsyncTask<PutBucketRefererResult> putBucketReferer(PutBucketRefererRequest putBucketRefererRequest, OSSCompletedCallback<PutBucketRefererRequest, PutBucketRefererResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.SUBRESOURCE_REFERER, "");
        requestMessage.setIsAuthorizationRequired(putBucketRefererRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.PUT);
        requestMessage.setBucketName(putBucketRefererRequest.getBucketName());
        requestMessage.setParameters(linkedHashMap);
        try {
            requestMessage.putBucketRefererRequestBodyMarshall(putBucketRefererRequest.getReferers(), putBucketRefererRequest.isAllowEmpty());
            m7680e(requestMessage, putBucketRefererRequest);
            ExecutionContext executionContext = new ExecutionContext(getInnerClient(), putBucketRefererRequest, this.f12996d);
            if (oSSCompletedCallback != null) {
                executionContext.setCompletedCallback(oSSCompletedCallback);
            }
            return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.PutBucketRefererResponseParser(), executionContext, this.f12998f)), executionContext);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public OSSAsyncTask<PutObjectResult> putObject(PutObjectRequest putObjectRequest, OSSCompletedCallback<PutObjectRequest, PutObjectResult> oSSCompletedCallback) {
        OSSLog.logDebug(" Internal putObject Start ");
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(putObjectRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.PUT);
        requestMessage.setBucketName(putObjectRequest.getBucketName());
        requestMessage.setObjectKey(putObjectRequest.getObjectKey());
        if (putObjectRequest.getUploadData() != null) {
            requestMessage.setUploadData(putObjectRequest.getUploadData());
        }
        if (putObjectRequest.getUploadFilePath() != null) {
            requestMessage.setUploadFilePath(putObjectRequest.getUploadFilePath());
        }
        if (putObjectRequest.getUploadUri() != null) {
            requestMessage.setUploadUri(putObjectRequest.getUploadUri());
        }
        if (putObjectRequest.getCallbackParam() != null) {
            requestMessage.getHeaders().put("x-oss-callback", OSSUtils.populateMapToBase64JsonString(putObjectRequest.getCallbackParam()));
        }
        if (putObjectRequest.getCallbackVars() != null) {
            requestMessage.getHeaders().put("x-oss-callback-var", OSSUtils.populateMapToBase64JsonString(putObjectRequest.getCallbackVars()));
        }
        OSSLog.logDebug(" populateRequestMetadata ");
        OSSUtils.populateRequestMetadata(requestMessage.getHeaders(), putObjectRequest.getMetadata());
        OSSLog.logDebug(" canonicalizeRequestMessage ");
        m7680e(requestMessage, putObjectRequest);
        OSSLog.logDebug(" ExecutionContext ");
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), putObjectRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(new C1766d(oSSCompletedCallback));
        }
        if (putObjectRequest.getRetryCallback() != null) {
            executionContext.setRetryCallback(putObjectRequest.getRetryCallback());
        }
        executionContext.setProgressCallback(putObjectRequest.getProgressCallback());
        OSSRequestTask oSSRequestTask = new OSSRequestTask(requestMessage, new ResponseParsers.PutObjectResponseParser(), executionContext, this.f12998f);
        OSSLog.logDebug(" call OSSRequestTask ");
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(oSSRequestTask), executionContext);
    }

    public OSSAsyncTask<PutSymlinkResult> putSymlink(PutSymlinkRequest putSymlinkRequest, OSSCompletedCallback<PutSymlinkRequest, PutSymlinkResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.X_OSS_SYMLINK, "");
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.PUT);
        requestMessage.setBucketName(putSymlinkRequest.getBucketName());
        requestMessage.setObjectKey(putSymlinkRequest.getObjectKey());
        requestMessage.setParameters(linkedHashMap);
        if (!OSSUtils.isEmptyString(putSymlinkRequest.getTargetObjectName())) {
            requestMessage.getHeaders().put(OSSHeaders.OSS_HEADER_SYMLINK_TARGET, HttpUtil.urlEncode(putSymlinkRequest.getTargetObjectName(), "utf-8"));
        }
        OSSUtils.populateRequestMetadata(requestMessage.getHeaders(), putSymlinkRequest.getMetadata());
        m7680e(requestMessage, putSymlinkRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), putSymlinkRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.PutSymlinkResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<RestoreObjectResult> restoreObject(RestoreObjectRequest restoreObjectRequest, OSSCompletedCallback<RestoreObjectRequest, RestoreObjectResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.X_OSS_RESTORE, "");
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.POST);
        requestMessage.setBucketName(restoreObjectRequest.getBucketName());
        requestMessage.setObjectKey(restoreObjectRequest.getObjectKey());
        requestMessage.setParameters(linkedHashMap);
        m7680e(requestMessage, restoreObjectRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), restoreObjectRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.RestoreObjectResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public void setCredentialProvider(OSSCredentialProvider oSSCredentialProvider) {
        this.f12997e = oSSCredentialProvider;
    }

    public AppendObjectResult syncAppendObject(AppendObjectRequest appendObjectRequest) throws ClientException, ServiceException {
        AppendObjectResult result = appendObject(appendObjectRequest, null).getResult();
        boolean z = appendObjectRequest.getCRC64() == OSSRequest.CRC64Config.YES;
        if (appendObjectRequest.getInitCRC64() != null && z) {
            result.setClientCRC(Long.valueOf(CRC64.combine(appendObjectRequest.getInitCRC64().longValue(), result.getClientCRC().longValue(), result.getNextPosition() - appendObjectRequest.getPosition())));
        }
        m7681f(appendObjectRequest, result);
        return result;
    }

    public CompleteMultipartUploadResult syncCompleteMultipartUpload(CompleteMultipartUploadRequest completeMultipartUploadRequest) throws ClientException, ServiceException {
        CompleteMultipartUploadResult result = completeMultipartUpload(completeMultipartUploadRequest, null).getResult();
        if (result.getServerCRC() != null) {
            result.setClientCRC(Long.valueOf(m7679d(completeMultipartUploadRequest.getPartETags())));
        }
        m7681f(completeMultipartUploadRequest, result);
        return result;
    }

    public GetSymlinkResult syncGetSymlink(GetSymlinkRequest getSymlinkRequest) throws ClientException, ServiceException {
        return getSymlink(getSymlinkRequest, null).getResult();
    }

    public PutObjectResult syncPutObject(PutObjectRequest putObjectRequest) throws ClientException, ServiceException {
        PutObjectResult result = putObject(putObjectRequest, null).getResult();
        m7681f(putObjectRequest, result);
        return result;
    }

    public PutSymlinkResult syncPutSymlink(PutSymlinkRequest putSymlinkRequest) throws ClientException, ServiceException {
        return putSymlink(putSymlinkRequest, null).getResult();
    }

    public RestoreObjectResult syncRestoreObject(RestoreObjectRequest restoreObjectRequest) throws ClientException, ServiceException {
        return restoreObject(restoreObjectRequest, null).getResult();
    }

    public UploadPartResult syncUploadPart(UploadPartRequest uploadPartRequest) throws ClientException, ServiceException {
        UploadPartResult result = uploadPart(uploadPartRequest, null).getResult();
        m7681f(uploadPartRequest, result);
        return result;
    }

    public OSSAsyncTask<TriggerCallbackResult> triggerCallback(TriggerCallbackRequest triggerCallbackRequest, OSSCompletedCallback<TriggerCallbackRequest, TriggerCallbackResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.X_OSS_PROCESS, "");
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.POST);
        requestMessage.setBucketName(triggerCallbackRequest.getBucketName());
        requestMessage.setObjectKey(triggerCallbackRequest.getObjectKey());
        requestMessage.setParameters(linkedHashMap);
        String buildTriggerCallbackBody = OSSUtils.buildTriggerCallbackBody(triggerCallbackRequest.getCallbackParam(), triggerCallbackRequest.getCallbackVars());
        requestMessage.setStringBody(buildTriggerCallbackBody);
        requestMessage.getHeaders().put("Content-MD5", BinaryUtil.calculateBase64Md5(buildTriggerCallbackBody.getBytes()));
        m7680e(requestMessage, triggerCallbackRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), triggerCallbackRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.TriggerCallbackResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public OSSAsyncTask<UploadPartResult> uploadPart(UploadPartRequest uploadPartRequest, OSSCompletedCallback<UploadPartRequest, UploadPartResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(uploadPartRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.f12993a);
        requestMessage.setMethod(HttpMethod.PUT);
        requestMessage.setBucketName(uploadPartRequest.getBucketName());
        requestMessage.setObjectKey(uploadPartRequest.getObjectKey());
        requestMessage.getParameters().put(RequestParameters.UPLOAD_ID, uploadPartRequest.getUploadId());
        requestMessage.getParameters().put(RequestParameters.PART_NUMBER, String.valueOf(uploadPartRequest.getPartNumber()));
        requestMessage.setUploadData(uploadPartRequest.getPartContent());
        if (uploadPartRequest.getMd5Digest() != null) {
            requestMessage.getHeaders().put("Content-MD5", uploadPartRequest.getMd5Digest());
        }
        m7680e(requestMessage, uploadPartRequest);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), uploadPartRequest, this.f12996d);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(new C1768f(oSSCompletedCallback));
        }
        executionContext.setProgressCallback(uploadPartRequest.getProgressCallback());
        return OSSAsyncTask.wrapRequestTask(f12992j.submit(new OSSRequestTask(requestMessage, new ResponseParsers.UploadPartResponseParser(), executionContext, this.f12998f)), executionContext);
    }

    public InternalRequestOperation(Context context, OSSCredentialProvider oSSCredentialProvider, ClientConfiguration clientConfiguration) {
        this.f12998f = 2;
        try {
            this.f12994b = new URI("http://oss.aliyuncs.com");
            this.f12993a = new URI("http://127.0.0.1");
            this.f12996d = context;
            this.f12997e = oSSCredentialProvider;
            this.f12999g = clientConfiguration;
            OkHttpClient.Builder hostnameVerifier = new OkHttpClient.Builder().followRedirects(false).followSslRedirects(false).retryOnConnectionFailure(false).cache(null).hostnameVerifier(new C1765c());
            if (clientConfiguration != null) {
                Dispatcher dispatcher = new Dispatcher();
                dispatcher.setMaxRequests(clientConfiguration.getMaxConcurrentRequest());
                long connectionTimeout = clientConfiguration.getConnectionTimeout();
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                hostnameVerifier.connectTimeout(connectionTimeout, timeUnit).readTimeout(clientConfiguration.getSocketTimeout(), timeUnit).writeTimeout(clientConfiguration.getSocketTimeout(), timeUnit).dispatcher(dispatcher);
                if (clientConfiguration.getProxyHost() != null && clientConfiguration.getProxyPort() != 0) {
                    hostnameVerifier.proxy(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(clientConfiguration.getProxyHost(), clientConfiguration.getProxyPort())));
                }
                this.f12998f = clientConfiguration.getMaxErrorRetry();
            }
            this.f12995c = hostnameVerifier.build();
        } catch (Exception unused) {
            throw new IllegalArgumentException("Endpoint must be a string like 'http://oss-cn-****.aliyuncs.com',or your cname like 'http://image.cnamedomain.com'!");
        }
    }
}
