package com.tencent.cos.xml.model.ci.audit;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.audit.CreateStrategy;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class UpdateStrategy$$XmlAdapter extends IXmlAdapter<UpdateStrategy> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, UpdateStrategy updateStrategy, String str) throws IOException, XmlPullParserException {
        if (updateStrategy == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        CreateStrategy.Labels labels = updateStrategy.labels;
        if (labels != null) {
            QCloudXml.toXml(xmlSerializer, labels, "Labels");
        }
        if (updateStrategy.textLibs != null) {
            for (int i = 0; i < updateStrategy.textLibs.size(); i++) {
                xmlSerializer.startTag("", "TextLibs");
                xmlSerializer.text(String.valueOf(updateStrategy.textLibs.get(i)));
                xmlSerializer.endTag("", "TextLibs");
            }
        }
        xmlSerializer.endTag("", str);
    }
}
