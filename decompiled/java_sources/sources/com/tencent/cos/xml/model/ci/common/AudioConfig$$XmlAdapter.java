package com.tencent.cos.xml.model.ci.common;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class AudioConfig$$XmlAdapter extends IXmlAdapter<AudioConfig> {
    private HashMap<String, ChildElementBinder<AudioConfig>> childElementBinders;

    public AudioConfig$$XmlAdapter() {
        HashMap<String, ChildElementBinder<AudioConfig>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Codec", new ChildElementBinder<AudioConfig>() { // from class: com.tencent.cos.xml.model.ci.common.AudioConfig$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AudioConfig audioConfig, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                audioConfig.codec = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Samplerate", new ChildElementBinder<AudioConfig>() { // from class: com.tencent.cos.xml.model.ci.common.AudioConfig$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AudioConfig audioConfig, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                audioConfig.samplerate = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(SsManifestParser.C4932c.f26642h, new ChildElementBinder<AudioConfig>() { // from class: com.tencent.cos.xml.model.ci.common.AudioConfig$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AudioConfig audioConfig, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                audioConfig.bitrate = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(SsManifestParser.C4932c.f26645k, new ChildElementBinder<AudioConfig>() { // from class: com.tencent.cos.xml.model.ci.common.AudioConfig$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, AudioConfig audioConfig, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                audioConfig.channels = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public AudioConfig fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        AudioConfig audioConfig = new AudioConfig();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<AudioConfig> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, audioConfig, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "AudioConfig" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return audioConfig;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return audioConfig;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, AudioConfig audioConfig, String str) throws IOException, XmlPullParserException {
        if (audioConfig == null) {
            return;
        }
        if (str == null) {
            str = "AudioConfig";
        }
        xmlSerializer.startTag("", str);
        if (audioConfig.codec != null) {
            xmlSerializer.startTag("", "Codec");
            xmlSerializer.text(String.valueOf(audioConfig.codec));
            xmlSerializer.endTag("", "Codec");
        }
        if (audioConfig.samplerate != null) {
            xmlSerializer.startTag("", "Samplerate");
            xmlSerializer.text(String.valueOf(audioConfig.samplerate));
            xmlSerializer.endTag("", "Samplerate");
        }
        if (audioConfig.bitrate != null) {
            xmlSerializer.startTag("", SsManifestParser.C4932c.f26642h);
            xmlSerializer.text(String.valueOf(audioConfig.bitrate));
            xmlSerializer.endTag("", SsManifestParser.C4932c.f26642h);
        }
        if (audioConfig.channels != null) {
            xmlSerializer.startTag("", SsManifestParser.C4932c.f26645k);
            xmlSerializer.text(String.valueOf(audioConfig.channels));
            xmlSerializer.endTag("", SsManifestParser.C4932c.f26645k);
        }
        xmlSerializer.endTag("", str);
    }
}
