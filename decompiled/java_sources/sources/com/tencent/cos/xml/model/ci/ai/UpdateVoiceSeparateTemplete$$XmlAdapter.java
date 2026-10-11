package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.AudioConfig;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class UpdateVoiceSeparateTemplete$$XmlAdapter extends IXmlAdapter<UpdateVoiceSeparateTemplete> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, UpdateVoiceSeparateTemplete updateVoiceSeparateTemplete, String str) throws IOException, XmlPullParserException {
        if (updateVoiceSeparateTemplete == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (updateVoiceSeparateTemplete.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(updateVoiceSeparateTemplete.tag));
            xmlSerializer.endTag("", "Tag");
        }
        if (updateVoiceSeparateTemplete.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(updateVoiceSeparateTemplete.name));
            xmlSerializer.endTag("", "Name");
        }
        if (updateVoiceSeparateTemplete.audioMode != null) {
            xmlSerializer.startTag("", "AudioMode");
            xmlSerializer.text(String.valueOf(updateVoiceSeparateTemplete.audioMode));
            xmlSerializer.endTag("", "AudioMode");
        }
        AudioConfig audioConfig = updateVoiceSeparateTemplete.audioConfig;
        if (audioConfig != null) {
            QCloudXml.toXml(xmlSerializer, audioConfig, "AudioConfig");
        }
        xmlSerializer.endTag("", str);
    }
}
