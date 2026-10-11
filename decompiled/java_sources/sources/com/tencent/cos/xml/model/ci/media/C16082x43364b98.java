package com.tencent.cos.xml.model.ci.media;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.cos.xml.model.ci.common.AudioMix;
import com.tencent.cos.xml.model.ci.media.TemplateVideoMontage;
import com.tencent.cos.xml.model.ci.media.TemplateVideoMontageResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.media.TemplateVideoMontageResponse$TemplateVideoMontageResponseVideoMontage$$XmlAdapter */
/* loaded from: classes10.dex */
public class C16082x43364b98 extends IXmlAdapter<TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage> {
    private HashMap<String, ChildElementBinder<TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage>> childElementBinders;

    public C16082x43364b98() {
        HashMap<String, ChildElementBinder<TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put(SsManifestParser.C4933d.f26659s, new ChildElementBinder<TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateVideoMontageResponse$TemplateVideoMontageResponseVideoMontage$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage templateVideoMontageResponseVideoMontage, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateVideoMontageResponseVideoMontage.duration = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Container", new ChildElementBinder<TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateVideoMontageResponse$TemplateVideoMontageResponseVideoMontage$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage templateVideoMontageResponseVideoMontage, String str) throws IOException, XmlPullParserException {
                templateVideoMontageResponseVideoMontage.container = (TemplateVideoMontage.TemplateVideoMontageContainer) QCloudXml.fromXml(xmlPullParser, TemplateVideoMontage.TemplateVideoMontageContainer.class, "Container");
            }
        });
        this.childElementBinders.put("Video", new ChildElementBinder<TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateVideoMontageResponse$TemplateVideoMontageResponseVideoMontage$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage templateVideoMontageResponseVideoMontage, String str) throws IOException, XmlPullParserException {
                templateVideoMontageResponseVideoMontage.video = (TemplateVideoMontage.TemplateVideoMontageVideo) QCloudXml.fromXml(xmlPullParser, TemplateVideoMontage.TemplateVideoMontageVideo.class, "Video");
            }
        });
        this.childElementBinders.put("Audio", new ChildElementBinder<TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateVideoMontageResponse$TemplateVideoMontageResponseVideoMontage$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage templateVideoMontageResponseVideoMontage, String str) throws IOException, XmlPullParserException {
                templateVideoMontageResponseVideoMontage.audio = (TemplateVideoMontage.TemplateVideoMontageAudio) QCloudXml.fromXml(xmlPullParser, TemplateVideoMontage.TemplateVideoMontageAudio.class, "Audio");
            }
        });
        this.childElementBinders.put("Scene", new ChildElementBinder<TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateVideoMontageResponse$TemplateVideoMontageResponseVideoMontage$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage templateVideoMontageResponseVideoMontage, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateVideoMontageResponseVideoMontage.scene = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("AudioMix", new ChildElementBinder<TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateVideoMontageResponse$TemplateVideoMontageResponseVideoMontage$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage templateVideoMontageResponseVideoMontage, String str) throws IOException, XmlPullParserException {
                templateVideoMontageResponseVideoMontage.audioMix = (AudioMix) QCloudXml.fromXml(xmlPullParser, AudioMix.class, "AudioMix");
            }
        });
        this.childElementBinders.put("AudioMixArray", new ChildElementBinder<TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateVideoMontageResponse$TemplateVideoMontageResponseVideoMontage$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage templateVideoMontageResponseVideoMontage, String str) throws IOException, XmlPullParserException {
                if (templateVideoMontageResponseVideoMontage.audioMixArray == null) {
                    templateVideoMontageResponseVideoMontage.audioMixArray = new ArrayList();
                }
                templateVideoMontageResponseVideoMontage.audioMixArray.add((AudioMix) QCloudXml.fromXml(xmlPullParser, AudioMix.class, "AudioMixArray"));
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage templateVideoMontageResponseVideoMontage = new TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<TemplateVideoMontageResponse.TemplateVideoMontageResponseVideoMontage> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, templateVideoMontageResponseVideoMontage, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "VideoMontage" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return templateVideoMontageResponseVideoMontage;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return templateVideoMontageResponseVideoMontage;
    }
}
