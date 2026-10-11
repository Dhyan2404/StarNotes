package com.tencent.cos.xml.model.ci.audit;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.cos.xml.model.ci.audit.PostLiveVideoAudit;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostLiveVideoAudit$PostLiveVideoAuditInput$$XmlAdapter extends IXmlAdapter<PostLiveVideoAudit.PostLiveVideoAuditInput> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostLiveVideoAudit.PostLiveVideoAuditInput postLiveVideoAuditInput, String str) throws IOException, XmlPullParserException {
        if (postLiveVideoAuditInput == null) {
            return;
        }
        if (str == null) {
            str = "Input";
        }
        xmlSerializer.startTag("", str);
        if (postLiveVideoAuditInput.url != null) {
            xmlSerializer.startTag("", SsManifestParser.C4934e.f26671A);
            xmlSerializer.text(String.valueOf(postLiveVideoAuditInput.url));
            xmlSerializer.endTag("", SsManifestParser.C4934e.f26671A);
        }
        if (postLiveVideoAuditInput.dataId != null) {
            xmlSerializer.startTag("", "DataId");
            xmlSerializer.text(String.valueOf(postLiveVideoAuditInput.dataId));
            xmlSerializer.endTag("", "DataId");
        }
        PostLiveVideoAudit.PostLiveVideoAuditUserInfo postLiveVideoAuditUserInfo = postLiveVideoAuditInput.userInfo;
        if (postLiveVideoAuditUserInfo != null) {
            QCloudXml.toXml(xmlSerializer, postLiveVideoAuditUserInfo, "UserInfo");
        }
        xmlSerializer.endTag("", str);
    }
}
