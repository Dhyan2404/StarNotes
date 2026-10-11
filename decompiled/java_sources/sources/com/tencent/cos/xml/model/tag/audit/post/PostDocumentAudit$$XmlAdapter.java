package com.tencent.cos.xml.model.tag.audit.post;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.tag.audit.bean.AuditConf;
import com.tencent.cos.xml.model.tag.audit.post.PostDocumentAudit;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostDocumentAudit$$XmlAdapter extends IXmlAdapter<PostDocumentAudit> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostDocumentAudit postDocumentAudit, String str) throws IOException, XmlPullParserException {
        if (postDocumentAudit == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        PostDocumentAudit.DocumentAuditInput documentAuditInput = postDocumentAudit.input;
        if (documentAuditInput != null) {
            QCloudXml.toXml(xmlSerializer, documentAuditInput, "Input");
        }
        AuditConf auditConf = postDocumentAudit.conf;
        if (auditConf != null) {
            QCloudXml.toXml(xmlSerializer, auditConf, "Conf");
        }
        xmlSerializer.endTag("", str);
    }
}
