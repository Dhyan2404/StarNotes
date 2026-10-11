package com.tencent.cos.xml.model.ci.audit;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class CreateAuditTextlib$$XmlAdapter extends IXmlAdapter<CreateAuditTextlib> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, CreateAuditTextlib createAuditTextlib, String str) throws IOException, XmlPullParserException {
        if (createAuditTextlib == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (createAuditTextlib.libName != null) {
            xmlSerializer.startTag("", "LibName");
            xmlSerializer.text(String.valueOf(createAuditTextlib.libName));
            xmlSerializer.endTag("", "LibName");
        }
        if (createAuditTextlib.suggestion != null) {
            xmlSerializer.startTag("", "Suggestion");
            xmlSerializer.text(String.valueOf(createAuditTextlib.suggestion));
            xmlSerializer.endTag("", "Suggestion");
        }
        if (createAuditTextlib.matchType != null) {
            xmlSerializer.startTag("", "MatchType");
            xmlSerializer.text(String.valueOf(createAuditTextlib.matchType));
            xmlSerializer.endTag("", "MatchType");
        }
        xmlSerializer.endTag("", str);
    }
}
