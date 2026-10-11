package com.tencent.cos.xml.model.ci.ai;

import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import com.tencent.cos.xml.model.ci.ai.PostVoiceSynthesis;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostVoiceSynthesis$PostVoiceSynthesisTtsTpl$$XmlAdapter extends IXmlAdapter<PostVoiceSynthesis.PostVoiceSynthesisTtsTpl> {
    private HashMap<String, ChildElementBinder<PostVoiceSynthesis.PostVoiceSynthesisTtsTpl>> childElementBinders;

    public PostVoiceSynthesis$PostVoiceSynthesisTtsTpl$$XmlAdapter() {
        HashMap<String, ChildElementBinder<PostVoiceSynthesis.PostVoiceSynthesisTtsTpl>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Mode", new ChildElementBinder<PostVoiceSynthesis.PostVoiceSynthesisTtsTpl>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVoiceSynthesis$PostVoiceSynthesisTtsTpl$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVoiceSynthesis.PostVoiceSynthesisTtsTpl postVoiceSynthesisTtsTpl, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVoiceSynthesisTtsTpl.mode = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Codec", new ChildElementBinder<PostVoiceSynthesis.PostVoiceSynthesisTtsTpl>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVoiceSynthesis$PostVoiceSynthesisTtsTpl$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVoiceSynthesis.PostVoiceSynthesisTtsTpl postVoiceSynthesisTtsTpl, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVoiceSynthesisTtsTpl.codec = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("VoiceType", new ChildElementBinder<PostVoiceSynthesis.PostVoiceSynthesisTtsTpl>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVoiceSynthesis$PostVoiceSynthesisTtsTpl$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVoiceSynthesis.PostVoiceSynthesisTtsTpl postVoiceSynthesisTtsTpl, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVoiceSynthesisTtsTpl.voiceType = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Volume", new ChildElementBinder<PostVoiceSynthesis.PostVoiceSynthesisTtsTpl>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVoiceSynthesis$PostVoiceSynthesisTtsTpl$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVoiceSynthesis.PostVoiceSynthesisTtsTpl postVoiceSynthesisTtsTpl, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVoiceSynthesisTtsTpl.volume = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put(RtspHeaders.f26334A, new ChildElementBinder<PostVoiceSynthesis.PostVoiceSynthesisTtsTpl>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVoiceSynthesis$PostVoiceSynthesisTtsTpl$$XmlAdapter.5
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVoiceSynthesis.PostVoiceSynthesisTtsTpl postVoiceSynthesisTtsTpl, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVoiceSynthesisTtsTpl.speed = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("Emotion", new ChildElementBinder<PostVoiceSynthesis.PostVoiceSynthesisTtsTpl>() { // from class: com.tencent.cos.xml.model.ci.ai.PostVoiceSynthesis$PostVoiceSynthesisTtsTpl$$XmlAdapter.6
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostVoiceSynthesis.PostVoiceSynthesisTtsTpl postVoiceSynthesisTtsTpl, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postVoiceSynthesisTtsTpl.emotion = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public PostVoiceSynthesis.PostVoiceSynthesisTtsTpl fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        PostVoiceSynthesis.PostVoiceSynthesisTtsTpl postVoiceSynthesisTtsTpl = new PostVoiceSynthesis.PostVoiceSynthesisTtsTpl();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<PostVoiceSynthesis.PostVoiceSynthesisTtsTpl> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, postVoiceSynthesisTtsTpl, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "TtsTpl" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return postVoiceSynthesisTtsTpl;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return postVoiceSynthesisTtsTpl;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostVoiceSynthesis.PostVoiceSynthesisTtsTpl postVoiceSynthesisTtsTpl, String str) throws IOException, XmlPullParserException {
        if (postVoiceSynthesisTtsTpl == null) {
            return;
        }
        if (str == null) {
            str = "TtsTpl";
        }
        xmlSerializer.startTag("", str);
        if (postVoiceSynthesisTtsTpl.mode != null) {
            xmlSerializer.startTag("", "Mode");
            xmlSerializer.text(String.valueOf(postVoiceSynthesisTtsTpl.mode));
            xmlSerializer.endTag("", "Mode");
        }
        if (postVoiceSynthesisTtsTpl.codec != null) {
            xmlSerializer.startTag("", "Codec");
            xmlSerializer.text(String.valueOf(postVoiceSynthesisTtsTpl.codec));
            xmlSerializer.endTag("", "Codec");
        }
        if (postVoiceSynthesisTtsTpl.voiceType != null) {
            xmlSerializer.startTag("", "VoiceType");
            xmlSerializer.text(String.valueOf(postVoiceSynthesisTtsTpl.voiceType));
            xmlSerializer.endTag("", "VoiceType");
        }
        if (postVoiceSynthesisTtsTpl.volume != null) {
            xmlSerializer.startTag("", "Volume");
            xmlSerializer.text(String.valueOf(postVoiceSynthesisTtsTpl.volume));
            xmlSerializer.endTag("", "Volume");
        }
        if (postVoiceSynthesisTtsTpl.speed != null) {
            xmlSerializer.startTag("", RtspHeaders.f26334A);
            xmlSerializer.text(String.valueOf(postVoiceSynthesisTtsTpl.speed));
            xmlSerializer.endTag("", RtspHeaders.f26334A);
        }
        if (postVoiceSynthesisTtsTpl.emotion != null) {
            xmlSerializer.startTag("", "Emotion");
            xmlSerializer.text(String.valueOf(postVoiceSynthesisTtsTpl.emotion));
            xmlSerializer.endTag("", "Emotion");
        }
        xmlSerializer.endTag("", str);
    }
}
