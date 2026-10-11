package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class PostVoiceSynthesis {
    public String callBack;
    public String callBackFormat;
    public CallBackMqConfig callBackMqConfig;
    public String callBackType;
    public PostVoiceSynthesisOperation operation;
    public String tag = "Tts";

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Operation")
    /* loaded from: classes10.dex */
    public static class PostVoiceSynthesisOperation {
        public String jobLevel;
        public PostVoiceSynthesisOutput output;
        public String templateId;
        public PostVoiceSynthesisTtsConfig ttsConfig;
        public PostVoiceSynthesisTtsTpl ttsTpl;
        public String userData;
    }

    @XmlBean(method = XmlBean.GenerateMethod.ALL, name = "Output")
    /* loaded from: classes10.dex */
    public static class PostVoiceSynthesisOutput {
        public String bucket;
        public String object;
        public String region;
    }

    @XmlBean(method = XmlBean.GenerateMethod.ALL, name = "TtsConfig")
    /* loaded from: classes10.dex */
    public static class PostVoiceSynthesisTtsConfig {
        public String input;
        public String inputType;
    }

    @XmlBean(method = XmlBean.GenerateMethod.ALL, name = "TtsTpl")
    /* loaded from: classes10.dex */
    public static class PostVoiceSynthesisTtsTpl {
        public String codec;
        public String emotion;
        public String mode;
        public String speed;
        public String voiceType;
        public String volume;
    }
}
