package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class DeleteImageSearch$$XmlAdapter extends IXmlAdapter<DeleteImageSearch> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, DeleteImageSearch deleteImageSearch, String str) throws IOException, XmlPullParserException {
        if (deleteImageSearch == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (deleteImageSearch.entityId != null) {
            xmlSerializer.startTag("", "EntityId");
            xmlSerializer.text(String.valueOf(deleteImageSearch.entityId));
            xmlSerializer.endTag("", "EntityId");
        }
        xmlSerializer.endTag("", str);
    }
}
