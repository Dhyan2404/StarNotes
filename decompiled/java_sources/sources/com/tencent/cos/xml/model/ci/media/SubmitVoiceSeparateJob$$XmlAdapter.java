package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.SubmitVoiceSeparateJob;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitVoiceSeparateJob$$XmlAdapter extends IXmlAdapter<SubmitVoiceSeparateJob> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitVoiceSeparateJob submitVoiceSeparateJob, String str) throws IOException, XmlPullParserException {
        if (submitVoiceSeparateJob == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (submitVoiceSeparateJob.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(submitVoiceSeparateJob.tag));
            xmlSerializer.endTag("", "Tag");
        }
        SubmitVoiceSeparateJob.SubmitVoiceSeparateJobInput submitVoiceSeparateJobInput = submitVoiceSeparateJob.input;
        if (submitVoiceSeparateJobInput != null) {
            QCloudXml.toXml(xmlSerializer, submitVoiceSeparateJobInput, "Input");
        }
        SubmitVoiceSeparateJob.SubmitVoiceSeparateJobOperation submitVoiceSeparateJobOperation = submitVoiceSeparateJob.operation;
        if (submitVoiceSeparateJobOperation != null) {
            QCloudXml.toXml(xmlSerializer, submitVoiceSeparateJobOperation, "Operation");
        }
        if (submitVoiceSeparateJob.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(submitVoiceSeparateJob.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        if (submitVoiceSeparateJob.callBackType != null) {
            xmlSerializer.startTag("", "CallBackType");
            xmlSerializer.text(String.valueOf(submitVoiceSeparateJob.callBackType));
            xmlSerializer.endTag("", "CallBackType");
        }
        if (submitVoiceSeparateJob.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(submitVoiceSeparateJob.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        CallBackMqConfig callBackMqConfig = submitVoiceSeparateJob.callBackMqConfig;
        if (callBackMqConfig != null) {
            QCloudXml.toXml(xmlSerializer, callBackMqConfig, "CallBackMqConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
