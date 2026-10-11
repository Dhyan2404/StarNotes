package com.tencent.cos.xml.model.bucket;

import com.tencent.cos.xml.model.tag.VersioningConfiguration;
import com.tencent.cos.xml.transfer.XmlBuilder;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.io.IOException;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class PutBucketVersioningRequest extends BucketRequest {
    private VersioningConfiguration versioningConfiguration;

    public PutBucketVersioningRequest(String str) {
        super(str);
        this.versioningConfiguration = new VersioningConfiguration();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "PUT";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        this.queryParameters.put("versioning", null);
        return super.getQueryString();
    }

    public void setEnableVersion(boolean z) {
        if (z) {
            this.versioningConfiguration.status = PutBucketIntelligentTieringRequest.STATUS_ENABLED;
        } else {
            this.versioningConfiguration.status = PutBucketIntelligentTieringRequest.STATUS_SUSPEND;
        }
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer xmlBuilder() throws XmlPullParserException, IOException {
        return RequestBodySerializer.string("application/xml", XmlBuilder.buildVersioningConfiguration(this.versioningConfiguration));
    }
}
