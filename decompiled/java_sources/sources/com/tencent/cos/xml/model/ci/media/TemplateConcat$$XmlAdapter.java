package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.TemplateConcat;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class TemplateConcat$$XmlAdapter extends IXmlAdapter<TemplateConcat> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, TemplateConcat templateConcat, String str) throws IOException, XmlPullParserException {
        if (templateConcat == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (templateConcat.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(templateConcat.tag));
            xmlSerializer.endTag("", "Tag");
        }
        if (templateConcat.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(templateConcat.name));
            xmlSerializer.endTag("", "Name");
        }
        TemplateConcat.TemplateConcatConcatTemplate templateConcatConcatTemplate = templateConcat.concatTemplate;
        if (templateConcatConcatTemplate != null) {
            QCloudXml.toXml(xmlSerializer, templateConcatConcatTemplate, "ConcatTemplate");
        }
        xmlSerializer.endTag("", str);
    }
}
