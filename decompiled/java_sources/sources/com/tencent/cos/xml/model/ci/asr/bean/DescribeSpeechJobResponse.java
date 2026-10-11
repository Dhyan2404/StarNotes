package com.tencent.cos.xml.model.ci.asr.bean;

import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Response")
/* loaded from: classes10.dex */
public class DescribeSpeechJobResponse {
    public SpeechJobsDetail jobsDetail;
    public String nonExistJobIds;
}
