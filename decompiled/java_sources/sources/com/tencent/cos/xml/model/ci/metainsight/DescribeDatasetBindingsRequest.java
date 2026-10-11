package com.tencent.cos.xml.model.ci.metainsight;

import androidx.annotation.NonNull;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.appid.AppIdRequest;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.Map;

/* loaded from: classes10.dex */
public class DescribeDatasetBindingsRequest extends AppIdRequest {
    public String datasetname;
    public int maxresults;
    public String nexttoken;

    public DescribeDatasetBindingsRequest(@NonNull String str) {
        super(str);
        this.nexttoken = "";
        addNoSignHeader("Content-Type");
        addHeader("Accept", "application/json");
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/datasetbindings";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        this.queryParameters.put("datasetname", this.datasetname);
        this.queryParameters.put("maxresults", String.valueOf(this.maxresults));
        this.queryParameters.put("nexttoken", this.nexttoken);
        return super.getQueryString();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return null;
    }
}
