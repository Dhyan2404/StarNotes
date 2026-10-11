package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.SpeechRecognition;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class PostSpeechRecognitionTemplete {
    public String name;
    public SpeechRecognition speechRecognition;
    public String tag = "SpeechRecognition";
}
