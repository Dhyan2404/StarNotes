package com.tencent.cos.xml.model.ci.media;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.cos.xml.model.ci.media.TemplateConcat;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class TemplateConcat$TemplateConcatConcatFragment$$XmlAdapter extends IXmlAdapter<TemplateConcat.TemplateConcatConcatFragment> {
    private HashMap<String, ChildElementBinder<TemplateConcat.TemplateConcatConcatFragment>> childElementBinders;

    public TemplateConcat$TemplateConcatConcatFragment$$XmlAdapter() {
        HashMap<String, ChildElementBinder<TemplateConcat.TemplateConcatConcatFragment>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put(SsManifestParser.C4934e.f26671A, new ChildElementBinder<TemplateConcat.TemplateConcatConcatFragment>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateConcat$TemplateConcatConcatFragment$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateConcat.TemplateConcatConcatFragment templateConcatConcatFragment, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateConcatConcatFragment.url = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Mode", new ChildElementBinder<TemplateConcat.TemplateConcatConcatFragment>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateConcat$TemplateConcatConcatFragment$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateConcat.TemplateConcatConcatFragment templateConcatConcatFragment, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateConcatConcatFragment.mode = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("StartTime", new ChildElementBinder<TemplateConcat.TemplateConcatConcatFragment>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateConcat$TemplateConcatConcatFragment$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateConcat.TemplateConcatConcatFragment templateConcatConcatFragment, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateConcatConcatFragment.startTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("EndTime", new ChildElementBinder<TemplateConcat.TemplateConcatConcatFragment>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateConcat$TemplateConcatConcatFragment$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateConcat.TemplateConcatConcatFragment templateConcatConcatFragment, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateConcatConcatFragment.endTime = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public TemplateConcat.TemplateConcatConcatFragment fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        TemplateConcat.TemplateConcatConcatFragment templateConcatConcatFragment = new TemplateConcat.TemplateConcatConcatFragment();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<TemplateConcat.TemplateConcatConcatFragment> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, templateConcatConcatFragment, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "ConcatFragment" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return templateConcatConcatFragment;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return templateConcatConcatFragment;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, TemplateConcat.TemplateConcatConcatFragment templateConcatConcatFragment, String str) throws IOException, XmlPullParserException {
        if (templateConcatConcatFragment == null) {
            return;
        }
        if (str == null) {
            str = "ConcatFragment";
        }
        xmlSerializer.startTag("", str);
        if (templateConcatConcatFragment.url != null) {
            xmlSerializer.startTag("", SsManifestParser.C4934e.f26671A);
            xmlSerializer.text(String.valueOf(templateConcatConcatFragment.url));
            xmlSerializer.endTag("", SsManifestParser.C4934e.f26671A);
        }
        if (templateConcatConcatFragment.mode != null) {
            xmlSerializer.startTag("", "Mode");
            xmlSerializer.text(String.valueOf(templateConcatConcatFragment.mode));
            xmlSerializer.endTag("", "Mode");
        }
        if (templateConcatConcatFragment.startTime != null) {
            xmlSerializer.startTag("", "StartTime");
            xmlSerializer.text(String.valueOf(templateConcatConcatFragment.startTime));
            xmlSerializer.endTag("", "StartTime");
        }
        if (templateConcatConcatFragment.endTime != null) {
            xmlSerializer.startTag("", "EndTime");
            xmlSerializer.text(String.valueOf(templateConcatConcatFragment.endTime));
            xmlSerializer.endTag("", "EndTime");
        }
        xmlSerializer.endTag("", str);
    }
}
