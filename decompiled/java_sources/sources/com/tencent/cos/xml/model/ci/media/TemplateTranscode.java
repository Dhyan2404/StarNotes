package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.AudioMix;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;
import com.tencent.qcloud.qcloudxml.annoation.XmlElement;
import java.util.List;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class TemplateTranscode {
    public TemplateTranscodeAudio audio;
    public AudioMix audioMix;

    @XmlElement(flatListNote = true, ignoreListNote = true)
    public List<AudioMix> audioMixArray;
    public TemplateTranscodeContainer container;
    public String name;
    public String tag = "Transcode";
    public TemplateTranscodeTimeInterval timeInterval;
    public TemplateTranscodeTransConfig transConfig;
    public TemplateTranscodeVideo video;

    @XmlBean(name = "Audio")
    /* loaded from: classes10.dex */
    public static class TemplateTranscodeAudio {
        public String bitrate;
        public String channels;
        public String codec;
        public String keepTwoTracks;
        public String remove;
        public String sampleFormat;
        public String samplerate;
        public String switchTrack;
    }

    @XmlBean(name = "ClipConfig")
    /* loaded from: classes10.dex */
    public static class TemplateTranscodeClipConfig {
        public String duration;
    }

    @XmlBean(name = "Container")
    /* loaded from: classes10.dex */
    public static class TemplateTranscodeContainer {
        public TemplateTranscodeClipConfig clipConfig;
        public String format;
    }

    @XmlBean(name = "DashEncrypt")
    /* loaded from: classes10.dex */
    public static class TemplateTranscodeDashEncrypt {
        public String isEncrypt;
        public String uriKey;
    }

    @XmlBean(name = "HlsEncrypt")
    /* loaded from: classes10.dex */
    public static class TemplateTranscodeHlsEncrypt {
        public String isHlsEncrypt;
        public String uriKey;
    }

    @XmlBean(name = "TimeInterval")
    /* loaded from: classes10.dex */
    public static class TemplateTranscodeTimeInterval {
        public String duration;
        public String start;
    }

    @XmlBean(name = "TransConfig")
    /* loaded from: classes10.dex */
    public static class TemplateTranscodeTransConfig {
        public String adjDarMethod;
        public String audioBitrateAdjMethod;
        public TemplateTranscodeDashEncrypt dashEncrypt;
        public String deleteMetadata;
        public TemplateTranscodeHlsEncrypt hlsEncrypt;
        public String isCheckAudioBitrate;
        public String isCheckReso;
        public String isCheckVideoBitrate;
        public String isCheckVideoFps;
        public String isHdr2Sdr;
        public String resoAdjMethod;
        public String transcodeIndex;
        public String videoBitrateAdjMethod;
        public String videoFpsAdjMethod;
    }

    @XmlBean(name = "Video")
    /* loaded from: classes10.dex */
    public static class TemplateTranscodeVideo {
        public String bitrate;
        public String bufsize;
        public String codec;
        public String crf;
        public String crop;
        public String fps;
        public String gop;
        public String height;
        public String interlaced;
        public String longShortMode;
        public String maxrate;
        public String pixfmt;
        public String preset;
        public String profile;
        public String remove;
        public String roi;
        public String rotate;
        public String width;
    }
}
