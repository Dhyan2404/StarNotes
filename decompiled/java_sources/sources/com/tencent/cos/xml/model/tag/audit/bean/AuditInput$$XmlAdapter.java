package com.tencent.cos.xml.model.tag.audit.bean;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class AuditInput$$XmlAdapter extends IXmlAdapter<AuditInput> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, AuditInput auditInput, String str) throws IOException, XmlPullParserException {
        if (auditInput == null) {
            return;
        }
        if (str == null) {
            str = "Input";
        }
        xmlSerializer.startTag("", str);
        if (auditInput.object != null) {
            xmlSerializer.startTag("", "Object");
            xmlSerializer.text(String.valueOf(auditInput.object));
            xmlSerializer.endTag("", "Object");
        }
        if (auditInput.url != null) {
            xmlSerializer.startTag("", SsManifestParser.C4934e.f26671A);
            xmlSerializer.text(String.valueOf(auditInput.url));
            xmlSerializer.endTag("", SsManifestParser.C4934e.f26671A);
        }
        if (auditInput.dataId != null) {
            xmlSerializer.startTag("", "DataId");
            xmlSerializer.text(String.valueOf(auditInput.dataId));
            xmlSerializer.endTag("", "DataId");
        }
        AuditUserInfo auditUserInfo = auditInput.userInfo;
        if (auditUserInfo != null) {
            QCloudXml.toXml(xmlSerializer, auditUserInfo, "UserInfo");
        }
        xmlSerializer.endTag("", str);
    }
}
