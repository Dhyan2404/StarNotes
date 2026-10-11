package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.ai.VocalScore;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class VocalScore$$XmlAdapter extends IXmlAdapter<VocalScore> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, VocalScore vocalScore, String str) throws IOException, XmlPullParserException {
        if (vocalScore == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (vocalScore.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(vocalScore.tag));
            xmlSerializer.endTag("", "Tag");
        }
        VocalScore.VocalScoreInput vocalScoreInput = vocalScore.input;
        if (vocalScoreInput != null) {
            QCloudXml.toXml(xmlSerializer, vocalScoreInput, "Input");
        }
        VocalScore.VocalScoreOperation vocalScoreOperation = vocalScore.operation;
        if (vocalScoreOperation != null) {
            QCloudXml.toXml(xmlSerializer, vocalScoreOperation, "Operation");
        }
        if (vocalScore.callBackFormat != null) {
            xmlSerializer.startTag("", "CallBackFormat");
            xmlSerializer.text(String.valueOf(vocalScore.callBackFormat));
            xmlSerializer.endTag("", "CallBackFormat");
        }
        if (vocalScore.callBackType != null) {
            xmlSerializer.startTag("", "CallBackType");
            xmlSerializer.text(String.valueOf(vocalScore.callBackType));
            xmlSerializer.endTag("", "CallBackType");
        }
        if (vocalScore.callBack != null) {
            xmlSerializer.startTag("", "CallBack");
            xmlSerializer.text(String.valueOf(vocalScore.callBack));
            xmlSerializer.endTag("", "CallBack");
        }
        VocalScore.CallBackMqConfig callBackMqConfig = vocalScore.callBackMqConfig;
        if (callBackMqConfig != null) {
            QCloudXml.toXml(xmlSerializer, callBackMqConfig, "CallBackMqConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
