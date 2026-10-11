package com.tencent.cos.xml.model.ci.media;

import com.tencent.cos.xml.model.ci.media.SubmitMediaSegmentJob;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitMediaSegmentJob$SubmitMediaSegmentJobOperation$$XmlAdapter extends IXmlAdapter<SubmitMediaSegmentJob.SubmitMediaSegmentJobOperation> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitMediaSegmentJob.SubmitMediaSegmentJobOperation submitMediaSegmentJobOperation, String str) throws IOException, XmlPullParserException {
        if (submitMediaSegmentJobOperation == null) {
            return;
        }
        if (str == null) {
            str = "Operation";
        }
        xmlSerializer.startTag("", str);
        SubmitMediaSegmentJob.SubmitMediaSegmentJobSegment submitMediaSegmentJobSegment = submitMediaSegmentJobOperation.segment;
        if (submitMediaSegmentJobSegment != null) {
            QCloudXml.toXml(xmlSerializer, submitMediaSegmentJobSegment, "Segment");
        }
        SubmitMediaSegmentJob.SubmitMediaSegmentJobOutput submitMediaSegmentJobOutput = submitMediaSegmentJobOperation.output;
        if (submitMediaSegmentJobOutput != null) {
            QCloudXml.toXml(xmlSerializer, submitMediaSegmentJobOutput, "Output");
        }
        if (submitMediaSegmentJobOperation.jobLevel != null) {
            xmlSerializer.startTag("", "JobLevel");
            xmlSerializer.text(String.valueOf(submitMediaSegmentJobOperation.jobLevel));
            xmlSerializer.endTag("", "JobLevel");
        }
        xmlSerializer.endTag("", str);
    }
}
