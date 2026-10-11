package com.tencent.cos.xml.model.object;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.tencent.cos.xml.common.ClientErrorCode;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.Map;

/* loaded from: classes10.dex */
public final class ListPartsRequest extends BaseMultipartUploadRequest {
    private String encodingType;
    private String maxParts;
    private String partNumberMarker;
    private String uploadId;

    public ListPartsRequest(String str, String str2, String str3) {
        super(str, str2);
        this.uploadId = str3;
    }

    @Override // com.tencent.cos.xml.model.object.ObjectRequest, com.tencent.cos.xml.model.CosXmlRequest
    public void checkParameters() throws CosXmlClientException {
        super.checkParameters();
        if (this.requestURL == null && this.uploadId == null) {
            throw new CosXmlClientException(ClientErrorCode.INVALID_ARGUMENT.getCode(), "uploadID must not be null");
        }
    }

    public String getEncodingType() {
        return this.encodingType;
    }

    public int getMaxParts() {
        return Integer.parseInt(this.maxParts);
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    public int getPartNumberMarker() {
        return Integer.parseInt(this.partNumberMarker);
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public int getPriority() {
        return 3;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        String str = this.uploadId;
        if (str != null) {
            this.queryParameters.put(RequestParameters.UPLOAD_ID, str);
        }
        String str2 = this.maxParts;
        if (str2 != null) {
            this.queryParameters.put(RequestParameters.MAX_PARTS, str2);
        }
        String str3 = this.partNumberMarker;
        if (str3 != null) {
            this.queryParameters.put(RequestParameters.PART_NUMBER_MARKER, str3);
        }
        String str4 = this.encodingType;
        if (str4 != null) {
            this.queryParameters.put("Encoding-type", str4);
        }
        return this.queryParameters;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() {
        return null;
    }

    public String getUploadId() {
        return this.uploadId;
    }

    public void setEncodingType(String str) {
        this.encodingType = str;
    }

    public void setMaxParts(int i) {
        if (i <= 0) {
            i = 1;
        }
        this.maxParts = String.valueOf(i);
    }

    public void setPartNumberMarker(int i) {
        this.partNumberMarker = String.valueOf(i);
    }

    public void setUploadId(String str) {
        this.uploadId = str;
    }

    public void setPartNumberMarker(String str) {
        this.partNumberMarker = str;
    }
}
