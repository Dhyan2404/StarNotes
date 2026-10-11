package com.tencent.cos.xml.model.ci.asr.bean;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.asr.bean.CreateSpeechJobs;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class CreateSpeechJobs$$XmlAdapter extends IXmlAdapter<CreateSpeechJobs> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, CreateSpeechJobs createSpeechJobs, String str) throws IOException, XmlPullParserException {
        if (createSpeechJobs == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (createSpeechJobs.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(createSpeechJobs.tag));
            xmlSerializer.endTag("", "Tag");
        }
        CreateSpeechJobs.CreateSpeechJobsInput createSpeechJobsInput = createSpeechJobs.input;
        if (createSpeechJobsInput != null) {
            QCloudXml.toXml(xmlSerializer, createSpeechJobsInput, "Input");
        }
        CreateSpeechJobs.CreateSpeechJobsOperation createSpeechJobsOperation = createSpeechJobs.operation;
        if (createSpeechJobsOperation != null) {
            QCloudXml.toXml(xmlSerializer, createSpeechJobsOperation, "Operation");
        }
        if (createSpeechJobs.queueId != null) {
            xmlSerializer.startTag("", "QueueId");
            xmlSerializer.text(String.valueOf(createSpeechJobs.queueId));
            xmlSerializer.endTag("", "QueueId");
        }
        if (createSpeechJobs.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(createSpeechJobs.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        if (createSpeechJobs.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(createSpeechJobs.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        if (createSpeechJobs.callBackType != null) {
            xmlSerializer.startTag("", "CallBackType");
            xmlSerializer.text(String.valueOf(createSpeechJobs.callBackType));
            xmlSerializer.endTag("", "CallBackType");
        }
        CallBackMqConfig callBackMqConfig = createSpeechJobs.callBackMqConfig;
        if (callBackMqConfig != null) {
            QCloudXml.toXml(xmlSerializer, callBackMqConfig, "CallBackMqConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
