package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.common.PicProcess;
import com.tencent.cos.xml.model.ci.media.TemplatePicProcessResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.media.TemplatePicProcessResponse$TemplatePicProcessResponseTemplate$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15974x35da3a96 extends IXmlAdapter<TemplatePicProcessResponse.TemplatePicProcessResponseTemplate> {
    private HashMap<String, ChildElementBinder<TemplatePicProcessResponse.TemplatePicProcessResponseTemplate>> childElementBinders;

    public C15974x35da3a96() {
        HashMap<String, ChildElementBinder<TemplatePicProcessResponse.TemplatePicProcessResponseTemplate>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("TemplateId", new ChildElementBinder<TemplatePicProcessResponse.TemplatePicProcessResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.media.TemplatePicProcessResponse$TemplatePicProcessResponseTemplate$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplatePicProcessResponse.TemplatePicProcessResponseTemplate templatePicProcessResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templatePicProcessResponseTemplate.templateId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Name", new ChildElementBinder<TemplatePicProcessResponse.TemplatePicProcessResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.media.TemplatePicProcessResponse$TemplatePicProcessResponseTemplate$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplatePicProcessResponse.TemplatePicProcessResponseTemplate templatePicProcessResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templatePicProcessResponseTemplate.name = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("BucketId", new ChildElementBinder<TemplatePicProcessResponse.TemplatePicProcessResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.media.TemplatePicProcessResponse$TemplatePicProcessResponseTemplate$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplatePicProcessResponse.TemplatePicProcessResponseTemplate templatePicProcessResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templatePicProcessResponseTemplate.bucketId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Category", new ChildElementBinder<TemplatePicProcessResponse.TemplatePicProcessResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.media.TemplatePicProcessResponse$TemplatePicProcessResponseTemplate$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplatePicProcessResponse.TemplatePicProcessResponseTemplate templatePicProcessResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templatePicProcessResponseTemplate.category = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Tag", new ChildElementBinder<TemplatePicProcessResponse.TemplatePicProcessResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.media.TemplatePicProcessResponse$TemplatePicProcessResponseTemplate$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplatePicProcessResponse.TemplatePicProcessResponseTemplate templatePicProcessResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templatePicProcessResponseTemplate.tag = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("UpdateTime", new ChildElementBinder<TemplatePicProcessResponse.TemplatePicProcessResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.media.TemplatePicProcessResponse$TemplatePicProcessResponseTemplate$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplatePicProcessResponse.TemplatePicProcessResponseTemplate templatePicProcessResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templatePicProcessResponseTemplate.updateTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("CreateTime", new ChildElementBinder<TemplatePicProcessResponse.TemplatePicProcessResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.media.TemplatePicProcessResponse$TemplatePicProcessResponseTemplate$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplatePicProcessResponse.TemplatePicProcessResponseTemplate templatePicProcessResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templatePicProcessResponseTemplate.createTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("PicProcess", new ChildElementBinder<TemplatePicProcessResponse.TemplatePicProcessResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.media.TemplatePicProcessResponse$TemplatePicProcessResponseTemplate$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplatePicProcessResponse.TemplatePicProcessResponseTemplate templatePicProcessResponseTemplate, String str) throws IOException, XmlPullParserException {
                templatePicProcessResponseTemplate.picProcess = (PicProcess) QCloudXml.fromXml(xmlPullParser, PicProcess.class, "PicProcess");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public TemplatePicProcessResponse.TemplatePicProcessResponseTemplate fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        TemplatePicProcessResponse.TemplatePicProcessResponseTemplate templatePicProcessResponseTemplate = new TemplatePicProcessResponse.TemplatePicProcessResponseTemplate();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<TemplatePicProcessResponse.TemplatePicProcessResponseTemplate> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, templatePicProcessResponseTemplate, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Template" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return templatePicProcessResponseTemplate;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return templatePicProcessResponseTemplate;
    }
}
