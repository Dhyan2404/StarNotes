package com.tencent.cos.xml.model.bucket;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.qcloud.core.auth.STSCredentialScope;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.Map;

/* loaded from: classes10.dex */
public final class GetBucketRequest extends BucketRequest {
    private String delimiter;
    private String encodingType;
    private String marker;
    private String maxKeys;
    private String prefix;

    public GetBucketRequest(String str) {
        super(str);
        this.prefix = null;
        this.delimiter = null;
        this.marker = null;
        this.maxKeys = "1000";
    }

    public String getDelimiter() {
        return this.delimiter;
    }

    public String getEncodingType() {
        return this.encodingType;
    }

    public String getMarker() {
        return this.marker;
    }

    public long getMaxKeys() {
        return Long.parseLong(this.maxKeys);
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    public String getPrefix() {
        return this.prefix;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        String str = this.prefix;
        if (str != null) {
            this.queryParameters.put(RequestParameters.PREFIX, str);
        }
        String str2 = this.delimiter;
        if (str2 != null) {
            this.queryParameters.put("delimiter", str2);
        }
        String str3 = this.encodingType;
        if (str3 != null) {
            this.queryParameters.put(RequestParameters.ENCODING_TYPE, str3);
        }
        String str4 = this.marker;
        if (str4 != null) {
            this.queryParameters.put("marker", str4);
        }
        String str5 = this.maxKeys;
        if (str5 != null) {
            this.queryParameters.put(RequestParameters.MAX_KEYS, str5);
        }
        String str6 = this.prefix;
        if (str6 != null) {
            this.queryParameters.put(RequestParameters.PREFIX, str6);
        }
        return super.getQueryString();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() {
        return null;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public STSCredentialScope[] getSTSCredentialScope(CosXmlServiceConfig cosXmlServiceConfig) {
        String str = "name/cos:" + GetBucketRequest.class.getSimpleName().replace(SingleRequest.f15334D, "");
        String bucket = cosXmlServiceConfig.getBucket(this.bucket);
        String region = cosXmlServiceConfig.getRegion();
        String str2 = this.prefix;
        return new STSCredentialScope(str, bucket, region, str2 == null ? null : cosXmlServiceConfig.getUrlPath(this.bucket, str2)).toArray();
    }

    @Deprecated
    public void setDelimiter(char c) {
        setDelimiter(String.valueOf(c));
    }

    public void setEncodingType(String str) {
        this.encodingType = str;
    }

    public void setMarker(String str) {
        this.marker = str;
    }

    public void setMaxKeys(long j) {
        this.maxKeys = String.valueOf(j);
    }

    public void setPrefix(String str) {
        this.prefix = str;
    }

    public void setDelimiter(String str) {
        this.delimiter = str;
    }

    public GetBucketRequest(String str, String str2, String str3) {
        super(str2);
        this.delimiter = null;
        this.marker = null;
        this.maxKeys = "1000";
        this.region = str;
        this.prefix = str3;
    }
}
