package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.VocalScore;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class VocalScore$VocalScoreOperation$$XmlAdapter extends IXmlAdapter<VocalScore.VocalScoreOperation> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, VocalScore.VocalScoreOperation vocalScoreOperation, String str) throws IOException, XmlPullParserException {
        if (vocalScoreOperation == null) {
            return;
        }
        if (str == null) {
            str = "Operation";
        }
        xmlSerializer.startTag("", str);
        VocalScore.VocalScoreVocalScore vocalScoreVocalScore = vocalScoreOperation.vocalScore;
        if (vocalScoreVocalScore != null) {
            QCloudXml.toXml(xmlSerializer, vocalScoreVocalScore, "VocalScore");
        }
        if (vocalScoreOperation.userData != null) {
            xmlSerializer.startTag("", "UserData");
            xmlSerializer.text(String.valueOf(vocalScoreOperation.userData));
            xmlSerializer.endTag("", "UserData");
        }
        if (vocalScoreOperation.jobLevel != null) {
            xmlSerializer.startTag("", "JobLevel");
            xmlSerializer.text(String.valueOf(vocalScoreOperation.jobLevel));
            xmlSerializer.endTag("", "JobLevel");
        }
        xmlSerializer.endTag("", str);
    }
}
