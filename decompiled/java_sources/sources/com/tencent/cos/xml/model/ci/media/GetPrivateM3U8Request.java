package com.tencent.cos.xml.model.ci.media;

import androidx.annotation.NonNull;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.bucket.BucketRequest;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.Map;
import org.apache.http.cookie.ClientCookie;

/* loaded from: classes10.dex */
public class GetPrivateM3U8Request extends BucketRequest {
    public String ci_process;
    public String expires;
    protected final String objectKey;

    public GetPrivateM3U8Request(@NonNull String str, @NonNull String str2) {
        super(str);
        this.ci_process = "pm3u8";
        this.objectKey = str2;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/" + this.objectKey;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        this.queryParameters.put("ci-process", this.ci_process);
        this.queryParameters.put(ClientCookie.EXPIRES_ATTR, this.expires);
        return super.getQueryString();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return null;
    }
}
