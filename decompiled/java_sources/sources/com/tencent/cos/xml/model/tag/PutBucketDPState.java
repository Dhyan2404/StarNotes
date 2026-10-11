package com.tencent.cos.xml.model.tag;

import com.tencent.qcloud.qcloudxml.annoation.XmlBean;
import com.tencent.qcloud.qcloudxml.annoation.XmlElement;

@XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Response")
/* loaded from: classes10.dex */
public class PutBucketDPState {

    @XmlElement
    public BucketDocumentPreviewState DocBucket;

    @XmlElement
    public String RequestId;
}
