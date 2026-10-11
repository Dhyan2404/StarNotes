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
public class TemplateConcat$TemplateConcatAudio$$XmlAdapter extends IXmlAdapter<TemplateConcat.TemplateConcatAudio> {
    private HashMap<String, ChildElementBinder<TemplateConcat.TemplateConcatAudio>> childElementBinders;

    public TemplateConcat$TemplateConcatAudio$$XmlAdapter() {
        HashMap<String, ChildElementBinder<TemplateConcat.TemplateConcatAudio>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Codec", new ChildElementBinder<TemplateConcat.TemplateConcatAudio>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateConcat$TemplateConcatAudio$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateConcat.TemplateConcatAudio templateConcatAudio, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateConcatAudio.codec = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Samplerate", new ChildElementBinder<TemplateConcat.TemplateConcatAudio>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateConcat$TemplateConcatAudio$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateConcat.TemplateConcatAudio templateConcatAudio, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateConcatAudio.samplerate = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(SsManifestParser.C4932c.f26642h, new ChildElementBinder<TemplateConcat.TemplateConcatAudio>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateConcat$TemplateConcatAudio$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateConcat.TemplateConcatAudio templateConcatAudio, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateConcatAudio.bitrate = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(SsManifestParser.C4932c.f26645k, new ChildElementBinder<TemplateConcat.TemplateConcatAudio>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateConcat$TemplateConcatAudio$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateConcat.TemplateConcatAudio templateConcatAudio, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateConcatAudio.channels = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public TemplateConcat.TemplateConcatAudio fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        TemplateConcat.TemplateConcatAudio templateConcatAudio = new TemplateConcat.TemplateConcatAudio();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<TemplateConcat.TemplateConcatAudio> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, templateConcatAudio, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Audio" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return templateConcatAudio;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return templateConcatAudio;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, TemplateConcat.TemplateConcatAudio templateConcatAudio, String str) throws IOException, XmlPullParserException {
        if (templateConcatAudio == null) {
            return;
        }
        if (str == null) {
            str = "Audio";
        }
        xmlSerializer.startTag("", str);
        if (templateConcatAudio.codec != null) {
            xmlSerializer.startTag("", "Codec");
            xmlSerializer.text(String.valueOf(templateConcatAudio.codec));
            xmlSerializer.endTag("", "Codec");
        }
        if (templateConcatAudio.samplerate != null) {
            xmlSerializer.startTag("", "Samplerate");
            xmlSerializer.text(String.valueOf(templateConcatAudio.samplerate));
            xmlSerializer.endTag("", "Samplerate");
        }
        if (templateConcatAudio.bitrate != null) {
            xmlSerializer.startTag("", SsManifestParser.C4932c.f26642h);
            xmlSerializer.text(String.valueOf(templateConcatAudio.bitrate));
            xmlSerializer.endTag("", SsManifestParser.C4932c.f26642h);
        }
        if (templateConcatAudio.channels != null) {
            xmlSerializer.startTag("", SsManifestParser.C4932c.f26645k);
            xmlSerializer.text(String.valueOf(templateConcatAudio.channels));
            xmlSerializer.endTag("", SsManifestParser.C4932c.f26645k);
        }
        xmlSerializer.endTag("", str);
    }
}
