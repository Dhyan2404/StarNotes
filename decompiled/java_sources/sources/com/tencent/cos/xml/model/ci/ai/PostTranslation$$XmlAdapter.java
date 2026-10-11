package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.ai.PostTranslation;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostTranslation$$XmlAdapter extends IXmlAdapter<PostTranslation> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostTranslation postTranslation, String str) throws IOException, XmlPullParserException {
        if (postTranslation == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (postTranslation.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(postTranslation.tag));
            xmlSerializer.endTag("", "Tag");
        }
        PostTranslation.PostTranslationInput postTranslationInput = postTranslation.input;
        if (postTranslationInput != null) {
            QCloudXml.toXml(xmlSerializer, postTranslationInput, "Input");
        }
        PostTranslation.PostTranslationOperation postTranslationOperation = postTranslation.operation;
        if (postTranslationOperation != null) {
            QCloudXml.toXml(xmlSerializer, postTranslationOperation, "Operation");
        }
        if (postTranslation.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(postTranslation.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        if (postTranslation.callBackType != null) {
            xmlSerializer.startTag("", "CallBackType");
            xmlSerializer.text(String.valueOf(postTranslation.callBackType));
            xmlSerializer.endTag("", "CallBackType");
        }
        if (postTranslation.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(postTranslation.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        PostTranslation.CallBackMqConfig callBackMqConfig = postTranslation.callBackMqConfig;
        if (callBackMqConfig != null) {
            QCloudXml.toXml(xmlSerializer, callBackMqConfig, "CallBackMqConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
