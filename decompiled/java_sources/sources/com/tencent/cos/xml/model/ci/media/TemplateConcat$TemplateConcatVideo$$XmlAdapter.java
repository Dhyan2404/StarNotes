package com.tencent.cos.xml.model.ci.media;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.google.common.net.HttpHeaders;
import com.tencent.cos.xml.model.ci.media.TemplateConcat;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class TemplateConcat$TemplateConcatVideo$$XmlAdapter extends IXmlAdapter<TemplateConcat.TemplateConcatVideo> {
    private HashMap<String, ChildElementBinder<TemplateConcat.TemplateConcatVideo>> childElementBinders;

    public TemplateConcat$TemplateConcatVideo$$XmlAdapter() {
        HashMap<String, ChildElementBinder<TemplateConcat.TemplateConcatVideo>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Codec", new ChildElementBinder<TemplateConcat.TemplateConcatVideo>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateConcat$TemplateConcatVideo$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateConcat.TemplateConcatVideo templateConcatVideo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateConcatVideo.codec = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(HttpHeaders.WIDTH, new ChildElementBinder<TemplateConcat.TemplateConcatVideo>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateConcat$TemplateConcatVideo$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateConcat.TemplateConcatVideo templateConcatVideo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateConcatVideo.width = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Height", new ChildElementBinder<TemplateConcat.TemplateConcatVideo>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateConcat$TemplateConcatVideo$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateConcat.TemplateConcatVideo templateConcatVideo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateConcatVideo.height = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Fps", new ChildElementBinder<TemplateConcat.TemplateConcatVideo>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateConcat$TemplateConcatVideo$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateConcat.TemplateConcatVideo templateConcatVideo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateConcatVideo.fps = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(SsManifestParser.C4932c.f26642h, new ChildElementBinder<TemplateConcat.TemplateConcatVideo>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateConcat$TemplateConcatVideo$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateConcat.TemplateConcatVideo templateConcatVideo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateConcatVideo.bitrate = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Crf", new ChildElementBinder<TemplateConcat.TemplateConcatVideo>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateConcat$TemplateConcatVideo$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateConcat.TemplateConcatVideo templateConcatVideo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateConcatVideo.crf = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Remove", new ChildElementBinder<TemplateConcat.TemplateConcatVideo>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateConcat$TemplateConcatVideo$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateConcat.TemplateConcatVideo templateConcatVideo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateConcatVideo.remove = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Rotate", new ChildElementBinder<TemplateConcat.TemplateConcatVideo>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateConcat$TemplateConcatVideo$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateConcat.TemplateConcatVideo templateConcatVideo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateConcatVideo.rotate = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public TemplateConcat.TemplateConcatVideo fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        TemplateConcat.TemplateConcatVideo templateConcatVideo = new TemplateConcat.TemplateConcatVideo();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<TemplateConcat.TemplateConcatVideo> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, templateConcatVideo, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Video" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return templateConcatVideo;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return templateConcatVideo;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, TemplateConcat.TemplateConcatVideo templateConcatVideo, String str) throws IOException, XmlPullParserException {
        if (templateConcatVideo == null) {
            return;
        }
        if (str == null) {
            str = "Video";
        }
        xmlSerializer.startTag("", str);
        if (templateConcatVideo.codec != null) {
            xmlSerializer.startTag("", "Codec");
            xmlSerializer.text(String.valueOf(templateConcatVideo.codec));
            xmlSerializer.endTag("", "Codec");
        }
        if (templateConcatVideo.width != null) {
            xmlSerializer.startTag("", HttpHeaders.WIDTH);
            xmlSerializer.text(String.valueOf(templateConcatVideo.width));
            xmlSerializer.endTag("", HttpHeaders.WIDTH);
        }
        if (templateConcatVideo.height != null) {
            xmlSerializer.startTag("", "Height");
            xmlSerializer.text(String.valueOf(templateConcatVideo.height));
            xmlSerializer.endTag("", "Height");
        }
        if (templateConcatVideo.fps != null) {
            xmlSerializer.startTag("", "Fps");
            xmlSerializer.text(String.valueOf(templateConcatVideo.fps));
            xmlSerializer.endTag("", "Fps");
        }
        if (templateConcatVideo.bitrate != null) {
            xmlSerializer.startTag("", SsManifestParser.C4932c.f26642h);
            xmlSerializer.text(String.valueOf(templateConcatVideo.bitrate));
            xmlSerializer.endTag("", SsManifestParser.C4932c.f26642h);
        }
        if (templateConcatVideo.crf != null) {
            xmlSerializer.startTag("", "Crf");
            xmlSerializer.text(String.valueOf(templateConcatVideo.crf));
            xmlSerializer.endTag("", "Crf");
        }
        if (templateConcatVideo.remove != null) {
            xmlSerializer.startTag("", "Remove");
            xmlSerializer.text(String.valueOf(templateConcatVideo.remove));
            xmlSerializer.endTag("", "Remove");
        }
        if (templateConcatVideo.rotate != null) {
            xmlSerializer.startTag("", "Rotate");
            xmlSerializer.text(String.valueOf(templateConcatVideo.rotate));
            xmlSerializer.endTag("", "Rotate");
        }
        xmlSerializer.endTag("", str);
    }
}
