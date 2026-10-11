package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.SubmitVoiceSeparateJob;
import com.tencent.cos.xml.model.ci.media.TemplateVoiceSeparate;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitVoiceSeparateJob$VoiceSeparate$$XmlAdapter extends IXmlAdapter<SubmitVoiceSeparateJob.VoiceSeparate> {
    private HashMap<String, ChildElementBinder<SubmitVoiceSeparateJob.VoiceSeparate>> childElementBinders;

    public SubmitVoiceSeparateJob$VoiceSeparate$$XmlAdapter() {
        HashMap<String, ChildElementBinder<SubmitVoiceSeparateJob.VoiceSeparate>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("AudioMode", new ChildElementBinder<SubmitVoiceSeparateJob.VoiceSeparate>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVoiceSeparateJob$VoiceSeparate$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVoiceSeparateJob.VoiceSeparate voiceSeparate, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                voiceSeparate.audioMode = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("AudioConfig", new ChildElementBinder<SubmitVoiceSeparateJob.VoiceSeparate>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitVoiceSeparateJob$VoiceSeparate$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitVoiceSeparateJob.VoiceSeparate voiceSeparate, String str) throws IOException, XmlPullParserException {
                voiceSeparate.audioConfig = (TemplateVoiceSeparate.AudioConfig) QCloudXml.fromXml(xmlPullParser, TemplateVoiceSeparate.AudioConfig.class, "AudioConfig");
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public SubmitVoiceSeparateJob.VoiceSeparate fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        SubmitVoiceSeparateJob.VoiceSeparate voiceSeparate = new SubmitVoiceSeparateJob.VoiceSeparate();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<SubmitVoiceSeparateJob.VoiceSeparate> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, voiceSeparate, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "VoiceSeparate" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return voiceSeparate;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return voiceSeparate;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitVoiceSeparateJob.VoiceSeparate voiceSeparate, String str) throws IOException, XmlPullParserException {
        if (voiceSeparate == null) {
            return;
        }
        if (str == null) {
            str = "VoiceSeparate";
        }
        xmlSerializer.startTag("", str);
        if (voiceSeparate.audioMode != null) {
            xmlSerializer.startTag("", "AudioMode");
            xmlSerializer.text(String.valueOf(voiceSeparate.audioMode));
            xmlSerializer.endTag("", "AudioMode");
        }
        TemplateVoiceSeparate.AudioConfig audioConfig = voiceSeparate.audioConfig;
        if (audioConfig != null) {
            QCloudXml.toXml(xmlSerializer, audioConfig, "AudioConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
