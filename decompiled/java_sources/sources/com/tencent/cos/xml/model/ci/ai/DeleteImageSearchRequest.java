package com.tencent.cos.xml.model.ci.ai;

import androidx.annotation.NonNull;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.bucket.BucketRequest;
import com.tencent.cos.xml.utils.QCloudXmlUtils;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.Map;

/* loaded from: classes10.dex */
public class DeleteImageSearchRequest extends BucketRequest {
    public String action;
    public String ciProcess;
    private DeleteImageSearch deleteImageSearch;
    protected final String objectKey;

    public DeleteImageSearchRequest(@NonNull String str, @NonNull String str2) {
        super(str);
        this.ciProcess = "ImageSearch";
        this.action = "DeleteImage";
        this.objectKey = str2;
        addNoSignHeader("Content-Type");
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "POST";
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/" + this.objectKey;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        this.queryParameters.put("ci-process", this.ciProcess);
        this.queryParameters.put("action", this.action);
        return super.getQueryString();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return RequestBodySerializer.string("application/xml", QCloudXmlUtils.toXml(this.deleteImageSearch));
    }

    public void setDeleteImageSearch(@NonNull DeleteImageSearch deleteImageSearch) {
        this.deleteImageSearch = deleteImageSearch;
    }
}
