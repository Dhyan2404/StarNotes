package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.NoiseReduction;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import com.tencent.qcloud.qcloudxml.core.QCloudXml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class PostNoiseReductionTemplete$$XmlAdapter extends IXmlAdapter<PostNoiseReductionTemplete> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, PostNoiseReductionTemplete postNoiseReductionTemplete, String str) throws IOException, XmlPullParserException {
        if (postNoiseReductionTemplete == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (postNoiseReductionTemplete.tag != null) {
            xmlSerializer.startTag("", "Tag");
            xmlSerializer.text(String.valueOf(postNoiseReductionTemplete.tag));
            xmlSerializer.endTag("", "Tag");
        }
        if (postNoiseReductionTemplete.name != null) {
            xmlSerializer.startTag("", "Name");
            xmlSerializer.text(String.valueOf(postNoiseReductionTemplete.name));
            xmlSerializer.endTag("", "Name");
        }
        NoiseReduction noiseReduction = postNoiseReductionTemplete.noiseReduction;
        if (noiseReduction != null) {
            QCloudXml.toXml(xmlSerializer, noiseReduction, "NoiseReduction");
        }
        xmlSerializer.endTag("", str);
    }
}
