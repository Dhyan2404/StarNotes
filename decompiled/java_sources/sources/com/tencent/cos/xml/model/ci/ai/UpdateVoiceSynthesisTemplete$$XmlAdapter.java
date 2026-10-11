package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class UpdateVoiceSynthesisTemplete$$XmlAdapter extends IXmlAdapter<UpdateVoiceSynthesisTemplete> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, UpdateVoiceSynthesisTemplete updateVoiceSynthesisTemplete, String str) throws IOException, XmlPullParserException {
        if (updateVoiceSynthesisTemplete == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (updateVoiceSynthesisTemplete.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(updateVoiceSynthesisTemplete.tag));
            xmlSerializer.endTag("", "Tag");
        }
        if (updateVoiceSynthesisTemplete.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(updateVoiceSynthesisTemplete.name));
            xmlSerializer.endTag("", "Name");
        }
        if (updateVoiceSynthesisTemplete.mode != null) {
            xmlSerializer.startTag("", "Mode");
            xmlSerializer.text(String.valueOf(updateVoiceSynthesisTemplete.mode));
            xmlSerializer.endTag("", "Mode");
        }
        if (updateVoiceSynthesisTemplete.codec != null) {
            xmlSerializer.startTag("", "Codec");
            xmlSerializer.text(String.valueOf(updateVoiceSynthesisTemplete.codec));
            xmlSerializer.endTag("", "Codec");
        }
        if (updateVoiceSynthesisTemplete.voiceType != null) {
            xmlSerializer.startTag("", "VoiceType");
            xmlSerializer.text(String.valueOf(updateVoiceSynthesisTemplete.voiceType));
            xmlSerializer.endTag("", "VoiceType");
        }
        if (updateVoiceSynthesisTemplete.volume != null) {
            xmlSerializer.startTag("", "Volume");
            xmlSerializer.text(String.valueOf(updateVoiceSynthesisTemplete.volume));
            xmlSerializer.endTag("", "Volume");
        }
        if (updateVoiceSynthesisTemplete.speed != null) {
            xmlSerializer.startTag("", RtspHeaders.f26334A);
            xmlSerializer.text(String.valueOf(updateVoiceSynthesisTemplete.speed));
            xmlSerializer.endTag("", RtspHeaders.f26334A);
        }
        if (updateVoiceSynthesisTemplete.emotion != null) {
            xmlSerializer.startTag("", "Emotion");
            xmlSerializer.text(String.valueOf(updateVoiceSynthesisTemplete.emotion));
            xmlSerializer.endTag("", "Emotion");
        }
        xmlSerializer.endTag("", str);
    }
}
