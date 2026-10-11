package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.ai.PostVoiceSynthesis;
import com.tencent.cos.xml.model.ci.common.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostVoiceSynthesis$$XmlAdapter extends IXmlAdapter<PostVoiceSynthesis> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostVoiceSynthesis postVoiceSynthesis, String str) throws IOException, XmlPullParserException {
        if (postVoiceSynthesis == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (postVoiceSynthesis.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(postVoiceSynthesis.tag));
            xmlSerializer.endTag("", "Tag");
        }
        PostVoiceSynthesis.PostVoiceSynthesisOperation postVoiceSynthesisOperation = postVoiceSynthesis.operation;
        if (postVoiceSynthesisOperation != null) {
            QCloudXml.toXml(xmlSerializer, postVoiceSynthesisOperation, "Operation");
        }
        if (postVoiceSynthesis.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(postVoiceSynthesis.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        if (postVoiceSynthesis.callBackType != null) {
            xmlSerializer.startTag("", "CallBackType");
            xmlSerializer.text(String.valueOf(postVoiceSynthesis.callBackType));
            xmlSerializer.endTag("", "CallBackType");
        }
        if (postVoiceSynthesis.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(postVoiceSynthesis.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        CallBackMqConfig callBackMqConfig = postVoiceSynthesis.callBackMqConfig;
        if (callBackMqConfig != null) {
            QCloudXml.toXml(xmlSerializer, callBackMqConfig, "CallBackMqConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
