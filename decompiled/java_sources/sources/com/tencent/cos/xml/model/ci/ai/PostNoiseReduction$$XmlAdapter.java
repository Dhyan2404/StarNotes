package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.ai.PostNoiseReduction;
import com.tencent.cos.xml.model.ci.common.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostNoiseReduction$$XmlAdapter extends IXmlAdapter<PostNoiseReduction> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostNoiseReduction postNoiseReduction, String str) throws IOException, XmlPullParserException {
        if (postNoiseReduction == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (postNoiseReduction.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(postNoiseReduction.tag));
            xmlSerializer.endTag("", "Tag");
        }
        PostNoiseReduction.PostNoiseReductionInput postNoiseReductionInput = postNoiseReduction.input;
        if (postNoiseReductionInput != null) {
            QCloudXml.toXml(xmlSerializer, postNoiseReductionInput, "Input");
        }
        PostNoiseReduction.PostNoiseReductionOperation postNoiseReductionOperation = postNoiseReduction.operation;
        if (postNoiseReductionOperation != null) {
            QCloudXml.toXml(xmlSerializer, postNoiseReductionOperation, "Operation");
        }
        if (postNoiseReduction.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(postNoiseReduction.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        if (postNoiseReduction.callBackType != null) {
            xmlSerializer.startTag("", "CallBackType");
            xmlSerializer.text(String.valueOf(postNoiseReduction.callBackType));
            xmlSerializer.endTag("", "CallBackType");
        }
        if (postNoiseReduction.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(postNoiseReduction.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        CallBackMqConfig callBackMqConfig = postNoiseReduction.callBackMqConfig;
        if (callBackMqConfig != null) {
            QCloudXml.toXml(xmlSerializer, callBackMqConfig, "CallBackMqConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
