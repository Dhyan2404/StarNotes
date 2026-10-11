package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.SubmitTranscodeJob;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitTranscodeJob$$XmlAdapter extends IXmlAdapter<SubmitTranscodeJob> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitTranscodeJob submitTranscodeJob, String str) throws IOException, XmlPullParserException {
        if (submitTranscodeJob == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (submitTranscodeJob.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(submitTranscodeJob.tag));
            xmlSerializer.endTag("", "Tag");
        }
        SubmitTranscodeJob.SubmitTranscodeJobInput submitTranscodeJobInput = submitTranscodeJob.input;
        if (submitTranscodeJobInput != null) {
            QCloudXml.toXml(xmlSerializer, submitTranscodeJobInput, "Input");
        }
        SubmitTranscodeJob.SubmitTranscodeJobOperation submitTranscodeJobOperation = submitTranscodeJob.operation;
        if (submitTranscodeJobOperation != null) {
            QCloudXml.toXml(xmlSerializer, submitTranscodeJobOperation, "Operation");
        }
        if (submitTranscodeJob.queueType != null) {
            xmlSerializer.startTag("", "QueueType");
            xmlSerializer.text(String.valueOf(submitTranscodeJob.queueType));
            xmlSerializer.endTag("", "QueueType");
        }
        if (submitTranscodeJob.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(submitTranscodeJob.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        if (submitTranscodeJob.callBackType != null) {
            xmlSerializer.startTag("", "CallBackType");
            xmlSerializer.text(String.valueOf(submitTranscodeJob.callBackType));
            xmlSerializer.endTag("", "CallBackType");
        }
        if (submitTranscodeJob.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(submitTranscodeJob.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        CallBackMqConfig callBackMqConfig = submitTranscodeJob.callBackMqConfig;
        if (callBackMqConfig != null) {
            QCloudXml.toXml(xmlSerializer, callBackMqConfig, "CallBackMqConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
