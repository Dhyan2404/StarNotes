package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.SubmitMediaInfoJob;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitMediaInfoJob$$XmlAdapter extends IXmlAdapter<SubmitMediaInfoJob> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitMediaInfoJob submitMediaInfoJob, String str) throws IOException, XmlPullParserException {
        if (submitMediaInfoJob == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (submitMediaInfoJob.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(submitMediaInfoJob.tag));
            xmlSerializer.endTag("", "Tag");
        }
        SubmitMediaInfoJob.SubmitMediaInfoJobInput submitMediaInfoJobInput = submitMediaInfoJob.input;
        if (submitMediaInfoJobInput != null) {
            QCloudXml.toXml(xmlSerializer, submitMediaInfoJobInput, "Input");
        }
        SubmitMediaInfoJob.SubmitMediaInfoJobOperation submitMediaInfoJobOperation = submitMediaInfoJob.operation;
        if (submitMediaInfoJobOperation != null) {
            QCloudXml.toXml(xmlSerializer, submitMediaInfoJobOperation, "Operation");
        }
        if (submitMediaInfoJob.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(submitMediaInfoJob.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        if (submitMediaInfoJob.callBackType != null) {
            xmlSerializer.startTag("", "CallBackType");
            xmlSerializer.text(String.valueOf(submitMediaInfoJob.callBackType));
            xmlSerializer.endTag("", "CallBackType");
        }
        if (submitMediaInfoJob.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(submitMediaInfoJob.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        CallBackMqConfig callBackMqConfig = submitMediaInfoJob.callBackMqConfig;
        if (callBackMqConfig != null) {
            QCloudXml.toXml(xmlSerializer, callBackMqConfig, "CallBackMqConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
