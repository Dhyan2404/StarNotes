package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.ai.PostVideoTargetRec;
import com.tencent.cos.xml.model.ci.common.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostVideoTargetRec$$XmlAdapter extends IXmlAdapter<PostVideoTargetRec> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostVideoTargetRec postVideoTargetRec, String str) throws IOException, XmlPullParserException {
        if (postVideoTargetRec == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (postVideoTargetRec.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(postVideoTargetRec.tag));
            xmlSerializer.endTag("", "Tag");
        }
        PostVideoTargetRec.PostVideoTargetRecOperation postVideoTargetRecOperation = postVideoTargetRec.operation;
        if (postVideoTargetRecOperation != null) {
            QCloudXml.toXml(xmlSerializer, postVideoTargetRecOperation, "Operation");
        }
        PostVideoTargetRec.PostVideoTargetRecInput postVideoTargetRecInput = postVideoTargetRec.input;
        if (postVideoTargetRecInput != null) {
            QCloudXml.toXml(xmlSerializer, postVideoTargetRecInput, "Input");
        }
        if (postVideoTargetRec.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(postVideoTargetRec.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        if (postVideoTargetRec.callBackType != null) {
            xmlSerializer.startTag("", "CallBackType");
            xmlSerializer.text(String.valueOf(postVideoTargetRec.callBackType));
            xmlSerializer.endTag("", "CallBackType");
        }
        if (postVideoTargetRec.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(postVideoTargetRec.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        CallBackMqConfig callBackMqConfig = postVideoTargetRec.callBackMqConfig;
        if (callBackMqConfig != null) {
            QCloudXml.toXml(xmlSerializer, callBackMqConfig, "CallBackMqConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
