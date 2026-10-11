package com.tencent.cos.xml.model.ci.audit;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class UpdateAuditTextlib$$XmlAdapter extends IXmlAdapter<UpdateAuditTextlib> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, UpdateAuditTextlib updateAuditTextlib, String str) throws IOException, XmlPullParserException {
        if (updateAuditTextlib == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (updateAuditTextlib.libName != null) {
            xmlSerializer.startTag("", "LibName");
            xmlSerializer.text(String.valueOf(updateAuditTextlib.libName));
            xmlSerializer.endTag("", "LibName");
        }
        if (updateAuditTextlib.suggestion != null) {
            xmlSerializer.startTag("", "Suggestion");
            xmlSerializer.text(String.valueOf(updateAuditTextlib.suggestion));
            xmlSerializer.endTag("", "Suggestion");
        }
        xmlSerializer.endTag("", str);
    }
}
