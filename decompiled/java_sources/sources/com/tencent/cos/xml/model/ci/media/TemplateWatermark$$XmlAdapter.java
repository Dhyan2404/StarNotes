package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.TemplateWatermark;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class TemplateWatermark$$XmlAdapter extends IXmlAdapter<TemplateWatermark> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, TemplateWatermark templateWatermark, String str) throws IOException, XmlPullParserException {
        if (templateWatermark == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (templateWatermark.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(templateWatermark.tag));
            xmlSerializer.endTag("", "Tag");
        }
        if (templateWatermark.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(templateWatermark.name));
            xmlSerializer.endTag("", "Name");
        }
        TemplateWatermark.Watermark watermark = templateWatermark.watermark;
        if (watermark != null) {
            QCloudXml.toXml(xmlSerializer, watermark, "Watermark");
        }
        xmlSerializer.endTag("", str);
    }
}
