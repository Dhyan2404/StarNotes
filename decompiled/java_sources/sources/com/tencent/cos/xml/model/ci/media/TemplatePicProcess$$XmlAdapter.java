package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.PicProcess;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class TemplatePicProcess$$XmlAdapter extends IXmlAdapter<TemplatePicProcess> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, TemplatePicProcess templatePicProcess, String str) throws IOException, XmlPullParserException {
        if (templatePicProcess == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (templatePicProcess.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(templatePicProcess.tag));
            xmlSerializer.endTag("", "Tag");
        }
        if (templatePicProcess.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(templatePicProcess.name));
            xmlSerializer.endTag("", "Name");
        }
        PicProcess picProcess = templatePicProcess.picProcess;
        if (picProcess != null) {
            QCloudXml.toXml(xmlSerializer, picProcess, "PicProcess");
        }
        xmlSerializer.endTag("", str);
    }
}
