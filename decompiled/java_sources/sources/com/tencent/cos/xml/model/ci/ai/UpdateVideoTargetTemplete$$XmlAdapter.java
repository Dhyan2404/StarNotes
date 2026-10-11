package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.VideoTargetRec;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class UpdateVideoTargetTemplete$$XmlAdapter extends IXmlAdapter<UpdateVideoTargetTemplete> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, UpdateVideoTargetTemplete updateVideoTargetTemplete, String str) throws IOException, XmlPullParserException {
        if (updateVideoTargetTemplete == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (updateVideoTargetTemplete.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(updateVideoTargetTemplete.tag));
            xmlSerializer.endTag("", "Tag");
        }
        if (updateVideoTargetTemplete.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(updateVideoTargetTemplete.name));
            xmlSerializer.endTag("", "Name");
        }
        VideoTargetRec videoTargetRec = updateVideoTargetTemplete.videoTargetRec;
        if (videoTargetRec != null) {
            QCloudXml.toXml(xmlSerializer, videoTargetRec, "VideoTargetRec");
        }
        xmlSerializer.endTag("", str);
    }
}
