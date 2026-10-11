package com.tencent.cos.xml.model.bucket;

import androidx.annotation.NonNull;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.tag.RefererConfiguration;
import com.tencent.cos.xml.utils.QCloudXmlUtils;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes10.dex */
public class PutBucketRefererRequest extends BucketRequest {
    private final RefererConfiguration refererConfiguration;

    public PutBucketRefererRequest(String str, boolean z, RefererConfiguration.RefererType refererType) {
        super(str);
        RefererConfiguration refererConfiguration = new RefererConfiguration();
        this.refererConfiguration = refererConfiguration;
        refererConfiguration.setEnabled(z);
        refererConfiguration.setRefererType(refererType);
        refererConfiguration.setAllowEmptyRefer(false);
        refererConfiguration.domainList = new ArrayList();
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public void checkParameters() throws CosXmlClientException {
        super.checkParameters();
        List<RefererConfiguration.Domain> list = this.refererConfiguration.domainList;
        if (list != null) {
            list.size();
        }
    }

    public boolean getAllowEmptyRefer() {
        return this.refererConfiguration.getAllowEmptyRefer();
    }

    public boolean getEnabled() {
        return this.refererConfiguration.getEnabled();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "PUT";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        this.queryParameters.put(RequestParameters.SUBRESOURCE_REFERER, null);
        return super.getQueryString();
    }

    public RefererConfiguration.RefererType getRefererType() {
        return this.refererConfiguration.getRefererType();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return RequestBodySerializer.string("application/xml", QCloudXmlUtils.toXml(this.refererConfiguration));
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public boolean isNeedMD5() {
        return true;
    }

    public void setAllowEmptyRefer(boolean z) {
        this.refererConfiguration.setAllowEmptyRefer(z);
    }

    public void setDomainList(@NonNull List<RefererConfiguration.Domain> list) {
        this.refererConfiguration.domainList = list;
    }

    public void setEnabled(boolean z) {
        this.refererConfiguration.setEnabled(z);
    }

    public void setRefererType(@NonNull RefererConfiguration.RefererType refererType) {
        this.refererConfiguration.setRefererType(refererType);
    }
}
