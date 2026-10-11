package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.common.AudioMix;
import com.tencent.cos.xml.model.ci.media.SubmitTranscodeJob;
import com.tencent.cos.xml.model.ci.media.TemplateTranscode;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitTranscodeJob$SubmitTranscodeJobTranscode$$XmlAdapter extends IXmlAdapter<SubmitTranscodeJob.SubmitTranscodeJobTranscode> {
    private HashMap<String, ChildElementBinder<SubmitTranscodeJob.SubmitTranscodeJobTranscode>> childElementBinders;

    public SubmitTranscodeJob$SubmitTranscodeJobTranscode$$XmlAdapter() {
        HashMap<String, ChildElementBinder<SubmitTranscodeJob.SubmitTranscodeJobTranscode>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("TimeInterval", new ChildElementBinder<SubmitTranscodeJob.SubmitTranscodeJobTranscode>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitTranscodeJob$SubmitTranscodeJobTranscode$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitTranscodeJob.SubmitTranscodeJobTranscode submitTranscodeJobTranscode, String str) throws IOException, XmlPullParserException {
                submitTranscodeJobTranscode.timeInterval = (TemplateTranscode.TemplateTranscodeTimeInterval) QCloudXml.fromXml(xmlPullParser, TemplateTranscode.TemplateTranscodeTimeInterval.class, "TimeInterval");
            }
        });
        this.childElementBinders.put("Container", new ChildElementBinder<SubmitTranscodeJob.SubmitTranscodeJobTranscode>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitTranscodeJob$SubmitTranscodeJobTranscode$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitTranscodeJob.SubmitTranscodeJobTranscode submitTranscodeJobTranscode, String str) throws IOException, XmlPullParserException {
                submitTranscodeJobTranscode.container = (TemplateTranscode.TemplateTranscodeContainer) QCloudXml.fromXml(xmlPullParser, TemplateTranscode.TemplateTranscodeContainer.class, "Container");
            }
        });
        this.childElementBinders.put("Video", new ChildElementBinder<SubmitTranscodeJob.SubmitTranscodeJobTranscode>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitTranscodeJob$SubmitTranscodeJobTranscode$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitTranscodeJob.SubmitTranscodeJobTranscode submitTranscodeJobTranscode, String str) throws IOException, XmlPullParserException {
                submitTranscodeJobTranscode.video = (TemplateTranscode.TemplateTranscodeVideo) QCloudXml.fromXml(xmlPullParser, TemplateTranscode.TemplateTranscodeVideo.class, "Video");
            }
        });
        this.childElementBinders.put("Audio", new ChildElementBinder<SubmitTranscodeJob.SubmitTranscodeJobTranscode>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitTranscodeJob$SubmitTranscodeJobTranscode$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitTranscodeJob.SubmitTranscodeJobTranscode submitTranscodeJobTranscode, String str) throws IOException, XmlPullParserException {
                submitTranscodeJobTranscode.audio = (TemplateTranscode.TemplateTranscodeAudio) QCloudXml.fromXml(xmlPullParser, TemplateTranscode.TemplateTranscodeAudio.class, "Audio");
            }
        });
        this.childElementBinders.put("TransConfig", new ChildElementBinder<SubmitTranscodeJob.SubmitTranscodeJobTranscode>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitTranscodeJob$SubmitTranscodeJobTranscode$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitTranscodeJob.SubmitTranscodeJobTranscode submitTranscodeJobTranscode, String str) throws IOException, XmlPullParserException {
                submitTranscodeJobTranscode.transConfig = (TemplateTranscode.TemplateTranscodeTransConfig) QCloudXml.fromXml(xmlPullParser, TemplateTranscode.TemplateTranscodeTransConfig.class, "TransConfig");
            }
        });
        this.childElementBinders.put("AudioMix", new ChildElementBinder<SubmitTranscodeJob.SubmitTranscodeJobTranscode>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitTranscodeJob$SubmitTranscodeJobTranscode$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitTranscodeJob.SubmitTranscodeJobTranscode submitTranscodeJobTranscode, String str) throws IOException, XmlPullParserException {
                submitTranscodeJobTranscode.audioMix = (AudioMix) QCloudXml.fromXml(xmlPullParser, AudioMix.class, "AudioMix");
            }
        });
        this.childElementBinders.put("AudioMixArray", new ChildElementBinder<SubmitTranscodeJob.SubmitTranscodeJobTranscode>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitTranscodeJob$SubmitTranscodeJobTranscode$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitTranscodeJob.SubmitTranscodeJobTranscode submitTranscodeJobTranscode, String str) throws IOException, XmlPullParserException {
                if (submitTranscodeJobTranscode.audioMixArray == null) {
                    submitTranscodeJobTranscode.audioMixArray = new ArrayList();
                }
                submitTranscodeJobTranscode.audioMixArray.add((AudioMix) QCloudXml.fromXml(xmlPullParser, AudioMix.class, "AudioMixArray"));
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public SubmitTranscodeJob.SubmitTranscodeJobTranscode fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        SubmitTranscodeJob.SubmitTranscodeJobTranscode submitTranscodeJobTranscode = new SubmitTranscodeJob.SubmitTranscodeJobTranscode();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<SubmitTranscodeJob.SubmitTranscodeJobTranscode> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, submitTranscodeJobTranscode, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Transcode" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return submitTranscodeJobTranscode;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return submitTranscodeJobTranscode;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitTranscodeJob.SubmitTranscodeJobTranscode submitTranscodeJobTranscode, String str) throws IOException, XmlPullParserException {
        if (submitTranscodeJobTranscode == null) {
            return;
        }
        if (str == null) {
            str = "Transcode";
        }
        xmlSerializer.startTag("", str);
        TemplateTranscode.TemplateTranscodeTimeInterval templateTranscodeTimeInterval = submitTranscodeJobTranscode.timeInterval;
        if (templateTranscodeTimeInterval != null) {
            QCloudXml.toXml(xmlSerializer, templateTranscodeTimeInterval, "TimeInterval");
        }
        TemplateTranscode.TemplateTranscodeContainer templateTranscodeContainer = submitTranscodeJobTranscode.container;
        if (templateTranscodeContainer != null) {
            QCloudXml.toXml(xmlSerializer, templateTranscodeContainer, "Container");
        }
        TemplateTranscode.TemplateTranscodeVideo templateTranscodeVideo = submitTranscodeJobTranscode.video;
        if (templateTranscodeVideo != null) {
            QCloudXml.toXml(xmlSerializer, templateTranscodeVideo, "Video");
        }
        TemplateTranscode.TemplateTranscodeAudio templateTranscodeAudio = submitTranscodeJobTranscode.audio;
        if (templateTranscodeAudio != null) {
            QCloudXml.toXml(xmlSerializer, templateTranscodeAudio, "Audio");
        }
        TemplateTranscode.TemplateTranscodeTransConfig templateTranscodeTransConfig = submitTranscodeJobTranscode.transConfig;
        if (templateTranscodeTransConfig != null) {
            QCloudXml.toXml(xmlSerializer, templateTranscodeTransConfig, "TransConfig");
        }
        AudioMix audioMix = submitTranscodeJobTranscode.audioMix;
        if (audioMix != null) {
            QCloudXml.toXml(xmlSerializer, audioMix, "AudioMix");
        }
        if (submitTranscodeJobTranscode.audioMixArray != null) {
            for (int i = 0; i < submitTranscodeJobTranscode.audioMixArray.size(); i++) {
                QCloudXml.toXml(xmlSerializer, submitTranscodeJobTranscode.audioMixArray.get(i), "AudioMix");
            }
        }
        xmlSerializer.endTag("", str);
    }
}
