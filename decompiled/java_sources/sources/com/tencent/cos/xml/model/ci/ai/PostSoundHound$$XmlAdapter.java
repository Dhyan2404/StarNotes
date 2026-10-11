package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.ai.PostSoundHound;
import com.tencent.cos.xml.model.ci.common.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostSoundHound$$XmlAdapter extends IXmlAdapter<PostSoundHound> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostSoundHound postSoundHound, String str) throws IOException, XmlPullParserException {
        if (postSoundHound == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (postSoundHound.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(postSoundHound.tag));
            xmlSerializer.endTag("", "Tag");
        }
        PostSoundHound.PostSoundHoundInput postSoundHoundInput = postSoundHound.input;
        if (postSoundHoundInput != null) {
            QCloudXml.toXml(xmlSerializer, postSoundHoundInput, "Input");
        }
        PostSoundHound.PostSoundHoundOperation postSoundHoundOperation = postSoundHound.operation;
        if (postSoundHoundOperation != null) {
            QCloudXml.toXml(xmlSerializer, postSoundHoundOperation, "Operation");
        }
        if (postSoundHound.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(postSoundHound.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        if (postSoundHound.callBackType != null) {
            xmlSerializer.startTag("", "CallBackType");
            xmlSerializer.text(String.valueOf(postSoundHound.callBackType));
            xmlSerializer.endTag("", "CallBackType");
        }
        if (postSoundHound.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(postSoundHound.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        CallBackMqConfig callBackMqConfig = postSoundHound.callBackMqConfig;
        if (callBackMqConfig != null) {
            QCloudXml.toXml(xmlSerializer, callBackMqConfig, "CallBackMqConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
