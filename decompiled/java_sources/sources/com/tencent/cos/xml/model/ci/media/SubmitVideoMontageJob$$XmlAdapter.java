package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJob;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitVideoMontageJob$$XmlAdapter extends IXmlAdapter<SubmitVideoMontageJob> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitVideoMontageJob submitVideoMontageJob, String str) throws IOException, XmlPullParserException {
        if (submitVideoMontageJob == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (submitVideoMontageJob.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(submitVideoMontageJob.tag));
            xmlSerializer.endTag("", "Tag");
        }
        SubmitVideoMontageJob.SubmitVideoMontageJobInput submitVideoMontageJobInput = submitVideoMontageJob.input;
        if (submitVideoMontageJobInput != null) {
            QCloudXml.toXml(xmlSerializer, submitVideoMontageJobInput, "Input");
        }
        SubmitVideoMontageJob.SubmitVideoMontageJobOperation submitVideoMontageJobOperation = submitVideoMontageJob.operation;
        if (submitVideoMontageJobOperation != null) {
            QCloudXml.toXml(xmlSerializer, submitVideoMontageJobOperation, "Operation");
        }
        if (submitVideoMontageJob.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(submitVideoMontageJob.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        if (submitVideoMontageJob.callBackType != null) {
            xmlSerializer.startTag("", "CallBackType");
            xmlSerializer.text(String.valueOf(submitVideoMontageJob.callBackType));
            xmlSerializer.endTag("", "CallBackType");
        }
        if (submitVideoMontageJob.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(submitVideoMontageJob.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        CallBackMqConfig callBackMqConfig = submitVideoMontageJob.callBackMqConfig;
        if (callBackMqConfig != null) {
            QCloudXml.toXml(xmlSerializer, callBackMqConfig, "CallBackMqConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
