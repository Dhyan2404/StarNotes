package com.tencent.cos.xml.model.ci.ai.bean;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class CreateWordsGeneralizeJob {
    public String callBack;
    public String callBackFormat;
    public String queueId;
    public String tag = "WordsGeneralize";
    public WordsGeneralizeJobInput input = new WordsGeneralizeJobInput();
    public WordsGeneralizeJobOperation operation = new WordsGeneralizeJobOperation();
}
