package com.tencent.cos.xml.model.ci.common;

import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class VoiceSeparateTempleteResponseTemplate$$XmlAdapter extends IXmlAdapter<VoiceSeparateTempleteResponseTemplate> {
    private HashMap<String, ChildElementBinder<VoiceSeparateTempleteResponseTemplate>> childElementBinders;

    public VoiceSeparateTempleteResponseTemplate$$XmlAdapter() {
        HashMap<String, ChildElementBinder<VoiceSeparateTempleteResponseTemplate>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("TemplateId", new ChildElementBinder<VoiceSeparateTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.VoiceSeparateTempleteResponseTemplate$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VoiceSeparateTempleteResponseTemplate voiceSeparateTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                voiceSeparateTempleteResponseTemplate.templateId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Name", new ChildElementBinder<VoiceSeparateTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.VoiceSeparateTempleteResponseTemplate$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VoiceSeparateTempleteResponseTemplate voiceSeparateTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                voiceSeparateTempleteResponseTemplate.name = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("BucketId", new ChildElementBinder<VoiceSeparateTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.VoiceSeparateTempleteResponseTemplate$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VoiceSeparateTempleteResponseTemplate voiceSeparateTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                voiceSeparateTempleteResponseTemplate.bucketId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Category", new ChildElementBinder<VoiceSeparateTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.VoiceSeparateTempleteResponseTemplate$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VoiceSeparateTempleteResponseTemplate voiceSeparateTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                voiceSeparateTempleteResponseTemplate.category = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Tag", new ChildElementBinder<VoiceSeparateTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.VoiceSeparateTempleteResponseTemplate$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VoiceSeparateTempleteResponseTemplate voiceSeparateTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                voiceSeparateTempleteResponseTemplate.tag = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("UpdateTime", new ChildElementBinder<VoiceSeparateTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.VoiceSeparateTempleteResponseTemplate$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VoiceSeparateTempleteResponseTemplate voiceSeparateTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                voiceSeparateTempleteResponseTemplate.updateTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("CreateTime", new ChildElementBinder<VoiceSeparateTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.VoiceSeparateTempleteResponseTemplate$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VoiceSeparateTempleteResponseTemplate voiceSeparateTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                voiceSeparateTempleteResponseTemplate.createTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("VoiceSeparate", new ChildElementBinder<VoiceSeparateTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.VoiceSeparateTempleteResponseTemplate$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VoiceSeparateTempleteResponseTemplate voiceSeparateTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                voiceSeparateTempleteResponseTemplate.voiceSeparate = (VoiceSeparateTempleteResponseVoiceSeparate) QCloudXml.fromXml(xmlPullParser, VoiceSeparateTempleteResponseVoiceSeparate.class, "VoiceSeparate");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public VoiceSeparateTempleteResponseTemplate fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        VoiceSeparateTempleteResponseTemplate voiceSeparateTempleteResponseTemplate = new VoiceSeparateTempleteResponseTemplate();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<VoiceSeparateTempleteResponseTemplate> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, voiceSeparateTempleteResponseTemplate, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "VoiceSeparateTempleteResponseTemplate" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return voiceSeparateTempleteResponseTemplate;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return voiceSeparateTempleteResponseTemplate;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, VoiceSeparateTempleteResponseTemplate voiceSeparateTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
        if (voiceSeparateTempleteResponseTemplate == null) {
            return;
        }
        if (str == null) {
            str = "VoiceSeparateTempleteResponseTemplate";
        }
        xmlSerializer.startTag("", str);
        if (voiceSeparateTempleteResponseTemplate.templateId != null) {
            xmlSerializer.startTag("", "TemplateId");
            xmlSerializer.text(String.valueOf(voiceSeparateTempleteResponseTemplate.templateId));
            xmlSerializer.endTag("", "TemplateId");
        }
        if (voiceSeparateTempleteResponseTemplate.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(voiceSeparateTempleteResponseTemplate.name));
            xmlSerializer.endTag("", "Name");
        }
        if (voiceSeparateTempleteResponseTemplate.bucketId != null) {
            xmlSerializer.startTag("", "BucketId");
            xmlSerializer.text(String.valueOf(voiceSeparateTempleteResponseTemplate.bucketId));
            xmlSerializer.endTag("", "BucketId");
        }
        if (voiceSeparateTempleteResponseTemplate.category != null) {
            xmlSerializer.startTag("", "Category");
            xmlSerializer.text(String.valueOf(voiceSeparateTempleteResponseTemplate.category));
            xmlSerializer.endTag("", "Category");
        }
        if (voiceSeparateTempleteResponseTemplate.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(voiceSeparateTempleteResponseTemplate.tag));
            xmlSerializer.endTag("", "Tag");
        }
        if (voiceSeparateTempleteResponseTemplate.updateTime != null) {
            xmlSerializer.startTag("", "UpdateTime");
            xmlSerializer.text(String.valueOf(voiceSeparateTempleteResponseTemplate.updateTime));
            xmlSerializer.endTag("", "UpdateTime");
        }
        if (voiceSeparateTempleteResponseTemplate.createTime != null) {
            xmlSerializer.startTag("", "CreateTime");
            xmlSerializer.text(String.valueOf(voiceSeparateTempleteResponseTemplate.createTime));
            xmlSerializer.endTag("", "CreateTime");
        }
        VoiceSeparateTempleteResponseVoiceSeparate voiceSeparateTempleteResponseVoiceSeparate = voiceSeparateTempleteResponseTemplate.voiceSeparate;
        if (voiceSeparateTempleteResponseVoiceSeparate != null) {
            QCloudXml.toXml(xmlSerializer, voiceSeparateTempleteResponseVoiceSeparate, "VoiceSeparate");
        }
        xmlSerializer.endTag("", str);
    }
}
