package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class UpdateVoiceSynthesisTemplete {
    public String codec;
    public String emotion;
    public String mode;
    public String name;
    public String speed;
    public String tag = "Tts";
    public String voiceType;
    public String volume;
}
