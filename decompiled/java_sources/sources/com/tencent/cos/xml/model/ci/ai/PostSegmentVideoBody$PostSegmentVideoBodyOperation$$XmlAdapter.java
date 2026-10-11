package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.PostSegmentVideoBody;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostSegmentVideoBody$PostSegmentVideoBodyOperation$$XmlAdapter extends IXmlAdapter<PostSegmentVideoBody.PostSegmentVideoBodyOperation> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostSegmentVideoBody.PostSegmentVideoBodyOperation postSegmentVideoBodyOperation, String str) throws IOException, XmlPullParserException {
        if (postSegmentVideoBodyOperation == null) {
            return;
        }
        if (str == null) {
            str = "Operation";
        }
        xmlSerializer.startTag("", str);
        PostSegmentVideoBody.PostSegmentVideoBodySegmentVideoBody postSegmentVideoBodySegmentVideoBody = postSegmentVideoBodyOperation.segmentVideoBody;
        if (postSegmentVideoBodySegmentVideoBody != null) {
            QCloudXml.toXml(xmlSerializer, postSegmentVideoBodySegmentVideoBody, "SegmentVideoBody");
        }
        PostSegmentVideoBody.PostSegmentVideoBodyOutput postSegmentVideoBodyOutput = postSegmentVideoBodyOperation.output;
        if (postSegmentVideoBodyOutput != null) {
            QCloudXml.toXml(xmlSerializer, postSegmentVideoBodyOutput, "Output");
        }
        if (postSegmentVideoBodyOperation.userData != null) {
            xmlSerializer.startTag("", "UserData");
            xmlSerializer.text(String.valueOf(postSegmentVideoBodyOperation.userData));
            xmlSerializer.endTag("", "UserData");
        }
        if (postSegmentVideoBodyOperation.jobLevel != null) {
            xmlSerializer.startTag("", "JobLevel");
            xmlSerializer.text(String.valueOf(postSegmentVideoBodyOperation.jobLevel));
            xmlSerializer.endTag("", "JobLevel");
        }
        xmlSerializer.endTag("", str);
    }
}
