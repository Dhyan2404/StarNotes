package com.tencent.cos.xml.model.ci.audit;

import com.tencent.cos.xml.model.ci.audit.AddAuditTextlibKeyword;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import org.apache.poi.smtp.MIMEHeaders;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class AddAuditTextlibKeyword$Keywords$$XmlAdapter extends IXmlAdapter<AddAuditTextlibKeyword.Keywords> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, AddAuditTextlibKeyword.Keywords keywords, String str) throws IOException, XmlPullParserException {
        if (keywords == null) {
            return;
        }
        if (str == null) {
            str = "Keywords";
        }
        xmlSerializer.startTag("", str);
        if (keywords.content != null) {
            xmlSerializer.startTag("", MIMEHeaders.KEY_CONTENT);
            xmlSerializer.text(String.valueOf(keywords.content));
            xmlSerializer.endTag("", MIMEHeaders.KEY_CONTENT);
        }
        if (keywords.label != null) {
            xmlSerializer.startTag("", "Label");
            xmlSerializer.text(String.valueOf(keywords.label));
            xmlSerializer.endTag("", "Label");
        }
        if (keywords.remark != null) {
            xmlSerializer.startTag("", "Remark");
            xmlSerializer.text(String.valueOf(keywords.remark));
            xmlSerializer.endTag("", "Remark");
        }
        xmlSerializer.endTag("", str);
    }
}
