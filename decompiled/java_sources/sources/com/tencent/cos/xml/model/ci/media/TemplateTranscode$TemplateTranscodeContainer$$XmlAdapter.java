package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.TemplateTranscode;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class TemplateTranscode$TemplateTranscodeContainer$$XmlAdapter extends IXmlAdapter<TemplateTranscode.TemplateTranscodeContainer> {
    private HashMap<String, ChildElementBinder<TemplateTranscode.TemplateTranscodeContainer>> childElementBinders;

    public TemplateTranscode$TemplateTranscodeContainer$$XmlAdapter() {
        HashMap<String, ChildElementBinder<TemplateTranscode.TemplateTranscodeContainer>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Format", new ChildElementBinder<TemplateTranscode.TemplateTranscodeContainer>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateTranscode$TemplateTranscodeContainer$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateTranscode.TemplateTranscodeContainer templateTranscodeContainer, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateTranscodeContainer.format = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("ClipConfig", new ChildElementBinder<TemplateTranscode.TemplateTranscodeContainer>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateTranscode$TemplateTranscodeContainer$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateTranscode.TemplateTranscodeContainer templateTranscodeContainer, String str) throws IOException, XmlPullParserException {
                templateTranscodeContainer.clipConfig = (TemplateTranscode.TemplateTranscodeClipConfig) QCloudXml.fromXml(xmlPullParser, TemplateTranscode.TemplateTranscodeClipConfig.class, "ClipConfig");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public TemplateTranscode.TemplateTranscodeContainer fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        TemplateTranscode.TemplateTranscodeContainer templateTranscodeContainer = new TemplateTranscode.TemplateTranscodeContainer();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<TemplateTranscode.TemplateTranscodeContainer> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, templateTranscodeContainer, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Container" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return templateTranscodeContainer;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return templateTranscodeContainer;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, TemplateTranscode.TemplateTranscodeContainer templateTranscodeContainer, String str) throws IOException, XmlPullParserException {
        if (templateTranscodeContainer == null) {
            return;
        }
        if (str == null) {
            str = "Container";
        }
        xmlSerializer.startTag("", str);
        if (templateTranscodeContainer.format != null) {
            xmlSerializer.startTag("", "Format");
            xmlSerializer.text(String.valueOf(templateTranscodeContainer.format));
            xmlSerializer.endTag("", "Format");
        }
        TemplateTranscode.TemplateTranscodeClipConfig templateTranscodeClipConfig = templateTranscodeContainer.clipConfig;
        if (templateTranscodeClipConfig != null) {
            QCloudXml.toXml(xmlSerializer, templateTranscodeClipConfig, "ClipConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
