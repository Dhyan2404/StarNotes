package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.SubmitPicProcessJob;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitPicProcessJob$$XmlAdapter extends IXmlAdapter<SubmitPicProcessJob> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitPicProcessJob submitPicProcessJob, String str) throws IOException, XmlPullParserException {
        if (submitPicProcessJob == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (submitPicProcessJob.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(submitPicProcessJob.tag));
            xmlSerializer.endTag("", "Tag");
        }
        SubmitPicProcessJob.SubmitPicProcessJobInput submitPicProcessJobInput = submitPicProcessJob.input;
        if (submitPicProcessJobInput != null) {
            QCloudXml.toXml(xmlSerializer, submitPicProcessJobInput, "Input");
        }
        SubmitPicProcessJob.SubmitPicProcessJobOperation submitPicProcessJobOperation = submitPicProcessJob.operation;
        if (submitPicProcessJobOperation != null) {
            QCloudXml.toXml(xmlSerializer, submitPicProcessJobOperation, "Operation");
        }
        if (submitPicProcessJob.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(submitPicProcessJob.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        if (submitPicProcessJob.callBackType != null) {
            xmlSerializer.startTag("", "CallBackType");
            xmlSerializer.text(String.valueOf(submitPicProcessJob.callBackType));
            xmlSerializer.endTag("", "CallBackType");
        }
        if (submitPicProcessJob.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(submitPicProcessJob.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        CallBackMqConfig callBackMqConfig = submitPicProcessJob.callBackMqConfig;
        if (callBackMqConfig != null) {
            QCloudXml.toXml(xmlSerializer, callBackMqConfig, "CallBackMqConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
