package com.tencent.cos.xml.model.ci.audit;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class PostImageAuditReport {
    public int contentType = 2;
    public String jobId;
    public String label;
    public String moderationTime;
    public String suggestedLabel;
    public String url;
}
