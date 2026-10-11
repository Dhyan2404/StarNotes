package com.tencent.cos.xml.model.tag.audit.post;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.cos.xml.model.tag.audit.bean.AuditEncryption;
import com.tencent.cos.xml.model.tag.audit.bean.AuditUserInfo;
import com.tencent.cos.xml.model.tag.audit.post.PostImagesAudit;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.apache.poi.smtp.MIMEHeaders;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostImagesAudit$ImagesAuditInput$$XmlAdapter extends IXmlAdapter<PostImagesAudit.ImagesAuditInput> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostImagesAudit.ImagesAuditInput imagesAuditInput, String str) throws IOException, XmlPullParserException {
        if (imagesAuditInput == null) {
            return;
        }
        if (str == null) {
            str = "Input";
        }
        xmlSerializer.startTag("", str);
        if (imagesAuditInput.content != null) {
            xmlSerializer.startTag("", MIMEHeaders.KEY_CONTENT);
            xmlSerializer.text(String.valueOf(imagesAuditInput.content));
            xmlSerializer.endTag("", MIMEHeaders.KEY_CONTENT);
        }
        if (imagesAuditInput.interval != 0) {
            xmlSerializer.startTag("", "Interval");
            xmlSerializer.text(String.valueOf(imagesAuditInput.interval));
            xmlSerializer.endTag("", "Interval");
        }
        if (imagesAuditInput.maxFrames != 0) {
            xmlSerializer.startTag("", "MaxFrames");
            xmlSerializer.text(String.valueOf(imagesAuditInput.maxFrames));
            xmlSerializer.endTag("", "MaxFrames");
        }
        xmlSerializer.startTag("", "LargeImageDetect");
        xmlSerializer.text(String.valueOf(imagesAuditInput.largeImageDetect));
        xmlSerializer.endTag("", "LargeImageDetect");
        AuditEncryption auditEncryption = imagesAuditInput.encryption;
        if (auditEncryption != null) {
            QCloudXml.toXml(xmlSerializer, auditEncryption, "Encryption");
        }
        if (imagesAuditInput.object != null) {
            xmlSerializer.startTag("", "Object");
            xmlSerializer.text(String.valueOf(imagesAuditInput.object));
            xmlSerializer.endTag("", "Object");
        }
        if (imagesAuditInput.url != null) {
            xmlSerializer.startTag("", SsManifestParser.C4934e.f26671A);
            xmlSerializer.text(String.valueOf(imagesAuditInput.url));
            xmlSerializer.endTag("", SsManifestParser.C4934e.f26671A);
        }
        if (imagesAuditInput.dataId != null) {
            xmlSerializer.startTag("", "DataId");
            xmlSerializer.text(String.valueOf(imagesAuditInput.dataId));
            xmlSerializer.endTag("", "DataId");
        }
        AuditUserInfo auditUserInfo = imagesAuditInput.userInfo;
        if (auditUserInfo != null) {
            QCloudXml.toXml(xmlSerializer, auditUserInfo, "UserInfo");
        }
        xmlSerializer.endTag("", str);
    }
}
