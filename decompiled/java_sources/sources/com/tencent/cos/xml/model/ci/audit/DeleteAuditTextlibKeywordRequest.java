package com.tencent.cos.xml.model.ci.audit;

import androidx.annotation.NonNull;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.bucket.BucketRequest;
import com.tencent.cos.xml.utils.QCloudXmlUtils;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.ArrayList;

/* loaded from: classes10.dex */
public class DeleteAuditTextlibKeywordRequest extends BucketRequest {
    private DeleteAuditTextlibKeyword deleteAuditTextlibKeyword;
    private final String libID;

    public DeleteAuditTextlibKeywordRequest(@NonNull String str, @NonNull String str2) {
        super(str);
        this.deleteAuditTextlibKeyword = new DeleteAuditTextlibKeyword();
        addNoSignHeader("Content-Type");
        this.libID = str2;
        this.deleteAuditTextlibKeyword.keywordIDs = new ArrayList();
    }

    public void addKeywordID(@NonNull String str) {
        this.deleteAuditTextlibKeyword.keywordIDs.add(str);
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "DELETE";
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return String.format("/audit/textlib/%s/keyword", this.libID);
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return RequestBodySerializer.string("application/xml", QCloudXmlUtils.toXml(this.deleteAuditTextlibKeyword));
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getRequestHost(CosXmlServiceConfig cosXmlServiceConfig) {
        return cosXmlServiceConfig.getRequestHost(this.region, this.bucket, CosXmlServiceConfig.CI_HOST_FORMAT);
    }
}
