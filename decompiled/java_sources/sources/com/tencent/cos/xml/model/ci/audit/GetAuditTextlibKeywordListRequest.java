package com.tencent.cos.xml.model.ci.audit;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.C0619b;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.bucket.BucketRequest;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.Map;

/* loaded from: classes10.dex */
public class GetAuditTextlibKeywordListRequest extends BucketRequest {
    public String content;
    public String label;
    private final String libid;
    public int limit;
    public int offset;

    public GetAuditTextlibKeywordListRequest(@NonNull String str, @NonNull String str2) {
        super(str);
        this.offset = -1;
        this.limit = -1;
        this.libid = str2;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return String.format("/audit/textlib/%s/keyword", this.libid);
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        if (!TextUtils.isEmpty(this.content)) {
            this.queryParameters.put("content", this.content);
        }
        if (!TextUtils.isEmpty(this.label)) {
            this.queryParameters.put(C0619b.f5199k, this.label);
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
