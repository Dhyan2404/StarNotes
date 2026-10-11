package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.common.AudioMix;
import com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJob;
import com.tencent.cos.xml.model.ci.media.TemplateTranscode;
import com.tencent.cos.xml.model.ci.media.TemplateVideoMontage;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* renamed from: com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJob$SubmitVideoMontageJobVideoMontage$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15880x12baeb02 extends IXmlAdapter<SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage> {
    private HashMap<String, ChildElementBinder<SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage>> childElementBinders;

    public C15880x12baeb02() {
        HashMap<String, ChildElementBinder<SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Container", new ChildElementBinder<SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJob$SubmitVideoMontageJobVideoMontage$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage submitVideoMontageJobVideoMontage, String str) throws IOException, XmlPullParserException {
                submitVideoMontageJobVideoMontage.container = (TemplateVideoMontage.TemplateVideoMontageContainer) QCloudXml.fromXml(xmlPullParser, TemplateVideoMontage.TemplateVideoMontageContainer.class, "Container");
            }
        });
        this.childElementBinders.put("Video", new ChildElementBinder<SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJob$SubmitVideoMontageJobVideoMontage$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage submitVideoMontageJobVideoMontage, String str) throws IOException, XmlPullParserException {
                submitVideoMontageJobVideoMontage.video = (TemplateVideoMontage.TemplateVideoMontageVideo) QCloudXml.fromXml(xmlPullParser, TemplateVideoMontage.TemplateVideoMontageVideo.class, "Video");
            }
        });
        this.childElementBinders.put("Audio", new ChildElementBinder<SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJob$SubmitVideoMontageJobVideoMontage$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage submitVideoMontageJobVideoMontage, String str) throws IOException, XmlPullParserException {
                submitVideoMontageJobVideoMontage.audio = (TemplateVideoMontage.TemplateVideoMontageAudio) QCloudXml.fromXml(xmlPullParser, TemplateVideoMontage.TemplateVideoMontageAudio.class, "Audio");
            }
        });
        this.childElementBinders.put("TransConfig", new ChildElementBinder<SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJob$SubmitVideoMontageJobVideoMontage$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage submitVideoMontageJobVideoMontage, String str) throws IOException, XmlPullParserException {
                submitVideoMontageJobVideoMontage.transConfig = (TemplateTranscode.TemplateTranscodeTransConfig) QCloudXml.fromXml(xmlPullParser, TemplateTranscode.TemplateTranscodeTransConfig.class, "TransConfig");
            }
        });
        this.childElementBinders.put("AudioMix", new ChildElementBinder<SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJob$SubmitVideoMontageJobVideoMontage$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage submitVideoMontageJobVideoMontage, String str) throws IOException, XmlPullParserException {
                submitVideoMontageJobVideoMontage.audioMix = (AudioMix) QCloudXml.fromXml(xmlPullParser, AudioMix.class, "AudioMix");
            }
        });
        this.childElementBinders.put("AudioMixArray", new ChildElementBinder<SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJob$SubmitVideoMontageJobVideoMontage$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage submitVideoMontageJobVideoMontage, String str) throws IOException, XmlPullParserException {
                if (submitVideoMontageJobVideoMontage.audioMixArray == null) {
                    submitVideoMontageJobVideoMontage.audioMixArray = new ArrayList();
                }
                submitVideoMontageJobVideoMontage.audioMixArray.add((AudioMix) QCloudXml.fromXml(xmlPullParser, AudioMix.class, "AudioMixArray"));
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage submitVideoMontageJobVideoMontage = new SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, submitVideoMontageJobVideoMontage, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Transcode" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return submitVideoMontageJobVideoMontage;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return submitVideoMontageJobVideoMontage;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage submitVideoMontageJobVideoMontage, String str) throws IOException, XmlPullParserException {
        if (submitVideoMontageJobVideoMontage == null) {
            return;
        }
        if (str == null) {
            str = "Transcode";
        }
        xmlSerializer.startTag("", str);
        TemplateVideoMontage.TemplateVideoMontageContainer templateVideoMontageContainer = submitVideoMontageJobVideoMontage.container;
        if (templateVideoMontageContainer != null) {
            QCloudXml.toXml(xmlSerializer, templateVideoMontageContainer, "Container");
        }
        TemplateVideoMontage.TemplateVideoMontageVideo templateVideoMontageVideo = submitVideoMontageJobVideoMontage.video;
        if (templateVideoMontageVideo != null) {
            QCloudXml.toXml(xmlSerializer, templateVideoMontageVideo, "Video");
        }
        TemplateVideoMontage.TemplateVideoMontageAudio templateVideoMontageAudio = submitVideoMontageJobVideoMontage.audio;
        if (templateVideoMontageAudio != null) {
            QCloudXml.toXml(xmlSerializer, templateVideoMontageAudio, "Audio");
        }
        TemplateTranscode.TemplateTranscodeTransConfig templateTranscodeTransConfig = submitVideoMontageJobVideoMontage.transConfig;
        if (templateTranscodeTransConfig != null) {
            QCloudXml.toXml(xmlSerializer, templateTranscodeTransConfig, "TransConfig");
        }
        AudioMix audioMix = submitVideoMontageJobVideoMontage.audioMix;
        if (audioMix != null) {
            QCloudXml.toXml(xmlSerializer, audioMix, "AudioMix");
        }
        if (submitVideoMontageJobVideoMontage.audioMixArray != null) {
            for (int i = 0; i < submitVideoMontageJobVideoMontage.audioMixArray.size(); i++) {
                QCloudXml.toXml(xmlSerializer, submitVideoMontageJobVideoMontage.audioMixArray.get(i), "AudioMix");
            }
        }
        xmlSerializer.endTag("", str);
    }
}
