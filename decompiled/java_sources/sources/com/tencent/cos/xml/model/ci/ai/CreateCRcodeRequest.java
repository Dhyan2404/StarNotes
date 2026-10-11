package com.tencent.cos.xml.model.ci.ai;

import androidx.annotation.NonNull;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.bucket.BucketRequest;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.Map;

/* loaded from: classes10.dex */
public class CreateCRcodeRequest extends BucketRequest {
    public String ciProcess;
    public int mode;
    public String qrcodeContent;
    public String width;

    public CreateCRcodeRequest(@NonNull String str) {
        super(str);
        this.ciProcess = "qrcode-generate";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        this.queryParameters.put("ci-process", this.ciProcess);
        this.queryParameters.put("qrcode-content", this.qrcodeContent);
        this.queryParameters.put(Constants.ATTRNAME_MODE, String.valueOf(this.mode));
        this.queryParameters.put("width", this.width);
        return super.getQueryString();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return null;
    }
}
