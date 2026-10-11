package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.SubmitConcatJob;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitConcatJob$$XmlAdapter extends IXmlAdapter<SubmitConcatJob> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitConcatJob submitConcatJob, String str) throws IOException, XmlPullParserException {
        if (submitConcatJob == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (submitConcatJob.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(submitConcatJob.tag));
            xmlSerializer.endTag("", "Tag");
        }
        SubmitConcatJob.SubmitConcatJobInput submitConcatJobInput = submitConcatJob.input;
        if (submitConcatJobInput != null) {
            QCloudXml.toXml(xmlSerializer, submitConcatJobInput, "Input");
        }
        SubmitConcatJob.SubmitConcatJobOperation submitConcatJobOperation = submitConcatJob.operation;
        if (submitConcatJobOperation != null) {
            QCloudXml.toXml(xmlSerializer, submitConcatJobOperation, "Operation");
        }
        if (submitConcatJob.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(submitConcatJob.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        if (submitConcatJob.callBackType != null) {
            xmlSerializer.startTag("", "CallBackType");
            xmlSerializer.text(String.valueOf(submitConcatJob.callBackType));
            xmlSerializer.endTag("", "CallBackType");
        }
        if (submitConcatJob.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(submitConcatJob.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        CallBackMqConfig callBackMqConfig = submitConcatJob.callBackMqConfig;
        if (callBackMqConfig != null) {
            QCloudXml.toXml(xmlSerializer, callBackMqConfig, "CallBackMqConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
