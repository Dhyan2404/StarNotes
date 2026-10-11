package com.tencent.cos.xml.model.tag.audit.post;

import com.tencent.cos.xml.model.tag.audit.bean.AuditConf;
import com.tencent.cos.xml.model.tag.audit.post.PostVideoAudit;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostVideoAudit$VideoAuditConf$$XmlAdapter extends IXmlAdapter<PostVideoAudit.VideoAuditConf> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostVideoAudit.VideoAuditConf videoAuditConf, String str) throws IOException, XmlPullParserException {
        if (videoAuditConf == null) {
            return;
        }
        if (str == null) {
            str = "Conf";
        }
        xmlSerializer.startTag("", str);
        if (videoAuditConf.callbackVersion != null) {
            xmlSerializer.startTag("", "CallbackVersion");
            xmlSerializer.text(String.valueOf(videoAuditConf.callbackVersion));
            xmlSerializer.endTag("", "CallbackVersion");
        }
        PostVideoAudit.Snapshot snapshot = videoAuditConf.snapshot;
        if (snapshot != null) {
            QCloudXml.toXml(xmlSerializer, snapshot, "Snapshot");
        }
        xmlSerializer.startTag("", "DetectContent");
        xmlSerializer.text(String.valueOf(videoAuditConf.detectContent));
        xmlSerializer.endTag("", "DetectContent");
        if (videoAuditConf.detectType != null) {
            xmlSerializer.startTag("", "DetectType");
            xmlSerializer.text(String.valueOf(videoAuditConf.detectType));
            xmlSerializer.endTag("", "DetectType");
        }
        xmlSerializer.startTag("", "Async");
        xmlSerializer.text(String.valueOf(videoAuditConf.async));
        xmlSerializer.endTag("", "Async");
        if (videoAuditConf.callback != null) {
            xmlSerializer.startTag("", "Callback");
            xmlSerializer.text(String.valueOf(videoAuditConf.callback));
            xmlSerializer.endTag("", "Callback");
        }
        if (videoAuditConf.callbackType != 0) {
            xmlSerializer.startTag("", "CallbackType");
            xmlSerializer.text(String.valueOf(videoAuditConf.callbackType));
            xmlSerializer.endTag("", "CallbackType");
        }
        if (videoAuditConf.bizType != null) {
            xmlSerializer.startTag("", "BizType");
            xmlSerializer.text(String.valueOf(videoAuditConf.bizType));
            xmlSerializer.endTag("", "BizType");
        }
        AuditConf.Freeze freeze = videoAuditConf.freeze;
        if (freeze != null) {
            QCloudXml.toXml(xmlSerializer, freeze, "Freeze");
        }
        xmlSerializer.endTag("", str);
    }
}
