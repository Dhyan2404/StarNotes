package com.tencent.cos.xml.model.object;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.tencent.cos.xml.common.ClientErrorCode;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.object.CopyObjectRequest;
import java.util.Map;

/* loaded from: classes10.dex */
public class UploadPartCopyRequest extends CopyObjectRequest {
    private int partNumber;
    private String uploadId;

    public UploadPartCopyRequest(String str, String str2, int i, String str3, CopyObjectRequest.CopySourceStruct copySourceStruct) throws CosXmlClientException {
        this(str, str2, i, str3, copySourceStruct, -1L, -1L);
    }

    @Override // com.tencent.cos.xml.model.object.CopyObjectRequest, com.tencent.cos.xml.model.object.ObjectRequest, com.tencent.cos.xml.model.CosXmlRequest
    public void checkParameters() throws CosXmlClientException {
        super.checkParameters();
        if (this.requestURL != null) {
            return;
        }
        if (this.partNumber <= 0) {
            throw new CosXmlClientException(ClientErrorCode.INVALID_ARGUMENT.getCode(), "partNumber must be >= 1");
        }
        if (this.uploadId == null) {
            throw new CosXmlClientException(ClientErrorCode.INVALID_ARGUMENT.getCode(), "uploadID must not be null");
        }
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        this.queryParameters.put(RequestParameters.PART_NUMBER, String.valueOf(this.partNumber));
        this.queryParameters.put(RequestParameters.UPLOAD_ID, this.uploadId);
        return super.getQueryString();
    }

    public void setCopyRange(long j, long j2) {
        if (j < 0 || j2 < j) {
            return;
        }
        addHeader("x-cos-copy-source-range", "bytes=" + j + "-" + j2);
    }

    public UploadPartCopyRequest(String str, String str2, int i, String str3, CopyObjectRequest.CopySourceStruct copySourceStruct, long j, long j2) {
        super(str, str2, copySourceStruct);
        this.partNumber = i;
        this.uploadId = str3;
        setCopyRange(j, j2);
    }
}
