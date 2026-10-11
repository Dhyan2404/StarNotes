package com.tencent.cos.xml.model.ci.ai;

import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Response")
/* loaded from: classes10.dex */
public class OpenAsrBucketResponse {
    public OpenAsrBucketResponseAsrBucket asrBucket;
    public String requestId;

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "AsrBucket")
    /* loaded from: classes10.dex */
    public static class OpenAsrBucketResponseAsrBucket {
        public String bucketId;
        public String createTime;
        public String name;
        public String region;
    }
}
