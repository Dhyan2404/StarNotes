package com.tencent.cos.xml.model.bucket;

import androidx.constraintlayout.core.motion.utils.Easing;
import com.tencent.cos.xml.transfer.XmlBuilder;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.io.IOException;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public final class PutBucketAccelerateRequest extends BucketRequest {
    private boolean enable;

    public PutBucketAccelerateRequest(String str, boolean z) {
        super(str);
        this.enable = z;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "PUT";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        this.queryParameters.put(Easing.f2908j, null);
        return super.getQueryString();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer xmlBuilder() throws XmlPullParserException, IOException {
        return RequestBodySerializer.string("application/xml", XmlBuilder.buildPutBucketAccelerateXML(this.enable));
    }
}
