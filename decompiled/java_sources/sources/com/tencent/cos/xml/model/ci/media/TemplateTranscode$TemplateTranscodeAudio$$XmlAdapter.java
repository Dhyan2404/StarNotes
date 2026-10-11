package com.tencent.cos.xml.model.ci.media;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.cos.xml.model.ci.media.TemplateTranscode;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class TemplateTranscode$TemplateTranscodeAudio$$XmlAdapter extends IXmlAdapter<TemplateTranscode.TemplateTranscodeAudio> {
    private HashMap<String, ChildElementBinder<TemplateTranscode.TemplateTranscodeAudio>> childElementBinders;

    public TemplateTranscode$TemplateTranscodeAudio$$XmlAdapter() {
        HashMap<String, ChildElementBinder<TemplateTranscode.TemplateTranscodeAudio>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Codec", new ChildElementBinder<TemplateTranscode.TemplateTranscodeAudio>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateTranscode$TemplateTranscodeAudio$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateTranscode.TemplateTranscodeAudio templateTranscodeAudio, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateTranscodeAudio.codec = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Samplerate", new ChildElementBinder<TemplateTranscode.TemplateTranscodeAudio>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateTranscode$TemplateTranscodeAudio$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateTranscode.TemplateTranscodeAudio templateTranscodeAudio, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateTranscodeAudio.samplerate = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(SsManifestParser.C4932c.f26642h, new ChildElementBinder<TemplateTranscode.TemplateTranscodeAudio>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateTranscode$TemplateTranscodeAudio$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateTranscode.TemplateTranscodeAudio templateTranscodeAudio, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateTranscodeAudio.bitrate = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(SsManifestParser.C4932c.f26645k, new ChildElementBinder<TemplateTranscode.TemplateTranscodeAudio>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateTranscode$TemplateTranscodeAudio$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateTranscode.TemplateTranscodeAudio templateTranscodeAudio, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateTranscodeAudio.channels = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Remove", new ChildElementBinder<TemplateTranscode.TemplateTranscodeAudio>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateTranscode$TemplateTranscodeAudio$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateTranscode.TemplateTranscodeAudio templateTranscodeAudio, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateTranscodeAudio.remove = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("KeepTwoTracks", new ChildElementBinder<TemplateTranscode.TemplateTranscodeAudio>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateTranscode$TemplateTranscodeAudio$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateTranscode.TemplateTranscodeAudio templateTranscodeAudio, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateTranscodeAudio.keepTwoTracks = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("SwitchTrack", new ChildElementBinder<TemplateTranscode.TemplateTranscodeAudio>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateTranscode$TemplateTranscodeAudio$$XmlAdapter.7
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateTranscode.TemplateTranscodeAudio templateTranscodeAudio, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateTranscodeAudio.switchTrack = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("SampleFormat", new ChildElementBinder<TemplateTranscode.TemplateTranscodeAudio>() { // from class: com.tencent.cos.xml.model.ci.media.TemplateTranscode$TemplateTranscodeAudio$$XmlAdapter.8
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, TemplateTranscode.TemplateTranscodeAudio templateTranscodeAudio, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                templateTranscodeAudio.sampleFormat = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public TemplateTranscode.TemplateTranscodeAudio fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        TemplateTranscode.TemplateTranscodeAudio templateTranscodeAudio = new TemplateTranscode.TemplateTranscodeAudio();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<TemplateTranscode.TemplateTranscodeAudio> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, templateTranscodeAudio, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "Audio" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return templateTranscodeAudio;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return templateTranscodeAudio;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, TemplateTranscode.TemplateTranscodeAudio templateTranscodeAudio, String str) throws IOException, XmlPullParserException {
        if (templateTranscodeAudio == null) {
            return;
        }
        if (str == null) {
            str = "Audio";
        }
        xmlSerializer.startTag("", str);
        if (templateTranscodeAudio.codec != null) {
            xmlSerializer.startTag("", "Codec");
            xmlSerializer.text(String.valueOf(templateTranscodeAudio.codec));
            xmlSerializer.endTag("", "Codec");
        }
        if (templateTranscodeAudio.samplerate != null) {
            xmlSerializer.startTag("", "Samplerate");
            xmlSerializer.text(String.valueOf(templateTranscodeAudio.samplerate));
            xmlSerializer.endTag("", "Samplerate");
        }
        if (templateTranscodeAudio.bitrate != null) {
            xmlSerializer.startTag("", SsManifestParser.C4932c.f26642h);
            xmlSerializer.text(String.valueOf(templateTranscodeAudio.bitrate));
            xmlSerializer.endTag("", SsManifestParser.C4932c.f26642h);
        }
        if (templateTranscodeAudio.channels != null) {
            xmlSerializer.startTag("", SsManifestParser.C4932c.f26645k);
            xmlSerializer.text(String.valueOf(templateTranscodeAudio.channels));
            xmlSerializer.endTag("", SsManifestParser.C4932c.f26645k);
        }
        if (templateTranscodeAudio.remove != null) {
            xmlSerializer.startTag("", "Remove");
            xmlSerializer.text(String.valueOf(templateTranscodeAudio.remove));
            xmlSerializer.endTag("", "Remove");
        }
        if (templateTranscodeAudio.keepTwoTracks != null) {
            xmlSerializer.startTag("", "KeepTwoTracks");
            xmlSerializer.text(String.valueOf(templateTranscodeAudio.keepTwoTracks));
            xmlSerializer.endTag("", "KeepTwoTracks");
        }
        if (templateTranscodeAudio.switchTrack != null) {
            xmlSerializer.startTag("", "SwitchTrack");
            xmlSerializer.text(String.valueOf(templateTranscodeAudio.switchTrack));
            xmlSerializer.endTag("", "SwitchTrack");
        }
        if (templateTranscodeAudio.sampleFormat != null) {
            xmlSerializer.startTag("", "SampleFormat");
            xmlSerializer.text(String.valueOf(templateTranscodeAudio.sampleFormat));
            xmlSerializer.endTag("", "SampleFormat");
        }
        xmlSerializer.endTag("", str);
    }
}
