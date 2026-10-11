package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.AudioMix;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;
import com.tencent.qcloud.qcloudxml.annoation.XmlElement;
import java.util.List;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class TemplateVideoMontage {
    public TemplateVideoMontageAudio audio;
    public AudioMix audioMix;

    @XmlElement(flatListNote = true, ignoreListNote = true)
    public List<AudioMix> audioMixArray;
    public TemplateVideoMontageContainer container;
    public String duration;
    public String name;
    public String scene;
    public String tag = "VideoMontage";
    public TemplateVideoMontageVideo video;

    @XmlBean(name = "Audio")
    /* loaded from: classes10.dex */
    public static class TemplateVideoMontageAudio {
        public String bitrate;
        public String channels;
        public String codec;
        public String remove;
        public String samplerate;
    }

    @XmlBean(name = "Container")
    /* loaded from: classes10.dex */
    public static class TemplateVideoMontageContainer {
        public String format;
    }

    @XmlBean(name = "Video")
    /* loaded from: classes10.dex */
    public static class TemplateVideoMontageVideo {
        public String bitrate;
        public String codec;
        public String crf;
        public String fps;
        public String height;
        public String rotate;
        public String width;
    }
}
