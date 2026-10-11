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
public class VideoTargetTempleteResponseTemplate$$XmlAdapter extends IXmlAdapter<VideoTargetTempleteResponseTemplate> {
    private HashMap<String, ChildElementBinder<VideoTargetTempleteResponseTemplate>> childElementBinders;

    public VideoTargetTempleteResponseTemplate$$XmlAdapter() {
        HashMap<String, ChildElementBinder<VideoTargetTempleteResponseTemplate>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("TemplateId", new ChildElementBinder<VideoTargetTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.VideoTargetTempleteResponseTemplate$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VideoTargetTempleteResponseTemplate videoTargetTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoTargetTempleteResponseTemplate.templateId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Name", new ChildElementBinder<VideoTargetTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.VideoTargetTempleteResponseTemplate$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VideoTargetTempleteResponseTemplate videoTargetTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoTargetTempleteResponseTemplate.name = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("BucketId", new ChildElementBinder<VideoTargetTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.VideoTargetTempleteResponseTemplate$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VideoTargetTempleteResponseTemplate videoTargetTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoTargetTempleteResponseTemplate.bucketId = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Category", new ChildElementBinder<VideoTargetTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.VideoTargetTempleteResponseTemplate$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VideoTargetTempleteResponseTemplate videoTargetTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoTargetTempleteResponseTemplate.category = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Tag", new ChildElementBinder<VideoTargetTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.VideoTargetTempleteResponseTemplate$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VideoTargetTempleteResponseTemplate videoTargetTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoTargetTempleteResponseTemplate.tag = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("UpdateTime", new ChildElementBinder<VideoTargetTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.VideoTargetTempleteResponseTemplate$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VideoTargetTempleteResponseTemplate videoTargetTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoTargetTempleteResponseTemplate.updateTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("CreateTime", new ChildElementBinder<VideoTargetTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.VideoTargetTempleteResponseTemplate$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VideoTargetTempleteResponseTemplate videoTargetTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                videoTargetTempleteResponseTemplate.createTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("VideoTargetRec", new ChildElementBinder<VideoTargetTempleteResponseTemplate>() { // from class: com.tencent.cos.xml.model.ci.common.VideoTargetTempleteResponseTemplate$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VideoTargetTempleteResponseTemplate videoTargetTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
                videoTargetTempleteResponseTemplate.videoTargetRec = (VideoTargetRec) QCloudXml.fromXml(xmlPullParser, VideoTargetRec.class, "VideoTargetRec");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public VideoTargetTempleteResponseTemplate fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        VideoTargetTempleteResponseTemplate videoTargetTempleteResponseTemplate = new VideoTargetTempleteResponseTemplate();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<VideoTargetTempleteResponseTemplate> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, videoTargetTempleteResponseTemplate, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "VideoTargetTempleteResponseTemplate" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return videoTargetTempleteResponseTemplate;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return videoTargetTempleteResponseTemplate;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, VideoTargetTempleteResponseTemplate videoTargetTempleteResponseTemplate, String str) throws IOException, XmlPullParserException {
        if (videoTargetTempleteResponseTemplate == null) {
            return;
        }
        if (str == null) {
            str = "VideoTargetTempleteResponseTemplate";
        }
        xmlSerializer.startTag("", str);
        if (videoTargetTempleteResponseTemplate.templateId != null) {
            xmlSerializer.startTag("", "TemplateId");
            xmlSerializer.text(String.valueOf(videoTargetTempleteResponseTemplate.templateId));
            xmlSerializer.endTag("", "TemplateId");
        }
        if (videoTargetTempleteResponseTemplate.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(videoTargetTempleteResponseTemplate.name));
            xmlSerializer.endTag("", "Name");
        }
        if (videoTargetTempleteResponseTemplate.bucketId != null) {
            xmlSerializer.startTag("", "BucketId");
            xmlSerializer.text(String.valueOf(videoTargetTempleteResponseTemplate.bucketId));
            xmlSerializer.endTag("", "BucketId");
        }
        if (videoTargetTempleteResponseTemplate.category != null) {
            xmlSerializer.startTag("", "Category");
            xmlSerializer.text(String.valueOf(videoTargetTempleteResponseTemplate.category));
            xmlSerializer.endTag("", "Category");
        }
        if (videoTargetTempleteResponseTemplate.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(videoTargetTempleteResponseTemplate.tag));
            xmlSerializer.endTag("", "Tag");
        }
        if (videoTargetTempleteResponseTemplate.updateTime != null) {
            xmlSerializer.startTag("", "UpdateTime");
            xmlSerializer.text(String.valueOf(videoTargetTempleteResponseTemplate.updateTime));
            xmlSerializer.endTag("", "UpdateTime");
        }
        if (videoTargetTempleteResponseTemplate.createTime != null) {
            xmlSerializer.startTag("", "CreateTime");
            xmlSerializer.text(String.valueOf(videoTargetTempleteResponseTemplate.createTime));
            xmlSerializer.endTag("", "CreateTime");
        }
        VideoTargetRec videoTargetRec = videoTargetTempleteResponseTemplate.videoTargetRec;
        if (videoTargetRec != null) {
            QCloudXml.toXml(xmlSerializer, videoTargetRec, "VideoTargetRec");
        }
        xmlSerializer.endTag("", str);
    }
}
