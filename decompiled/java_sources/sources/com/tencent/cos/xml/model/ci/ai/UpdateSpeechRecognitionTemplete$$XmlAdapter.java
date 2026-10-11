package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.SpeechRecognition;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class UpdateSpeechRecognitionTemplete$$XmlAdapter extends IXmlAdapter<UpdateSpeechRecognitionTemplete> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, UpdateSpeechRecognitionTemplete updateSpeechRecognitionTemplete, String str) throws IOException, XmlPullParserException {
        if (updateSpeechRecognitionTemplete == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (updateSpeechRecognitionTemplete.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(updateSpeechRecognitionTemplete.tag));
            xmlSerializer.endTag("", "Tag");
        }
        if (updateSpeechRecognitionTemplete.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(updateSpeechRecognitionTemplete.name));
            xmlSerializer.endTag("", "Name");
        }
        SpeechRecognition speechRecognition = updateSpeechRecognitionTemplete.speechRecognition;
        if (speechRecognition != null) {
            QCloudXml.toXml(xmlSerializer, speechRecognition, "SpeechRecognition");
        }
        xmlSerializer.endTag("", str);
    }
}
