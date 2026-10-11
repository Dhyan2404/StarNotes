package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.SubmitVideoTagJob;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitVideoTagJob$$XmlAdapter extends IXmlAdapter<SubmitVideoTagJob> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitVideoTagJob submitVideoTagJob, String str) throws IOException, XmlPullParserException {
        if (submitVideoTagJob == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (submitVideoTagJob.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(submitVideoTagJob.tag));
            xmlSerializer.endTag("", "Tag");
        }
        SubmitVideoTagJob.SubmitVideoTagJobInput submitVideoTagJobInput = submitVideoTagJob.input;
        if (submitVideoTagJobInput != null) {
            QCloudXml.toXml(xmlSerializer, submitVideoTagJobInput, "Input");
        }
        SubmitVideoTagJob.SubmitVideoTagJobOperation submitVideoTagJobOperation = submitVideoTagJob.operation;
        if (submitVideoTagJobOperation != null) {
            QCloudXml.toXml(xmlSerializer, submitVideoTagJobOperation, "Operation");
        }
        if (submitVideoTagJob.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(submitVideoTagJob.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        if (submitVideoTagJob.callBackType != null) {
            xmlSerializer.startTag("", "CallBackType");
            xmlSerializer.text(String.valueOf(submitVideoTagJob.callBackType));
            xmlSerializer.endTag("", "CallBackType");
        }
        if (submitVideoTagJob.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(submitVideoTagJob.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        CallBackMqConfig callBackMqConfig = submitVideoTagJob.callBackMqConfig;
        if (callBackMqConfig != null) {
            QCloudXml.toXml(xmlSerializer, callBackMqConfig, "CallBackMqConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
