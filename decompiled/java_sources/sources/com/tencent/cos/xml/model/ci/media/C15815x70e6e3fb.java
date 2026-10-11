package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.SubmitExtractDigitalWatermarkJob;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* renamed from: com.tencent.cos.xml.model.ci.media.SubmitExtractDigitalWatermarkJob$SubmitExtractDigitalWatermarkJobOperation$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15815x70e6e3fb extends IXmlAdapter<SubmitExtractDigitalWatermarkJob.SubmitExtractDigitalWatermarkJobOperation> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitExtractDigitalWatermarkJob.SubmitExtractDigitalWatermarkJobOperation submitExtractDigitalWatermarkJobOperation, String str) throws IOException, XmlPullParserException {
        if (submitExtractDigitalWatermarkJobOperation == null) {
            return;
        }
        if (str == null) {
            str = "Operation";
        }
        xmlSerializer.startTag("", str);
        SubmitExtractDigitalWatermarkJob.SubmitExtractDigitalWatermarkJobExtractDigitalWatermark submitExtractDigitalWatermarkJobExtractDigitalWatermark = submitExtractDigitalWatermarkJobOperation.extractDigitalWatermark;
        if (submitExtractDigitalWatermarkJobExtractDigitalWatermark != null) {
            QCloudXml.toXml(xmlSerializer, submitExtractDigitalWatermarkJobExtractDigitalWatermark, "ExtractDigitalWatermark");
        }
        if (submitExtractDigitalWatermarkJobOperation.jobLevel != null) {
            xmlSerializer.startTag("", "JobLevel");
            xmlSerializer.text(String.valueOf(submitExtractDigitalWatermarkJobOperation.jobLevel));
            xmlSerializer.endTag("", "JobLevel");
        }
        if (submitExtractDigitalWatermarkJobOperation.userData != null) {
            xmlSerializer.startTag("", "UserData");
            xmlSerializer.text(String.valueOf(submitExtractDigitalWatermarkJobOperation.userData));
            xmlSerializer.endTag("", "UserData");
        }
        xmlSerializer.endTag("", str);
    }
}
