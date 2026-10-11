package com.tencent.cos.xml.model.ci.metainsight;

import androidx.annotation.NonNull;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.appid.AppIdRequest;
import com.tencent.cos.xml.utils.QCloudJsonUtils;
import com.tencent.qcloud.core.http.RequestBodySerializer;

/* loaded from: classes10.dex */
public class CreateDatasetBindingRequest extends AppIdRequest {
    private CreateDatasetBinding createDatasetBinding;

    public CreateDatasetBindingRequest(@NonNull String str) {
        super(str);
        addNoSignHeader("Content-Type");
        addHeader("Accept", "application/json");
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "POST";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/datasetbinding";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return RequestBodySerializer.string("application/json", QCloudJsonUtils.toJson(this.createDatasetBinding));
    }

    public void setCreateDatasetBinding(@NonNull CreateDatasetBinding createDatasetBinding) {
        this.createDatasetBinding = createDatasetBinding;
    }
}
