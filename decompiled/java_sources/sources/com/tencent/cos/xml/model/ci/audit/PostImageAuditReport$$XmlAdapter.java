package com.tencent.cos.xml.model.ci.audit;

import com.bumptech.glide.request.SingleRequest;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostImageAuditReport$$XmlAdapter extends IXmlAdapter<PostImageAuditReport> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostImageAuditReport postImageAuditReport, String str) throws IOException, XmlPullParserException {
        if (postImageAuditReport == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        xmlSerializer.startTag("", "ContentType");
        xmlSerializer.text(String.valueOf(postImageAuditReport.contentType));
        xmlSerializer.endTag("", "ContentType");
        if (postImageAuditReport.url != null) {
            xmlSerializer.startTag("", SsManifestParser.C4934e.f26671A);
            xmlSerializer.text(String.valueOf(postImageAuditReport.url));
            xmlSerializer.endTag("", SsManifestParser.C4934e.f26671A);
        }
        if (postImageAuditReport.label != null) {
            xmlSerializer.startTag("", "Label");
            xmlSerializer.text(String.valueOf(postImageAuditReport.label));
            xmlSerializer.endTag("", "Label");
        }
        if (postImageAuditReport.suggestedLabel != null) {
            xmlSerializer.startTag("", "SuggestedLabel");
            xmlSerializer.text(String.valueOf(postImageAuditReport.suggestedLabel));
            xmlSerializer.endTag("", "SuggestedLabel");
        }
        if (postImageAuditReport.jobId != null) {
            xmlSerializer.startTag("", "JobId");
            xmlSerializer.text(String.valueOf(postImageAuditReport.jobId));
            xmlSerializer.endTag("", "JobId");
        }
        if (postImageAuditReport.moderationTime != null) {
            xmlSerializer.startTag("", "ModerationTime");
            xmlSerializer.text(String.valueOf(postImageAuditReport.moderationTime));
            xmlSerializer.endTag("", "ModerationTime");
        }
        xmlSerializer.endTag("", str);
    }
}
