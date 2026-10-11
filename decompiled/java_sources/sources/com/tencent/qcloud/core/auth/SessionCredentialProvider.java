package com.tencent.qcloud.core.auth;

import androidx.browser.trusted.Token;
import com.tencent.qcloud.core.common.QCloudAuthenticationException;
import com.tencent.qcloud.core.common.QCloudClientException;
import com.tencent.qcloud.core.common.QCloudServiceException;
import com.tencent.qcloud.core.http.HttpRequest;
import com.tencent.qcloud.core.http.HttpResult;
import com.tencent.qcloud.core.http.QCloudHttpClient;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes10.dex */
public class SessionCredentialProvider extends BasicLifecycleCredentialProvider {
    private HttpRequest<String> httpRequest;
    private HttpRequest.Builder<String> requestBuilder;
    private StsVersion stsVersion;

    /* loaded from: classes10.dex */
    public enum StsVersion {
        VERSION_2,
        VERSION_3
    }

    public SessionCredentialProvider() {
        this.stsVersion = StsVersion.VERSION_2;
    }

    public static SessionQCloudCredentials parseStandardSTS3JsonResponse(String str) throws QCloudClientException {
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                JSONObject optJSONObject = jSONObject.optJSONObject("Response");
                if (optJSONObject != null) {
                    jSONObject = optJSONObject;
                }
                JSONObject optJSONObject2 = jSONObject.optJSONObject("Credentials");
                JSONObject optJSONObject3 = jSONObject.optJSONObject("Error");
                if (optJSONObject2 != null) {
                    return new SessionQCloudCredentials(optJSONObject2.optString("TmpSecretId"), optJSONObject2.optString("TmpSecretKey"), optJSONObject2.optString(Token.f2426b), jSONObject.optLong("ExpiredTime"));
                }
                if (optJSONObject3 != null) {
                    throw new QCloudClientException(new QCloudAuthenticationException("get credentials error : " + jSONObject.toString()));
                }
            } catch (JSONException e) {
                throw new QCloudClientException("parse sts3.0 session json fails", new QCloudAuthenticationException(e.getMessage()));
            }
        }
        throw new QCloudClientException(new QCloudAuthenticationException("fetch credential response content is null"));
    }

    public static SessionQCloudCredentials parseStandardSTSJsonResponse(String str) throws QCloudClientException {
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                JSONObject optJSONObject = jSONObject.optJSONObject("data");
                if (optJSONObject != null) {
                    jSONObject = optJSONObject;
                }
                JSONObject optJSONObject2 = jSONObject.optJSONObject("credentials");
                int optInt = jSONObject.optInt("code", -1);
                if (optJSONObject2 != null) {
                    long optLong = jSONObject.optLong("expiredTime");
                    long optLong2 = jSONObject.optLong("startTime");
                    String optString = optJSONObject2.optString("sessionToken");
                    String optString2 = optJSONObject2.optString("tmpSecretId");
                    String optString3 = optJSONObject2.optString("tmpSecretKey");
                    return optLong2 > 0 ? new SessionQCloudCredentials(optString2, optString3, optString, optLong2, optLong) : new SessionQCloudCredentials(optString2, optString3, optString, optLong);
                }
                if (optInt > 0) {
                    throw new QCloudClientException(new QCloudAuthenticationException("get credentials error : " + jSONObject.toString()));
                }
            } catch (JSONException e) {
                throw new QCloudClientException("parse sts2.0 session json fails", new QCloudAuthenticationException(e.getMessage()));
            }
        }
        throw new QCloudClientException(new QCloudAuthenticationException("fetch credential response content is null"));
    }

    public HttpRequest<String> buildRequest(HttpRequest<String> httpRequest) {
        return httpRequest;
    }

    @Override // com.tencent.qcloud.core.auth.BasicLifecycleCredentialProvider
    public QCloudLifecycleCredentials fetchNewCredentials() throws QCloudClientException {
        HttpRequest<String> buildRequest;
        HttpRequest<String> httpRequest = this.httpRequest;
        if (httpRequest != null) {
            buildRequest = buildRequest(httpRequest);
        } else {
            HttpRequest.Builder<String> builder = this.requestBuilder;
            buildRequest = builder != null ? buildRequest(builder) : null;
        }
        if (buildRequest == null) {
            throw new QCloudClientException(new QCloudAuthenticationException("please pass http request object for fetching"));
        }
        try {
            HttpResult executeNow = QCloudHttpClient.getDefault().resolveRequest(buildRequest).executeNow();
            if (executeNow.isSuccessful()) {
                return parseServerResponse((String) executeNow.content());
            }
            throw new QCloudClientException("fetch new credentials error ", new QCloudAuthenticationException(executeNow.asException().getMessage()));
        } catch (QCloudServiceException e) {
            throw new QCloudClientException("fetch new credentials error ", new QCloudAuthenticationException(e.getMessage()));
        }
    }

    public SessionQCloudCredentials parseServerResponse(String str) throws QCloudClientException {
        return this.stsVersion == StsVersion.VERSION_2 ? parseStandardSTSJsonResponse(str) : parseStandardSTS3JsonResponse(str);
    }

    public HttpRequest<String> buildRequest(HttpRequest.Builder<String> builder) {
        return builder.build();
    }

    public SessionCredentialProvider(HttpRequest<String> httpRequest) {
        this(httpRequest, StsVersion.VERSION_2);
    }

    public SessionCredentialProvider(HttpRequest.Builder<String> builder) {
        this(builder, StsVersion.VERSION_2);
    }

    public SessionCredentialProvider(HttpRequest<String> httpRequest, StsVersion stsVersion) {
        StsVersion stsVersion2 = StsVersion.VERSION_2;
        this.httpRequest = httpRequest;
        this.stsVersion = stsVersion;
    }

    public SessionCredentialProvider(HttpRequest.Builder<String> builder, StsVersion stsVersion) {
        StsVersion stsVersion2 = StsVersion.VERSION_2;
        this.requestBuilder = builder;
        this.stsVersion = stsVersion;
    }
}
