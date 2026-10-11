package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.SubmitVideoMontageJob;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitVideoMontageJob$SubmitVideoMontageJobOperation$$XmlAdapter extends IXmlAdapter<SubmitVideoMontageJob.SubmitVideoMontageJobOperation> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitVideoMontageJob.SubmitVideoMontageJobOperation submitVideoMontageJobOperation, String str) throws IOException, XmlPullParserException {
        if (submitVideoMontageJobOperation == null) {
            return;
        }
        if (str == null) {
            str = "Operation";
        }
        xmlSerializer.startTag("", str);
        SubmitVideoMontageJob.SubmitVideoMontageJobVideoMontage submitVideoMontageJobVideoMontage = submitVideoMontageJobOperation.videoMontage;
        if (submitVideoMontageJobVideoMontage != null) {
            QCloudXml.toXml(xmlSerializer, submitVideoMontageJobVideoMontage, "VideoMontage");
        }
        if (submitVideoMontageJobOperation.templateId != null) {
            xmlSerializer.startTag("", "TemplateId");
            xmlSerializer.text(String.valueOf(submitVideoMontageJobOperation.templateId));
            xmlSerializer.endTag("", "TemplateId");
        }
        SubmitVideoMontageJob.SubmitVideoMontageJobOutput submitVideoMontageJobOutput = submitVideoMontageJobOperation.output;
        if (submitVideoMontageJobOutput != null) {
            QCloudXml.toXml(xmlSerializer, submitVideoMontageJobOutput, "Output");
        }
        if (submitVideoMontageJobOperation.userData != null) {
            xmlSerializer.startTag("", "UserData");
            xmlSerializer.text(String.valueOf(submitVideoMontageJobOperation.userData));
            xmlSerializer.endTag("", "UserData");
        }
        if (submitVideoMontageJobOperation.jobLevel != null) {
            xmlSerializer.startTag("", "JobLevel");
            xmlSerializer.text(String.valueOf(submitVideoMontageJobOperation.jobLevel));
            xmlSerializer.endTag("", "JobLevel");
        }
        xmlSerializer.endTag("", str);
    }
}
