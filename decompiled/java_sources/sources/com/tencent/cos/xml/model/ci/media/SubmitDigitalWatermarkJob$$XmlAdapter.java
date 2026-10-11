package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.SubmitDigitalWatermarkJob;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitDigitalWatermarkJob$$XmlAdapter extends IXmlAdapter<SubmitDigitalWatermarkJob> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitDigitalWatermarkJob submitDigitalWatermarkJob, String str) throws IOException, XmlPullParserException {
        if (submitDigitalWatermarkJob == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (submitDigitalWatermarkJob.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(submitDigitalWatermarkJob.tag));
            xmlSerializer.endTag("", "Tag");
        }
        SubmitDigitalWatermarkJob.SubmitDigitalWatermarkJobInput submitDigitalWatermarkJobInput = submitDigitalWatermarkJob.input;
        if (submitDigitalWatermarkJobInput != null) {
            QCloudXml.toXml(xmlSerializer, submitDigitalWatermarkJobInput, "Input");
        }
        SubmitDigitalWatermarkJob.SubmitDigitalWatermarkJobOperation submitDigitalWatermarkJobOperation = submitDigitalWatermarkJob.operation;
        if (submitDigitalWatermarkJobOperation != null) {
            QCloudXml.toXml(xmlSerializer, submitDigitalWatermarkJobOperation, "Operation");
        }
        if (submitDigitalWatermarkJob.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(submitDigitalWatermarkJob.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        if (submitDigitalWatermarkJob.callBackType != null) {
            xmlSerializer.startTag("", "CallBackType");
            xmlSerializer.text(String.valueOf(submitDigitalWatermarkJob.callBackType));
            xmlSerializer.endTag("", "CallBackType");
        }
        if (submitDigitalWatermarkJob.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(submitDigitalWatermarkJob.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        CallBackMqConfig callBackMqConfig = submitDigitalWatermarkJob.callBackMqConfig;
        if (callBackMqConfig != null) {
            QCloudXml.toXml(xmlSerializer, callBackMqConfig, "CallBackMqConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
