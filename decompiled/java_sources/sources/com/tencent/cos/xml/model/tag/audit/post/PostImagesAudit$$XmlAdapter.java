package com.tencent.cos.xml.model.tag.audit.post;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.tag.audit.bean.AuditConf;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostImagesAudit$$XmlAdapter extends IXmlAdapter<PostImagesAudit> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostImagesAudit postImagesAudit, String str) throws IOException, XmlPullParserException {
        if (postImagesAudit == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (postImagesAudit.input != null) {
            for (int i = 0; i < postImagesAudit.input.size(); i++) {
                QCloudXml.toXml(xmlSerializer, postImagesAudit.input.get(i), "Input");
            }
        }
        AuditConf auditConf = postImagesAudit.conf;
        if (auditConf != null) {
            QCloudXml.toXml(xmlSerializer, auditConf, "Conf");
        }
        xmlSerializer.endTag("", str);
    }
}
