package com.tencent.cos.xml.model.ci.common;

import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class VoiceSynthesisTempleteResponseTtsTpl$$XmlAdapter extends IXmlAdapter<VoiceSynthesisTempleteResponseTtsTpl> {
    private HashMap<String, ChildElementBinder<VoiceSynthesisTempleteResponseTtsTpl>> childElementBinders;

    public VoiceSynthesisTempleteResponseTtsTpl$$XmlAdapter() {
        HashMap<String, ChildElementBinder<VoiceSynthesisTempleteResponseTtsTpl>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Mode", new ChildElementBinder<VoiceSynthesisTempleteResponseTtsTpl>() { // from class: com.tencent.cos.xml.model.ci.common.VoiceSynthesisTempleteResponseTtsTpl$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VoiceSynthesisTempleteResponseTtsTpl voiceSynthesisTempleteResponseTtsTpl, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                voiceSynthesisTempleteResponseTtsTpl.mode = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Codec", new ChildElementBinder<VoiceSynthesisTempleteResponseTtsTpl>() { // from class: com.tencent.cos.xml.model.ci.common.VoiceSynthesisTempleteResponseTtsTpl$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VoiceSynthesisTempleteResponseTtsTpl voiceSynthesisTempleteResponseTtsTpl, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                voiceSynthesisTempleteResponseTtsTpl.codec = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("VoiceType", new ChildElementBinder<VoiceSynthesisTempleteResponseTtsTpl>() { // from class: com.tencent.cos.xml.model.ci.common.VoiceSynthesisTempleteResponseTtsTpl$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VoiceSynthesisTempleteResponseTtsTpl voiceSynthesisTempleteResponseTtsTpl, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                voiceSynthesisTempleteResponseTtsTpl.voiceType = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Volume", new ChildElementBinder<VoiceSynthesisTempleteResponseTtsTpl>() { // from class: com.tencent.cos.xml.model.ci.common.VoiceSynthesisTempleteResponseTtsTpl$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VoiceSynthesisTempleteResponseTtsTpl voiceSynthesisTempleteResponseTtsTpl, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                voiceSynthesisTempleteResponseTtsTpl.volume = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(RtspHeaders.f26334A, new ChildElementBinder<VoiceSynthesisTempleteResponseTtsTpl>() { // from class: com.tencent.cos.xml.model.ci.common.VoiceSynthesisTempleteResponseTtsTpl$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VoiceSynthesisTempleteResponseTtsTpl voiceSynthesisTempleteResponseTtsTpl, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                voiceSynthesisTempleteResponseTtsTpl.speed = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Emotion", new ChildElementBinder<VoiceSynthesisTempleteResponseTtsTpl>() { // from class: com.tencent.cos.xml.model.ci.common.VoiceSynthesisTempleteResponseTtsTpl$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, VoiceSynthesisTempleteResponseTtsTpl voiceSynthesisTempleteResponseTtsTpl, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                voiceSynthesisTempleteResponseTtsTpl.emotion = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public VoiceSynthesisTempleteResponseTtsTpl fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        VoiceSynthesisTempleteResponseTtsTpl voiceSynthesisTempleteResponseTtsTpl = new VoiceSynthesisTempleteResponseTtsTpl();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<VoiceSynthesisTempleteResponseTtsTpl> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, voiceSynthesisTempleteResponseTtsTpl, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "VoiceSynthesisTempleteResponseTtsTpl" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return voiceSynthesisTempleteResponseTtsTpl;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return voiceSynthesisTempleteResponseTtsTpl;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, VoiceSynthesisTempleteResponseTtsTpl voiceSynthesisTempleteResponseTtsTpl, String str) throws IOException, XmlPullParserException {
        if (voiceSynthesisTempleteResponseTtsTpl == null) {
            return;
        }
        if (str == null) {
            str = "VoiceSynthesisTempleteResponseTtsTpl";
        }
        xmlSerializer.startTag("", str);
        if (voiceSynthesisTempleteResponseTtsTpl.mode != null) {
            xmlSerializer.startTag("", "Mode");
            xmlSerializer.text(String.valueOf(voiceSynthesisTempleteResponseTtsTpl.mode));
            xmlSerializer.endTag("", "Mode");
        }
        if (voiceSynthesisTempleteResponseTtsTpl.codec != null) {
            xmlSerializer.startTag("", "Codec");
            xmlSerializer.text(String.valueOf(voiceSynthesisTempleteResponseTtsTpl.codec));
            xmlSerializer.endTag("", "Codec");
        }
        if (voiceSynthesisTempleteResponseTtsTpl.voiceType != null) {
            xmlSerializer.startTag("", "VoiceType");
            xmlSerializer.text(String.valueOf(voiceSynthesisTempleteResponseTtsTpl.voiceType));
            xmlSerializer.endTag("", "VoiceType");
        }
        if (voiceSynthesisTempleteResponseTtsTpl.volume != null) {
            xmlSerializer.startTag("", "Volume");
            xmlSerializer.text(String.valueOf(voiceSynthesisTempleteResponseTtsTpl.volume));
            xmlSerializer.endTag("", "Volume");
        }
        if (voiceSynthesisTempleteResponseTtsTpl.speed != null) {
            xmlSerializer.startTag("", RtspHeaders.f26334A);
            xmlSerializer.text(String.valueOf(voiceSynthesisTempleteResponseTtsTpl.speed));
            xmlSerializer.endTag("", RtspHeaders.f26334A);
        }
        if (voiceSynthesisTempleteResponseTtsTpl.emotion != null) {
            xmlSerializer.startTag("", "Emotion");
            xmlSerializer.text(String.valueOf(voiceSynthesisTempleteResponseTtsTpl.emotion));
            xmlSerializer.endTag("", "Emotion");
        }
        xmlSerializer.endTag("", str);
    }
}
