package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.PostTranslation;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostTranslation$PostTranslationOperation$$XmlAdapter extends IXmlAdapter<PostTranslation.PostTranslationOperation> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostTranslation.PostTranslationOperation postTranslationOperation, String str) throws IOException, XmlPullParserException {
        if (postTranslationOperation == null) {
            return;
        }
        if (str == null) {
            str = "Operation";
        }
        xmlSerializer.startTag("", str);
        PostTranslation.PostTranslationTranslation postTranslationTranslation = postTranslationOperation.translation;
        if (postTranslationTranslation != null) {
            QCloudXml.toXml(xmlSerializer, postTranslationTranslation, "Translation");
        }
        PostTranslation.PostTranslationOutput postTranslationOutput = postTranslationOperation.output;
        if (postTranslationOutput != null) {
            QCloudXml.toXml(xmlSerializer, postTranslationOutput, "Output");
        }
        if (postTranslationOperation.userData != null) {
            xmlSerializer.startTag("", "UserData");
            xmlSerializer.text(String.valueOf(postTranslationOperation.userData));
            xmlSerializer.endTag("", "UserData");
        }
        if (postTranslationOperation.jobLevel != null) {
            xmlSerializer.startTag("", "JobLevel");
            xmlSerializer.text(String.valueOf(postTranslationOperation.jobLevel));
            xmlSerializer.endTag("", "JobLevel");
        }
        if (postTranslationOperation.noNeedOutput != null) {
            xmlSerializer.startTag("", "NoNeedOutput");
            xmlSerializer.text(String.valueOf(postTranslationOperation.noNeedOutput));
            xmlSerializer.endTag("", "NoNeedOutput");
        }
        xmlSerializer.endTag("", str);
    }
}
