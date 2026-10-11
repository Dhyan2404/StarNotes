package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class AddImageSearch$$XmlAdapter extends IXmlAdapter<AddImageSearch> {
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, AddImageSearch addImageSearch, String str) throws IOException, XmlPullParserException {
        if (addImageSearch == null) {
            return;
        }
        if (str == null) {
            str = SingleRequest.f15334D;
        }
        xmlSerializer.startTag("", str);
        if (addImageSearch.entityId != null) {
            xmlSerializer.startTag("", "EntityId");
            xmlSerializer.text(String.valueOf(addImageSearch.entityId));
            xmlSerializer.endTag("", "EntityId");
        }
        if (addImageSearch.customContent != null) {
            xmlSerializer.startTag("", "CustomContent");
            xmlSerializer.text(String.valueOf(addImageSearch.customContent));
            xmlSerializer.endTag("", "CustomContent");
        }
        if (addImageSearch.tags != null) {
            xmlSerializer.startTag("", "Tags");
            xmlSerializer.text(String.valueOf(addImageSearch.tags));
            xmlSerializer.endTag("", "Tags");
        }
        xmlSerializer.endTag("", str);
    }
}
