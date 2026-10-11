package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class ImageSearchBucket$$XmlAdapter extends IXmlAdapter<ImageSearchBucket> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, ImageSearchBucket imageSearchBucket, String str) throws IOException, XmlPullParserException {
        if (imageSearchBucket == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        xmlSerializer.startTag("", "MaxCapacity");
        xmlSerializer.text(String.valueOf(imageSearchBucket.maxCapacity));
        xmlSerializer.endTag("", "MaxCapacity");
        xmlSerializer.startTag("", "MaxQps");
        xmlSerializer.text(String.valueOf(imageSearchBucket.maxQps));
        xmlSerializer.endTag("", "MaxQps");
        xmlSerializer.endTag("", str);
    }
}
