package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.SubmitAnimationJob;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitAnimationJob$$XmlAdapter extends IXmlAdapter<SubmitAnimationJob> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitAnimationJob submitAnimationJob, String str) throws IOException, XmlPullParserException {
        if (submitAnimationJob == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (submitAnimationJob.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(submitAnimationJob.tag));
            xmlSerializer.endTag("", "Tag");
        }
        SubmitAnimationJob.SubmitAnimationJobInput submitAnimationJobInput = submitAnimationJob.input;
        if (submitAnimationJobInput != null) {
            QCloudXml.toXml(xmlSerializer, submitAnimationJobInput, "Input");
        }
        SubmitAnimationJob.SubmitAnimationJobOperation submitAnimationJobOperation = submitAnimationJob.operation;
        if (submitAnimationJobOperation != null) {
            QCloudXml.toXml(xmlSerializer, submitAnimationJobOperation, "Operation");
        }
        if (submitAnimationJob.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(submitAnimationJob.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        if (submitAnimationJob.callBackType != null) {
            xmlSerializer.startTag("", "CallBackType");
            xmlSerializer.text(String.valueOf(submitAnimationJob.callBackType));
            xmlSerializer.endTag("", "CallBackType");
        }
        if (submitAnimationJob.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(submitAnimationJob.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        CallBackMqConfig callBackMqConfig = submitAnimationJob.callBackMqConfig;
        if (callBackMqConfig != null) {
            QCloudXml.toXml(xmlSerializer, callBackMqConfig, "CallBackMqConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
