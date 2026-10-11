package com.tencent.cos.xml.model.ci.ai.bean;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class CreateWordsGeneralizeJob$$XmlAdapter extends IXmlAdapter<CreateWordsGeneralizeJob> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, CreateWordsGeneralizeJob createWordsGeneralizeJob, String str) throws IOException, XmlPullParserException {
        if (createWordsGeneralizeJob == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (createWordsGeneralizeJob.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(createWordsGeneralizeJob.tag));
            xmlSerializer.endTag("", "Tag");
        }
        WordsGeneralizeJobInput wordsGeneralizeJobInput = createWordsGeneralizeJob.input;
        if (wordsGeneralizeJobInput != null) {
            QCloudXml.toXml(xmlSerializer, wordsGeneralizeJobInput, "Input");
        }
        WordsGeneralizeJobOperation wordsGeneralizeJobOperation = createWordsGeneralizeJob.operation;
        if (wordsGeneralizeJobOperation != null) {
            QCloudXml.toXml(xmlSerializer, wordsGeneralizeJobOperation, "Operation");
        }
        if (createWordsGeneralizeJob.queueId != null) {
            xmlSerializer.startTag("", "QueueId");
            xmlSerializer.text(String.valueOf(createWordsGeneralizeJob.queueId));
            xmlSerializer.endTag("", "QueueId");
        }
        if (createWordsGeneralizeJob.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(createWordsGeneralizeJob.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        if (createWordsGeneralizeJob.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(createWordsGeneralizeJob.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        xmlSerializer.endTag("", str);
    }
}
