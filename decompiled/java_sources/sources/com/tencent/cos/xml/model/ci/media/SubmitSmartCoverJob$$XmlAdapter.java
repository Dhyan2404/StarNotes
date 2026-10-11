package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.SubmitSmartCoverJob;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitSmartCoverJob$$XmlAdapter extends IXmlAdapter<SubmitSmartCoverJob> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitSmartCoverJob submitSmartCoverJob, String str) throws IOException, XmlPullParserException {
        if (submitSmartCoverJob == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (submitSmartCoverJob.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(submitSmartCoverJob.tag));
            xmlSerializer.endTag("", "Tag");
        }
        SubmitSmartCoverJob.SubmitSmartCoverJobInput submitSmartCoverJobInput = submitSmartCoverJob.input;
        if (submitSmartCoverJobInput != null) {
            QCloudXml.toXml(xmlSerializer, submitSmartCoverJobInput, "Input");
        }
        SubmitSmartCoverJob.SubmitSmartCoverJobOperation submitSmartCoverJobOperation = submitSmartCoverJob.operation;
        if (submitSmartCoverJobOperation != null) {
            QCloudXml.toXml(xmlSerializer, submitSmartCoverJobOperation, "Operation");
        }
        if (submitSmartCoverJob.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(submitSmartCoverJob.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        if (submitSmartCoverJob.callBackType != null) {
            xmlSerializer.startTag("", "CallBackType");
            xmlSerializer.text(String.valueOf(submitSmartCoverJob.callBackType));
            xmlSerializer.endTag("", "CallBackType");
        }
        if (submitSmartCoverJob.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(submitSmartCoverJob.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        CallBackMqConfig callBackMqConfig = submitSmartCoverJob.callBackMqConfig;
        if (callBackMqConfig != null) {
            QCloudXml.toXml(xmlSerializer, callBackMqConfig, "CallBackMqConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
