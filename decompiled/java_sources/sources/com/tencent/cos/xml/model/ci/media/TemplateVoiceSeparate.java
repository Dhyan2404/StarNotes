package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class TemplateVoiceSeparate {
    public AudioConfig audioConfig;
    public String audioMode;
    public String name;
    public String tag = "VoiceSeparate";

    @XmlBean(name = "Audio")
    /* loaded from: classes10.dex */
    public static class AudioConfig {
        public String bitrate;
        public String channels;
        public String codec;
        public String samplerate;
    }
}
