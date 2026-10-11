package com.tencent.cos.xml.model.ci.audit;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.bucket.BucketRequest;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.Map;

/* loaded from: classes10.dex */
public class GetAuditTextlibListRequest extends BucketRequest {
    public String libid;
    public int limit;
    public int offset;

    public GetAuditTextlibListRequest(@NonNull String str) {
        super(str);
        this.offset = -1;
        this.limit = -1;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/audit/textlib";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        if (!TextUtils.isEmpty(this.libid)) {
            this.queryParameters.put("libid", this.libid);
        }
        int i = this.offset;
        if (i != -1) {
            this.queryParameters.put(TypedValues.CycleType.S_WAVE_OFFSET, String.valueOf(i));
        }
        int i2 = this.limit;
        if (i2 != -1) {
            this.queryParameters.put("limit", String.valueOf(i2));
        }
        return super.getQueryString();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return null;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getRequestHost(CosXmlServiceConfig cosXmlServiceConfig) {
        return cosXmlServiceConfig.getRequestHost(this.region, this.bucket, CosXmlServiceConfig.CI_HOST_FORMAT);
    }
}
