package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.SpeechRecognition;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostSpeechRecognitionTemplete$$XmlAdapter extends IXmlAdapter<PostSpeechRecognitionTemplete> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostSpeechRecognitionTemplete postSpeechRecognitionTemplete, String str) throws IOException, XmlPullParserException {
        if (postSpeechRecognitionTemplete == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (postSpeechRecognitionTemplete.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(postSpeechRecognitionTemplete.tag));
            xmlSerializer.endTag("", "Tag");
        }
        if (postSpeechRecognitionTemplete.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(postSpeechRecognitionTemplete.name));
            xmlSerializer.endTag("", "Name");
        }
        SpeechRecognition speechRecognition = postSpeechRecognitionTemplete.speechRecognition;
        if (speechRecognition != null) {
            QCloudXml.toXml(xmlSerializer, speechRecognition, "SpeechRecognition");
        }
        xmlSerializer.endTag("", str);
    }
}
