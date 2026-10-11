package com.tencent.cos.xml.model.ci.ai;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.ci.CiSaveLocalRequest;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.Map;

/* loaded from: classes10.dex */
public class AIEnhanceImageRequest extends CiSaveLocalRequest {
    public String ciProcess = "AIEnhanceImage";
    public int denoise;
    public String detectUrl;
    public int ignoreError;
    public String objectKey;
    public int sharpen;

    public AIEnhanceImageRequest(@NonNull String str) {
        this.bucket = str;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        if (TextUtils.isEmpty(this.objectKey)) {
            return "/";
        }
        return "/" + this.objectKey;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        this.queryParameters.put("ci-process", this.ciProcess);
        this.queryParameters.put("denoise", String.valueOf(this.denoise));
        this.queryParameters.put("sharpen", String.valueOf(this.sharpen));
        if (!TextUtils.isEmpty(this.detectUrl)) {
            this.queryParameters.put("detect-url", this.detectUrl);
        }
        this.queryParameters.put("ignore-error", String.valueOf(this.ignoreError));
        return super.getQueryString();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return null;
    }
}
