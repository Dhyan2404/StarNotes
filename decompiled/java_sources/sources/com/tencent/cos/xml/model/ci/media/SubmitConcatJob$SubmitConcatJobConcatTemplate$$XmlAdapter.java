package com.tencent.cos.xml.model.ci.media;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.cos.xml.model.ci.common.AudioMix;
import com.tencent.cos.xml.model.ci.media.SubmitConcatJob;
import com.tencent.cos.xml.model.ci.media.TemplateConcat;
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
public class SubmitConcatJob$SubmitConcatJobConcatTemplate$$XmlAdapter extends IXmlAdapter<SubmitConcatJob.SubmitConcatJobConcatTemplate> {
    private HashMap<String, ChildElementBinder<SubmitConcatJob.SubmitConcatJobConcatTemplate>> childElementBinders;

    public SubmitConcatJob$SubmitConcatJobConcatTemplate$$XmlAdapter() {
        HashMap<String, ChildElementBinder<SubmitConcatJob.SubmitConcatJobConcatTemplate>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("ConcatFragment", new ChildElementBinder<SubmitConcatJob.SubmitConcatJobConcatTemplate>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJob$SubmitConcatJobConcatTemplate$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJob.SubmitConcatJobConcatTemplate submitConcatJobConcatTemplate, String str) throws IOException, XmlPullParserException {
                if (submitConcatJobConcatTemplate.concatFragment == null) {
                    submitConcatJobConcatTemplate.concatFragment = new ArrayList();
                }
                submitConcatJobConcatTemplate.concatFragment.add((SubmitConcatJob.SubmitConcatJobConcatFragment) QCloudXml.fromXml(xmlPullParser, SubmitConcatJob.SubmitConcatJobConcatFragment.class, "ConcatFragment"));
            }
        });
        this.childElementBinders.put("Audio", new ChildElementBinder<SubmitConcatJob.SubmitConcatJobConcatTemplate>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJob$SubmitConcatJobConcatTemplate$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJob.SubmitConcatJobConcatTemplate submitConcatJobConcatTemplate, String str) throws IOException, XmlPullParserException {
                submitConcatJobConcatTemplate.audio = (TemplateConcat.TemplateConcatAudio) QCloudXml.fromXml(xmlPullParser, TemplateConcat.TemplateConcatAudio.class, "Audio");
            }
        });
        this.childElementBinders.put("Video", new ChildElementBinder<SubmitConcatJob.SubmitConcatJobConcatTemplate>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJob$SubmitConcatJobConcatTemplate$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJob.SubmitConcatJobConcatTemplate submitConcatJobConcatTemplate, String str) throws IOException, XmlPullParserException {
                submitConcatJobConcatTemplate.video = (TemplateConcat.TemplateConcatVideo) QCloudXml.fromXml(xmlPullParser, TemplateConcat.TemplateConcatVideo.class, "Video");
            }
        });
        this.childElementBinders.put("Container", new ChildElementBinder<SubmitConcatJob.SubmitConcatJobConcatTemplate>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJob$SubmitConcatJobConcatTemplate$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJob.SubmitConcatJobConcatTemplate submitConcatJobConcatTemplate, String str) throws IOException, XmlPullParserException {
                submitConcatJobConcatTemplate.container = (TemplateConcat.TemplateConcatContainer) QCloudXml.fromXml(xmlPullParser, TemplateConcat.TemplateConcatContainer.class, "Container");
            }
        });
        this.childElementBinders.put("AudioMix", new ChildElementBinder<SubmitConcatJob.SubmitConcatJobConcatTemplate>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJob$SubmitConcatJobConcatTemplate$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJob.SubmitConcatJobConcatTemplate submitConcatJobConcatTemplate, String str) throws IOException, XmlPullParserException {
                submitConcatJobConcatTemplate.audioMix = (AudioMix) QCloudXml.fromXml(xmlPullParser, AudioMix.class, "AudioMix");
            }
        });
        this.childElementBinders.put("AudioMixArray", new ChildElementBinder<SubmitConcatJob.SubmitConcatJobConcatTemplate>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJob$SubmitConcatJobConcatTemplate$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJob.SubmitConcatJobConcatTemplate submitConcatJobConcatTemplate, String str) throws IOException, XmlPullParserException {
                if (submitConcatJobConcatTemplate.audioMixArray == null) {
                    submitConcatJobConcatTemplate.audioMixArray = new ArrayList();
                }
                submitConcatJobConcatTemplate.audioMixArray.add((AudioMix) QCloudXml.fromXml(xmlPullParser, AudioMix.class, "AudioMixArray"));
            }
        });
        this.childElementBinders.put(SsManifestParser.C4932c.f26641g, new ChildElementBinder<SubmitConcatJob.SubmitConcatJobConcatTemplate>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJob$SubmitConcatJobConcatTemplate$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJob.SubmitConcatJobConcatTemplate submitConcatJobConcatTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitConcatJobConcatTemplate.index = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("DirectConcat", new ChildElementBinder<SubmitConcatJob.SubmitConcatJobConcatTemplate>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJob$SubmitConcatJobConcatTemplate$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJob.SubmitConcatJobConcatTemplate submitConcatJobConcatTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitConcatJobConcatTemplate.directConcat = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public SubmitConcatJob.SubmitConcatJobConcatTemplate fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        SubmitConcatJob.SubmitConcatJobConcatTemplate submitConcatJobConcatTemplate = new SubmitConcatJob.SubmitConcatJobConcatTemplate();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<SubmitConcatJob.SubmitConcatJobConcatTemplate> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, submitConcatJobConcatTemplate, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "ConcatTemplate" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return submitConcatJobConcatTemplate;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return submitConcatJobConcatTemplate;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitConcatJob.SubmitConcatJobConcatTemplate submitConcatJobConcatTemplate, String str) throws IOException, XmlPullParserException {
        if (submitConcatJobConcatTemplate == null) {
            return;
        }
        if (str == null) {
            str = "ConcatTemplate";
        }
        xmlSerializer.startTag("", str);
        if (submitConcatJobConcatTemplate.concatFragment != null) {
            for (int i = 0; i < submitConcatJobConcatTemplate.concatFragment.size(); i++) {
                QCloudXml.toXml(xmlSerializer, submitConcatJobConcatTemplate.concatFragment.get(i), "ConcatFragment");
            }
        }
        TemplateConcat.TemplateConcatAudio templateConcatAudio = submitConcatJobConcatTemplate.audio;
        if (templateConcatAudio != null) {
            QCloudXml.toXml(xmlSerializer, templateConcatAudio, "Audio");
        }
        TemplateConcat.TemplateConcatVideo templateConcatVideo = submitConcatJobConcatTemplate.video;
        if (templateConcatVideo != null) {
            QCloudXml.toXml(xmlSerializer, templateConcatVideo, "Video");
        }
        TemplateConcat.TemplateConcatContainer templateConcatContainer = submitConcatJobConcatTemplate.container;
        if (templateConcatContainer != null) {
            QCloudXml.toXml(xmlSerializer, templateConcatContainer, "Container");
        }
        AudioMix audioMix = submitConcatJobConcatTemplate.audioMix;
        if (audioMix != null) {
            QCloudXml.toXml(xmlSerializer, audioMix, "AudioMix");
        }
        if (submitConcatJobConcatTemplate.audioMixArray != null) {
            for (int i2 = 0; i2 < submitConcatJobConcatTemplate.audioMixArray.size(); i2++) {
                QCloudXml.toXml(xmlSerializer, submitConcatJobConcatTemplate.audioMixArray.get(i2), "AudioMix");
            }
        }
        if (submitConcatJobConcatTemplate.index != null) {
            xmlSerializer.startTag("", SsManifestParser.C4932c.f26641g);
            xmlSerializer.text(String.valueOf(submitConcatJobConcatTemplate.index));
            xmlSerializer.endTag("", SsManifestParser.C4932c.f26641g);
        }
        if (submitConcatJobConcatTemplate.directConcat != null) {
            xmlSerializer.startTag("", "DirectConcat");
            xmlSerializer.text(String.valueOf(submitConcatJobConcatTemplate.directConcat));
            xmlSerializer.endTag("", "DirectConcat");
        }
        xmlSerializer.endTag("", str);
    }
}
