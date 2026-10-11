package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.common.DigitalWatermark;
import com.tencent.cos.xml.model.ci.media.SubmitTranscodeJob;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitTranscodeJob$SubmitTranscodeJobOperation$$XmlAdapter extends IXmlAdapter<SubmitTranscodeJob.SubmitTranscodeJobOperation> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitTranscodeJob.SubmitTranscodeJobOperation submitTranscodeJobOperation, String str) throws IOException, XmlPullParserException {
        if (submitTranscodeJobOperation == null) {
            return;
        }
        if (str == null) {
            str = "Operation";
        }
        xmlSerializer.startTag("", str);
        if (submitTranscodeJobOperation.templateId != null) {
            xmlSerializer.startTag("", "TemplateId");
            xmlSerializer.text(String.valueOf(submitTranscodeJobOperation.templateId));
            xmlSerializer.endTag("", "TemplateId");
        }
        SubmitTranscodeJob.SubmitTranscodeJobTranscode submitTranscodeJobTranscode = submitTranscodeJobOperation.transcode;
        if (submitTranscodeJobTranscode != null) {
            QCloudXml.toXml(xmlSerializer, submitTranscodeJobTranscode, "Transcode");
        }
        if (submitTranscodeJobOperation.watermarkTemplateId != null) {
            for (int i = 0; i < submitTranscodeJobOperation.watermarkTemplateId.size(); i++) {
                xmlSerializer.startTag("", "WatermarkTemplateId");
                xmlSerializer.text(String.valueOf(submitTranscodeJobOperation.watermarkTemplateId.get(i)));
                xmlSerializer.endTag("", "WatermarkTemplateId");
            }
        }
        if (submitTranscodeJobOperation.watermark != null) {
            for (int i2 = 0; i2 < submitTranscodeJobOperation.watermark.size(); i2++) {
                QCloudXml.toXml(xmlSerializer, submitTranscodeJobOperation.watermark.get(i2), "Watermark");
            }
        }
        SubmitTranscodeJob.SubmitTranscodeJobRemoveWatermark submitTranscodeJobRemoveWatermark = submitTranscodeJobOperation.removeWatermark;
        if (submitTranscodeJobRemoveWatermark != null) {
            QCloudXml.toXml(xmlSerializer, submitTranscodeJobRemoveWatermark, "RemoveWatermark");
        }
        SubmitTranscodeJob.SubmitTranscodeJobSubtitles submitTranscodeJobSubtitles = submitTranscodeJobOperation.subtitles;
        if (submitTranscodeJobSubtitles != null) {
            QCloudXml.toXml(xmlSerializer, submitTranscodeJobSubtitles, "Subtitles");
        }
        DigitalWatermark digitalWatermark = submitTranscodeJobOperation.digitalWatermark;
        if (digitalWatermark != null) {
            QCloudXml.toXml(xmlSerializer, digitalWatermark, "DigitalWatermark");
        }
        SubmitTranscodeJob.SubmitTranscodeJobOutput submitTranscodeJobOutput = submitTranscodeJobOperation.output;
        if (submitTranscodeJobOutput != null) {
            QCloudXml.toXml(xmlSerializer, submitTranscodeJobOutput, "Output");
        }
        if (submitTranscodeJobOperation.userData != null) {
            xmlSerializer.startTag("", "UserData");
            xmlSerializer.text(String.valueOf(submitTranscodeJobOperation.userData));
            xmlSerializer.endTag("", "UserData");
        }
        if (submitTranscodeJobOperation.jobLevel != null) {
            xmlSerializer.startTag("", "JobLevel");
            xmlSerializer.text(String.valueOf(submitTranscodeJobOperation.jobLevel));
            xmlSerializer.endTag("", "JobLevel");
        }
        xmlSerializer.endTag("", str);
    }
}
