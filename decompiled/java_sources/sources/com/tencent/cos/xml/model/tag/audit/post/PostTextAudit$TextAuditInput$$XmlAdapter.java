package com.tencent.cos.xml.model.tag.audit.post;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.cos.xml.model.tag.audit.bean.AuditUserInfo;
import com.tencent.cos.xml.model.tag.audit.post.PostTextAudit;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.apache.poi.smtp.MIMEHeaders;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostTextAudit$TextAuditInput$$XmlAdapter extends IXmlAdapter<PostTextAudit.TextAuditInput> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostTextAudit.TextAuditInput textAuditInput, String str) throws IOException, XmlPullParserException {
        if (textAuditInput == null) {
            return;
        }
        if (str == null) {
            str = "Input";
        }
        xmlSerializer.startTag("", str);
        if (textAuditInput.content != null) {
            xmlSerializer.startTag("", MIMEHeaders.KEY_CONTENT);
            xmlSerializer.text(String.valueOf(textAuditInput.content));
            xmlSerializer.endTag("", MIMEHeaders.KEY_CONTENT);
        }
        if (textAuditInput.object != null) {
            xmlSerializer.startTag("", "Object");
            xmlSerializer.text(String.valueOf(textAuditInput.object));
            xmlSerializer.endTag("", "Object");
        }
        if (textAuditInput.url != null) {
            xmlSerializer.startTag("", SsManifestParser.C4934e.f26671A);
            xmlSerializer.text(String.valueOf(textAuditInput.url));
            xmlSerializer.endTag("", SsManifestParser.C4934e.f26671A);
        }
        if (textAuditInput.dataId != null) {
            xmlSerializer.startTag("", "DataId");
            xmlSerializer.text(String.valueOf(textAuditInput.dataId));
            xmlSerializer.endTag("", "DataId");
        }
        AuditUserInfo auditUserInfo = textAuditInput.userInfo;
        if (auditUserInfo != null) {
            QCloudXml.toXml(xmlSerializer, auditUserInfo, "UserInfo");
        }
        xmlSerializer.endTag("", str);
    }
}
