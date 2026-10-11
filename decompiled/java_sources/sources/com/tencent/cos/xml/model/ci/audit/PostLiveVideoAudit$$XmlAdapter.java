package com.tencent.cos.xml.model.ci.audit;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.audit.PostLiveVideoAudit;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostLiveVideoAudit$$XmlAdapter extends IXmlAdapter<PostLiveVideoAudit> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostLiveVideoAudit postLiveVideoAudit, String str) throws IOException, XmlPullParserException {
        if (postLiveVideoAudit == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (postLiveVideoAudit.type != null) {
            xmlSerializer.startTag("", "Type");
            xmlSerializer.text(String.valueOf(postLiveVideoAudit.type));
            xmlSerializer.endTag("", "Type");
        }
        PostLiveVideoAudit.PostLiveVideoAuditInput postLiveVideoAuditInput = postLiveVideoAudit.input;
        if (postLiveVideoAuditInput != null) {
            QCloudXml.toXml(xmlSerializer, postLiveVideoAuditInput, "Input");
        }
        PostLiveVideoAudit.PostLiveVideoAuditConf postLiveVideoAuditConf = postLiveVideoAudit.conf;
        if (postLiveVideoAuditConf != null) {
            QCloudXml.toXml(xmlSerializer, postLiveVideoAuditConf, "Conf");
        }
        PostLiveVideoAudit.PostLiveVideoAuditStorageConf postLiveVideoAuditStorageConf = postLiveVideoAudit.storageConf;
        if (postLiveVideoAuditStorageConf != null) {
            QCloudXml.toXml(xmlSerializer, postLiveVideoAuditStorageConf, "StorageConf");
        }
        xmlSerializer.endTag("", str);
    }
}
