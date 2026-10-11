package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.common.AudioMix;
import com.tencent.cos.xml.model.ci.media.TemplateTranscode;
import com.tencent.cos.xml.model.ci.media.TemplateTranscodeResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.media.TemplateTranscodeResponse$TemplateTranscodeResponseTransTpl$$XmlAdapter */
/* loaded from: classes10.dex */
public class C16060x3d4569f4 extends IXmlAdapter<TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl> {
    private HashMap<String, ChildElementBinder<TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl>> childElementBinders;

    public C16060x3d4569f4() {
        HashMap<String, ChildElementBinder<TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("TimeInterval", new ChildElementBinder<TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateTranscodeResponse$TemplateTranscodeResponseTransTpl$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl templateTranscodeResponseTransTpl, String str) throws IOException, XmlPullParserException {
                templateTranscodeResponseTransTpl.timeInterval = (TemplateTranscode.TemplateTranscodeTimeInterval) QCloudXml.fromXml(xmlPullParser, TemplateTranscode.TemplateTranscodeTimeInterval.class, "TimeInterval");
            }
        });
        this.childElementBinders.put("Container", new ChildElementBinder<TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateTranscodeResponse$TemplateTranscodeResponseTransTpl$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl templateTranscodeResponseTransTpl, String str) throws IOException, XmlPullParserException {
                templateTranscodeResponseTransTpl.container = (TemplateTranscode.TemplateTranscodeContainer) QCloudXml.fromXml(xmlPullParser, TemplateTranscode.TemplateTranscodeContainer.class, "Container");
            }
        });
        this.childElementBinders.put("Video", new ChildElementBinder<TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateTranscodeResponse$TemplateTranscodeResponseTransTpl$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl templateTranscodeResponseTransTpl, String str) throws IOException, XmlPullParserException {
                templateTranscodeResponseTransTpl.video = (TemplateTranscode.TemplateTranscodeVideo) QCloudXml.fromXml(xmlPullParser, TemplateTranscode.TemplateTranscodeVideo.class, "Video");
            }
        });
        this.childElementBinders.put("Audio", new ChildElementBinder<TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateTranscodeResponse$TemplateTranscodeResponseTransTpl$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl templateTranscodeResponseTransTpl, String str) throws IOException, XmlPullParserException {
                templateTranscodeResponseTransTpl.audio = (TemplateTranscode.TemplateTranscodeAudio) QCloudXml.fromXml(xmlPullParser, TemplateTranscode.TemplateTranscodeAudio.class, "Audio");
            }
        });
        this.childElementBinders.put("TransConfig", new ChildElementBinder<TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateTranscodeResponse$TemplateTranscodeResponseTransTpl$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl templateTranscodeResponseTransTpl, String str) throws IOException, XmlPullParserException {
                templateTranscodeResponseTransTpl.transConfig = (TemplateTranscode.TemplateTranscodeTransConfig) QCloudXml.fromXml(xmlPullParser, TemplateTranscode.TemplateTranscodeTransConfig.class, "TransConfig");
            }
        });
        this.childElementBinders.put("AudioMix", new ChildElementBinder<TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateTranscodeResponse$TemplateTranscodeResponseTransTpl$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl templateTranscodeResponseTransTpl, String str) throws IOException, XmlPullParserException {
                templateTranscodeResponseTransTpl.audioMix = (AudioMix) QCloudXml.fromXml(xmlPullParser, AudioMix.class, "AudioMix");
            }
        });
        this.childElementBinders.put("AudioMixArray", new ChildElementBinder<TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateTranscodeResponse$TemplateTranscodeResponseTransTpl$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl templateTranscodeResponseTransTpl, String str) throws IOException, XmlPullParserException {
                if (templateTranscodeResponseTransTpl.audioMixArray == null) {
                    templateTranscodeResponseTransTpl.audioMixArray = new ArrayList();
                }
                templateTranscodeResponseTransTpl.audioMixArray.add((AudioMix) QCloudXml.fromXml(xmlPullParser, AudioMix.class, "AudioMixArray"));
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl templateTranscodeResponseTransTpl = new TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<TemplateTranscodeResponse.TemplateTranscodeResponseTransTpl> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, templateTranscodeResponseTransTpl, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "TransTpl" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return templateTranscodeResponseTransTpl;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return templateTranscodeResponseTransTpl;
    }
}
