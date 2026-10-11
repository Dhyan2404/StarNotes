package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.TemplateAnimation;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class TemplateAnimation$$XmlAdapter extends IXmlAdapter<TemplateAnimation> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, TemplateAnimation templateAnimation, String str) throws IOException, XmlPullParserException {
        if (templateAnimation == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (templateAnimation.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(templateAnimation.tag));
            xmlSerializer.endTag("", "Tag");
        }
        if (templateAnimation.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(templateAnimation.name));
            xmlSerializer.endTag("", "Name");
        }
        TemplateAnimation.TemplateAnimationContainer templateAnimationContainer = templateAnimation.container;
        if (templateAnimationContainer != null) {
            QCloudXml.toXml(xmlSerializer, templateAnimationContainer, "Container");
        }
        TemplateAnimation.TemplateAnimationVideo templateAnimationVideo = templateAnimation.video;
        if (templateAnimationVideo != null) {
            QCloudXml.toXml(xmlSerializer, templateAnimationVideo, "Video");
        }
        TemplateAnimation.TemplateAnimationTimeInterval templateAnimationTimeInterval = templateAnimation.timeInterval;
        if (templateAnimationTimeInterval != null) {
            QCloudXml.toXml(xmlSerializer, templateAnimationTimeInterval, "TimeInterval");
        }
        xmlSerializer.endTag("", str);
    }
}
