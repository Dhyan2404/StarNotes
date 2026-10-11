package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.common.VoiceSynthesisTempleteResponseTemplate;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Response")
/* loaded from: classes10.dex */
public class UpdateVoiceSynthesisTempleteResponse {
    public String requestId;
    public VoiceSynthesisTempleteResponseTemplate template;
}
