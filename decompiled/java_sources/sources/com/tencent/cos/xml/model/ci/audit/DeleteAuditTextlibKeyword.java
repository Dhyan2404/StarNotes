package com.tencent.cos.xml.model.ci.audit;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;
import com.tencent.qcloud.qcloudxml.annoation.XmlElement;
import java.util.List;

@XmlBean(method = XmlBean.GenerateMethod.ALL, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class DeleteAuditTextlibKeyword {

    @XmlElement(flatListNote = true, ignoreListNote = true)
    public List<String> keywordIDs;
}
