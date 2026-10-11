package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.VideoTargetRec;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostVideoTargetTemplete$$XmlAdapter extends IXmlAdapter<PostVideoTargetTemplete> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostVideoTargetTemplete postVideoTargetTemplete, String str) throws IOException, XmlPullParserException {
        if (postVideoTargetTemplete == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (postVideoTargetTemplete.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(postVideoTargetTemplete.tag));
            xmlSerializer.endTag("", "Tag");
        }
        if (postVideoTargetTemplete.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(postVideoTargetTemplete.name));
            xmlSerializer.endTag("", "Name");
        }
        VideoTargetRec videoTargetRec = postVideoTargetTemplete.videoTargetRec;
        if (videoTargetRec != null) {
            QCloudXml.toXml(xmlSerializer, videoTargetRec, "VideoTargetRec");
        }
        xmlSerializer.endTag("", str);
    }
}
