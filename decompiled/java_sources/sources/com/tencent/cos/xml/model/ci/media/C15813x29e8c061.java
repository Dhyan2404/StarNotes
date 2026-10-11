package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.SubmitExtractDigitalWatermarkJob;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* renamed from: com.tencent.cos.xml.model.ci.media.SubmitExtractDigitalWatermarkJob$SubmitExtractDigitalWatermarkJobExtractDigitalWatermark$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15813x29e8c061 extends IXmlAdapter<SubmitExtractDigitalWatermarkJob.SubmitExtractDigitalWatermarkJobExtractDigitalWatermark> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitExtractDigitalWatermarkJob.SubmitExtractDigitalWatermarkJobExtractDigitalWatermark submitExtractDigitalWatermarkJobExtractDigitalWatermark, String str) throws IOException, XmlPullParserException {
        if (submitExtractDigitalWatermarkJobExtractDigitalWatermark == null) {
            return;
        }
        if (str == null) {
            str = "ExtractDigitalWatermark";
        }
        xmlSerializer.startTag("", str);
        if (submitExtractDigitalWatermarkJobExtractDigitalWatermark.type != null) {
            xmlSerializer.startTag("", "Type");
            xmlSerializer.text(String.valueOf(submitExtractDigitalWatermarkJobExtractDigitalWatermark.type));
            xmlSerializer.endTag("", "Type");
        }
        if (submitExtractDigitalWatermarkJobExtractDigitalWatermark.version != null) {
            xmlSerializer.startTag("", "Version");
            xmlSerializer.text(String.valueOf(submitExtractDigitalWatermarkJobExtractDigitalWatermark.version));
            xmlSerializer.endTag("", "Version");
        }
        xmlSerializer.endTag("", str);
    }
}
