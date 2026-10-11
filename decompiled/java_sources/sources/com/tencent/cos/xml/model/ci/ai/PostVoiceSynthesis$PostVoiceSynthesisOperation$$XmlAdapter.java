package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.PostVoiceSynthesis;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostVoiceSynthesis$PostVoiceSynthesisOperation$$XmlAdapter extends IXmlAdapter<PostVoiceSynthesis.PostVoiceSynthesisOperation> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostVoiceSynthesis.PostVoiceSynthesisOperation postVoiceSynthesisOperation, String str) throws IOException, XmlPullParserException {
        if (postVoiceSynthesisOperation == null) {
            return;
        }
        if (str == null) {
            str = "Operation";
        }
        xmlSerializer.startTag("", str);
        if (postVoiceSynthesisOperation.templateId != null) {
            xmlSerializer.startTag("", "TemplateId");
            xmlSerializer.text(String.valueOf(postVoiceSynthesisOperation.templateId));
            xmlSerializer.endTag("", "TemplateId");
        }
        PostVoiceSynthesis.PostVoiceSynthesisTtsTpl postVoiceSynthesisTtsTpl = postVoiceSynthesisOperation.ttsTpl;
        if (postVoiceSynthesisTtsTpl != null) {
            QCloudXml.toXml(xmlSerializer, postVoiceSynthesisTtsTpl, "TtsTpl");
        }
        PostVoiceSynthesis.PostVoiceSynthesisTtsConfig postVoiceSynthesisTtsConfig = postVoiceSynthesisOperation.ttsConfig;
        if (postVoiceSynthesisTtsConfig != null) {
            QCloudXml.toXml(xmlSerializer, postVoiceSynthesisTtsConfig, "TtsConfig");
        }
        PostVoiceSynthesis.PostVoiceSynthesisOutput postVoiceSynthesisOutput = postVoiceSynthesisOperation.output;
        if (postVoiceSynthesisOutput != null) {
            QCloudXml.toXml(xmlSerializer, postVoiceSynthesisOutput, "Output");
        }
        if (postVoiceSynthesisOperation.userData != null) {
            xmlSerializer.startTag("", "UserData");
            xmlSerializer.text(String.valueOf(postVoiceSynthesisOperation.userData));
            xmlSerializer.endTag("", "UserData");
        }
        if (postVoiceSynthesisOperation.jobLevel != null) {
            xmlSerializer.startTag("", "JobLevel");
            xmlSerializer.text(String.valueOf(postVoiceSynthesisOperation.jobLevel));
            xmlSerializer.endTag("", "JobLevel");
        }
        xmlSerializer.endTag("", str);
    }
}
