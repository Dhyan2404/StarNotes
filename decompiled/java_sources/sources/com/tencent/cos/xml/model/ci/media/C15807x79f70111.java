package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.common.DigitalWatermark;
import com.tencent.cos.xml.model.ci.media.SubmitDigitalWatermarkJob;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* renamed from: com.tencent.cos.xml.model.ci.media.SubmitDigitalWatermarkJob$SubmitDigitalWatermarkJobOperation$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15807x79f70111 extends IXmlAdapter<SubmitDigitalWatermarkJob.SubmitDigitalWatermarkJobOperation> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitDigitalWatermarkJob.SubmitDigitalWatermarkJobOperation submitDigitalWatermarkJobOperation, String str) throws IOException, XmlPullParserException {
        if (submitDigitalWatermarkJobOperation == null) {
            return;
        }
        if (str == null) {
            str = "Operation";
        }
        xmlSerializer.startTag("", str);
        SubmitDigitalWatermarkJob.SubmitDigitalWatermarkJobOutput submitDigitalWatermarkJobOutput = submitDigitalWatermarkJobOperation.output;
        if (submitDigitalWatermarkJobOutput != null) {
            QCloudXml.toXml(xmlSerializer, submitDigitalWatermarkJobOutput, "Output");
        }
        DigitalWatermark digitalWatermark = submitDigitalWatermarkJobOperation.digitalWatermark;
        if (digitalWatermark != null) {
            QCloudXml.toXml(xmlSerializer, digitalWatermark, "DigitalWatermark");
        }
        if (submitDigitalWatermarkJobOperation.jobLevel != null) {
            xmlSerializer.startTag("", "JobLevel");
            xmlSerializer.text(String.valueOf(submitDigitalWatermarkJobOperation.jobLevel));
            xmlSerializer.endTag("", "JobLevel");
        }
        if (submitDigitalWatermarkJobOperation.userData != null) {
            xmlSerializer.startTag("", "UserData");
            xmlSerializer.text(String.valueOf(submitDigitalWatermarkJobOperation.userData));
            xmlSerializer.endTag("", "UserData");
        }
        xmlSerializer.endTag("", str);
    }
}
