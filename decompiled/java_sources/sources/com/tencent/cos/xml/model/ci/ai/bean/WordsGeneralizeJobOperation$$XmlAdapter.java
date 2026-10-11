package com.tencent.cos.xml.model.ci.ai.bean;

import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class WordsGeneralizeJobOperation$$XmlAdapter extends IXmlAdapter<WordsGeneralizeJobOperation> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, WordsGeneralizeJobOperation wordsGeneralizeJobOperation, String str) throws IOException, XmlPullParserException {
        if (wordsGeneralizeJobOperation == null) {
            return;
        }
        if (str == null) {
            str = "Operation";
        }
        xmlSerializer.startTag("", str);
        WordsGeneralize wordsGeneralize = wordsGeneralizeJobOperation.wordsGeneralize;
        if (wordsGeneralize != null) {
            QCloudXml.toXml(xmlSerializer, wordsGeneralize, "WordsGeneralize");
        }
        if (wordsGeneralizeJobOperation.userData != null) {
            xmlSerializer.startTag("", "UserData");
            xmlSerializer.text(String.valueOf(wordsGeneralizeJobOperation.userData));
            xmlSerializer.endTag("", "UserData");
        }
        xmlSerializer.startTag("", "JobLevel");
        xmlSerializer.text(String.valueOf(wordsGeneralizeJobOperation.jobLevel));
        xmlSerializer.endTag("", "JobLevel");
        xmlSerializer.endTag("", str);
    }
}
