package com.tencent.cos.xml.model.tag.audit.post;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.tag.audit.bean.AuditInput;
import com.tencent.cos.xml.model.tag.audit.post.PostWebPageAudit;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostWebPageAudit$$XmlAdapter extends IXmlAdapter<PostWebPageAudit> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostWebPageAudit postWebPageAudit, String str) throws IOException, XmlPullParserException {
        if (postWebPageAudit == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        AuditInput auditInput = postWebPageAudit.input;
        if (auditInput != null) {
            QCloudXml.toXml(xmlSerializer, auditInput, "Input");
        }
        PostWebPageAudit.WebPageAuditConf webPageAuditConf = postWebPageAudit.conf;
        if (webPageAuditConf != null) {
            QCloudXml.toXml(xmlSerializer, webPageAuditConf, "Conf");
        }
        xmlSerializer.endTag("", str);
    }
}
