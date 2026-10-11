package com.tencent.cos.xml.model.bucket;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.tencent.cos.xml.model.tag.BucketLoggingStatus;
import com.tencent.cos.xml.transfer.XmlBuilder;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.io.IOException;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public class PutBucketLoggingRequest extends BucketRequest {
    private BucketLoggingStatus bucketLoggingStatus;

    public PutBucketLoggingRequest(String str) {
        super(str);
        this.bucketLoggingStatus = new BucketLoggingStatus();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "PUT";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        this.queryParameters.put(RequestParameters.SUBRESOURCE_LOGGING, null);
        return super.getQueryString();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public boolean isNeedMD5() {
        return true;
    }

    public void setTargetBucket(String str) {
        BucketLoggingStatus bucketLoggingStatus = this.bucketLoggingStatus;
        if (bucketLoggingStatus.loggingEnabled == null) {
            bucketLoggingStatus.loggingEnabled = new BucketLoggingStatus.LoggingEnabled();
        }
        this.bucketLoggingStatus.loggingEnabled.targetBucket = str;
    }

    public void setTargetPrefix(String str) {
        BucketLoggingStatus bucketLoggingStatus = this.bucketLoggingStatus;
        if (bucketLoggingStatus.loggingEnabled == null) {
            bucketLoggingStatus.loggingEnabled = new BucketLoggingStatus.LoggingEnabled();
        }
        this.bucketLoggingStatus.loggingEnabled.targetPrefix = str;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer xmlBuilder() throws XmlPullParserException, IOException {
        return RequestBodySerializer.string("application/xml", XmlBuilder.buildBucketLogging(this.bucketLoggingStatus));
    }
}
