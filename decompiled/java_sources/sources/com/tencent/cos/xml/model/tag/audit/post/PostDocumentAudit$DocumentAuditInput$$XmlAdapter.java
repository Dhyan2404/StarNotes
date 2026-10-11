package com.tencent.cos.xml.model.tag.audit.post;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.cos.xml.model.tag.audit.bean.AuditUserInfo;
import com.tencent.cos.xml.model.tag.audit.post.PostDocumentAudit;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostDocumentAudit$DocumentAuditInput$$XmlAdapter extends IXmlAdapter<PostDocumentAudit.DocumentAuditInput> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostDocumentAudit.DocumentAuditInput documentAuditInput, String str) throws IOException, XmlPullParserException {
        if (documentAuditInput == null) {
            return;
        }
        if (str == null) {
            str = "Input";
        }
        xmlSerializer.startTag("", str);
        if (documentAuditInput.type != null) {
            xmlSerializer.startTag("", "Type");
            xmlSerializer.text(String.valueOf(documentAuditInput.type));
            xmlSerializer.endTag("", "Type");
        }
        if (documentAuditInput.object != null) {
            xmlSerializer.startTag("", "Object");
            xmlSerializer.text(String.valueOf(documentAuditInput.object));
            xmlSerializer.endTag("", "Object");
        }
        if (documentAuditInput.url != null) {
            xmlSerializer.startTag("", SsManifestParser.C4934e.f26671A);
            xmlSerializer.text(String.valueOf(documentAuditInput.url));
            xmlSerializer.endTag("", SsManifestParser.C4934e.f26671A);
        }
        if (documentAuditInput.dataId != null) {
            xmlSerializer.startTag("", "DataId");
            xmlSerializer.text(String.valueOf(documentAuditInput.dataId));
            xmlSerializer.endTag("", "DataId");
        }
        AuditUserInfo auditUserInfo = documentAuditInput.userInfo;
        if (auditUserInfo != null) {
            QCloudXml.toXml(xmlSerializer, auditUserInfo, "UserInfo");
        }
        xmlSerializer.endTag("", str);
    }
}
