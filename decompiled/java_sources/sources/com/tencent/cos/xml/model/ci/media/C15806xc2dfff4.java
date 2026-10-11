package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.SubmitDigitalWatermarkJob;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* renamed from: com.tencent.cos.xml.model.ci.media.SubmitDigitalWatermarkJob$SubmitDigitalWatermarkJobInput$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15806xc2dfff4 extends IXmlAdapter<SubmitDigitalWatermarkJob.SubmitDigitalWatermarkJobInput> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitDigitalWatermarkJob.SubmitDigitalWatermarkJobInput submitDigitalWatermarkJobInput, String str) throws IOException, XmlPullParserException {
        if (submitDigitalWatermarkJobInput == null) {
            return;
        }
        if (str == null) {
            str = "Input";
        }
        xmlSerializer.startTag("", str);
        if (submitDigitalWatermarkJobInput.object != null) {
            xmlSerializer.startTag("", "Object");
            xmlSerializer.text(String.valueOf(submitDigitalWatermarkJobInput.object));
            xmlSerializer.endTag("", "Object");
        }
        xmlSerializer.endTag("", str);
    }
}
