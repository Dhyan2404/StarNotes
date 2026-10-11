package com.tencent.cos.xml.model;

import android.text.TextUtils;
import com.bumptech.glide.request.SingleRequest;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.common.ClientErrorCode;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.utils.URLEncodeUtils;
import com.tencent.qcloud.core.auth.BasicLifecycleCredentialProvider;
import com.tencent.qcloud.core.auth.COSXmlSignSourceProvider;
import com.tencent.qcloud.core.auth.QCloudCredentialProvider;
import com.tencent.qcloud.core.auth.QCloudLifecycleCredentials;
import com.tencent.qcloud.core.auth.QCloudSignSourceProvider;
import com.tencent.qcloud.core.auth.STSCredentialScope;
import com.tencent.qcloud.core.auth.SessionQCloudCredentials;
import com.tencent.qcloud.core.common.QCloudTaskStateListener;
import com.tencent.qcloud.core.http.HttpConfiguration;
import com.tencent.qcloud.core.http.HttpTask;
import com.tencent.qcloud.core.http.HttpTaskMetrics;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public abstract class CosXmlRequest {
    protected String bucket;
    private QCloudCredentialProvider credentialProvider;
    private HttpTask httpTask;
    private String keyTime;
    private HttpTaskMetrics metrics;
    private OnRequestWeightListener onRequestWeightListener;
    protected QCloudTaskStateListener qCloudTaskStateListener;
    private String queryParameterEncodedString;
    protected String region;
    protected String requestURL;
    private boolean signInUrl;
    protected QCloudSignSourceProvider signSourceProvider;
    protected Map<String, String> queryParameters = new LinkedHashMap();
    protected Map<String, List<String>> requestHeaders = new LinkedHashMap();
    protected Set<String> noSignHeaders = new HashSet();
    protected Set<String> noSignParams = new HashSet();
    private boolean isNeedMD5 = false;
    private boolean isSupportAccelerate = false;
    protected int priority = -1;

    /* loaded from: classes10.dex */
    public interface OnRequestWeightListener {
        int onWeight();
    }

    public void addHeader(String str, String str2) {
        List<String> arrayList = this.requestHeaders.containsKey(str) ? this.requestHeaders.get(str) : new ArrayList<>();
        arrayList.add(str2);
        this.requestHeaders.put(str, arrayList);
    }

    public void addNoSignHeader(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.noSignHeaders.add(str);
    }

    public void addNoSignParams(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.noSignParams.add(str);
    }

    public void addQuery(String str, String str2) {
        this.queryParameters.put(str, str2);
    }

    public void attachMetrics(HttpTaskMetrics httpTaskMetrics) {
        this.metrics = httpTaskMetrics;
    }

    public void checkParameters() throws CosXmlClientException {
    }

    public String getBucket() {
        return this.bucket;
    }

    public QCloudCredentialProvider getCredentialProvider() {
        return this.credentialProvider;
    }

    public HttpTask getHttpTask() {
        return this.httpTask;
    }

    public String getKeyTime() {
        return this.keyTime;
    }

    public abstract String getMethod();

    public HttpTaskMetrics getMetrics() {
        return this.metrics;
    }

    public Set<String> getNoSignHeaders() {
        return this.noSignHeaders;
    }

    public Set<String> getNoSignParams() {
        return this.noSignParams;
    }

    public abstract String getPath(CosXmlServiceConfig cosXmlServiceConfig);

    public int getPriority() {
        return this.priority;
    }

    public String getQueryEncodedString() {
        return this.queryParameterEncodedString;
    }

    public Map<String, String> getQueryString() {
        return this.queryParameters;
    }

    public String getRegion() {
        return this.region;
    }

    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        try {
            return xmlBuilder();
        } catch (IOException e) {
            throw new CosXmlClientException(ClientErrorCode.INVALID_ARGUMENT.getCode(), e);
        } catch (XmlPullParserException e2) {
            throw new CosXmlClientException(ClientErrorCode.INVALID_ARGUMENT.getCode(), e2);
        }
    }

    public Map<String, List<String>> getRequestHeaders() {
        return this.requestHeaders;
    }

    public String getRequestHost(CosXmlServiceConfig cosXmlServiceConfig) {
        return cosXmlServiceConfig.getRequestHost(this.region, this.bucket, this.isSupportAccelerate);
    }

    public String getRequestURL() {
        return this.requestURL;
    }

    public STSCredentialScope[] getSTSCredentialScope(CosXmlServiceConfig cosXmlServiceConfig) {
        return new STSCredentialScope("name/cos:" + getClass().getSimpleName().replace(SingleRequest.f15334D, ""), cosXmlServiceConfig.getBucket(this.bucket), getRegion() == null ? cosXmlServiceConfig.getRegion() : getRegion(), getPath(cosXmlServiceConfig)).toArray();
    }

    public QCloudSignSourceProvider getSignSourceProvider() {
        if (this.signSourceProvider == null) {
            this.signSourceProvider = new COSXmlSignSourceProvider();
        }
        return this.signSourceProvider;
    }

    public int getWeight() {
        OnRequestWeightListener onRequestWeightListener = this.onRequestWeightListener;
        if (onRequestWeightListener != null) {
            return onRequestWeightListener.onWeight();
        }
        return 0;
    }

    public boolean headersHasUnsafeNonAscii() {
        return false;
    }

    public boolean isNeedMD5() {
        return this.isNeedMD5;
    }

    public boolean isSignInUrl() {
        return this.signInUrl;
    }

    public void isSupportAccelerate(boolean z) {
        this.isSupportAccelerate = z;
    }

    public void setCredential(final SessionQCloudCredentials sessionQCloudCredentials) {
        this.credentialProvider = new BasicLifecycleCredentialProvider() { // from class: com.tencent.cos.xml.model.CosXmlRequest.1
            @Override // com.tencent.qcloud.core.auth.BasicLifecycleCredentialProvider
            public QCloudLifecycleCredentials fetchNewCredentials() {
                return sessionQCloudCredentials;
            }
        };
    }

    public void setCredentialProvider(QCloudCredentialProvider qCloudCredentialProvider) {
        this.credentialProvider = qCloudCredentialProvider;
    }

    public void setNeedMD5(boolean z) {
        this.isNeedMD5 = z;
    }

    public void setOnRequestWeightListener(OnRequestWeightListener onRequestWeightListener) {
        this.onRequestWeightListener = onRequestWeightListener;
    }

    public void setQueryEncodedString(String str) {
        this.queryParameterEncodedString = str;
    }

    public void setQueryParameters(Map<String, String> map) {
        this.queryParameters = map;
    }

    public void setRegion(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.region = str;
    }

    public void setRequestHeaders(Map<String, List<String>> map) {
        if (map != null) {
            this.requestHeaders.putAll(map);
        }
    }

    public void setRequestURL(String str) {
        this.requestURL = str;
    }

    @Deprecated
    public void setSign(long j) {
    }

    public void setSignInUrl(boolean z) {
        this.signInUrl = z;
    }

    public void setSignKeyTime(int i) {
        long deviceTimeWithOffset = HttpConfiguration.getDeviceTimeWithOffset();
        this.keyTime = deviceTimeWithOffset + AndroidTreeView.f47214k + (i + deviceTimeWithOffset);
    }

    public void setSignParamsAndHeaders(Set<String> set, Set<String> set2) {
        COSXmlSignSourceProvider cOSXmlSignSourceProvider = new COSXmlSignSourceProvider();
        cOSXmlSignSourceProvider.parameters(set);
        cOSXmlSignSourceProvider.headers(set2);
        this.signSourceProvider = cOSXmlSignSourceProvider;
    }

    public void setSignSourceProvider(QCloudSignSourceProvider qCloudSignSourceProvider) {
        this.signSourceProvider = qCloudSignSourceProvider;
    }

    public void setTask(HttpTask httpTask) {
        this.httpTask = httpTask;
        httpTask.addStateListener(this.qCloudTaskStateListener);
        httpTask.attachMetric(this.metrics);
    }

    public void setTaskStateListener(QCloudTaskStateListener qCloudTaskStateListener) {
        this.qCloudTaskStateListener = qCloudTaskStateListener;
    }

    public RequestBodySerializer xmlBuilder() throws XmlPullParserException, IOException, CosXmlClientException {
        throw new CosXmlClientException(ClientErrorCode.INVALID_ARGUMENT.getCode(), "xmlBuilder empty implementation");
    }

    public boolean isSupportAccelerate() {
        return this.isSupportAccelerate;
    }

    @Deprecated
    public void setRequestHeaders(String str, String str2) throws CosXmlClientException {
        if (str == null || str2 == null) {
            return;
        }
        addHeader(str, URLEncodeUtils.cosPathEncode(str2));
    }

    @Deprecated
    public void setSign(long j, long j2) {
    }

    public void addNoSignHeader(Set<String> set) {
        if (set != null) {
            this.noSignHeaders.addAll(set);
        }
    }

    public void setSign(String str) {
        addHeader("Authorization", str);
    }

    public void setRequestHeaders(String str, String str2, boolean z) throws CosXmlClientException {
        if (str == null || str2 == null) {
            return;
        }
        if (z) {
            str2 = URLEncodeUtils.cosPathEncode(str2);
        }
        addHeader(str, str2);
    }

    @Deprecated
    public void setSign(long j, Set<String> set, Set<String> set2) {
        setSignParamsAndHeaders(set, set2);
    }

    @Deprecated
    public void setSign(long j, long j2, Set<String> set, Set<String> set2) {
        setSignParamsAndHeaders(set, set2);
    }
}
