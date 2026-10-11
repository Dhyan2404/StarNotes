package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.SubmitSnapshotJob;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitSnapshotJob$$XmlAdapter extends IXmlAdapter<SubmitSnapshotJob> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitSnapshotJob submitSnapshotJob, String str) throws IOException, XmlPullParserException {
        if (submitSnapshotJob == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (submitSnapshotJob.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(submitSnapshotJob.tag));
            xmlSerializer.endTag("", "Tag");
        }
        SubmitSnapshotJob.SubmitSnapshotJobInput submitSnapshotJobInput = submitSnapshotJob.input;
        if (submitSnapshotJobInput != null) {
            QCloudXml.toXml(xmlSerializer, submitSnapshotJobInput, "Input");
        }
        SubmitSnapshotJob.SubmitSnapshotJobOperation submitSnapshotJobOperation = submitSnapshotJob.operation;
        if (submitSnapshotJobOperation != null) {
            QCloudXml.toXml(xmlSerializer, submitSnapshotJobOperation, "Operation");
        }
        if (submitSnapshotJob.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(submitSnapshotJob.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        if (submitSnapshotJob.callBackType != null) {
            xmlSerializer.startTag("", "CallBackType");
            xmlSerializer.text(String.valueOf(submitSnapshotJob.callBackType));
            xmlSerializer.endTag("", "CallBackType");
        }
        if (submitSnapshotJob.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(submitSnapshotJob.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        CallBackMqConfig callBackMqConfig = submitSnapshotJob.callBackMqConfig;
        if (callBackMqConfig != null) {
            QCloudXml.toXml(xmlSerializer, callBackMqConfig, "CallBackMqConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
