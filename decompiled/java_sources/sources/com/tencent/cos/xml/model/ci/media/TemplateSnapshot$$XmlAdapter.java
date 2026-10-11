package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.TemplateSnapshot;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class TemplateSnapshot$$XmlAdapter extends IXmlAdapter<TemplateSnapshot> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, TemplateSnapshot templateSnapshot, String str) throws IOException, XmlPullParserException {
        if (templateSnapshot == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (templateSnapshot.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(templateSnapshot.tag));
            xmlSerializer.endTag("", "Tag");
        }
        if (templateSnapshot.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(templateSnapshot.name));
            xmlSerializer.endTag("", "Name");
        }
        TemplateSnapshot.TemplateSnapshotSnapshot templateSnapshotSnapshot = templateSnapshot.snapshot;
        if (templateSnapshotSnapshot != null) {
            QCloudXml.toXml(xmlSerializer, templateSnapshotSnapshot, "Snapshot");
        }
        xmlSerializer.endTag("", str);
    }
}
