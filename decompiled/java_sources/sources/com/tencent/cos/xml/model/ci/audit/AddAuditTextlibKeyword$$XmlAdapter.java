package com.tencent.cos.xml.model.ci.audit;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class AddAuditTextlibKeyword$$XmlAdapter extends IXmlAdapter<AddAuditTextlibKeyword> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, AddAuditTextlibKeyword addAuditTextlibKeyword, String str) throws IOException, XmlPullParserException {
        if (addAuditTextlibKeyword == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (addAuditTextlibKeyword.keywords != null) {
            for (int i = 0; i < addAuditTextlibKeyword.keywords.size(); i++) {
                QCloudXml.toXml(xmlSerializer, addAuditTextlibKeyword.keywords.get(i), "Keywords");
            }
        }
        xmlSerializer.endTag("", str);
    }
}
