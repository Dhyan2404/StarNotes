package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.PostNoiseReduction;
import com.tencent.cos.xml.model.ci.common.NoiseReduction;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostNoiseReduction$PostNoiseReductionOperation$$XmlAdapter extends IXmlAdapter<PostNoiseReduction.PostNoiseReductionOperation> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostNoiseReduction.PostNoiseReductionOperation postNoiseReductionOperation, String str) throws IOException, XmlPullParserException {
        if (postNoiseReductionOperation == null) {
            return;
        }
        if (str == null) {
            str = "Operation";
        }
        xmlSerializer.startTag("", str);
        if (postNoiseReductionOperation.templateId != null) {
            xmlSerializer.startTag("", "TemplateId");
            xmlSerializer.text(String.valueOf(postNoiseReductionOperation.templateId));
            xmlSerializer.endTag("", "TemplateId");
        }
        NoiseReduction noiseReduction = postNoiseReductionOperation.noiseReduction;
        if (noiseReduction != null) {
            QCloudXml.toXml(xmlSerializer, noiseReduction, "NoiseReduction");
        }
        if (postNoiseReductionOperation.jobLevel != null) {
            xmlSerializer.startTag("", "JobLevel");
            xmlSerializer.text(String.valueOf(postNoiseReductionOperation.jobLevel));
            xmlSerializer.endTag("", "JobLevel");
        }
        if (postNoiseReductionOperation.userData != null) {
            xmlSerializer.startTag("", "UserData");
            xmlSerializer.text(String.valueOf(postNoiseReductionOperation.userData));
            xmlSerializer.endTag("", "UserData");
        }
        PostNoiseReduction.PostNoiseReductionOutput postNoiseReductionOutput = postNoiseReductionOperation.output;
        if (postNoiseReductionOutput != null) {
            QCloudXml.toXml(xmlSerializer, postNoiseReductionOutput, "Output");
        }
        xmlSerializer.endTag("", str);
    }
}
