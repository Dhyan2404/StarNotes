package com.tencent.cos.xml.model.ci.media;

import com.google.android.exoplayer2.source.dash.manifest.UrlTemplate;
import com.tencent.cos.xml.model.ci.media.TemplateConcat;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class TemplateConcat$TemplateConcatSceneChangeInfo$$XmlAdapter extends IXmlAdapter<TemplateConcat.TemplateConcatSceneChangeInfo> {
    private HashMap<String, ChildElementBinder<TemplateConcat.TemplateConcatSceneChangeInfo>> childElementBinders;

    public TemplateConcat$TemplateConcatSceneChangeInfo$$XmlAdapter() {
        HashMap<String, ChildElementBinder<TemplateConcat.TemplateConcatSceneChangeInfo>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Mode", new ChildElementBinder<TemplateConcat.TemplateConcatSceneChangeInfo>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateConcat$TemplateConcatSceneChangeInfo$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateConcat.TemplateConcatSceneChangeInfo templateConcatSceneChangeInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateConcatSceneChangeInfo.mode = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(UrlTemplate.f25863h, new ChildElementBinder<TemplateConcat.TemplateConcatSceneChangeInfo>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateConcat$TemplateConcatSceneChangeInfo$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateConcat.TemplateConcatSceneChangeInfo templateConcatSceneChangeInfo, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateConcatSceneChangeInfo.time = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public TemplateConcat.TemplateConcatSceneChangeInfo fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        TemplateConcat.TemplateConcatSceneChangeInfo templateConcatSceneChangeInfo = new TemplateConcat.TemplateConcatSceneChangeInfo();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<TemplateConcat.TemplateConcatSceneChangeInfo> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, templateConcatSceneChangeInfo, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "SceneChangeInfo" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return templateConcatSceneChangeInfo;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return templateConcatSceneChangeInfo;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, TemplateConcat.TemplateConcatSceneChangeInfo templateConcatSceneChangeInfo, String str) throws IOException, XmlPullParserException {
        if (templateConcatSceneChangeInfo == null) {
            return;
        }
        if (str == null) {
            str = "SceneChangeInfo";
        }
        xmlSerializer.startTag("", str);
        if (templateConcatSceneChangeInfo.mode != null) {
            xmlSerializer.startTag("", "Mode");
            xmlSerializer.text(String.valueOf(templateConcatSceneChangeInfo.mode));
            xmlSerializer.endTag("", "Mode");
        }
        if (templateConcatSceneChangeInfo.time != null) {
            xmlSerializer.startTag("", UrlTemplate.f25863h);
            xmlSerializer.text(String.valueOf(templateConcatSceneChangeInfo.time));
            xmlSerializer.endTag("", UrlTemplate.f25863h);
        }
        xmlSerializer.endTag("", str);
    }
}
