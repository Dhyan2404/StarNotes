package com.tencent.cos.xml.model.ci.asr.bean;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.cos.xml.model.tag.Locator;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class CreateSpeechJobs {
    public String callBack;
    public String callBackFormat;
    public String callBackType;
    public String queueId;
    public String tag = "SpeechRecognition";
    public CreateSpeechJobsInput input = new CreateSpeechJobsInput();
    public CreateSpeechJobsOperation operation = new CreateSpeechJobsOperation();
    public CallBackMqConfig callBackMqConfig = new CallBackMqConfig();

    @XmlBean(method = XmlBean.GenerateMethod.TO)
    /* loaded from: classes10.dex */
    public static class CreateSpeechJobsInput {
        public String object;
        public String url;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Operation")
    /* loaded from: classes10.dex */
    public static class CreateSpeechJobsOperation {
        public int jobLevel;
        public String templateId;
        public String userData;
        public SpeechRecognition speechRecognition = new SpeechRecognition();
        public Locator output = new Locator();
    }
}
