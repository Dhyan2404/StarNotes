package com.tencent.cos.xml.model.bucket;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.Map;

@Deprecated
/* loaded from: classes10.dex */
public class ListBucketVersionsRequest extends BucketRequest {
    private String delimiter;
    private String encodingType;
    private String keyMarker;
    private String maxKeys;
    private String prefix;
    private String versionIdMarker;

    public ListBucketVersionsRequest(String str) {
        super(str);
        this.maxKeys = "1000";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        this.queryParameters.put("versions", null);
        String str = this.prefix;
        if (str != null) {
            this.queryParameters.put(RequestParameters.PREFIX, str);
        }
        String str2 = this.keyMarker;
        if (str2 != null) {
            this.queryParameters.put(RequestParameters.KEY_MARKER, str2);
        }
        String str3 = this.versionIdMarker;
        if (str3 != null) {
            this.queryParameters.put("version-id-marker", str3);
        }
        String str4 = this.delimiter;
        if (str4 != null) {
            this.queryParameters.put("delimiter", str4);
        }
        String str5 = this.encodingType;
        if (str5 != null) {
            this.queryParameters.put(RequestParameters.ENCODING_TYPE, str5);
        }
        if (!this.maxKeys.equals("1000")) {
            this.queryParameters.put(RequestParameters.MAX_KEYS, this.maxKeys);
        }
        return super.getQueryString();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return null;
    }

    public void setDelimiter(String str) {
        this.delimiter = str;
    }

    public void setEncodingType(String str) {
        this.encodingType = str;
    }

    public void setKeyMarker(String str) {
        if (str != null) {
            this.keyMarker = str;
        }
    }

    public void setMaxKeys(int i) {
        this.maxKeys = String.valueOf(i);
    }

    public void setPrefix(String str) {
        if (str != null) {
            this.prefix = str;
        }
    }

    public void setVersionIdMarker(String str) {
        if (str != null) {
            this.versionIdMarker = str;
        }
    }
}
