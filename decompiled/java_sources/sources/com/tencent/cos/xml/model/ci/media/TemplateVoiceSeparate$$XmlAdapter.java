package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.TemplateVoiceSeparate;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class TemplateVoiceSeparate$$XmlAdapter extends IXmlAdapter<TemplateVoiceSeparate> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, TemplateVoiceSeparate templateVoiceSeparate, String str) throws IOException, XmlPullParserException {
        if (templateVoiceSeparate == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (templateVoiceSeparate.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(templateVoiceSeparate.tag));
            xmlSerializer.endTag("", "Tag");
        }
        if (templateVoiceSeparate.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(templateVoiceSeparate.name));
            xmlSerializer.endTag("", "Name");
        }
        if (templateVoiceSeparate.audioMode != null) {
            xmlSerializer.startTag("", "AudioMode");
            xmlSerializer.text(String.valueOf(templateVoiceSeparate.audioMode));
            xmlSerializer.endTag("", "AudioMode");
        }
        TemplateVoiceSeparate.AudioConfig audioConfig = templateVoiceSeparate.audioConfig;
        if (audioConfig != null) {
            QCloudXml.toXml(xmlSerializer, audioConfig, "AudioConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
