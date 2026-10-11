package com.tencent.cos.xml.model.ci.audit;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.audit.CreateStrategy;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class CreateStrategy$$XmlAdapter extends IXmlAdapter<CreateStrategy> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, CreateStrategy createStrategy, String str) throws IOException, XmlPullParserException {
        if (createStrategy == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (createStrategy.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(createStrategy.name));
            xmlSerializer.endTag("", "Name");
        }
        CreateStrategy.Labels labels = createStrategy.labels;
        if (labels != null) {
            QCloudXml.toXml(xmlSerializer, labels, "Labels");
        }
        if (createStrategy.textLibs != null) {
            for (int i = 0; i < createStrategy.textLibs.size(); i++) {
                xmlSerializer.startTag("", "TextLibs");
                xmlSerializer.text(String.valueOf(createStrategy.textLibs.get(i)));
                xmlSerializer.endTag("", "TextLibs");
            }
        }
        xmlSerializer.endTag("", str);
    }
}
