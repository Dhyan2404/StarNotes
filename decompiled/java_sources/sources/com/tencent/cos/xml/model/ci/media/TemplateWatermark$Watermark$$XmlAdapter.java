package com.tencent.cos.xml.model.ci.media;

import com.onyx.android.sdk.genericshape.GeoConstant;
import com.tencent.cos.xml.model.ci.media.TemplateWatermark;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class TemplateWatermark$Watermark$$XmlAdapter extends IXmlAdapter<TemplateWatermark.Watermark> {
    private HashMap<String, ChildElementBinder<TemplateWatermark.Watermark>> childElementBinders;

    public TemplateWatermark$Watermark$$XmlAdapter() {
        HashMap<String, ChildElementBinder<TemplateWatermark.Watermark>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Type", new ChildElementBinder<TemplateWatermark.Watermark>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateWatermark$Watermark$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateWatermark.Watermark watermark, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                watermark.type = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Pos", new ChildElementBinder<TemplateWatermark.Watermark>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateWatermark$Watermark$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateWatermark.Watermark watermark, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                watermark.pos = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("LocMode", new ChildElementBinder<TemplateWatermark.Watermark>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateWatermark$Watermark$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateWatermark.Watermark watermark, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                watermark.locMode = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Dx", new ChildElementBinder<TemplateWatermark.Watermark>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateWatermark$Watermark$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateWatermark.Watermark watermark, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                watermark.f93306dx = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Dy", new ChildElementBinder<TemplateWatermark.Watermark>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateWatermark$Watermark$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateWatermark.Watermark watermark, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                watermark.f93307dy = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("StartTime", new ChildElementBinder<TemplateWatermark.Watermark>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateWatermark$Watermark$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateWatermark.Watermark watermark, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                watermark.startTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("EndTime", new ChildElementBinder<TemplateWatermark.Watermark>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateWatermark$Watermark$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateWatermark.Watermark watermark, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                watermark.endTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("SlideConfig", new ChildElementBinder<TemplateWatermark.Watermark>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateWatermark$Watermark$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateWatermark.Watermark watermark, String str) throws IOException, XmlPullParserException {
                watermark.slideConfig = (TemplateWatermark.TemplateWatermarkSlideConfig) QCloudXml.fromXml(xmlPullParser, TemplateWatermark.TemplateWatermarkSlideConfig.class, "SlideConfig");
            }
        });
        this.childElementBinders.put(GeoConstant.Image, new ChildElementBinder<TemplateWatermark.Watermark>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateWatermark$Watermark$$XmlAdapter.9
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateWatermark.Watermark watermark, String str) throws IOException, XmlPullParserException {
                watermark.image = (TemplateWatermark.TemplateWatermarkImage) QCloudXml.fromXml(xmlPullParser, TemplateWatermark.TemplateWatermarkImage.class, GeoConstant.Image);
            }
        });
        this.childElementBinders.put("Text", new ChildElementBinder<TemplateWatermark.Watermark>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateWatermark$Watermark$$XmlAdapter.10
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateWatermark.Watermark watermark, String str) throws IOException, XmlPullParserException {
                watermark.text = (TemplateWatermark.TemplateWatermarkText) QCloudXml.fromXml(xmlPullParser, TemplateWatermark.TemplateWatermarkText.class, "Text");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public TemplateWatermark.Watermark fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        TemplateWatermark.Watermark watermark = new TemplateWatermark.Watermark();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<TemplateWatermark.Watermark> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, watermark, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Watermark" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return watermark;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return watermark;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, TemplateWatermark.Watermark watermark, String str) throws IOException, XmlPullParserException {
        if (watermark == null) {
            return;
        }
        if (str == null) {
            str = "Watermark";
        }
        xmlSerializer.startTag("", str);
        if (watermark.type != null) {
            xmlSerializer.startTag("", "Type");
            xmlSerializer.text(String.valueOf(watermark.type));
            xmlSerializer.endTag("", "Type");
        }
        if (watermark.pos != null) {
            xmlSerializer.startTag("", "Pos");
            xmlSerializer.text(String.valueOf(watermark.pos));
            xmlSerializer.endTag("", "Pos");
        }
        if (watermark.locMode != null) {
            xmlSerializer.startTag("", "LocMode");
            xmlSerializer.text(String.valueOf(watermark.locMode));
            xmlSerializer.endTag("", "LocMode");
        }
        if (watermark.f93306dx != null) {
            xmlSerializer.startTag("", "Dx");
            xmlSerializer.text(String.valueOf(watermark.f93306dx));
            xmlSerializer.endTag("", "Dx");
        }
        if (watermark.f93307dy != null) {
            xmlSerializer.startTag("", "Dy");
            xmlSerializer.text(String.valueOf(watermark.f93307dy));
            xmlSerializer.endTag("", "Dy");
        }
        if (watermark.startTime != null) {
            xmlSerializer.startTag("", "StartTime");
            xmlSerializer.text(String.valueOf(watermark.startTime));
            xmlSerializer.endTag("", "StartTime");
        }
        if (watermark.endTime != null) {
            xmlSerializer.startTag("", "EndTime");
            xmlSerializer.text(String.valueOf(watermark.endTime));
            xmlSerializer.endTag("", "EndTime");
        }
        TemplateWatermark.TemplateWatermarkSlideConfig templateWatermarkSlideConfig = watermark.slideConfig;
        if (templateWatermarkSlideConfig != null) {
            QCloudXml.toXml(xmlSerializer, templateWatermarkSlideConfig, "SlideConfig");
        }
        TemplateWatermark.TemplateWatermarkImage templateWatermarkImage = watermark.image;
        if (templateWatermarkImage != null) {
            QCloudXml.toXml(xmlSerializer, templateWatermarkImage, GeoConstant.Image);
        }
        TemplateWatermark.TemplateWatermarkText templateWatermarkText = watermark.text;
        if (templateWatermarkText != null) {
            QCloudXml.toXml(xmlSerializer, templateWatermarkText, "Text");
        }
        xmlSerializer.endTag("", str);
    }
}
