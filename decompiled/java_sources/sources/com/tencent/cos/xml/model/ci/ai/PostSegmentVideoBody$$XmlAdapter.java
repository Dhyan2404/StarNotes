package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBody;
import com.tencent.cos.xml.model.ci.common.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostSegmentVideoBody$$XmlAdapter extends IXmlAdapter<PostSegmentVideoBody> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostSegmentVideoBody postSegmentVideoBody, String str) throws IOException, XmlPullParserException {
        if (postSegmentVideoBody == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (postSegmentVideoBody.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(postSegmentVideoBody.tag));
            xmlSerializer.endTag("", "Tag");
        }
        PostSegmentVideoBody.PostSegmentVideoBodyInput postSegmentVideoBodyInput = postSegmentVideoBody.input;
        if (postSegmentVideoBodyInput != null) {
            QCloudXml.toXml(xmlSerializer, postSegmentVideoBodyInput, "Input");
        }
        PostSegmentVideoBody.PostSegmentVideoBodyOperation postSegmentVideoBodyOperation = postSegmentVideoBody.operation;
        if (postSegmentVideoBodyOperation != null) {
            QCloudXml.toXml(xmlSerializer, postSegmentVideoBodyOperation, "Operation");
        }
        if (postSegmentVideoBody.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(postSegmentVideoBody.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        if (postSegmentVideoBody.callBackType != null) {
            xmlSerializer.startTag("", "CallBackType");
            xmlSerializer.text(String.valueOf(postSegmentVideoBody.callBackType));
            xmlSerializer.endTag("", "CallBackType");
        }
        if (postSegmentVideoBody.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(postSegmentVideoBody.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        CallBackMqConfig callBackMqConfig = postSegmentVideoBody.callBackMqConfig;
        if (callBackMqConfig != null) {
            QCloudXml.toXml(xmlSerializer, callBackMqConfig, "CallBackMqConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
