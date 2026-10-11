package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.SubmitVoiceSeparateJob;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* renamed from: com.tencent.cos.xml.model.ci.media.SubmitVoiceSeparateJob$SubmitVoiceSeparateJobOperation$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15900xfa0153fb extends IXmlAdapter<SubmitVoiceSeparateJob.SubmitVoiceSeparateJobOperation> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitVoiceSeparateJob.SubmitVoiceSeparateJobOperation submitVoiceSeparateJobOperation, String str) throws IOException, XmlPullParserException {
        if (submitVoiceSeparateJobOperation == null) {
            return;
        }
        if (str == null) {
            str = "Operation";
        }
        xmlSerializer.startTag("", str);
        SubmitVoiceSeparateJob.VoiceSeparate voiceSeparate = submitVoiceSeparateJobOperation.voiceSeparate;
        if (voiceSeparate != null) {
            QCloudXml.toXml(xmlSerializer, voiceSeparate, "VoiceSeparate");
        }
        if (submitVoiceSeparateJobOperation.templateId != null) {
            xmlSerializer.startTag("", "TemplateId");
            xmlSerializer.text(String.valueOf(submitVoiceSeparateJobOperation.templateId));
            xmlSerializer.endTag("", "TemplateId");
        }
        SubmitVoiceSeparateJob.SubmitVoiceSeparateJobOutput submitVoiceSeparateJobOutput = submitVoiceSeparateJobOperation.output;
        if (submitVoiceSeparateJobOutput != null) {
            QCloudXml.toXml(xmlSerializer, submitVoiceSeparateJobOutput, "Output");
        }
        if (submitVoiceSeparateJobOperation.jobLevel != null) {
            xmlSerializer.startTag("", "JobLevel");
            xmlSerializer.text(String.valueOf(submitVoiceSeparateJobOperation.jobLevel));
            xmlSerializer.endTag("", "JobLevel");
        }
        xmlSerializer.endTag("", str);
    }
}
