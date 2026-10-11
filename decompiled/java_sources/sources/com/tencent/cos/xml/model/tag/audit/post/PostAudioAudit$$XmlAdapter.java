package com.tencent.cos.xml.model.tag.audit.post;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.tag.audit.bean.AuditInput;
import com.tencent.cos.xml.model.tag.audit.post.PostAudioAudit;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostAudioAudit$$XmlAdapter extends IXmlAdapter<PostAudioAudit> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostAudioAudit postAudioAudit, String str) throws IOException, XmlPullParserException {
        if (postAudioAudit == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        AuditInput auditInput = postAudioAudit.input;
        if (auditInput != null) {
            QCloudXml.toXml(xmlSerializer, auditInput, "Input");
        }
        PostAudioAudit.AudioAuditConf audioAuditConf = postAudioAudit.conf;
        if (audioAuditConf != null) {
            QCloudXml.toXml(xmlSerializer, audioAuditConf, "Conf");
        }
        xmlSerializer.endTag("", str);
    }
}
