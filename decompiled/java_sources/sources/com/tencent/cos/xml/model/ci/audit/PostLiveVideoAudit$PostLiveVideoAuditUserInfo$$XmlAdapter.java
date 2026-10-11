package com.tencent.cos.xml.model.ci.audit;

import com.tencent.cos.xml.model.ci.audit.PostLiveVideoAudit;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import org.apache.logging.log4j.Level;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostLiveVideoAudit$PostLiveVideoAuditUserInfo$$XmlAdapter extends IXmlAdapter<PostLiveVideoAudit.PostLiveVideoAuditUserInfo> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostLiveVideoAudit.PostLiveVideoAuditUserInfo postLiveVideoAuditUserInfo, String str) throws IOException, XmlPullParserException {
        if (postLiveVideoAuditUserInfo == null) {
            return;
        }
        if (str == null) {
            str = "UserInfo";
        }
        xmlSerializer.startTag("", str);
        if (postLiveVideoAuditUserInfo.tokenId != null) {
            xmlSerializer.startTag("", "TokenId");
            xmlSerializer.text(String.valueOf(postLiveVideoAuditUserInfo.tokenId));
            xmlSerializer.endTag("", "TokenId");
        }
        if (postLiveVideoAuditUserInfo.nickname != null) {
            xmlSerializer.startTag("", "Nickname");
            xmlSerializer.text(String.valueOf(postLiveVideoAuditUserInfo.nickname));
            xmlSerializer.endTag("", "Nickname");
        }
        if (postLiveVideoAuditUserInfo.deviceId != null) {
            xmlSerializer.startTag("", "DeviceId");
            xmlSerializer.text(String.valueOf(postLiveVideoAuditUserInfo.deviceId));
            xmlSerializer.endTag("", "DeviceId");
        }
        if (postLiveVideoAuditUserInfo.appId != null) {
            xmlSerializer.startTag("", "AppId");
            xmlSerializer.text(String.valueOf(postLiveVideoAuditUserInfo.appId));
            xmlSerializer.endTag("", "AppId");
        }
        if (postLiveVideoAuditUserInfo.room != null) {
            xmlSerializer.startTag("", "Room");
            xmlSerializer.text(String.valueOf(postLiveVideoAuditUserInfo.room));
            xmlSerializer.endTag("", "Room");
        }
        if (postLiveVideoAuditUserInfo.f93299iP != null) {
            xmlSerializer.startTag("", "IP");
            xmlSerializer.text(String.valueOf(postLiveVideoAuditUserInfo.f93299iP));
            xmlSerializer.endTag("", "IP");
        }
        if (postLiveVideoAuditUserInfo.type != null) {
            xmlSerializer.startTag("", "Type");
            xmlSerializer.text(String.valueOf(postLiveVideoAuditUserInfo.type));
            xmlSerializer.endTag("", "Type");
        }
        if (postLiveVideoAuditUserInfo.receiveTokenId != null) {
            xmlSerializer.startTag("", "ReceiveTokenId");
            xmlSerializer.text(String.valueOf(postLiveVideoAuditUserInfo.receiveTokenId));
            xmlSerializer.endTag("", "ReceiveTokenId");
        }
        if (postLiveVideoAuditUserInfo.gender != null) {
            xmlSerializer.startTag("", "Gender");
            xmlSerializer.text(String.valueOf(postLiveVideoAuditUserInfo.gender));
            xmlSerializer.endTag("", "Gender");
        }
        if (postLiveVideoAuditUserInfo.level != null) {
            xmlSerializer.startTag("", Level.CATEGORY);
            xmlSerializer.text(String.valueOf(postLiveVideoAuditUserInfo.level));
            xmlSerializer.endTag("", Level.CATEGORY);
        }
        if (postLiveVideoAuditUserInfo.role != null) {
            xmlSerializer.startTag("", "Role");
            xmlSerializer.text(String.valueOf(postLiveVideoAuditUserInfo.role));
            xmlSerializer.endTag("", "Role");
        }
        xmlSerializer.endTag("", str);
    }
}
