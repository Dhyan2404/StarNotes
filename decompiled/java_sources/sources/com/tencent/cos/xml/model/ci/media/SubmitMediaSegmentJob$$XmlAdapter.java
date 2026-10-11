package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.SubmitMediaSegmentJob;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitMediaSegmentJob$$XmlAdapter extends IXmlAdapter<SubmitMediaSegmentJob> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitMediaSegmentJob submitMediaSegmentJob, String str) throws IOException, XmlPullParserException {
        if (submitMediaSegmentJob == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (submitMediaSegmentJob.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(submitMediaSegmentJob.tag));
            xmlSerializer.endTag("", "Tag");
        }
        SubmitMediaSegmentJob.SubmitMediaSegmentJobInput submitMediaSegmentJobInput = submitMediaSegmentJob.input;
        if (submitMediaSegmentJobInput != null) {
            QCloudXml.toXml(xmlSerializer, submitMediaSegmentJobInput, "Input");
        }
        SubmitMediaSegmentJob.SubmitMediaSegmentJobOperation submitMediaSegmentJobOperation = submitMediaSegmentJob.operation;
        if (submitMediaSegmentJobOperation != null) {
            QCloudXml.toXml(xmlSerializer, submitMediaSegmentJobOperation, "Operation");
        }
        if (submitMediaSegmentJob.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(submitMediaSegmentJob.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        if (submitMediaSegmentJob.callBackType != null) {
            xmlSerializer.startTag("", "CallBackType");
            xmlSerializer.text(String.valueOf(submitMediaSegmentJob.callBackType));
            xmlSerializer.endTag("", "CallBackType");
        }
        if (submitMediaSegmentJob.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(submitMediaSegmentJob.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        CallBackMqConfig callBackMqConfig = submitMediaSegmentJob.callBackMqConfig;
        if (callBackMqConfig != null) {
            QCloudXml.toXml(xmlSerializer, callBackMqConfig, "CallBackMqConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
