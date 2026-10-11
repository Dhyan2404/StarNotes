package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.SubmitSnapshotJob;
import com.tencent.cos.xml.model.ci.media.TemplateSnapshot;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitSnapshotJob$SubmitSnapshotJobOperation$$XmlAdapter extends IXmlAdapter<SubmitSnapshotJob.SubmitSnapshotJobOperation> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitSnapshotJob.SubmitSnapshotJobOperation submitSnapshotJobOperation, String str) throws IOException, XmlPullParserException {
        if (submitSnapshotJobOperation == null) {
            return;
        }
        if (str == null) {
            str = "Operation";
        }
        xmlSerializer.startTag("", str);
        TemplateSnapshot.TemplateSnapshotSnapshot templateSnapshotSnapshot = submitSnapshotJobOperation.snapshot;
        if (templateSnapshotSnapshot != null) {
            QCloudXml.toXml(xmlSerializer, templateSnapshotSnapshot, "Snapshot");
        }
        if (submitSnapshotJobOperation.templateId != null) {
            xmlSerializer.startTag("", "TemplateId");
            xmlSerializer.text(String.valueOf(submitSnapshotJobOperation.templateId));
            xmlSerializer.endTag("", "TemplateId");
        }
        SubmitSnapshotJob.SubmitSnapshotJobOutput submitSnapshotJobOutput = submitSnapshotJobOperation.output;
        if (submitSnapshotJobOutput != null) {
            QCloudXml.toXml(xmlSerializer, submitSnapshotJobOutput, "Output");
        }
        if (submitSnapshotJobOperation.userData != null) {
            xmlSerializer.startTag("", "UserData");
            xmlSerializer.text(String.valueOf(submitSnapshotJobOperation.userData));
            xmlSerializer.endTag("", "UserData");
        }
        if (submitSnapshotJobOperation.jobLevel != null) {
            xmlSerializer.startTag("", "JobLevel");
            xmlSerializer.text(String.valueOf(submitSnapshotJobOperation.jobLevel));
            xmlSerializer.endTag("", "JobLevel");
        }
        xmlSerializer.endTag("", str);
    }
}
