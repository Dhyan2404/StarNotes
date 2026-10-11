package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.PostVideoTargetRec;
import com.tencent.cos.xml.model.ci.common.VideoTargetRec;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostVideoTargetRec$PostVideoTargetRecOperation$$XmlAdapter extends IXmlAdapter<PostVideoTargetRec.PostVideoTargetRecOperation> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostVideoTargetRec.PostVideoTargetRecOperation postVideoTargetRecOperation, String str) throws IOException, XmlPullParserException {
        if (postVideoTargetRecOperation == null) {
            return;
        }
        if (str == null) {
            str = "Operation";
        }
        xmlSerializer.startTag("", str);
        if (postVideoTargetRecOperation.templateId != null) {
            xmlSerializer.startTag("", "TemplateId");
            xmlSerializer.text(String.valueOf(postVideoTargetRecOperation.templateId));
            xmlSerializer.endTag("", "TemplateId");
        }
        VideoTargetRec videoTargetRec = postVideoTargetRecOperation.videoTargetRec;
        if (videoTargetRec != null) {
            QCloudXml.toXml(xmlSerializer, videoTargetRec, "VideoTargetRec");
        }
        if (postVideoTargetRecOperation.userData != null) {
            xmlSerializer.startTag("", "UserData");
            xmlSerializer.text(String.valueOf(postVideoTargetRecOperation.userData));
            xmlSerializer.endTag("", "UserData");
        }
        if (postVideoTargetRecOperation.jobLevel != null) {
            xmlSerializer.startTag("", "JobLevel");
            xmlSerializer.text(String.valueOf(postVideoTargetRecOperation.jobLevel));
            xmlSerializer.endTag("", "JobLevel");
        }
        xmlSerializer.endTag("", str);
    }
}
