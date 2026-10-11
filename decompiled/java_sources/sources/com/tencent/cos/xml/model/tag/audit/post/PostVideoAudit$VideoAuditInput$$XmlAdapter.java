package com.tencent.cos.xml.model.tag.audit.post;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.cos.xml.model.tag.audit.bean.AuditEncryption;
import com.tencent.cos.xml.model.tag.audit.bean.AuditUserInfo;
import com.tencent.cos.xml.model.tag.audit.post.PostVideoAudit;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostVideoAudit$VideoAuditInput$$XmlAdapter extends IXmlAdapter<PostVideoAudit.VideoAuditInput> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostVideoAudit.VideoAuditInput videoAuditInput, String str) throws IOException, XmlPullParserException {
        if (videoAuditInput == null) {
            return;
        }
        if (str == null) {
            str = "Input";
        }
        xmlSerializer.startTag("", str);
        AuditEncryption auditEncryption = videoAuditInput.encryption;
        if (auditEncryption != null) {
            QCloudXml.toXml(xmlSerializer, auditEncryption, "Encryption");
        }
        if (videoAuditInput.object != null) {
            xmlSerializer.startTag("", "Object");
            xmlSerializer.text(String.valueOf(videoAuditInput.object));
            xmlSerializer.endTag("", "Object");
        }
        if (videoAuditInput.url != null) {
            xmlSerializer.startTag("", SsManifestParser.C4934e.f26671A);
            xmlSerializer.text(String.valueOf(videoAuditInput.url));
            xmlSerializer.endTag("", SsManifestParser.C4934e.f26671A);
        }
        if (videoAuditInput.dataId != null) {
            xmlSerializer.startTag("", "DataId");
            xmlSerializer.text(String.valueOf(videoAuditInput.dataId));
            xmlSerializer.endTag("", "DataId");
        }
        AuditUserInfo auditUserInfo = videoAuditInput.userInfo;
        if (auditUserInfo != null) {
            QCloudXml.toXml(xmlSerializer, auditUserInfo, "UserInfo");
        }
        xmlSerializer.endTag("", str);
    }
}
