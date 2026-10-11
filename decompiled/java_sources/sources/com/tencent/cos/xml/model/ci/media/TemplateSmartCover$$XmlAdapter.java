package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.TemplateSmartCover;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class TemplateSmartCover$$XmlAdapter extends IXmlAdapter<TemplateSmartCover> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, TemplateSmartCover templateSmartCover, String str) throws IOException, XmlPullParserException {
        if (templateSmartCover == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (templateSmartCover.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(templateSmartCover.tag));
            xmlSerializer.endTag("", "Tag");
        }
        if (templateSmartCover.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(templateSmartCover.name));
            xmlSerializer.endTag("", "Name");
        }
        TemplateSmartCover.TemplateSmartCoverSmartCover templateSmartCoverSmartCover = templateSmartCover.smartCover;
        if (templateSmartCoverSmartCover != null) {
            QCloudXml.toXml(xmlSerializer, templateSmartCoverSmartCover, "SmartCover");
        }
        xmlSerializer.endTag("", str);
    }
}
