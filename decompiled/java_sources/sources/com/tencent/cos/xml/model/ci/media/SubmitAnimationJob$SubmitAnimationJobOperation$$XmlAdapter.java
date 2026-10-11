package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.SubmitAnimationJob;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitAnimationJob$SubmitAnimationJobOperation$$XmlAdapter extends IXmlAdapter<SubmitAnimationJob.SubmitAnimationJobOperation> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitAnimationJob.SubmitAnimationJobOperation submitAnimationJobOperation, String str) throws IOException, XmlPullParserException {
        if (submitAnimationJobOperation == null) {
            return;
        }
        if (str == null) {
            str = "Operation";
        }
        xmlSerializer.startTag("", str);
        SubmitAnimationJob.SubmitAnimationJobAnimation submitAnimationJobAnimation = submitAnimationJobOperation.animation;
        if (submitAnimationJobAnimation != null) {
            QCloudXml.toXml(xmlSerializer, submitAnimationJobAnimation, "Animation");
        }
        if (submitAnimationJobOperation.templateId != null) {
            xmlSerializer.startTag("", "TemplateId");
            xmlSerializer.text(String.valueOf(submitAnimationJobOperation.templateId));
            xmlSerializer.endTag("", "TemplateId");
        }
        SubmitAnimationJob.SubmitAnimationJobOutput submitAnimationJobOutput = submitAnimationJobOperation.output;
        if (submitAnimationJobOutput != null) {
            QCloudXml.toXml(xmlSerializer, submitAnimationJobOutput, "Output");
        }
        if (submitAnimationJobOperation.userData != null) {
            xmlSerializer.startTag("", "UserData");
            xmlSerializer.text(String.valueOf(submitAnimationJobOperation.userData));
            xmlSerializer.endTag("", "UserData");
        }
        if (submitAnimationJobOperation.jobLevel != null) {
            xmlSerializer.startTag("", "JobLevel");
            xmlSerializer.text(String.valueOf(submitAnimationJobOperation.jobLevel));
            xmlSerializer.endTag("", "JobLevel");
        }
        xmlSerializer.endTag("", str);
    }
}
