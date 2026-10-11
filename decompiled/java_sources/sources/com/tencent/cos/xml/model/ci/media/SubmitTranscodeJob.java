package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.AudioMix;
import com.tencent.cos.xml.model.ci.common.DigitalWatermark;
import com.tencent.cos.xml.model.ci.media.TemplateTranscode;
import com.tencent.cos.xml.model.ci.media.TemplateWatermark;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;
import com.tencent.qcloud.qcloudxml.annoation.XmlElement;
import java.util.List;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class SubmitTranscodeJob {
    public String callBack;
    public String callBackFormat;
    public CallBackMqConfig callBackMqConfig;
    public String callBackType;
    public SubmitTranscodeJobInput input;
    public SubmitTranscodeJobOperation operation;
    public String queueType;
    public String tag = "Transcode";

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Input")
    /* loaded from: classes10.dex */
    public static class SubmitTranscodeJobInput {
        public String object;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Operation")
    /* loaded from: classes10.dex */
    public static class SubmitTranscodeJobOperation {
        public DigitalWatermark digitalWatermark;
        public String jobLevel;
        public SubmitTranscodeJobOutput output;
        public SubmitTranscodeJobRemoveWatermark removeWatermark;
        public SubmitTranscodeJobSubtitles subtitles;
        public String templateId;
        public SubmitTranscodeJobTranscode transcode;
        public String userData;

        @XmlElement(flatListNote = true, ignoreListNote = true)
        public List<TemplateWatermark.Watermark> watermark;

        @XmlElement(flatListNote = true, ignoreListNote = true)
        public List<String> watermarkTemplateId;
    }

    @XmlBean(name = "Output")
    /* loaded from: classes10.dex */
    public static class SubmitTranscodeJobOutput {
        public String bucket;
        public String object;
        public String region;
    }

    @XmlBean(name = "RemoveWatermark")
    /* loaded from: classes10.dex */
    public static class SubmitTranscodeJobRemoveWatermark {

        /* renamed from: dx */
        public String f93300dx;

        /* renamed from: dy */
        public String f93301dy;
        public String height;
        public String width;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Subtitle")
    /* loaded from: classes10.dex */
    public static class SubmitTranscodeJobSubtitle {
        public String url;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Subtitles")
    /* loaded from: classes10.dex */
    public static class SubmitTranscodeJobSubtitles {

        @XmlElement(flatListNote = true, ignoreListNote = true)
        public List<SubmitTranscodeJobSubtitle> subtitle;
    }

    @XmlBean(name = "Transcode")
    /* loaded from: classes10.dex */
    public static class SubmitTranscodeJobTranscode {
        public TemplateTranscode.TemplateTranscodeAudio audio;
        public AudioMix audioMix;

        @XmlElement(flatListNote = true, ignoreListNote = true)
        public List<AudioMix> audioMixArray;
        public TemplateTranscode.TemplateTranscodeContainer container;
        public TemplateTranscode.TemplateTranscodeTimeInterval timeInterval;
        public TemplateTranscode.TemplateTranscodeTransConfig transConfig;
        public TemplateTranscode.TemplateTranscodeVideo video;
    }
}
