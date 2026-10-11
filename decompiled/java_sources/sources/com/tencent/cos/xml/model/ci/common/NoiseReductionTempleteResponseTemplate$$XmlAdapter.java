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
public class NoiseReductionTempleteResponseTemplate$$XmlAdapter extends IXmlAdapter<NoiseReductionTempleteResponseTemplate> {
    private HashMap<String, ChildElementBinder<NoiseReductionTempleteResponseTemplate>> childElementBinders;

    public NoiseReductionTempleteResponseTemplate$$XmlAdapter() {
        HashMap<String, ChildElementBinder<NoiseReductionTempleteResponseTemplate>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("TemplateId", new ChildElementBinder<NoiseReductionTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.NoiseReductionTempleteResponseTemplate$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, NoiseReductionTempleteResponseTemplate noiseReductionTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                noiseReductionTempleteResponseTemplate.templateId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Name", new ChildElementBinder<NoiseReductionTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.NoiseReductionTempleteResponseTemplate$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, NoiseReductionTempleteResponseTemplate noiseReductionTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                noiseReductionTempleteResponseTemplate.name = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("BucketId", new ChildElementBinder<NoiseReductionTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.NoiseReductionTempleteResponseTemplate$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, NoiseReductionTempleteResponseTemplate noiseReductionTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                noiseReductionTempleteResponseTemplate.bucketId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Category", new ChildElementBinder<NoiseReductionTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.NoiseReductionTempleteResponseTemplate$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, NoiseReductionTempleteResponseTemplate noiseReductionTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                noiseReductionTempleteResponseTemplate.category = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Tag", new ChildElementBinder<NoiseReductionTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.NoiseReductionTempleteResponseTemplate$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, NoiseReductionTempleteResponseTemplate noiseReductionTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                noiseReductionTempleteResponseTemplate.tag = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("UpdateTime", new ChildElementBinder<NoiseReductionTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.NoiseReductionTempleteResponseTemplate$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, NoiseReductionTempleteResponseTemplate noiseReductionTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                noiseReductionTempleteResponseTemplate.updateTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("CreateTime", new ChildElementBinder<NoiseReductionTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.NoiseReductionTempleteResponseTemplate$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, NoiseReductionTempleteResponseTemplate noiseReductionTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                noiseReductionTempleteResponseTemplate.createTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("NoiseReduction", new ChildElementBinder<NoiseReductionTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.NoiseReductionTempleteResponseTemplate$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, NoiseReductionTempleteResponseTemplate noiseReductionTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                noiseReductionTempleteResponseTemplate.noiseReduction = (NoiseReduction) QCloudXml.fromXml(xmlPullParser, NoiseReduction.class, "NoiseReduction");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public NoiseReductionTempleteResponseTemplate fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        NoiseReductionTempleteResponseTemplate noiseReductionTempleteResponseTemplate = new NoiseReductionTempleteResponseTemplate();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<NoiseReductionTempleteResponseTemplate> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, noiseReductionTempleteResponseTemplate, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "NoiseReductionTempleteResponseTemplate" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return noiseReductionTempleteResponseTemplate;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return noiseReductionTempleteResponseTemplate;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, NoiseReductionTempleteResponseTemplate noiseReductionTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
        if (noiseReductionTempleteResponseTemplate == null) {
            return;
        }
        if (str == null) {
            str = "NoiseReductionTempleteResponseTemplate";
        }
        xmlSerializer.startTag("", str);
        if (noiseReductionTempleteResponseTemplate.templateId != null) {
            xmlSerializer.startTag("", "TemplateId");
            xmlSerializer.text(String.valueOf(noiseReductionTempleteResponseTemplate.templateId));
            xmlSerializer.endTag("", "TemplateId");
        }
        if (noiseReductionTempleteResponseTemplate.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(noiseReductionTempleteResponseTemplate.name));
            xmlSerializer.endTag("", "Name");
        }
        if (noiseReductionTempleteResponseTemplate.bucketId != null) {
            xmlSerializer.startTag("", "BucketId");
            xmlSerializer.text(String.valueOf(noiseReductionTempleteResponseTemplate.bucketId));
            xmlSerializer.endTag("", "BucketId");
        }
        if (noiseReductionTempleteResponseTemplate.category != null) {
            xmlSerializer.startTag("", "Category");
            xmlSerializer.text(String.valueOf(noiseReductionTempleteResponseTemplate.category));
            xmlSerializer.endTag("", "Category");
        }
        if (noiseReductionTempleteResponseTemplate.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(noiseReductionTempleteResponseTemplate.tag));
            xmlSerializer.endTag("", "Tag");
        }
        if (noiseReductionTempleteResponseTemplate.updateTime != null) {
            xmlSerializer.startTag("", "UpdateTime");
            xmlSerializer.text(String.valueOf(noiseReductionTempleteResponseTemplate.updateTime));
            xmlSerializer.endTag("", "UpdateTime");
        }
        if (noiseReductionTempleteResponseTemplate.createTime != null) {
            xmlSerializer.startTag("", "CreateTime");
            xmlSerializer.text(String.valueOf(noiseReductionTempleteResponseTemplate.createTime));
            xmlSerializer.endTag("", "CreateTime");
        }
        NoiseReduction noiseReduction = noiseReductionTempleteResponseTemplate.noiseReduction;
        if (noiseReduction != null) {
            QCloudXml.toXml(xmlSerializer, noiseReduction, "NoiseReduction");
        }
        xmlSerializer.endTag("", str);
    }
}
